# Discovery Engine API - API Reference

**Version**: `v1` | **Methods**: 269 | **Schemas**: 886

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `discoveryengine.projects.provision` | POST | `v1/{+name}:provision` | Provisions the project resource. During the process, related systems will get prepared and initia... |
| `discoveryengine.projects.locations.setUpDataConnectorV2` | POST | `v1/{+parent}:setUpDataConnectorV2` | Creates a Collection and sets up the DataConnector for it. To stop a DataConnector after setup, u... |
| `discoveryengine.projects.locations.setUpDataConnector` | POST | `v1/{+parent}:setUpDataConnector` | Creates a Collection and sets up the DataConnector for it. To stop a DataConnector after setup, u... |
| `discoveryengine.projects.locations.getCmekConfig` | GET | `v1/{+name}` | Gets the CmekConfig. |
| `discoveryengine.projects.locations.getAclConfig` | GET | `v1/{+name}` | Gets the AclConfig. |
| `discoveryengine.projects.locations.updateAclConfig` | PATCH | `v1/{+name}` | Default ACL configuration for use in a location of a customer's project. Updates will only reflec... |
| `discoveryengine.projects.locations.updateCmekConfig` | PATCH | `v1/{+name}` | Provisions a CMEK key for use in a location of a customer's project. This method will also conduc... |
| `discoveryengine.projects.locations.licenseConfigs.get` | GET | `v1/{+name}` | Gets a LicenseConfig. |
| `discoveryengine.projects.locations.licenseConfigs.patch` | PATCH | `v1/{+name}` | Updates the LicenseConfig |
| `discoveryengine.projects.locations.licenseConfigs.create` | POST | `v1/{+parent}/licenseConfigs` | Creates a LicenseConfig |
| `discoveryengine.projects.locations.userEvents.collect` | GET | `v1/{+parent}/userEvents:collect` | Writes a single user event from the browser. This uses a GET request to due to browser restrictio... |
| `discoveryengine.projects.locations.userEvents.import` | POST | `v1/{+parent}/userEvents:import` | Bulk import of user events. Request processing might be synchronous. Events that already exist ar... |
| `discoveryengine.projects.locations.userEvents.write` | POST | `v1/{+parent}/userEvents:write` | Writes a single user event. |
| `discoveryengine.projects.locations.collections.getDataConnector` | GET | `v1/{+name}` | Gets the DataConnector. DataConnector is a singleton resource for each Collection. |
| `discoveryengine.projects.locations.collections.updateDataConnector` | PATCH | `v1/{+name}` | Updates a DataConnector. |
| `discoveryengine.projects.locations.collections.delete` | DELETE | `v1/{+name}` | Deletes a Collection. |
| `discoveryengine.projects.locations.collections.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.collections.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.collections.dataConnector.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.collections.dataConnector.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.collections.dataStores.patch` | PATCH | `v1/{+name}` | Updates a DataStore |
| `discoveryengine.projects.locations.collections.dataStores.list` | GET | `v1/{+parent}/dataStores` | Lists all the DataStores associated with the project. |
| `discoveryengine.projects.locations.collections.dataStores.delete` | DELETE | `v1/{+name}` | Deletes a DataStore. |
| `discoveryengine.projects.locations.collections.dataStores.trainCustomModel` | POST | `v1/{+dataStore}:trainCustomModel` | Trains a custom model. |
| `discoveryengine.projects.locations.collections.dataStores.completeQuery` | GET | `v1/{+dataStore}:completeQuery` | Completes the specified user input with keyword suggestions. |
| `discoveryengine.projects.locations.collections.dataStores.getSiteSearchEngine` | GET | `v1/{+name}` | Gets the SiteSearchEngine. |
| `discoveryengine.projects.locations.collections.dataStores.create` | POST | `v1/{+parent}/dataStores` | Creates a DataStore. DataStore is for storing Documents. To serve these documents for Search, or ... |
| `discoveryengine.projects.locations.collections.dataStores.get` | GET | `v1/{+name}` | Gets a DataStore. |
| `discoveryengine.projects.locations.collections.dataStores.conversations.list` | GET | `v1/{+parent}/conversations` | Lists all Conversations by their parent DataStore. |
| `discoveryengine.projects.locations.collections.dataStores.conversations.get` | GET | `v1/{+name}` | Gets a Conversation. |
| `discoveryengine.projects.locations.collections.dataStores.conversations.create` | POST | `v1/{+parent}/conversations` | Creates a Conversation. If the Conversation to create already exists, an ALREADY_EXISTS error is ... |
| `discoveryengine.projects.locations.collections.dataStores.conversations.delete` | DELETE | `v1/{+name}` | Deletes a Conversation. If the Conversation to delete does not exist, a NOT_FOUND error is returned. |
| `discoveryengine.projects.locations.collections.dataStores.conversations.converse` | POST | `v1/{+name}:converse` | Converses a conversation. |
| `discoveryengine.projects.locations.collections.dataStores.conversations.patch` | PATCH | `v1/{+name}` | Updates a Conversation. Conversation action type cannot be changed. If the Conversation to update... |
| `discoveryengine.projects.locations.collections.dataStores.userEvents.purge` | POST | `v1/{+parent}/userEvents:purge` | Deletes permanently all user events specified by the filter provided. Depending on the number of ... |
| `discoveryengine.projects.locations.collections.dataStores.userEvents.import` | POST | `v1/{+parent}/userEvents:import` | Bulk import of user events. Request processing might be synchronous. Events that already exist ar... |
| `discoveryengine.projects.locations.collections.dataStores.userEvents.collect` | GET | `v1/{+parent}/userEvents:collect` | Writes a single user event from the browser. This uses a GET request to due to browser restrictio... |
| `discoveryengine.projects.locations.collections.dataStores.userEvents.write` | POST | `v1/{+parent}/userEvents:write` | Writes a single user event. |
| `discoveryengine.projects.locations.collections.dataStores.customModels.list` | GET | `v1/{+dataStore}/customModels` | Gets a list of all the custom models. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.recrawlUris` | POST | `v1/{+siteSearchEngine}:recrawlUris` | Request on-demand recrawl for a list of URIs. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.fetchDomainVerificationStatus` | GET | `v1/{+siteSearchEngine}:fetchDomainVerificationStatus` | Returns list of target sites with its domain verification status. This method can only be called ... |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.disableAdvancedSiteSearch` | POST | `v1/{+siteSearchEngine}:disableAdvancedSiteSearch` | Downgrade from advanced site search to basic site search. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.batchVerifyTargetSites` | POST | `v1/{+parent}:batchVerifyTargetSites` | Verify target sites' ownership and validity. This API sends all the target sites under site searc... |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.enableAdvancedSiteSearch` | POST | `v1/{+siteSearchEngine}:enableAdvancedSiteSearch` | Upgrade from basic site search to advanced site search. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.list` | GET | `v1/{+parent}/targetSites` | Gets a list of TargetSites. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.patch` | PATCH | `v1/{+name}` | Updates a TargetSite. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.get` | GET | `v1/{+name}` | Gets a TargetSite. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.batchCreate` | POST | `v1/{+parent}/targetSites:batchCreate` | Creates TargetSite in a batch. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.delete` | DELETE | `v1/{+name}` | Deletes a TargetSite. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.create` | POST | `v1/{+parent}/targetSites` | Creates a TargetSite. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.sitemaps.fetch` | GET | `v1/{+parent}/sitemaps:fetch` | Fetch Sitemaps in a DataStore. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.sitemaps.create` | POST | `v1/{+parent}/sitemaps` | Creates a Sitemap. |
| `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.sitemaps.delete` | DELETE | `v1/{+name}` | Deletes a Sitemap. |
| `discoveryengine.projects.locations.collections.dataStores.models.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.collections.dataStores.models.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.collections.dataStores.suggestionDenyListEntries.purge` | POST | `v1/{+parent}/suggestionDenyListEntries:purge` | Permanently deletes all SuggestionDenyListEntry for a DataStore. |
| `discoveryengine.projects.locations.collections.dataStores.suggestionDenyListEntries.import` | POST | `v1/{+parent}/suggestionDenyListEntries:import` | Imports all SuggestionDenyListEntry for a DataStore. |
| `discoveryengine.projects.locations.collections.dataStores.completionSuggestions.import` | POST | `v1/{+parent}/completionSuggestions:import` | Imports CompletionSuggestions for a DataStore. |
| `discoveryengine.projects.locations.collections.dataStores.completionSuggestions.purge` | POST | `v1/{+parent}/completionSuggestions:purge` | Permanently deletes all CompletionSuggestions for a DataStore. |
| `discoveryengine.projects.locations.collections.dataStores.widgetConfigs.patch` | PATCH | `v1/{+name}` | Update a WidgetConfig. |
| `discoveryengine.projects.locations.collections.dataStores.widgetConfigs.get` | GET | `v1/{+name}` | Gets a WidgetConfig. |
| `discoveryengine.projects.locations.collections.dataStores.sessions.list` | GET | `v1/{+parent}/sessions` | Lists all Sessions by their parent DataStore. |
| `discoveryengine.projects.locations.collections.dataStores.sessions.create` | POST | `v1/{+parent}/sessions` | Creates a Session. If the Session to create already exists, an ALREADY_EXISTS error is returned. |
| `discoveryengine.projects.locations.collections.dataStores.sessions.delete` | DELETE | `v1/{+name}` | Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error is returned. |
| `discoveryengine.projects.locations.collections.dataStores.sessions.patch` | PATCH | `v1/{+name}` | Updates a Session. Session action type cannot be changed. If the Session to update does not exist... |
| `discoveryengine.projects.locations.collections.dataStores.sessions.get` | GET | `v1/{+name}` | Gets a Session. |
| `discoveryengine.projects.locations.collections.dataStores.sessions.answers.get` | GET | `v1/{+name}` | Gets a Answer. |
| `discoveryengine.projects.locations.collections.dataStores.controls.list` | GET | `v1/{+parent}/controls` | Lists all Controls by their parent DataStore. |
| `discoveryengine.projects.locations.collections.dataStores.controls.get` | GET | `v1/{+name}` | Gets a Control. |
| `discoveryengine.projects.locations.collections.dataStores.controls.delete` | DELETE | `v1/{+name}` | Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error is returned. |
| `discoveryengine.projects.locations.collections.dataStores.controls.patch` | PATCH | `v1/{+name}` | Updates a Control. Control action type cannot be changed. If the Control to update does not exist... |
| `discoveryengine.projects.locations.collections.dataStores.controls.create` | POST | `v1/{+parent}/controls` | Creates a Control. By default 1000 controls are allowed for a data store. A request can be submit... |
| `discoveryengine.projects.locations.collections.dataStores.branches.batchGetDocumentsMetadata` | GET | `v1/{+parent}/batchGetDocumentsMetadata` | Gets index freshness metadata for Documents. Supported for website search only. |
| `discoveryengine.projects.locations.collections.dataStores.branches.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.collections.dataStores.branches.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.collections.dataStores.branches.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `discoveryengine.projects.locations.collections.dataStores.branches.documents.list` | GET | `v1/{+parent}/documents` | Gets a list of Documents. |
| `discoveryengine.projects.locations.collections.dataStores.branches.documents.get` | GET | `v1/{+name}` | Gets a Document. |
| `discoveryengine.projects.locations.collections.dataStores.branches.documents.create` | POST | `v1/{+parent}/documents` | Creates a Document. |
| `discoveryengine.projects.locations.collections.dataStores.branches.documents.purge` | POST | `v1/{+parent}/documents:purge` | Permanently deletes all selected Documents in a branch. This process is asynchronous. Depending o... |
| `discoveryengine.projects.locations.collections.dataStores.branches.documents.patch` | PATCH | `v1/{+name}` | Updates a Document. |
| `discoveryengine.projects.locations.collections.dataStores.branches.documents.delete` | DELETE | `v1/{+name}` | Deletes a Document. |
| `discoveryengine.projects.locations.collections.dataStores.branches.documents.import` | POST | `v1/{+parent}/documents:import` | Bulk import of multiple Documents. Request processing may be synchronous. Non-existing items are ... |
| `discoveryengine.projects.locations.collections.dataStores.completionConfig.completeQuery` | POST | `v1/{+completionConfig}:completeQuery` | Completes the user input with advanced keyword suggestions. |
| `discoveryengine.projects.locations.collections.dataStores.schemas.get` | GET | `v1/{+name}` | Gets a Schema. |
| `discoveryengine.projects.locations.collections.dataStores.schemas.list` | GET | `v1/{+parent}/schemas` | Gets a list of Schemas. |
| `discoveryengine.projects.locations.collections.dataStores.schemas.patch` | PATCH | `v1/{+name}` | Updates a Schema. |
| `discoveryengine.projects.locations.collections.dataStores.schemas.create` | POST | `v1/{+parent}/schemas` | Creates a Schema. |
| `discoveryengine.projects.locations.collections.dataStores.schemas.delete` | DELETE | `v1/{+name}` | Deletes a Schema. |
| `discoveryengine.projects.locations.collections.dataStores.schemas.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.collections.dataStores.schemas.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.collections.dataStores.servingConfigs.search` | POST | `v1/{+servingConfig}:search` | Performs a search. |
| `discoveryengine.projects.locations.collections.dataStores.servingConfigs.delete` | DELETE | `v1/{+name}` | Deletes a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist. |
| `discoveryengine.projects.locations.collections.dataStores.servingConfigs.create` | POST | `v1/{+parent}/servingConfigs` | Creates a ServingConfig. Note: The Google Cloud console works only with the default serving confi... |
| `discoveryengine.projects.locations.collections.dataStores.servingConfigs.recommend` | POST | `v1/{+servingConfig}:recommend` | Makes a recommendation, which requires a contextual user event. |
| `discoveryengine.projects.locations.collections.dataStores.servingConfigs.list` | GET | `v1/{+parent}/servingConfigs` | Lists all ServingConfigs linked to this dataStore. |
| `discoveryengine.projects.locations.collections.dataStores.servingConfigs.patch` | PATCH | `v1/{+name}` | Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist. |
| `discoveryengine.projects.locations.collections.dataStores.servingConfigs.searchLite` | POST | `v1/{+servingConfig}:searchLite` | Performs a search. Similar to the SearchService.Search method, but a lite version that allows API... |
| `discoveryengine.projects.locations.collections.dataStores.servingConfigs.streamAnswer` | POST | `v1/{+servingConfig}:streamAnswer` | Answer query method (streaming). It takes one AnswerQueryRequest and returns multiple AnswerQuery... |
| `discoveryengine.projects.locations.collections.dataStores.servingConfigs.answer` | POST | `v1/{+servingConfig}:answer` | Answer query method. |
| `discoveryengine.projects.locations.collections.dataStores.servingConfigs.get` | GET | `v1/{+name}` | Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist. |
| `discoveryengine.projects.locations.collections.dataStores.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.collections.dataStores.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.collections.engines.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the IAM access control policy for an Engine. A `NOT_FOUND` error is returned if the resource... |
| `discoveryengine.projects.locations.collections.engines.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the IAM access control policy for an Engine. A `NOT_FOUND` error is returned if the resource... |
| `discoveryengine.projects.locations.collections.engines.create` | POST | `v1/{+parent}/engines` | Creates an Engine. |
| `discoveryengine.projects.locations.collections.engines.patch` | PATCH | `v1/{+name}` | Updates an Engine |
| `discoveryengine.projects.locations.collections.engines.list` | GET | `v1/{+parent}/engines` | Lists all the Engines associated with the project. |
| `discoveryengine.projects.locations.collections.engines.delete` | DELETE | `v1/{+name}` | Deletes an Engine. |
| `discoveryengine.projects.locations.collections.engines.get` | GET | `v1/{+name}` | Gets an Engine. |
| `discoveryengine.projects.locations.collections.engines.completionConfig.completeQuery` | POST | `v1/{+completionConfig}:completeQuery` | Completes the user input with advanced keyword suggestions. |
| `discoveryengine.projects.locations.collections.engines.conversations.get` | GET | `v1/{+name}` | Gets a Conversation. |
| `discoveryengine.projects.locations.collections.engines.conversations.delete` | DELETE | `v1/{+name}` | Deletes a Conversation. If the Conversation to delete does not exist, a NOT_FOUND error is returned. |
| `discoveryengine.projects.locations.collections.engines.conversations.converse` | POST | `v1/{+name}:converse` | Converses a conversation. |
| `discoveryengine.projects.locations.collections.engines.conversations.create` | POST | `v1/{+parent}/conversations` | Creates a Conversation. If the Conversation to create already exists, an ALREADY_EXISTS error is ... |
| `discoveryengine.projects.locations.collections.engines.conversations.patch` | PATCH | `v1/{+name}` | Updates a Conversation. Conversation action type cannot be changed. If the Conversation to update... |
| `discoveryengine.projects.locations.collections.engines.conversations.list` | GET | `v1/{+parent}/conversations` | Lists all Conversations by their parent DataStore. |
| `discoveryengine.projects.locations.collections.engines.assistants.streamAssist` | POST | `v1/{+name}:streamAssist` | Assists the user with a query in a streaming fashion. |
| `discoveryengine.projects.locations.collections.engines.assistants.create` | POST | `v1/{+parent}/assistants` | Creates an Assistant. |
| `discoveryengine.projects.locations.collections.engines.assistants.list` | GET | `v1/{+parent}/assistants` | Lists all Assistants under an Engine. |
| `discoveryengine.projects.locations.collections.engines.assistants.get` | GET | `v1/{+name}` | Gets an Assistant. |
| `discoveryengine.projects.locations.collections.engines.assistants.patch` | PATCH | `v1/{+name}` | Updates an Assistant |
| `discoveryengine.projects.locations.collections.engines.assistants.delete` | DELETE | `v1/{+name}` | Deletes an Assistant. |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.getCard` | GET | `{+tenant}/card` | GetAgentCard returns the agent card for the agent. |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.cancel` | POST | `{+tenant}/{+name}:cancel` | Cancel a task from the agent. If supported one should expect no more task updates for the task. |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.get` | GET | `{+tenant}/{+name}` | Get the current state of a task from the agent. |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.subscribe` | GET | `{+tenant}/{+name}:subscribe` | TaskSubscription is a streaming call that will return a stream of task update events. This attach... |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.pushNotificationConfigs.get` | GET | `{+tenant}/{+name}` | Get a push notification config for a task. |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.pushNotificationConfigs.create` | POST | `{+tenant}/{+parent}` | Set a push notification config for a task. |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.pushNotificationConfigs.list` | GET | `{+tenant}/{+parent}/pushNotificationConfigs` | Get a list of push notifications configured for a task. |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.pushNotificationConfigs.delete` | DELETE | `{+tenant}/{+name}` | Delete a push notification config for a task. |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.message.stream` | POST | `{+tenant}/message:stream` | SendStreamingMessage is a streaming call that will return a stream of task update events until th... |
| `discoveryengine.projects.locations.collections.engines.assistants.agents.message.send` | POST | `{+tenant}/message:send` | Send a message to the agent. This is a blocking call that will return the task once it is complet... |
| `discoveryengine.projects.locations.collections.engines.servingConfigs.search` | POST | `v1/{+servingConfig}:search` | Performs a search. |
| `discoveryengine.projects.locations.collections.engines.servingConfigs.streamAnswer` | POST | `v1/{+servingConfig}:streamAnswer` | Answer query method (streaming). It takes one AnswerQueryRequest and returns multiple AnswerQuery... |
| `discoveryengine.projects.locations.collections.engines.servingConfigs.list` | GET | `v1/{+parent}/servingConfigs` | Lists all ServingConfigs linked to this dataStore. |
| `discoveryengine.projects.locations.collections.engines.servingConfigs.answer` | POST | `v1/{+servingConfig}:answer` | Answer query method. |
| `discoveryengine.projects.locations.collections.engines.servingConfigs.get` | GET | `v1/{+name}` | Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist. |
| `discoveryengine.projects.locations.collections.engines.servingConfigs.create` | POST | `v1/{+parent}/servingConfigs` | Creates a ServingConfig. Note: The Google Cloud console works only with the default serving confi... |
| `discoveryengine.projects.locations.collections.engines.servingConfigs.recommend` | POST | `v1/{+servingConfig}:recommend` | Makes a recommendation, which requires a contextual user event. |
| `discoveryengine.projects.locations.collections.engines.servingConfigs.delete` | DELETE | `v1/{+name}` | Deletes a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist. |
| `discoveryengine.projects.locations.collections.engines.servingConfigs.patch` | PATCH | `v1/{+name}` | Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist. |
| `discoveryengine.projects.locations.collections.engines.servingConfigs.searchLite` | POST | `v1/{+servingConfig}:searchLite` | Performs a search. Similar to the SearchService.Search method, but a lite version that allows API... |
| `discoveryengine.projects.locations.collections.engines.controls.delete` | DELETE | `v1/{+name}` | Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error is returned. |
| `discoveryengine.projects.locations.collections.engines.controls.create` | POST | `v1/{+parent}/controls` | Creates a Control. By default 1000 controls are allowed for a data store. A request can be submit... |
| `discoveryengine.projects.locations.collections.engines.controls.list` | GET | `v1/{+parent}/controls` | Lists all Controls by their parent DataStore. |
| `discoveryengine.projects.locations.collections.engines.controls.patch` | PATCH | `v1/{+name}` | Updates a Control. Control action type cannot be changed. If the Control to update does not exist... |
| `discoveryengine.projects.locations.collections.engines.controls.get` | GET | `v1/{+name}` | Gets a Control. |
| `discoveryengine.projects.locations.collections.engines.widgetConfigs.get` | GET | `v1/{+name}` | Gets a WidgetConfig. |
| `discoveryengine.projects.locations.collections.engines.widgetConfigs.patch` | PATCH | `v1/{+name}` | Update a WidgetConfig. |
| `discoveryengine.projects.locations.collections.engines.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.collections.engines.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.collections.engines.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `discoveryengine.projects.locations.collections.engines.sessions.get` | GET | `v1/{+name}` | Gets a Session. |
| `discoveryengine.projects.locations.collections.engines.sessions.create` | POST | `v1/{+parent}/sessions` | Creates a Session. If the Session to create already exists, an ALREADY_EXISTS error is returned. |
| `discoveryengine.projects.locations.collections.engines.sessions.patch` | PATCH | `v1/{+name}` | Updates a Session. Session action type cannot be changed. If the Session to update does not exist... |
| `discoveryengine.projects.locations.collections.engines.sessions.delete` | DELETE | `v1/{+name}` | Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error is returned. |
| `discoveryengine.projects.locations.collections.engines.sessions.list` | GET | `v1/{+parent}/sessions` | Lists all Sessions by their parent DataStore. |
| `discoveryengine.projects.locations.collections.engines.sessions.answers.get` | GET | `v1/{+name}` | Gets a Answer. |
| `discoveryengine.projects.locations.identityMappingStores.delete` | DELETE | `v1/{+name}` | Deletes the Identity Mapping Store. |
| `discoveryengine.projects.locations.identityMappingStores.importIdentityMappings` | POST | `v1/{+identityMappingStore}:importIdentityMappings` | Imports a list of Identity Mapping Entries to an Identity Mapping Store. |
| `discoveryengine.projects.locations.identityMappingStores.listIdentityMappings` | GET | `v1/{+identityMappingStore}:listIdentityMappings` | Lists Identity Mappings in an Identity Mapping Store. |
| `discoveryengine.projects.locations.identityMappingStores.purgeIdentityMappings` | POST | `v1/{+identityMappingStore}:purgeIdentityMappings` | Purges specified or all Identity Mapping Entries from an Identity Mapping Store. |
| `discoveryengine.projects.locations.identityMappingStores.create` | POST | `v1/{+parent}/identityMappingStores` | Creates a new Identity Mapping Store. |
| `discoveryengine.projects.locations.identityMappingStores.get` | GET | `v1/{+name}` | Gets the Identity Mapping Store. |
| `discoveryengine.projects.locations.identityMappingStores.list` | GET | `v1/{+parent}/identityMappingStores` | Lists all Identity Mapping Stores. |
| `discoveryengine.projects.locations.identityMappingStores.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.identityMappingStores.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.cmekConfigs.patch` | PATCH | `v1/{+name}` | Provisions a CMEK key for use in a location of a customer's project. This method will also conduc... |
| `discoveryengine.projects.locations.cmekConfigs.get` | GET | `v1/{+name}` | Gets the CmekConfig. |
| `discoveryengine.projects.locations.cmekConfigs.list` | GET | `v1/{+parent}/cmekConfigs` | Lists all the CmekConfigs with the project. |
| `discoveryengine.projects.locations.cmekConfigs.delete` | DELETE | `v1/{+name}` | De-provisions a CmekConfig. |
| `discoveryengine.projects.locations.dataStores.patch` | PATCH | `v1/{+name}` | Updates a DataStore |
| `discoveryengine.projects.locations.dataStores.create` | POST | `v1/{+parent}/dataStores` | Creates a DataStore. DataStore is for storing Documents. To serve these documents for Search, or ... |
| `discoveryengine.projects.locations.dataStores.getSiteSearchEngine` | GET | `v1/{+name}` | Gets the SiteSearchEngine. |
| `discoveryengine.projects.locations.dataStores.delete` | DELETE | `v1/{+name}` | Deletes a DataStore. |
| `discoveryengine.projects.locations.dataStores.list` | GET | `v1/{+parent}/dataStores` | Lists all the DataStores associated with the project. |
| `discoveryengine.projects.locations.dataStores.get` | GET | `v1/{+name}` | Gets a DataStore. |
| `discoveryengine.projects.locations.dataStores.completeQuery` | GET | `v1/{+dataStore}:completeQuery` | Completes the specified user input with keyword suggestions. |
| `discoveryengine.projects.locations.dataStores.suggestionDenyListEntries.import` | POST | `v1/{+parent}/suggestionDenyListEntries:import` | Imports all SuggestionDenyListEntry for a DataStore. |
| `discoveryengine.projects.locations.dataStores.suggestionDenyListEntries.purge` | POST | `v1/{+parent}/suggestionDenyListEntries:purge` | Permanently deletes all SuggestionDenyListEntry for a DataStore. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.enableAdvancedSiteSearch` | POST | `v1/{+siteSearchEngine}:enableAdvancedSiteSearch` | Upgrade from basic site search to advanced site search. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.disableAdvancedSiteSearch` | POST | `v1/{+siteSearchEngine}:disableAdvancedSiteSearch` | Downgrade from advanced site search to basic site search. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.recrawlUris` | POST | `v1/{+siteSearchEngine}:recrawlUris` | Request on-demand recrawl for a list of URIs. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.sitemaps.fetch` | GET | `v1/{+parent}/sitemaps:fetch` | Fetch Sitemaps in a DataStore. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.sitemaps.delete` | DELETE | `v1/{+name}` | Deletes a Sitemap. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.sitemaps.create` | POST | `v1/{+parent}/sitemaps` | Creates a Sitemap. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.get` | GET | `v1/{+name}` | Gets a TargetSite. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.batchCreate` | POST | `v1/{+parent}/targetSites:batchCreate` | Creates TargetSite in a batch. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.delete` | DELETE | `v1/{+name}` | Deletes a TargetSite. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.patch` | PATCH | `v1/{+name}` | Updates a TargetSite. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.create` | POST | `v1/{+parent}/targetSites` | Creates a TargetSite. |
| `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.list` | GET | `v1/{+parent}/targetSites` | Gets a list of TargetSites. |
| `discoveryengine.projects.locations.dataStores.models.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.dataStores.models.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.dataStores.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.dataStores.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.dataStores.completionConfig.completeQuery` | POST | `v1/{+completionConfig}:completeQuery` | Completes the user input with advanced keyword suggestions. |
| `discoveryengine.projects.locations.dataStores.controls.list` | GET | `v1/{+parent}/controls` | Lists all Controls by their parent DataStore. |
| `discoveryengine.projects.locations.dataStores.controls.get` | GET | `v1/{+name}` | Gets a Control. |
| `discoveryengine.projects.locations.dataStores.controls.create` | POST | `v1/{+parent}/controls` | Creates a Control. By default 1000 controls are allowed for a data store. A request can be submit... |
| `discoveryengine.projects.locations.dataStores.controls.delete` | DELETE | `v1/{+name}` | Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error is returned. |
| `discoveryengine.projects.locations.dataStores.controls.patch` | PATCH | `v1/{+name}` | Updates a Control. Control action type cannot be changed. If the Control to update does not exist... |
| `discoveryengine.projects.locations.dataStores.sessions.patch` | PATCH | `v1/{+name}` | Updates a Session. Session action type cannot be changed. If the Session to update does not exist... |
| `discoveryengine.projects.locations.dataStores.sessions.create` | POST | `v1/{+parent}/sessions` | Creates a Session. If the Session to create already exists, an ALREADY_EXISTS error is returned. |
| `discoveryengine.projects.locations.dataStores.sessions.delete` | DELETE | `v1/{+name}` | Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error is returned. |
| `discoveryengine.projects.locations.dataStores.sessions.list` | GET | `v1/{+parent}/sessions` | Lists all Sessions by their parent DataStore. |
| `discoveryengine.projects.locations.dataStores.sessions.get` | GET | `v1/{+name}` | Gets a Session. |
| `discoveryengine.projects.locations.dataStores.sessions.answers.get` | GET | `v1/{+name}` | Gets a Answer. |
| `discoveryengine.projects.locations.dataStores.userEvents.purge` | POST | `v1/{+parent}/userEvents:purge` | Deletes permanently all user events specified by the filter provided. Depending on the number of ... |
| `discoveryengine.projects.locations.dataStores.userEvents.collect` | GET | `v1/{+parent}/userEvents:collect` | Writes a single user event from the browser. This uses a GET request to due to browser restrictio... |
| `discoveryengine.projects.locations.dataStores.userEvents.write` | POST | `v1/{+parent}/userEvents:write` | Writes a single user event. |
| `discoveryengine.projects.locations.dataStores.userEvents.import` | POST | `v1/{+parent}/userEvents:import` | Bulk import of user events. Request processing might be synchronous. Events that already exist ar... |
| `discoveryengine.projects.locations.dataStores.servingConfigs.create` | POST | `v1/{+parent}/servingConfigs` | Creates a ServingConfig. Note: The Google Cloud console works only with the default serving confi... |
| `discoveryengine.projects.locations.dataStores.servingConfigs.list` | GET | `v1/{+parent}/servingConfigs` | Lists all ServingConfigs linked to this dataStore. |
| `discoveryengine.projects.locations.dataStores.servingConfigs.patch` | PATCH | `v1/{+name}` | Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist. |
| `discoveryengine.projects.locations.dataStores.servingConfigs.recommend` | POST | `v1/{+servingConfig}:recommend` | Makes a recommendation, which requires a contextual user event. |
| `discoveryengine.projects.locations.dataStores.servingConfigs.streamAnswer` | POST | `v1/{+servingConfig}:streamAnswer` | Answer query method (streaming). It takes one AnswerQueryRequest and returns multiple AnswerQuery... |
| `discoveryengine.projects.locations.dataStores.servingConfigs.get` | GET | `v1/{+name}` | Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist. |
| `discoveryengine.projects.locations.dataStores.servingConfigs.answer` | POST | `v1/{+servingConfig}:answer` | Answer query method. |
| `discoveryengine.projects.locations.dataStores.servingConfigs.search` | POST | `v1/{+servingConfig}:search` | Performs a search. |
| `discoveryengine.projects.locations.dataStores.servingConfigs.delete` | DELETE | `v1/{+name}` | Deletes a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist. |
| `discoveryengine.projects.locations.dataStores.servingConfigs.searchLite` | POST | `v1/{+servingConfig}:searchLite` | Performs a search. Similar to the SearchService.Search method, but a lite version that allows API... |
| `discoveryengine.projects.locations.dataStores.branches.batchGetDocumentsMetadata` | GET | `v1/{+parent}/batchGetDocumentsMetadata` | Gets index freshness metadata for Documents. Supported for website search only. |
| `discoveryengine.projects.locations.dataStores.branches.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.dataStores.branches.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.dataStores.branches.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `discoveryengine.projects.locations.dataStores.branches.documents.import` | POST | `v1/{+parent}/documents:import` | Bulk import of multiple Documents. Request processing may be synchronous. Non-existing items are ... |
| `discoveryengine.projects.locations.dataStores.branches.documents.patch` | PATCH | `v1/{+name}` | Updates a Document. |
| `discoveryengine.projects.locations.dataStores.branches.documents.get` | GET | `v1/{+name}` | Gets a Document. |
| `discoveryengine.projects.locations.dataStores.branches.documents.list` | GET | `v1/{+parent}/documents` | Gets a list of Documents. |
| `discoveryengine.projects.locations.dataStores.branches.documents.create` | POST | `v1/{+parent}/documents` | Creates a Document. |
| `discoveryengine.projects.locations.dataStores.branches.documents.delete` | DELETE | `v1/{+name}` | Deletes a Document. |
| `discoveryengine.projects.locations.dataStores.branches.documents.purge` | POST | `v1/{+parent}/documents:purge` | Permanently deletes all selected Documents in a branch. This process is asynchronous. Depending o... |
| `discoveryengine.projects.locations.dataStores.schemas.create` | POST | `v1/{+parent}/schemas` | Creates a Schema. |
| `discoveryengine.projects.locations.dataStores.schemas.list` | GET | `v1/{+parent}/schemas` | Gets a list of Schemas. |
| `discoveryengine.projects.locations.dataStores.schemas.get` | GET | `v1/{+name}` | Gets a Schema. |
| `discoveryengine.projects.locations.dataStores.schemas.patch` | PATCH | `v1/{+name}` | Updates a Schema. |
| `discoveryengine.projects.locations.dataStores.schemas.delete` | DELETE | `v1/{+name}` | Deletes a Schema. |
| `discoveryengine.projects.locations.dataStores.completionSuggestions.import` | POST | `v1/{+parent}/completionSuggestions:import` | Imports CompletionSuggestions for a DataStore. |
| `discoveryengine.projects.locations.dataStores.completionSuggestions.purge` | POST | `v1/{+parent}/completionSuggestions:purge` | Permanently deletes all CompletionSuggestions for a DataStore. |
| `discoveryengine.projects.locations.dataStores.conversations.patch` | PATCH | `v1/{+name}` | Updates a Conversation. Conversation action type cannot be changed. If the Conversation to update... |
| `discoveryengine.projects.locations.dataStores.conversations.converse` | POST | `v1/{+name}:converse` | Converses a conversation. |
| `discoveryengine.projects.locations.dataStores.conversations.get` | GET | `v1/{+name}` | Gets a Conversation. |
| `discoveryengine.projects.locations.dataStores.conversations.delete` | DELETE | `v1/{+name}` | Deletes a Conversation. If the Conversation to delete does not exist, a NOT_FOUND error is returned. |
| `discoveryengine.projects.locations.dataStores.conversations.list` | GET | `v1/{+parent}/conversations` | Lists all Conversations by their parent DataStore. |
| `discoveryengine.projects.locations.dataStores.conversations.create` | POST | `v1/{+parent}/conversations` | Creates a Conversation. If the Conversation to create already exists, an ALREADY_EXISTS error is ... |
| `discoveryengine.projects.locations.dataStores.widgetConfigs.get` | GET | `v1/{+name}` | Gets a WidgetConfig. |
| `discoveryengine.projects.locations.dataStores.widgetConfigs.patch` | PATCH | `v1/{+name}` | Update a WidgetConfig. |
| `discoveryengine.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `discoveryengine.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.podcasts.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.locations.userStores.batchUpdateUserLicenses` | POST | `v1/{+parent}:batchUpdateUserLicenses` | Updates the User License. This method is used for batch assign/unassign licenses to users. |
| `discoveryengine.projects.locations.userStores.create` | POST | `v1/{+parent}/userStores` | Creates a new User Store. |
| `discoveryengine.projects.locations.userStores.patch` | PATCH | `v1/{+name}` | Updates the User Store. |
| `discoveryengine.projects.locations.userStores.get` | GET | `v1/{+name}` | Gets the User Store. |
| `discoveryengine.projects.locations.userStores.delete` | DELETE | `v1/{+name}` | Deletes the User Store. |
| `discoveryengine.projects.locations.userStores.userLicenses.list` | GET | `v1/{+parent}/userLicenses` | Lists the User Licenses. |
| `discoveryengine.projects.locations.userStores.licenseConfigsUsageStats.list` | GET | `v1/{+parent}/licenseConfigsUsageStats` | Lists all the LicenseConfigUsageStatss associated with the project. |
| `discoveryengine.projects.locations.groundingConfigs.check` | POST | `v1/{+groundingConfig}:check` | Performs a grounding check. |
| `discoveryengine.projects.locations.rankingConfigs.rank` | POST | `v1/{+rankingConfig}:rank` | Ranks a list of text records based on the given input query. |
| `discoveryengine.projects.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `discoveryengine.projects.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `discoveryengine.projects.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |

### `discoveryengine.projects.provision`

**POST** `v1/{+name}:provision`

Provisions the project resource. During the process, related systems will get prepared and initialized. Caller must read the [Terms for data use](https://cloud.google.com/retail/data-use-terms), and optionally specify in request to provide consent to that service terms.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of a Project, such as `projects/{project_id_or_number}`. |

**Request body**: `GoogleCloudDiscoveryengineV1ProvisionProjectRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.projects.provision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.setUpDataConnectorV2`

**POST** `v1/{+parent}:setUpDataConnectorV2`

Creates a Collection and sets up the DataConnector for it. To stop a DataConnector after setup, use the CollectionService.DeleteCollection method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of Collection, in the format of `projects/{project}/locations/{location}`. |
| `collectionDisplayName` | `string` | query | No | Required. The display name of the Collection. Should be human readable, used to display collections in the Console Da... |
| `collectionId` | `string` | query | No | Required. The ID to use for the Collection, which will become the final component of the Collection's resource name. ... |

**Request body**: `GoogleCloudDiscoveryengineV1DataConnector`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.locations.setUpDataConnectorV2({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.setUpDataConnector`

**POST** `v1/{+parent}:setUpDataConnector`

Creates a Collection and sets up the DataConnector for it. To stop a DataConnector after setup, use the CollectionService.DeleteCollection method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of Collection, in the format of `projects/{project}/locations/{location}`. |

**Request body**: `GoogleCloudDiscoveryengineV1SetUpDataConnectorRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.locations.setUpDataConnector({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.getCmekConfig`

**GET** `v1/{+name}`

Gets the CmekConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of CmekConfig, such as `projects/*/locations/*/cmekConfig` or `projects/*/locations/*/cmekCon... |

**Response**: `GoogleCloudDiscoveryengineV1CmekConfig`

```typescript
const res = await discoveryengine.locations.getCmekConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.getAclConfig`

**GET** `v1/{+name}`

Gets the AclConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of AclConfig, such as `projects/*/locations/*/aclConfig`. If the caller does not have permiss... |

**Response**: `GoogleCloudDiscoveryengineV1AclConfig`

```typescript
const res = await discoveryengine.locations.getAclConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.updateAclConfig`

**PATCH** `v1/{+name}`

Default ACL configuration for use in a location of a customer's project. Updates will only reflect to new data stores. Existing data stores will still use the old value.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The full resource name of the acl configuration. Format: `projects/{project}/locations/{location}/aclConfi... |

**Request body**: `GoogleCloudDiscoveryengineV1AclConfig`

**Response**: `GoogleCloudDiscoveryengineV1AclConfig`

```typescript
const res = await discoveryengine.locations.updateAclConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.updateCmekConfig`

**PATCH** `v1/{+name}`

Provisions a CMEK key for use in a location of a customer's project. This method will also conduct location validation on the provided cmekConfig to make sure the key is valid and can be used in the selected location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CmekConfig of the form `projects/{project}/locations/{location}/cmekConfig` or `projects/{p... |
| `setDefault` | `boolean` | query | No | Set the following CmekConfig as the default to be used for child resources if one is not specified. |

**Request body**: `GoogleCloudDiscoveryengineV1CmekConfig`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.locations.updateCmekConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.licenseConfigs.get`

**GET** `v1/{+name}`

Gets a LicenseConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of LicenseConfig, such as `projects/{project}/locations/{location}/licenseConfigs/*`. If... |

**Response**: `GoogleCloudDiscoveryengineV1LicenseConfig`

```typescript
const res = await discoveryengine.licenseConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.licenseConfigs.patch`

**PATCH** `v1/{+name}`

Updates the LicenseConfig

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The fully qualified resource name of the license config. Format: `projects/{project}/locations... |
| `updateMask` | `string` | query | No | Optional. Indicates which fields in the provided LicenseConfig to update. If an unsupported or unknown field is provi... |

**Request body**: `GoogleCloudDiscoveryengineV1LicenseConfig`

**Response**: `GoogleCloudDiscoveryengineV1LicenseConfig`

```typescript
const res = await discoveryengine.licenseConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.licenseConfigs.create`

**POST** `v1/{+parent}/licenseConfigs`

Creates a LicenseConfig

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, such as `projects/{project}/locations/{location}`. |
| `licenseConfigId` | `string` | query | No | Optional. The ID to use for the LicenseConfig, which will become the final component of the LicenseConfig's resource ... |

**Request body**: `GoogleCloudDiscoveryengineV1LicenseConfig`

**Response**: `GoogleCloudDiscoveryengineV1LicenseConfig`

```typescript
const res = await discoveryengine.licenseConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.userEvents.collect`

**GET** `v1/{+parent}/userEvents:collect`

Writes a single user event from the browser. This uses a GET request to due to browser restriction of POST-ing to a third-party domain. This method is used only by the Discovery Engine API JavaScript pixel and Google Tag Manager. Users should not call this method directly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. If the collect user event action is applied in DataStore level, the format is: `p... |
| `ets` | `string` | query | No | The event timestamp in milliseconds. This prevents browser caching of otherwise identical get requests. The name is a... |
| `uri` | `string` | query | No | The URL including cgi-parameters but excluding the hash fragment with a length limit of 5,000 characters. This is oft... |
| `userEvent` | `string` | query | No | Required. URL encoded UserEvent proto with a length limit of 2,000,000 characters. |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await discoveryengine.userEvents.collect({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.userEvents.import`

**POST** `v1/{+parent}/userEvents:import`

Bulk import of user events. Request processing might be synchronous. Events that already exist are skipped. Use this method for backfilling historical user events. Operation.response is of type ImportResponse. Note that it is possible for a subset of the items to be successfully inserted. Operation.metadata is of type ImportMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent DataStore resource name, of the form `projects/{project}/locations/{location}/collections/{collectio... |

**Request body**: `GoogleCloudDiscoveryengineV1ImportUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.userEvents.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.userEvents.write`

**POST** `v1/{+parent}/userEvents:write`

Writes a single user event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. If the write user event action is applied in DataStore level, the format is: `pro... |
| `writeAsync` | `boolean` | query | No | If set to true, the user event is written asynchronously after validation, and the API responds without waiting for t... |

**Request body**: `GoogleCloudDiscoveryengineV1UserEvent`

**Response**: `GoogleCloudDiscoveryengineV1UserEvent`

```typescript
const res = await discoveryengine.userEvents.write({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.getDataConnector`

**GET** `v1/{+name}`

Gets the DataConnector. DataConnector is a singleton resource for each Collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of DataConnector, such as `projects/{project}/locations/{location}/collections/{collecti... |

**Response**: `GoogleCloudDiscoveryengineV1DataConnector`

```typescript
const res = await discoveryengine.collections.getDataConnector({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.updateDataConnector`

**PATCH** `v1/{+name}`

Updates a DataConnector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The full resource name of the Data Connector. Format: `projects/*/locations/*/collections/*/dataConnector`. |
| `updateMask` | `string` | query | No | Indicates which fields in the provided DataConnector to update. Supported field paths include: - `refresh_interval` -... |

**Request body**: `GoogleCloudDiscoveryengineV1DataConnector`

**Response**: `GoogleCloudDiscoveryengineV1DataConnector`

```typescript
const res = await discoveryengine.collections.updateDataConnector({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.delete`

**DELETE** `v1/{+name}`

Deletes a Collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the Collection, in the format of `projects/{project}/locations/{location}/collect... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.collections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataConnector.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataConnector.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.patch`

**PATCH** `v1/{+name}`

Updates a DataStore

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The full resource name of the data store. Format: `projects/{project}/locations/{location}/col... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided DataStore to update. If an unsupported or unknown field is provided, an INVALI... |

**Request body**: `GoogleCloudDiscoveryengineV1DataStore`

**Response**: `GoogleCloudDiscoveryengineV1DataStore`

```typescript
const res = await discoveryengine.dataStores.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.list`

**GET** `v1/{+parent}/dataStores`

Lists all the DataStores associated with the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent branch resource name, such as `projects/{project}/locations/{location}/collections/{collection_i... |
| `filter` | `string` | query | No | Filter by solution type . For example: `filter = 'solution_type:SOLUTION_TYPE_SEARCH'` |
| `pageSize` | `integer` | query | No | Maximum number of DataStores to return. If unspecified, defaults to 10. The maximum allowed value is 50. Values above... |
| `pageToken` | `string` | query | No | A page token ListDataStoresResponse.next_page_token, received from a previous DataStoreService.ListDataStores call. P... |

**Response**: `GoogleCloudDiscoveryengineV1ListDataStoresResponse`

```typescript
const res = await discoveryengine.dataStores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.delete`

**DELETE** `v1/{+name}`

Deletes a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/collections/{collection_i... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.dataStores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.trainCustomModel`

**POST** `v1/{+dataStore}:trainCustomModel`

Trains a custom model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataStore` | `string` | path | Yes | Required. The resource name of the Data Store, such as `projects/*/locations/global/collections/default_collection/da... |

**Request body**: `GoogleCloudDiscoveryengineV1TrainCustomModelRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.dataStores.trainCustomModel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.completeQuery`

**GET** `v1/{+dataStore}:completeQuery`

Completes the specified user input with keyword suggestions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataStore` | `string` | path | Yes | Required. The parent data store resource name for which the completion is performed, such as `projects/*/locations/gl... |
| `includeTailSuggestions` | `boolean` | query | No | Indicates if tail suggestions should be returned if there are no suggestions that match the full query. Even if set t... |
| `query` | `string` | query | No | Required. The typeahead input used to fetch suggestions. Maximum length is 128 characters. |
| `queryModel` | `string` | query | No | Specifies the autocomplete data model. This overrides any model specified in the Configuration > Autocomplete section... |
| `userPseudoId` | `string` | query | No | Optional. A unique identifier for tracking visitors. For example, this could be implemented with an HTTP cookie, whic... |

**Response**: `GoogleCloudDiscoveryengineV1CompleteQueryResponse`

```typescript
const res = await discoveryengine.dataStores.completeQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.getSiteSearchEngine`

**GET** `v1/{+name}`

Gets the SiteSearchEngine.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of SiteSearchEngine, such as `projects/{project}/locations/{location}/collections/{collection... |

**Response**: `GoogleCloudDiscoveryengineV1SiteSearchEngine`

```typescript
const res = await discoveryengine.dataStores.getSiteSearchEngine({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.create`

**POST** `v1/{+parent}/dataStores`

Creates a DataStore. DataStore is for storing Documents. To serve these documents for Search, or Recommendation use case, an Engine needs to be created separately.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, such as `projects/{project}/locations/{location}/collections/{collection}`. |
| `cmekConfigName` | `string` | query | No | Resource name of the CmekConfig to use for protecting this DataStore. |
| `createAdvancedSiteSearch` | `boolean` | query | No | A boolean flag indicating whether user want to directly create an advanced data store for site search. If the data st... |
| `dataStoreId` | `string` | query | No | Required. The ID to use for the DataStore, which will become the final component of the DataStore's resource name. Th... |
| `disableCmek` | `boolean` | query | No | DataStore without CMEK protections. If a default CmekConfig is set for the project, setting this field will override ... |
| `skipDefaultSchemaCreation` | `boolean` | query | No | A boolean flag indicating whether to skip the default schema creation for the data store. Only enable this flag if yo... |

**Request body**: `GoogleCloudDiscoveryengineV1DataStore`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.dataStores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.get`

**GET** `v1/{+name}`

Gets a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/collections/{collection_i... |

**Response**: `GoogleCloudDiscoveryengineV1DataStore`

```typescript
const res = await discoveryengine.dataStores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.conversations.list`

**GET** `v1/{+parent}/conversations`

Lists all Conversations by their parent DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The data store resource name. Format: `projects/{project}/locations/{location}/collections/{collection}/dat... |
| `filter` | `string` | query | No | A filter to apply on the list results. The supported features are: user_pseudo_id, state. Example: "user_pseudo_id = ... |
| `orderBy` | `string` | query | No | A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field name for descending... |
| `pageSize` | `integer` | query | No | Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListConversations` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDiscoveryengineV1ListConversationsResponse`

```typescript
const res = await discoveryengine.conversations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.conversations.get`

**GET** `v1/{+name}`

Gets a Conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Conversation to get. Format: `projects/{project}/locations/{location}/collections/... |

**Response**: `GoogleCloudDiscoveryengineV1Conversation`

```typescript
const res = await discoveryengine.conversations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.conversations.create`

**POST** `v1/{+parent}/conversations`

Creates a Conversation. If the Conversation to create already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent data store. Format: `projects/{project}/locations/{location}/collections/{coll... |

**Request body**: `GoogleCloudDiscoveryengineV1Conversation`

**Response**: `GoogleCloudDiscoveryengineV1Conversation`

```typescript
const res = await discoveryengine.conversations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.conversations.delete`

**DELETE** `v1/{+name}`

Deletes a Conversation. If the Conversation to delete does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Conversation to delete. Format: `projects/{project}/locations/{location}/collectio... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.conversations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.conversations.converse`

**POST** `v1/{+name}:converse`

Converses a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Conversation to get. Format: `projects/{project}/locations/{location}/collections/... |

**Request body**: `GoogleCloudDiscoveryengineV1ConverseConversationRequest`

**Response**: `GoogleCloudDiscoveryengineV1ConverseConversationResponse`

```typescript
const res = await discoveryengine.conversations.converse({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.conversations.patch`

**PATCH** `v1/{+name}`

Updates a Conversation. Conversation action type cannot be changed. If the Conversation to update does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/dataStore/*/conversatio... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided Conversation to update. The following are NOT supported: * Conversation.name I... |

**Request body**: `GoogleCloudDiscoveryengineV1Conversation`

**Response**: `GoogleCloudDiscoveryengineV1Conversation`

```typescript
const res = await discoveryengine.conversations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.userEvents.purge`

**POST** `v1/{+parent}/userEvents:purge`

Deletes permanently all user events specified by the filter provided. Depending on the number of events specified by the filter, this operation could take hours or days to complete. To test a filter, use the list command first.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the catalog under which the events are created. The format is `projects/{project}/loca... |

**Request body**: `GoogleCloudDiscoveryengineV1PurgeUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.userEvents.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.userEvents.import`

**POST** `v1/{+parent}/userEvents:import`

Bulk import of user events. Request processing might be synchronous. Events that already exist are skipped. Use this method for backfilling historical user events. Operation.response is of type ImportResponse. Note that it is possible for a subset of the items to be successfully inserted. Operation.metadata is of type ImportMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent DataStore resource name, of the form `projects/{project}/locations/{location}/collections/{collectio... |

**Request body**: `GoogleCloudDiscoveryengineV1ImportUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.userEvents.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.userEvents.collect`

**GET** `v1/{+parent}/userEvents:collect`

Writes a single user event from the browser. This uses a GET request to due to browser restriction of POST-ing to a third-party domain. This method is used only by the Discovery Engine API JavaScript pixel and Google Tag Manager. Users should not call this method directly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. If the collect user event action is applied in DataStore level, the format is: `p... |
| `ets` | `string` | query | No | The event timestamp in milliseconds. This prevents browser caching of otherwise identical get requests. The name is a... |
| `uri` | `string` | query | No | The URL including cgi-parameters but excluding the hash fragment with a length limit of 5,000 characters. This is oft... |
| `userEvent` | `string` | query | No | Required. URL encoded UserEvent proto with a length limit of 2,000,000 characters. |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await discoveryengine.userEvents.collect({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.userEvents.write`

**POST** `v1/{+parent}/userEvents:write`

Writes a single user event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. If the write user event action is applied in DataStore level, the format is: `pro... |
| `writeAsync` | `boolean` | query | No | If set to true, the user event is written asynchronously after validation, and the API responds without waiting for t... |

**Request body**: `GoogleCloudDiscoveryengineV1UserEvent`

**Response**: `GoogleCloudDiscoveryengineV1UserEvent`

```typescript
const res = await discoveryengine.userEvents.write({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.customModels.list`

**GET** `v1/{+dataStore}/customModels`

Gets a list of all the custom models.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataStore` | `string` | path | Yes | Required. The resource name of the parent Data Store, such as `projects/*/locations/global/collections/default_collec... |

**Response**: `GoogleCloudDiscoveryengineV1ListCustomModelsResponse`

```typescript
const res = await discoveryengine.customModels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.recrawlUris`

**POST** `v1/{+siteSearchEngine}:recrawlUris`

Request on-demand recrawl for a list of URIs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteSearchEngine` | `string` | path | Yes | Required. Full resource name of the SiteSearchEngine, such as `projects/*/locations/*/collections/*/dataStores/*/site... |

**Request body**: `GoogleCloudDiscoveryengineV1RecrawlUrisRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.siteSearchEngine.recrawlUris({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.fetchDomainVerificationStatus`

**GET** `v1/{+siteSearchEngine}:fetchDomainVerificationStatus`

Returns list of target sites with its domain verification status. This method can only be called under data store with BASIC_SITE_SEARCH state at the moment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteSearchEngine` | `string` | path | Yes | Required. The site search engine resource under which we fetch all the domain verification status. `projects/{project... |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A page token, received from a previous `FetchDomainVerificationStatus` call. Provide this to retrieve the subsequent ... |

**Response**: `GoogleCloudDiscoveryengineV1FetchDomainVerificationStatusResponse`

```typescript
const res = await discoveryengine.siteSearchEngine.fetchDomainVerificationStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.disableAdvancedSiteSearch`

**POST** `v1/{+siteSearchEngine}:disableAdvancedSiteSearch`

Downgrade from advanced site search to basic site search.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteSearchEngine` | `string` | path | Yes | Required. Full resource name of the SiteSearchEngine, such as `projects/{project}/locations/{location}/dataStores/{da... |

**Request body**: `GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.siteSearchEngine.disableAdvancedSiteSearch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.batchVerifyTargetSites`

**POST** `v1/{+parent}:batchVerifyTargetSites`

Verify target sites' ownership and validity. This API sends all the target sites under site search engine for verification.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource shared by all TargetSites being verified. `projects/{project}/locations/{location}/coll... |

**Request body**: `GoogleCloudDiscoveryengineV1BatchVerifyTargetSitesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.siteSearchEngine.batchVerifyTargetSites({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.enableAdvancedSiteSearch`

**POST** `v1/{+siteSearchEngine}:enableAdvancedSiteSearch`

Upgrade from basic site search to advanced site search.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteSearchEngine` | `string` | path | Yes | Required. Full resource name of the SiteSearchEngine, such as `projects/{project}/locations/{location}/dataStores/{da... |

**Request body**: `GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.siteSearchEngine.enableAdvancedSiteSearch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.list`

**GET** `v1/{+parent}/targetSites`

Gets a list of TargetSites.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent site search engine resource name, such as `projects/{project}/locations/{location}/collections/{... |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListTargetSites` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `GoogleCloudDiscoveryengineV1ListTargetSitesResponse`

```typescript
const res = await discoveryengine.targetSites.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.patch`

**PATCH** `v1/{+name}`

Updates a TargetSite.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The fully qualified resource name of the target site. `projects/{project}/locations/{location}/collectio... |

**Request body**: `GoogleCloudDiscoveryengineV1TargetSite`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.targetSites.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.get`

**GET** `v1/{+name}`

Gets a TargetSite.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of TargetSite, such as `projects/{project}/locations/{location}/collections/{collection}... |

**Response**: `GoogleCloudDiscoveryengineV1TargetSite`

```typescript
const res = await discoveryengine.targetSites.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.batchCreate`

**POST** `v1/{+parent}/targetSites:batchCreate`

Creates TargetSite in a batch.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource shared by all TargetSites being created. `projects/{project}/locations/{location}/colle... |

**Request body**: `GoogleCloudDiscoveryengineV1BatchCreateTargetSitesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.targetSites.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.delete`

**DELETE** `v1/{+name}`

Deletes a TargetSite.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of TargetSite, such as `projects/{project}/locations/{location}/collections/{collection}... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.targetSites.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.create`

**POST** `v1/{+parent}/targetSites`

Creates a TargetSite.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name of TargetSite, such as `projects/{project}/locations/{location}/collections/{collectio... |

**Request body**: `GoogleCloudDiscoveryengineV1TargetSite`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.targetSites.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.targetSites.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.sitemaps.fetch`

**GET** `v1/{+parent}/sitemaps:fetch`

Fetch Sitemaps in a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name of the SiteSearchEngine, such as `projects/*/locations/*/collections/*/dataStores/*/si... |
| `matcher.urisMatcher.uris` | `string` | query | No | The Sitemap uris. |

**Response**: `GoogleCloudDiscoveryengineV1FetchSitemapsResponse`

```typescript
const res = await discoveryengine.sitemaps.fetch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.sitemaps.create`

**POST** `v1/{+parent}/sitemaps`

Creates a Sitemap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name of the SiteSearchEngine, such as `projects/*/locations/*/collections/*/dataStores/*/si... |

**Request body**: `GoogleCloudDiscoveryengineV1Sitemap`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.sitemaps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.siteSearchEngine.sitemaps.delete`

**DELETE** `v1/{+name}`

Deletes a Sitemap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of Sitemap, such as `projects/{project}/locations/{location}/collections/{collection}/da... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.sitemaps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.models.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.models.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.suggestionDenyListEntries.purge`

**POST** `v1/{+parent}/suggestionDenyListEntries:purge`

Permanently deletes all SuggestionDenyListEntry for a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name for which to import denylist entries. Follows pattern projects/*/locati... |

**Request body**: `GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.suggestionDenyListEntries.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.suggestionDenyListEntries.import`

**POST** `v1/{+parent}/suggestionDenyListEntries:import`

Imports all SuggestionDenyListEntry for a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name for which to import denylist entries. Follows pattern projects/*/locati... |

**Request body**: `GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.suggestionDenyListEntries.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.completionSuggestions.import`

**POST** `v1/{+parent}/completionSuggestions:import`

Imports CompletionSuggestions for a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name for which to import customer autocomplete suggestions. Follows pattern ... |

**Request body**: `GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.completionSuggestions.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.completionSuggestions.purge`

**POST** `v1/{+parent}/completionSuggestions:purge`

Permanently deletes all CompletionSuggestions for a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name for which to purge completion suggestions. Follows pattern projects/*/l... |

**Request body**: `GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.completionSuggestions.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.widgetConfigs.patch`

**PATCH** `v1/{+name}`

Update a WidgetConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The full resource name of the widget config. Format: `projects/{project}/locations/{location}/collections/... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided WidgetConfig to update. The following are the only supported fields: * WidgetC... |

**Request body**: `GoogleCloudDiscoveryengineV1WidgetConfig`

**Response**: `GoogleCloudDiscoveryengineV1WidgetConfig`

```typescript
const res = await discoveryengine.widgetConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.widgetConfigs.get`

**GET** `v1/{+name}`

Gets a WidgetConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full WidgetConfig resource name. Format: `projects/{project}/locations/{location}/collections/{collection_i... |
| `acceptCache` | `boolean` | query | No | Optional. Whether it's acceptable to load the widget config from cache. If set to true, recent changes on widget conf... |
| `getWidgetConfigRequestOption.turnOffCollectionComponents` | `boolean` | query | No | Optional. Whether to turn off collection_components in WidgetConfig to reduce latency and data transmission. |

**Response**: `GoogleCloudDiscoveryengineV1WidgetConfig`

```typescript
const res = await discoveryengine.widgetConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.sessions.list`

**GET** `v1/{+parent}/sessions`

Lists all Sessions by their parent DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The data store resource name. Format: `projects/{project}/locations/{location}/collections/{collection}/dat... |
| `filter` | `string` | query | No | A comma-separated list of fields to filter by, in EBNF grammar. The supported fields are: * `user_pseudo_id` * `state... |
| `orderBy` | `string` | query | No | A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field name for descending... |
| `pageSize` | `integer` | query | No | Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSessions` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDiscoveryengineV1ListSessionsResponse`

```typescript
const res = await discoveryengine.sessions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.sessions.create`

**POST** `v1/{+parent}/sessions`

Creates a Session. If the Session to create already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent data store. Format: `projects/{project}/locations/{location}/collections/{coll... |

**Request body**: `GoogleCloudDiscoveryengineV1Session`

**Response**: `GoogleCloudDiscoveryengineV1Session`

```typescript
const res = await discoveryengine.sessions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.sessions.delete`

**DELETE** `v1/{+name}`

Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Session to delete. Format: `projects/{project}/locations/{location}/collections/{c... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.sessions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.sessions.patch`

**PATCH** `v1/{+name}`

Updates a Session. Session action type cannot be changed. If the Session to update does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/engines/{engine}/sessio... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided Session to update. The following are NOT supported: * Session.name If not set ... |

**Request body**: `GoogleCloudDiscoveryengineV1Session`

**Response**: `GoogleCloudDiscoveryengineV1Session`

```typescript
const res = await discoveryengine.sessions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.sessions.get`

**GET** `v1/{+name}`

Gets a Session.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Session to get. Format: `projects/{project}/locations/{location}/collections/{coll... |
| `includeAnswerDetails` | `boolean` | query | No | Optional. If set to true, the full session including all answer details will be returned. |

**Response**: `GoogleCloudDiscoveryengineV1Session`

```typescript
const res = await discoveryengine.sessions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.sessions.answers.get`

**GET** `v1/{+name}`

Gets a Answer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Answer to get. Format: `projects/{project}/locations/{location}/collections/{colle... |

**Response**: `GoogleCloudDiscoveryengineV1Answer`

```typescript
const res = await discoveryengine.answers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.controls.list`

**GET** `v1/{+parent}/controls`

Lists all Controls by their parent DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The data store resource name. Format: `projects/{project}/locations/{location}/collections/{collection_id}/... |
| `filter` | `string` | query | No | Optional. A filter to apply on the list results. Supported features: * List all the products under the parent branch ... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListControls` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDiscoveryengineV1ListControlsResponse`

```typescript
const res = await discoveryengine.controls.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.controls.get`

**GET** `v1/{+name}`

Gets a Control.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Control to get. Format: `projects/{project}/locations/{location}/collections/{coll... |

**Response**: `GoogleCloudDiscoveryengineV1Control`

```typescript
const res = await discoveryengine.controls.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.controls.delete`

**DELETE** `v1/{+name}`

Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Control to delete. Format: `projects/{project}/locations/{location}/collections/{c... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.controls.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.controls.patch`

**PATCH** `v1/{+name}`

Updates a Control. Control action type cannot be changed. If the Control to update does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/controls/*` |
| `updateMask` | `string` | query | No | Optional. Indicates which fields in the provided Control to update. The following are NOT supported: * Control.name *... |

**Request body**: `GoogleCloudDiscoveryengineV1Control`

**Response**: `GoogleCloudDiscoveryengineV1Control`

```typescript
const res = await discoveryengine.controls.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.controls.create`

**POST** `v1/{+parent}/controls`

Creates a Control. By default 1000 controls are allowed for a data store. A request can be submitted to adjust this limit. If the Control to create already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent data store. Format: `projects/{project}/locations/{location}/collections/{coll... |
| `controlId` | `string` | query | No | Required. The ID to use for the Control, which will become the final component of the Control's resource name. This v... |

**Request body**: `GoogleCloudDiscoveryengineV1Control`

**Response**: `GoogleCloudDiscoveryengineV1Control`

```typescript
const res = await discoveryengine.controls.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.batchGetDocumentsMetadata`

**GET** `v1/{+parent}/batchGetDocumentsMetadata`

Gets index freshness metadata for Documents. Supported for website search only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent branch resource name, such as `projects/{project}/locations/{location}/collections/{collection}/... |
| `matcher.fhirMatcher.fhirResources` | `string` | query | No | Required. The FHIR resources to match by. Format: projects/{project}/locations/{location}/datasets/{dataset}/fhirStor... |
| `matcher.urisMatcher.uris` | `string` | query | No | The exact URIs to match by. |

**Response**: `GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse`

```typescript
const res = await discoveryengine.branches.batchGetDocumentsMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.documents.list`

**GET** `v1/{+parent}/documents`

Gets a list of Documents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent branch resource name, such as `projects/{project}/locations/{location}/collections/{collection}/... |
| `pageSize` | `integer` | query | No | Maximum number of Documents to return. If unspecified, defaults to 100. The maximum allowed value is 1000. Values abo... |
| `pageToken` | `string` | query | No | A page token ListDocumentsResponse.next_page_token, received from a previous DocumentService.ListDocuments call. Prov... |

**Response**: `GoogleCloudDiscoveryengineV1ListDocumentsResponse`

```typescript
const res = await discoveryengine.documents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.documents.get`

**GET** `v1/{+name}`

Gets a Document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of Document, such as `projects/{project}/locations/{location}/collections/{collection}/d... |

**Response**: `GoogleCloudDiscoveryengineV1Document`

```typescript
const res = await discoveryengine.documents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.documents.create`

**POST** `v1/{+parent}/documents`

Creates a Document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, such as `projects/{project}/locations/{location}/collections/{collection}/dataSto... |
| `documentId` | `string` | query | No | Required. The ID to use for the Document, which becomes the final component of the Document.name. If the caller does ... |

**Request body**: `GoogleCloudDiscoveryengineV1Document`

**Response**: `GoogleCloudDiscoveryengineV1Document`

```typescript
const res = await discoveryengine.documents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.documents.purge`

**POST** `v1/{+parent}/documents:purge`

Permanently deletes all selected Documents in a branch. This process is asynchronous. Depending on the number of Documents to be deleted, this operation can take hours to complete. Before the delete operation completes, some Documents might still be returned by DocumentService.GetDocument or DocumentService.ListDocuments. To get a list of the Documents to be deleted, set PurgeDocumentsRequest.force to false.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, such as `projects/{project}/locations/{location}/collections/{collection}/dataSto... |

**Request body**: `GoogleCloudDiscoveryengineV1PurgeDocumentsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.documents.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.documents.patch`

**PATCH** `v1/{+name}`

Updates a Document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The full resource name of the document. Format: `projects/{project}/locations/{location}/collections/{coll... |
| `allowMissing` | `boolean` | query | No | If set to `true` and the Document is not found, a new Document is be created. |
| `updateMask` | `string` | query | No | Indicates which fields in the provided imported 'document' to update. If not set, by default updates all fields. |

**Request body**: `GoogleCloudDiscoveryengineV1Document`

**Response**: `GoogleCloudDiscoveryengineV1Document`

```typescript
const res = await discoveryengine.documents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.documents.delete`

**DELETE** `v1/{+name}`

Deletes a Document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of Document, such as `projects/{project}/locations/{location}/collections/{collection}/d... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.documents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.branches.documents.import`

**POST** `v1/{+parent}/documents:import`

Bulk import of multiple Documents. Request processing may be synchronous. Non-existing items are created. Note: It is possible for a subset of the Documents to be successfully updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent branch resource name, such as `projects/{project}/locations/{location}/collections/{collection}/... |

**Request body**: `GoogleCloudDiscoveryengineV1ImportDocumentsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.documents.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.completionConfig.completeQuery`

**POST** `v1/{+completionConfig}:completeQuery`

Completes the user input with advanced keyword suggestions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `completionConfig` | `string` | path | Yes | Required. The completion_config of the parent dataStore or engine resource name for which the completion is performed... |

**Request body**: `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest`

**Response**: `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse`

```typescript
const res = await discoveryengine.completionConfig.completeQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud_search.query`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.schemas.get`

**GET** `v1/{+name}`

Gets a Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections... |

**Response**: `GoogleCloudDiscoveryengineV1Schema`

```typescript
const res = await discoveryengine.schemas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.schemas.list`

**GET** `v1/{+parent}/schemas`

Gets a list of Schemas.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name, in the format of `projects/{project}/locations/{location}/collections/... |
| `pageSize` | `integer` | query | No | The maximum number of Schemas to return. The service may return fewer than this value. If unspecified, at most 100 Sc... |
| `pageToken` | `string` | query | No | A page token, received from a previous SchemaService.ListSchemas call. Provide this to retrieve the subsequent page. ... |

**Response**: `GoogleCloudDiscoveryengineV1ListSchemasResponse`

```typescript
const res = await discoveryengine.schemas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.schemas.patch`

**PATCH** `v1/{+name}`

Updates a Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collection... |
| `allowMissing` | `boolean` | query | No | If set to true, and the Schema is not found, a new Schema is created. In this situation, `update_mask` is ignored. |

**Request body**: `GoogleCloudDiscoveryengineV1Schema`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.schemas.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.schemas.create`

**POST** `v1/{+parent}/schemas`

Creates a Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name, in the format of `projects/{project}/locations/{location}/collections/... |
| `schemaId` | `string` | query | No | Required. The ID to use for the Schema, which becomes the final component of the Schema.name. This field should confo... |

**Request body**: `GoogleCloudDiscoveryengineV1Schema`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.schemas.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.schemas.delete`

**DELETE** `v1/{+name}`

Deletes a Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.schemas.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.schemas.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.schemas.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.servingConfigs.search`

**POST** `v1/{+servingConfig}:search`

Performs a search.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1SearchRequest`

**Response**: `GoogleCloudDiscoveryengineV1SearchResponse`

```typescript
const res = await discoveryengine.servingConfigs.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.servingConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ServingConfig to delete. Format: `projects/{project}/locations/{location}/collecti... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.servingConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.servingConfigs.create`

**POST** `v1/{+parent}/servingConfigs`

Creates a ServingConfig. Note: The Google Cloud console works only with the default serving config. Additional ServingConfigs can be created and managed only via the API. A maximum of 100 ServingConfigs are allowed in an Engine, otherwise a RESOURCE_EXHAUSTED error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent. Format: `projects/{project}/locations/{location}/collections/{collection}/eng... |
| `servingConfigId` | `string` | query | No | Required. The ID to use for the ServingConfig, which will become the final component of the ServingConfig's resource ... |

**Request body**: `GoogleCloudDiscoveryengineV1ServingConfig`

**Response**: `GoogleCloudDiscoveryengineV1ServingConfig`

```typescript
const res = await discoveryengine.servingConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.servingConfigs.recommend`

**POST** `v1/{+servingConfig}:recommend`

Makes a recommendation, which requires a contextual user event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. Full resource name of a ServingConfig: `projects/*/locations/global/collections/*/engines/*/servingConfigs/... |

**Request body**: `GoogleCloudDiscoveryengineV1RecommendRequest`

**Response**: `GoogleCloudDiscoveryengineV1RecommendResponse`

```typescript
const res = await discoveryengine.servingConfigs.recommend({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.servingConfigs.list`

**GET** `v1/{+parent}/servingConfigs`

Lists all ServingConfigs linked to this dataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of the parent resource. Format: `projects/{project}/locations/{location}/collections/{co... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. If unspecified, defaults to 100. If a value greater than 100 is provid... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListServingConfigs` call. Provide this to retrieve the subsequent p... |

**Response**: `GoogleCloudDiscoveryengineV1ListServingConfigsResponse`

```typescript
const res = await discoveryengine.servingConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.servingConfigs.patch`

**PATCH** `v1/{+name}`

Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided ServingConfig to update. The following are NOT supported: * ServingConfig.name... |

**Request body**: `GoogleCloudDiscoveryengineV1ServingConfig`

**Response**: `GoogleCloudDiscoveryengineV1ServingConfig`

```typescript
const res = await discoveryengine.servingConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.servingConfigs.searchLite`

**POST** `v1/{+servingConfig}:searchLite`

Performs a search. Similar to the SearchService.Search method, but a lite version that allows API key for authentication, where OAuth and IAM checks are not required. Only public website search is supported by this method. If data stores and engines not associated with public website search are specified, a `FAILED_PRECONDITION` error is returned. This method can be used for easy onboarding without having to implement an authentication backend. However, it is strongly recommended to use SearchService.Search instead with required OAuth and IAM checks to provide better data security.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1SearchRequest`

**Response**: `GoogleCloudDiscoveryengineV1SearchResponse`

```typescript
const res = await discoveryengine.servingConfigs.searchLite({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.servingConfigs.streamAnswer`

**POST** `v1/{+servingConfig}:streamAnswer`

Answer query method (streaming). It takes one AnswerQueryRequest and returns multiple AnswerQueryResponse messages in a stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1AnswerQueryRequest`

**Response**: `GoogleCloudDiscoveryengineV1AnswerQueryResponse`

```typescript
const res = await discoveryengine.servingConfigs.streamAnswer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.servingConfigs.answer`

**POST** `v1/{+servingConfig}:answer`

Answer query method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1AnswerQueryRequest`

**Response**: `GoogleCloudDiscoveryengineV1AnswerQueryResponse`

```typescript
const res = await discoveryengine.servingConfigs.answer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.servingConfigs.get`

**GET** `v1/{+name}`

Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ServingConfig to get. Format: `projects/{project}/locations/{location}/collections... |

**Response**: `GoogleCloudDiscoveryengineV1ServingConfig`

```typescript
const res = await discoveryengine.servingConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.dataStores.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the IAM access control policy for an Engine. A `NOT_FOUND` error is returned if the resource does not exist. **Important:** When setting a policy directly on an Engine resource, the only recommended roles in the bindings are: `roles/discoveryengine.user` and `roles/discoveryengine.agentspaceUser`. Attempting to grant any other role will result in a warning in logging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await discoveryengine.engines.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the IAM access control policy for an Engine. A `NOT_FOUND` error is returned if the resource does not exist. An empty policy is returned if the resource exists but does not have a policy set on it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await discoveryengine.engines.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.create`

**POST** `v1/{+parent}/engines`

Creates an Engine.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, such as `projects/{project}/locations/{location}/collections/{collection}`. |
| `engineId` | `string` | query | No | Required. The ID to use for the Engine, which will become the final component of the Engine's resource name. This fie... |

**Request body**: `GoogleCloudDiscoveryengineV1Engine`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.engines.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.patch`

**PATCH** `v1/{+name}`

Updates an Engine

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string wit... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided Engine to update. If an unsupported or unknown field is provided, an INVALID_A... |

**Request body**: `GoogleCloudDiscoveryengineV1Engine`

**Response**: `GoogleCloudDiscoveryengineV1Engine`

```typescript
const res = await discoveryengine.engines.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.list`

**GET** `v1/{+parent}/engines`

Lists all the Engines associated with the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, such as `projects/{project}/locations/{location}/collections/{collection_id}`. |
| `filter` | `string` | query | No | Optional. Filter by solution type. For example: solution_type=SOLUTION_TYPE_SEARCH |
| `pageSize` | `integer` | query | No | Optional. Not supported. |
| `pageToken` | `string` | query | No | Optional. Not supported. |

**Response**: `GoogleCloudDiscoveryengineV1ListEnginesResponse`

```typescript
const res = await discoveryengine.engines.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.delete`

**DELETE** `v1/{+name}`

Deletes an Engine.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of Engine, such as `projects/{project}/locations/{location}/collections/{collection_id}/... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.engines.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.get`

**GET** `v1/{+name}`

Gets an Engine.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of Engine, such as `projects/{project}/locations/{location}/collections/{collection_id}/... |

**Response**: `GoogleCloudDiscoveryengineV1Engine`

```typescript
const res = await discoveryengine.engines.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.completionConfig.completeQuery`

**POST** `v1/{+completionConfig}:completeQuery`

Completes the user input with advanced keyword suggestions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `completionConfig` | `string` | path | Yes | Required. The completion_config of the parent dataStore or engine resource name for which the completion is performed... |

**Request body**: `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest`

**Response**: `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse`

```typescript
const res = await discoveryengine.completionConfig.completeQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud_search.query`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.conversations.get`

**GET** `v1/{+name}`

Gets a Conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Conversation to get. Format: `projects/{project}/locations/{location}/collections/... |

**Response**: `GoogleCloudDiscoveryengineV1Conversation`

```typescript
const res = await discoveryengine.conversations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.conversations.delete`

**DELETE** `v1/{+name}`

Deletes a Conversation. If the Conversation to delete does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Conversation to delete. Format: `projects/{project}/locations/{location}/collectio... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.conversations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.conversations.converse`

**POST** `v1/{+name}:converse`

Converses a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Conversation to get. Format: `projects/{project}/locations/{location}/collections/... |

**Request body**: `GoogleCloudDiscoveryengineV1ConverseConversationRequest`

**Response**: `GoogleCloudDiscoveryengineV1ConverseConversationResponse`

```typescript
const res = await discoveryengine.conversations.converse({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.conversations.create`

**POST** `v1/{+parent}/conversations`

Creates a Conversation. If the Conversation to create already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent data store. Format: `projects/{project}/locations/{location}/collections/{coll... |

**Request body**: `GoogleCloudDiscoveryengineV1Conversation`

**Response**: `GoogleCloudDiscoveryengineV1Conversation`

```typescript
const res = await discoveryengine.conversations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.conversations.patch`

**PATCH** `v1/{+name}`

Updates a Conversation. Conversation action type cannot be changed. If the Conversation to update does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/dataStore/*/conversatio... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided Conversation to update. The following are NOT supported: * Conversation.name I... |

**Request body**: `GoogleCloudDiscoveryengineV1Conversation`

**Response**: `GoogleCloudDiscoveryengineV1Conversation`

```typescript
const res = await discoveryengine.conversations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.conversations.list`

**GET** `v1/{+parent}/conversations`

Lists all Conversations by their parent DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The data store resource name. Format: `projects/{project}/locations/{location}/collections/{collection}/dat... |
| `filter` | `string` | query | No | A filter to apply on the list results. The supported features are: user_pseudo_id, state. Example: "user_pseudo_id = ... |
| `orderBy` | `string` | query | No | A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field name for descending... |
| `pageSize` | `integer` | query | No | Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListConversations` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDiscoveryengineV1ListConversationsResponse`

```typescript
const res = await discoveryengine.conversations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.assistants.streamAssist`

**POST** `v1/{+name}:streamAssist`

Assists the user with a query in a streaming fashion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Assistant. Format: `projects/{project}/locations/{location}/collections/{collectio... |

**Request body**: `GoogleCloudDiscoveryengineV1StreamAssistRequest`

**Response**: `GoogleCloudDiscoveryengineV1StreamAssistResponse`

```typescript
const res = await discoveryengine.assistants.streamAssist({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.assistants.create`

**POST** `v1/{+parent}/assistants`

Creates an Assistant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: `projects/{project}/locations/{location}/collections/{collection}/engines... |
| `assistantId` | `string` | query | No | Required. The ID to use for the Assistant, which will become the final component of the Assistant's resource name. Th... |

**Request body**: `GoogleCloudDiscoveryengineV1Assistant`

**Response**: `GoogleCloudDiscoveryengineV1Assistant`

```typescript
const res = await discoveryengine.assistants.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.assistants.list`

**GET** `v1/{+parent}/assistants`

Lists all Assistants under an Engine.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: `projects/{project}/locations/{location}/collections/{collection}/engines... |
| `pageSize` | `integer` | query | No | Maximum number of Assistants to return. If unspecified, defaults to 100. The maximum allowed value is 1000; anything ... |
| `pageToken` | `string` | query | No | A page token ListAssistantsResponse.next_page_token, received from a previous AssistantService.ListAssistants call. P... |

**Response**: `GoogleCloudDiscoveryengineV1ListAssistantsResponse`

```typescript
const res = await discoveryengine.assistants.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.assistants.get`

**GET** `v1/{+name}`

Gets an Assistant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of Assistant. Format: `projects/{project}/locations/{location}/collections/{collection}/engin... |

**Response**: `GoogleCloudDiscoveryengineV1Assistant`

```typescript
const res = await discoveryengine.assistants.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.assistants.patch`

**PATCH** `v1/{+name}`

Updates an Assistant

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Resource name of the assistant. Format: `projects/{project}/locations/{location}/collections/{collection}/... |
| `updateMask` | `string` | query | No | The list of fields to update. |

**Request body**: `GoogleCloudDiscoveryengineV1Assistant`

**Response**: `GoogleCloudDiscoveryengineV1Assistant`

```typescript
const res = await discoveryengine.assistants.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.assistants.delete`

**DELETE** `v1/{+name}`

Deletes an Assistant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of Assistant. Format: `projects/{project}/locations/{location}/collections/{collection}/engin... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.assistants.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.getCard`

**GET** `{+tenant}/card`

GetAgentCard returns the agent card for the agent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

**Response**: `A2aV1AgentCard`

```typescript
const res = await discoveryengine.agents.getCard({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.cancel`

**POST** `{+tenant}/{+name}:cancel`

Cancel a task from the agent. If supported one should expect no more task updates for the task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |
| `name` | `string` | path | Yes | The resource name of the task to cancel. Format: tasks/{task_id} |

**Request body**: `A2aV1CancelTaskRequest`

**Response**: `A2aV1Task`

```typescript
const res = await discoveryengine.tasks.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.get`

**GET** `{+tenant}/{+name}`

Get the current state of a task from the agent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |
| `name` | `string` | path | Yes | Required. The resource name of the task. Format: tasks/{task_id} |
| `historyLength` | `integer` | query | No | The number of most recent messages from the task's history to retrieve. |

**Response**: `A2aV1Task`

```typescript
const res = await discoveryengine.tasks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.subscribe`

**GET** `{+tenant}/{+name}:subscribe`

TaskSubscription is a streaming call that will return a stream of task update events. This attaches the stream to an existing in process task. If the task is complete the stream will return the completed task (like GetTask) and close the stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |
| `name` | `string` | path | Yes | The resource name of the task to subscribe to. Format: tasks/{task_id} |

**Response**: `A2aV1StreamResponse`

```typescript
const res = await discoveryengine.tasks.subscribe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.pushNotificationConfigs.get`

**GET** `{+tenant}/{+name}`

Get a push notification config for a task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |
| `name` | `string` | path | Yes | The resource name of the config to retrieve. Format: tasks/{task_id}/pushNotificationConfigs/{config_id} |

**Response**: `A2aV1TaskPushNotificationConfig`

```typescript
const res = await discoveryengine.pushNotificationConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.pushNotificationConfigs.create`

**POST** `{+tenant}/{+parent}`

Set a push notification config for a task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |
| `parent` | `string` | path | Yes | Required. The parent task resource for this config. Format: tasks/{task_id} |
| `configId` | `string` | query | No | Required. The ID for the new config. |

**Request body**: `A2aV1TaskPushNotificationConfig`

**Response**: `A2aV1TaskPushNotificationConfig`

```typescript
const res = await discoveryengine.pushNotificationConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.pushNotificationConfigs.list`

**GET** `{+tenant}/{+parent}/pushNotificationConfigs`

Get a list of push notifications configured for a task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |
| `parent` | `string` | path | Yes | The parent task resource. Format: tasks/{task_id} |
| `pageSize` | `integer` | query | No | For AIP-158 these fields are present. Usually not used/needed. The maximum number of configurations to return. If uns... |
| `pageToken` | `string` | query | No | A page token received from a previous ListTaskPushNotificationConfigRequest call. Provide this to retrieve the subseq... |

**Response**: `A2aV1ListTaskPushNotificationConfigResponse`

```typescript
const res = await discoveryengine.pushNotificationConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.tasks.pushNotificationConfigs.delete`

**DELETE** `{+tenant}/{+name}`

Delete a push notification config for a task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |
| `name` | `string` | path | Yes | The resource name of the config to delete. Format: tasks/{task_id}/pushNotificationConfigs/{config_id} |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.pushNotificationConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.message.stream`

**POST** `{+tenant}/message:stream`

SendStreamingMessage is a streaming call that will return a stream of task update events until the Task is in an interrupted or terminal state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

**Request body**: `A2aV1SendMessageRequest`

**Response**: `A2aV1StreamResponse`

```typescript
const res = await discoveryengine.message.stream({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `discoveryengine.projects.locations.collections.engines.assistants.agents.message.send`

**POST** `{+tenant}/message:send`

Send a message to the agent. This is a blocking call that will return the task once it is completed, or a LRO if requested.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `tenant` | `string` | path | Yes | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

**Request body**: `A2aV1SendMessageRequest`

**Response**: `A2aV1SendMessageResponse`

```typescript
const res = await discoveryengine.message.send({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `discoveryengine.projects.locations.collections.engines.servingConfigs.search`

**POST** `v1/{+servingConfig}:search`

Performs a search.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1SearchRequest`

**Response**: `GoogleCloudDiscoveryengineV1SearchResponse`

```typescript
const res = await discoveryengine.servingConfigs.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.servingConfigs.streamAnswer`

**POST** `v1/{+servingConfig}:streamAnswer`

Answer query method (streaming). It takes one AnswerQueryRequest and returns multiple AnswerQueryResponse messages in a stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1AnswerQueryRequest`

**Response**: `GoogleCloudDiscoveryengineV1AnswerQueryResponse`

```typescript
const res = await discoveryengine.servingConfigs.streamAnswer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.servingConfigs.list`

**GET** `v1/{+parent}/servingConfigs`

Lists all ServingConfigs linked to this dataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of the parent resource. Format: `projects/{project}/locations/{location}/collections/{co... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. If unspecified, defaults to 100. If a value greater than 100 is provid... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListServingConfigs` call. Provide this to retrieve the subsequent p... |

**Response**: `GoogleCloudDiscoveryengineV1ListServingConfigsResponse`

```typescript
const res = await discoveryengine.servingConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.servingConfigs.answer`

**POST** `v1/{+servingConfig}:answer`

Answer query method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1AnswerQueryRequest`

**Response**: `GoogleCloudDiscoveryengineV1AnswerQueryResponse`

```typescript
const res = await discoveryengine.servingConfigs.answer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.servingConfigs.get`

**GET** `v1/{+name}`

Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ServingConfig to get. Format: `projects/{project}/locations/{location}/collections... |

**Response**: `GoogleCloudDiscoveryengineV1ServingConfig`

```typescript
const res = await discoveryengine.servingConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.servingConfigs.create`

**POST** `v1/{+parent}/servingConfigs`

Creates a ServingConfig. Note: The Google Cloud console works only with the default serving config. Additional ServingConfigs can be created and managed only via the API. A maximum of 100 ServingConfigs are allowed in an Engine, otherwise a RESOURCE_EXHAUSTED error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent. Format: `projects/{project}/locations/{location}/collections/{collection}/eng... |
| `servingConfigId` | `string` | query | No | Required. The ID to use for the ServingConfig, which will become the final component of the ServingConfig's resource ... |

**Request body**: `GoogleCloudDiscoveryengineV1ServingConfig`

**Response**: `GoogleCloudDiscoveryengineV1ServingConfig`

```typescript
const res = await discoveryengine.servingConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.servingConfigs.recommend`

**POST** `v1/{+servingConfig}:recommend`

Makes a recommendation, which requires a contextual user event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. Full resource name of a ServingConfig: `projects/*/locations/global/collections/*/engines/*/servingConfigs/... |

**Request body**: `GoogleCloudDiscoveryengineV1RecommendRequest`

**Response**: `GoogleCloudDiscoveryengineV1RecommendResponse`

```typescript
const res = await discoveryengine.servingConfigs.recommend({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.servingConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ServingConfig to delete. Format: `projects/{project}/locations/{location}/collecti... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.servingConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.servingConfigs.patch`

**PATCH** `v1/{+name}`

Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided ServingConfig to update. The following are NOT supported: * ServingConfig.name... |

**Request body**: `GoogleCloudDiscoveryengineV1ServingConfig`

**Response**: `GoogleCloudDiscoveryengineV1ServingConfig`

```typescript
const res = await discoveryengine.servingConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.servingConfigs.searchLite`

**POST** `v1/{+servingConfig}:searchLite`

Performs a search. Similar to the SearchService.Search method, but a lite version that allows API key for authentication, where OAuth and IAM checks are not required. Only public website search is supported by this method. If data stores and engines not associated with public website search are specified, a `FAILED_PRECONDITION` error is returned. This method can be used for easy onboarding without having to implement an authentication backend. However, it is strongly recommended to use SearchService.Search instead with required OAuth and IAM checks to provide better data security.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1SearchRequest`

**Response**: `GoogleCloudDiscoveryengineV1SearchResponse`

```typescript
const res = await discoveryengine.servingConfigs.searchLite({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.controls.delete`

**DELETE** `v1/{+name}`

Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Control to delete. Format: `projects/{project}/locations/{location}/collections/{c... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.controls.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.controls.create`

**POST** `v1/{+parent}/controls`

Creates a Control. By default 1000 controls are allowed for a data store. A request can be submitted to adjust this limit. If the Control to create already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent data store. Format: `projects/{project}/locations/{location}/collections/{coll... |
| `controlId` | `string` | query | No | Required. The ID to use for the Control, which will become the final component of the Control's resource name. This v... |

**Request body**: `GoogleCloudDiscoveryengineV1Control`

**Response**: `GoogleCloudDiscoveryengineV1Control`

```typescript
const res = await discoveryengine.controls.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.controls.list`

**GET** `v1/{+parent}/controls`

Lists all Controls by their parent DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The data store resource name. Format: `projects/{project}/locations/{location}/collections/{collection_id}/... |
| `filter` | `string` | query | No | Optional. A filter to apply on the list results. Supported features: * List all the products under the parent branch ... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListControls` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDiscoveryengineV1ListControlsResponse`

```typescript
const res = await discoveryengine.controls.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.controls.patch`

**PATCH** `v1/{+name}`

Updates a Control. Control action type cannot be changed. If the Control to update does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/controls/*` |
| `updateMask` | `string` | query | No | Optional. Indicates which fields in the provided Control to update. The following are NOT supported: * Control.name *... |

**Request body**: `GoogleCloudDiscoveryengineV1Control`

**Response**: `GoogleCloudDiscoveryengineV1Control`

```typescript
const res = await discoveryengine.controls.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.controls.get`

**GET** `v1/{+name}`

Gets a Control.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Control to get. Format: `projects/{project}/locations/{location}/collections/{coll... |

**Response**: `GoogleCloudDiscoveryengineV1Control`

```typescript
const res = await discoveryengine.controls.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.widgetConfigs.get`

**GET** `v1/{+name}`

Gets a WidgetConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full WidgetConfig resource name. Format: `projects/{project}/locations/{location}/collections/{collection_i... |
| `acceptCache` | `boolean` | query | No | Optional. Whether it's acceptable to load the widget config from cache. If set to true, recent changes on widget conf... |
| `getWidgetConfigRequestOption.turnOffCollectionComponents` | `boolean` | query | No | Optional. Whether to turn off collection_components in WidgetConfig to reduce latency and data transmission. |

**Response**: `GoogleCloudDiscoveryengineV1WidgetConfig`

```typescript
const res = await discoveryengine.widgetConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.widgetConfigs.patch`

**PATCH** `v1/{+name}`

Update a WidgetConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The full resource name of the widget config. Format: `projects/{project}/locations/{location}/collections/... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided WidgetConfig to update. The following are the only supported fields: * WidgetC... |

**Request body**: `GoogleCloudDiscoveryengineV1WidgetConfig`

**Response**: `GoogleCloudDiscoveryengineV1WidgetConfig`

```typescript
const res = await discoveryengine.widgetConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.sessions.get`

**GET** `v1/{+name}`

Gets a Session.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Session to get. Format: `projects/{project}/locations/{location}/collections/{coll... |
| `includeAnswerDetails` | `boolean` | query | No | Optional. If set to true, the full session including all answer details will be returned. |

**Response**: `GoogleCloudDiscoveryengineV1Session`

```typescript
const res = await discoveryengine.sessions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.sessions.create`

**POST** `v1/{+parent}/sessions`

Creates a Session. If the Session to create already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent data store. Format: `projects/{project}/locations/{location}/collections/{coll... |

**Request body**: `GoogleCloudDiscoveryengineV1Session`

**Response**: `GoogleCloudDiscoveryengineV1Session`

```typescript
const res = await discoveryengine.sessions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.sessions.patch`

**PATCH** `v1/{+name}`

Updates a Session. Session action type cannot be changed. If the Session to update does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/engines/{engine}/sessio... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided Session to update. The following are NOT supported: * Session.name If not set ... |

**Request body**: `GoogleCloudDiscoveryengineV1Session`

**Response**: `GoogleCloudDiscoveryengineV1Session`

```typescript
const res = await discoveryengine.sessions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.sessions.delete`

**DELETE** `v1/{+name}`

Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Session to delete. Format: `projects/{project}/locations/{location}/collections/{c... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.sessions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.sessions.list`

**GET** `v1/{+parent}/sessions`

Lists all Sessions by their parent DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The data store resource name. Format: `projects/{project}/locations/{location}/collections/{collection}/dat... |
| `filter` | `string` | query | No | A comma-separated list of fields to filter by, in EBNF grammar. The supported fields are: * `user_pseudo_id` * `state... |
| `orderBy` | `string` | query | No | A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field name for descending... |
| `pageSize` | `integer` | query | No | Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSessions` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDiscoveryengineV1ListSessionsResponse`

```typescript
const res = await discoveryengine.sessions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.collections.engines.sessions.answers.get`

**GET** `v1/{+name}`

Gets a Answer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Answer to get. Format: `projects/{project}/locations/{location}/collections/{colle... |

**Response**: `GoogleCloudDiscoveryengineV1Answer`

```typescript
const res = await discoveryengine.answers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.identityMappingStores.delete`

**DELETE** `v1/{+name}`

Deletes the Identity Mapping Store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Identity Mapping Store to delete. Format: `projects/{project}/locations/{location}/identity... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.identityMappingStores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.identityMappingStores.importIdentityMappings`

**POST** `v1/{+identityMappingStore}:importIdentityMappings`

Imports a list of Identity Mapping Entries to an Identity Mapping Store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `identityMappingStore` | `string` | path | Yes | Required. The name of the Identity Mapping Store to import Identity Mapping Entries to. Format: `projects/{project}/l... |

**Request body**: `GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.identityMappingStores.importIdentityMappings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.identityMappingStores.listIdentityMappings`

**GET** `v1/{+identityMappingStore}:listIdentityMappings`

Lists Identity Mappings in an Identity Mapping Store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `identityMappingStore` | `string` | path | Yes | Required. The name of the Identity Mapping Store to list Identity Mapping Entries in. Format: `projects/{project}/loc... |
| `pageSize` | `integer` | query | No | Maximum number of IdentityMappings to return. If unspecified, defaults to 2000. The maximum allowed value is 10000. V... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListIdentityMappings` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `GoogleCloudDiscoveryengineV1ListIdentityMappingsResponse`

```typescript
const res = await discoveryengine.identityMappingStores.listIdentityMappings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.identityMappingStores.purgeIdentityMappings`

**POST** `v1/{+identityMappingStore}:purgeIdentityMappings`

Purges specified or all Identity Mapping Entries from an Identity Mapping Store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `identityMappingStore` | `string` | path | Yes | Required. The name of the Identity Mapping Store to purge Identity Mapping Entries from. Format: `projects/{project}/... |

**Request body**: `GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.identityMappingStores.purgeIdentityMappings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.identityMappingStores.create`

**POST** `v1/{+parent}/identityMappingStores`

Creates a new Identity Mapping Store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection resource name, such as `projects/{project}/locations/{location}`. |
| `cmekConfigName` | `string` | query | No | Resource name of the CmekConfig to use for protecting this Identity Mapping Store. |
| `disableCmek` | `boolean` | query | No | Identity Mapping Store without CMEK protections. If a default CmekConfig is set for the project, setting this field w... |
| `identityMappingStoreId` | `string` | query | No | Required. The ID of the Identity Mapping Store to create. The ID must contain only letters (a-z, A-Z), numbers (0-9),... |

**Request body**: `GoogleCloudDiscoveryengineV1IdentityMappingStore`

**Response**: `GoogleCloudDiscoveryengineV1IdentityMappingStore`

```typescript
const res = await discoveryengine.identityMappingStores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.identityMappingStores.get`

**GET** `v1/{+name}`

Gets the Identity Mapping Store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Identity Mapping Store to get. Format: `projects/{project}/locations/{location}/identityMap... |

**Response**: `GoogleCloudDiscoveryengineV1IdentityMappingStore`

```typescript
const res = await discoveryengine.identityMappingStores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.identityMappingStores.list`

**GET** `v1/{+parent}/identityMappingStores`

Lists all Identity Mapping Stores.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the Identity Mapping Stores to list. Format: `projects/{project}/locations/{location}`. |
| `pageSize` | `integer` | query | No | Maximum number of IdentityMappingStores to return. If unspecified, defaults to 100. The maximum allowed value is 1000... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListIdentityMappingStores` call. Provide this to retrieve the subsequent page... |

**Response**: `GoogleCloudDiscoveryengineV1ListIdentityMappingStoresResponse`

```typescript
const res = await discoveryengine.identityMappingStores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.identityMappingStores.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.identityMappingStores.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.cmekConfigs.patch`

**PATCH** `v1/{+name}`

Provisions a CMEK key for use in a location of a customer's project. This method will also conduct location validation on the provided cmekConfig to make sure the key is valid and can be used in the selected location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CmekConfig of the form `projects/{project}/locations/{location}/cmekConfig` or `projects/{p... |
| `setDefault` | `boolean` | query | No | Set the following CmekConfig as the default to be used for child resources if one is not specified. |

**Request body**: `GoogleCloudDiscoveryengineV1CmekConfig`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.cmekConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.cmekConfigs.get`

**GET** `v1/{+name}`

Gets the CmekConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of CmekConfig, such as `projects/*/locations/*/cmekConfig` or `projects/*/locations/*/cmekCon... |

**Response**: `GoogleCloudDiscoveryengineV1CmekConfig`

```typescript
const res = await discoveryengine.cmekConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.cmekConfigs.list`

**GET** `v1/{+parent}/cmekConfigs`

Lists all the CmekConfigs with the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent location resource name, such as `projects/{project}/locations/{location}`. If the caller does no... |

**Response**: `GoogleCloudDiscoveryengineV1ListCmekConfigsResponse`

```typescript
const res = await discoveryengine.cmekConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.cmekConfigs.delete`

**DELETE** `v1/{+name}`

De-provisions a CmekConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the CmekConfig to delete, such as `projects/{project}/locations/{location}/cmekConfigs... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.cmekConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.patch`

**PATCH** `v1/{+name}`

Updates a DataStore

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The full resource name of the data store. Format: `projects/{project}/locations/{location}/col... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided DataStore to update. If an unsupported or unknown field is provided, an INVALI... |

**Request body**: `GoogleCloudDiscoveryengineV1DataStore`

**Response**: `GoogleCloudDiscoveryengineV1DataStore`

```typescript
const res = await discoveryengine.dataStores.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.create`

**POST** `v1/{+parent}/dataStores`

Creates a DataStore. DataStore is for storing Documents. To serve these documents for Search, or Recommendation use case, an Engine needs to be created separately.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, such as `projects/{project}/locations/{location}/collections/{collection}`. |
| `cmekConfigName` | `string` | query | No | Resource name of the CmekConfig to use for protecting this DataStore. |
| `createAdvancedSiteSearch` | `boolean` | query | No | A boolean flag indicating whether user want to directly create an advanced data store for site search. If the data st... |
| `dataStoreId` | `string` | query | No | Required. The ID to use for the DataStore, which will become the final component of the DataStore's resource name. Th... |
| `disableCmek` | `boolean` | query | No | DataStore without CMEK protections. If a default CmekConfig is set for the project, setting this field will override ... |
| `skipDefaultSchemaCreation` | `boolean` | query | No | A boolean flag indicating whether to skip the default schema creation for the data store. Only enable this flag if yo... |

**Request body**: `GoogleCloudDiscoveryengineV1DataStore`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.dataStores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.getSiteSearchEngine`

**GET** `v1/{+name}`

Gets the SiteSearchEngine.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of SiteSearchEngine, such as `projects/{project}/locations/{location}/collections/{collection... |

**Response**: `GoogleCloudDiscoveryengineV1SiteSearchEngine`

```typescript
const res = await discoveryengine.dataStores.getSiteSearchEngine({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.delete`

**DELETE** `v1/{+name}`

Deletes a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/collections/{collection_i... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.dataStores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.list`

**GET** `v1/{+parent}/dataStores`

Lists all the DataStores associated with the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent branch resource name, such as `projects/{project}/locations/{location}/collections/{collection_i... |
| `filter` | `string` | query | No | Filter by solution type . For example: `filter = 'solution_type:SOLUTION_TYPE_SEARCH'` |
| `pageSize` | `integer` | query | No | Maximum number of DataStores to return. If unspecified, defaults to 10. The maximum allowed value is 50. Values above... |
| `pageToken` | `string` | query | No | A page token ListDataStoresResponse.next_page_token, received from a previous DataStoreService.ListDataStores call. P... |

**Response**: `GoogleCloudDiscoveryengineV1ListDataStoresResponse`

```typescript
const res = await discoveryengine.dataStores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.get`

**GET** `v1/{+name}`

Gets a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/collections/{collection_i... |

**Response**: `GoogleCloudDiscoveryengineV1DataStore`

```typescript
const res = await discoveryengine.dataStores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.completeQuery`

**GET** `v1/{+dataStore}:completeQuery`

Completes the specified user input with keyword suggestions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataStore` | `string` | path | Yes | Required. The parent data store resource name for which the completion is performed, such as `projects/*/locations/gl... |
| `includeTailSuggestions` | `boolean` | query | No | Indicates if tail suggestions should be returned if there are no suggestions that match the full query. Even if set t... |
| `query` | `string` | query | No | Required. The typeahead input used to fetch suggestions. Maximum length is 128 characters. |
| `queryModel` | `string` | query | No | Specifies the autocomplete data model. This overrides any model specified in the Configuration > Autocomplete section... |
| `userPseudoId` | `string` | query | No | Optional. A unique identifier for tracking visitors. For example, this could be implemented with an HTTP cookie, whic... |

**Response**: `GoogleCloudDiscoveryengineV1CompleteQueryResponse`

```typescript
const res = await discoveryengine.dataStores.completeQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.suggestionDenyListEntries.import`

**POST** `v1/{+parent}/suggestionDenyListEntries:import`

Imports all SuggestionDenyListEntry for a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name for which to import denylist entries. Follows pattern projects/*/locati... |

**Request body**: `GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.suggestionDenyListEntries.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.suggestionDenyListEntries.purge`

**POST** `v1/{+parent}/suggestionDenyListEntries:purge`

Permanently deletes all SuggestionDenyListEntry for a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name for which to import denylist entries. Follows pattern projects/*/locati... |

**Request body**: `GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.suggestionDenyListEntries.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.enableAdvancedSiteSearch`

**POST** `v1/{+siteSearchEngine}:enableAdvancedSiteSearch`

Upgrade from basic site search to advanced site search.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteSearchEngine` | `string` | path | Yes | Required. Full resource name of the SiteSearchEngine, such as `projects/{project}/locations/{location}/dataStores/{da... |

**Request body**: `GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.siteSearchEngine.enableAdvancedSiteSearch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.disableAdvancedSiteSearch`

**POST** `v1/{+siteSearchEngine}:disableAdvancedSiteSearch`

Downgrade from advanced site search to basic site search.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteSearchEngine` | `string` | path | Yes | Required. Full resource name of the SiteSearchEngine, such as `projects/{project}/locations/{location}/dataStores/{da... |

**Request body**: `GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.siteSearchEngine.disableAdvancedSiteSearch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.recrawlUris`

**POST** `v1/{+siteSearchEngine}:recrawlUris`

Request on-demand recrawl for a list of URIs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteSearchEngine` | `string` | path | Yes | Required. Full resource name of the SiteSearchEngine, such as `projects/*/locations/*/collections/*/dataStores/*/site... |

**Request body**: `GoogleCloudDiscoveryengineV1RecrawlUrisRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.siteSearchEngine.recrawlUris({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.sitemaps.fetch`

**GET** `v1/{+parent}/sitemaps:fetch`

Fetch Sitemaps in a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name of the SiteSearchEngine, such as `projects/*/locations/*/collections/*/dataStores/*/si... |
| `matcher.urisMatcher.uris` | `string` | query | No | The Sitemap uris. |

**Response**: `GoogleCloudDiscoveryengineV1FetchSitemapsResponse`

```typescript
const res = await discoveryengine.sitemaps.fetch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.sitemaps.delete`

**DELETE** `v1/{+name}`

Deletes a Sitemap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of Sitemap, such as `projects/{project}/locations/{location}/collections/{collection}/da... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.sitemaps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.sitemaps.create`

**POST** `v1/{+parent}/sitemaps`

Creates a Sitemap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name of the SiteSearchEngine, such as `projects/*/locations/*/collections/*/dataStores/*/si... |

**Request body**: `GoogleCloudDiscoveryengineV1Sitemap`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.sitemaps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.get`

**GET** `v1/{+name}`

Gets a TargetSite.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of TargetSite, such as `projects/{project}/locations/{location}/collections/{collection}... |

**Response**: `GoogleCloudDiscoveryengineV1TargetSite`

```typescript
const res = await discoveryengine.targetSites.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.batchCreate`

**POST** `v1/{+parent}/targetSites:batchCreate`

Creates TargetSite in a batch.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource shared by all TargetSites being created. `projects/{project}/locations/{location}/colle... |

**Request body**: `GoogleCloudDiscoveryengineV1BatchCreateTargetSitesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.targetSites.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.delete`

**DELETE** `v1/{+name}`

Deletes a TargetSite.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of TargetSite, such as `projects/{project}/locations/{location}/collections/{collection}... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.targetSites.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.patch`

**PATCH** `v1/{+name}`

Updates a TargetSite.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The fully qualified resource name of the target site. `projects/{project}/locations/{location}/collectio... |

**Request body**: `GoogleCloudDiscoveryengineV1TargetSite`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.targetSites.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.create`

**POST** `v1/{+parent}/targetSites`

Creates a TargetSite.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name of TargetSite, such as `projects/{project}/locations/{location}/collections/{collectio... |

**Request body**: `GoogleCloudDiscoveryengineV1TargetSite`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.targetSites.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.siteSearchEngine.targetSites.list`

**GET** `v1/{+parent}/targetSites`

Gets a list of TargetSites.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent site search engine resource name, such as `projects/{project}/locations/{location}/collections/{... |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListTargetSites` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `GoogleCloudDiscoveryengineV1ListTargetSitesResponse`

```typescript
const res = await discoveryengine.targetSites.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.models.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.models.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.completionConfig.completeQuery`

**POST** `v1/{+completionConfig}:completeQuery`

Completes the user input with advanced keyword suggestions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `completionConfig` | `string` | path | Yes | Required. The completion_config of the parent dataStore or engine resource name for which the completion is performed... |

**Request body**: `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest`

**Response**: `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse`

```typescript
const res = await discoveryengine.completionConfig.completeQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud_search.query`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.controls.list`

**GET** `v1/{+parent}/controls`

Lists all Controls by their parent DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The data store resource name. Format: `projects/{project}/locations/{location}/collections/{collection_id}/... |
| `filter` | `string` | query | No | Optional. A filter to apply on the list results. Supported features: * List all the products under the parent branch ... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListControls` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDiscoveryengineV1ListControlsResponse`

```typescript
const res = await discoveryengine.controls.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.controls.get`

**GET** `v1/{+name}`

Gets a Control.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Control to get. Format: `projects/{project}/locations/{location}/collections/{coll... |

**Response**: `GoogleCloudDiscoveryengineV1Control`

```typescript
const res = await discoveryengine.controls.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.controls.create`

**POST** `v1/{+parent}/controls`

Creates a Control. By default 1000 controls are allowed for a data store. A request can be submitted to adjust this limit. If the Control to create already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent data store. Format: `projects/{project}/locations/{location}/collections/{coll... |
| `controlId` | `string` | query | No | Required. The ID to use for the Control, which will become the final component of the Control's resource name. This v... |

**Request body**: `GoogleCloudDiscoveryengineV1Control`

**Response**: `GoogleCloudDiscoveryengineV1Control`

```typescript
const res = await discoveryengine.controls.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.controls.delete`

**DELETE** `v1/{+name}`

Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Control to delete. Format: `projects/{project}/locations/{location}/collections/{c... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.controls.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.controls.patch`

**PATCH** `v1/{+name}`

Updates a Control. Control action type cannot be changed. If the Control to update does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/controls/*` |
| `updateMask` | `string` | query | No | Optional. Indicates which fields in the provided Control to update. The following are NOT supported: * Control.name *... |

**Request body**: `GoogleCloudDiscoveryengineV1Control`

**Response**: `GoogleCloudDiscoveryengineV1Control`

```typescript
const res = await discoveryengine.controls.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.sessions.patch`

**PATCH** `v1/{+name}`

Updates a Session. Session action type cannot be changed. If the Session to update does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/engines/{engine}/sessio... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided Session to update. The following are NOT supported: * Session.name If not set ... |

**Request body**: `GoogleCloudDiscoveryengineV1Session`

**Response**: `GoogleCloudDiscoveryengineV1Session`

```typescript
const res = await discoveryengine.sessions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.sessions.create`

**POST** `v1/{+parent}/sessions`

Creates a Session. If the Session to create already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent data store. Format: `projects/{project}/locations/{location}/collections/{coll... |

**Request body**: `GoogleCloudDiscoveryengineV1Session`

**Response**: `GoogleCloudDiscoveryengineV1Session`

```typescript
const res = await discoveryengine.sessions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.sessions.delete`

**DELETE** `v1/{+name}`

Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Session to delete. Format: `projects/{project}/locations/{location}/collections/{c... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.sessions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.sessions.list`

**GET** `v1/{+parent}/sessions`

Lists all Sessions by their parent DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The data store resource name. Format: `projects/{project}/locations/{location}/collections/{collection}/dat... |
| `filter` | `string` | query | No | A comma-separated list of fields to filter by, in EBNF grammar. The supported fields are: * `user_pseudo_id` * `state... |
| `orderBy` | `string` | query | No | A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field name for descending... |
| `pageSize` | `integer` | query | No | Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSessions` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDiscoveryengineV1ListSessionsResponse`

```typescript
const res = await discoveryengine.sessions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.sessions.get`

**GET** `v1/{+name}`

Gets a Session.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Session to get. Format: `projects/{project}/locations/{location}/collections/{coll... |
| `includeAnswerDetails` | `boolean` | query | No | Optional. If set to true, the full session including all answer details will be returned. |

**Response**: `GoogleCloudDiscoveryengineV1Session`

```typescript
const res = await discoveryengine.sessions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.sessions.answers.get`

**GET** `v1/{+name}`

Gets a Answer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Answer to get. Format: `projects/{project}/locations/{location}/collections/{colle... |

**Response**: `GoogleCloudDiscoveryengineV1Answer`

```typescript
const res = await discoveryengine.answers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.userEvents.purge`

**POST** `v1/{+parent}/userEvents:purge`

Deletes permanently all user events specified by the filter provided. Depending on the number of events specified by the filter, this operation could take hours or days to complete. To test a filter, use the list command first.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the catalog under which the events are created. The format is `projects/{project}/loca... |

**Request body**: `GoogleCloudDiscoveryengineV1PurgeUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.userEvents.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.userEvents.collect`

**GET** `v1/{+parent}/userEvents:collect`

Writes a single user event from the browser. This uses a GET request to due to browser restriction of POST-ing to a third-party domain. This method is used only by the Discovery Engine API JavaScript pixel and Google Tag Manager. Users should not call this method directly.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. If the collect user event action is applied in DataStore level, the format is: `p... |
| `ets` | `string` | query | No | The event timestamp in milliseconds. This prevents browser caching of otherwise identical get requests. The name is a... |
| `uri` | `string` | query | No | The URL including cgi-parameters but excluding the hash fragment with a length limit of 5,000 characters. This is oft... |
| `userEvent` | `string` | query | No | Required. URL encoded UserEvent proto with a length limit of 2,000,000 characters. |

**Response**: `GoogleApiHttpBody`

```typescript
const res = await discoveryengine.userEvents.collect({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.userEvents.write`

**POST** `v1/{+parent}/userEvents:write`

Writes a single user event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. If the write user event action is applied in DataStore level, the format is: `pro... |
| `writeAsync` | `boolean` | query | No | If set to true, the user event is written asynchronously after validation, and the API responds without waiting for t... |

**Request body**: `GoogleCloudDiscoveryengineV1UserEvent`

**Response**: `GoogleCloudDiscoveryengineV1UserEvent`

```typescript
const res = await discoveryengine.userEvents.write({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.userEvents.import`

**POST** `v1/{+parent}/userEvents:import`

Bulk import of user events. Request processing might be synchronous. Events that already exist are skipped. Use this method for backfilling historical user events. Operation.response is of type ImportResponse. Note that it is possible for a subset of the items to be successfully inserted. Operation.metadata is of type ImportMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent DataStore resource name, of the form `projects/{project}/locations/{location}/collections/{collectio... |

**Request body**: `GoogleCloudDiscoveryengineV1ImportUserEventsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.userEvents.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.servingConfigs.create`

**POST** `v1/{+parent}/servingConfigs`

Creates a ServingConfig. Note: The Google Cloud console works only with the default serving config. Additional ServingConfigs can be created and managed only via the API. A maximum of 100 ServingConfigs are allowed in an Engine, otherwise a RESOURCE_EXHAUSTED error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent. Format: `projects/{project}/locations/{location}/collections/{collection}/eng... |
| `servingConfigId` | `string` | query | No | Required. The ID to use for the ServingConfig, which will become the final component of the ServingConfig's resource ... |

**Request body**: `GoogleCloudDiscoveryengineV1ServingConfig`

**Response**: `GoogleCloudDiscoveryengineV1ServingConfig`

```typescript
const res = await discoveryengine.servingConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.servingConfigs.list`

**GET** `v1/{+parent}/servingConfigs`

Lists all ServingConfigs linked to this dataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of the parent resource. Format: `projects/{project}/locations/{location}/collections/{co... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results to return. If unspecified, defaults to 100. If a value greater than 100 is provid... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListServingConfigs` call. Provide this to retrieve the subsequent p... |

**Response**: `GoogleCloudDiscoveryengineV1ListServingConfigsResponse`

```typescript
const res = await discoveryengine.servingConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.servingConfigs.patch`

**PATCH** `v1/{+name}`

Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided ServingConfig to update. The following are NOT supported: * ServingConfig.name... |

**Request body**: `GoogleCloudDiscoveryengineV1ServingConfig`

**Response**: `GoogleCloudDiscoveryengineV1ServingConfig`

```typescript
const res = await discoveryengine.servingConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.servingConfigs.recommend`

**POST** `v1/{+servingConfig}:recommend`

Makes a recommendation, which requires a contextual user event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. Full resource name of a ServingConfig: `projects/*/locations/global/collections/*/engines/*/servingConfigs/... |

**Request body**: `GoogleCloudDiscoveryengineV1RecommendRequest`

**Response**: `GoogleCloudDiscoveryengineV1RecommendResponse`

```typescript
const res = await discoveryengine.servingConfigs.recommend({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.servingConfigs.streamAnswer`

**POST** `v1/{+servingConfig}:streamAnswer`

Answer query method (streaming). It takes one AnswerQueryRequest and returns multiple AnswerQueryResponse messages in a stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1AnswerQueryRequest`

**Response**: `GoogleCloudDiscoveryengineV1AnswerQueryResponse`

```typescript
const res = await discoveryengine.servingConfigs.streamAnswer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.servingConfigs.get`

**GET** `v1/{+name}`

Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ServingConfig to get. Format: `projects/{project}/locations/{location}/collections... |

**Response**: `GoogleCloudDiscoveryengineV1ServingConfig`

```typescript
const res = await discoveryengine.servingConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.servingConfigs.answer`

**POST** `v1/{+servingConfig}:answer`

Answer query method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1AnswerQueryRequest`

**Response**: `GoogleCloudDiscoveryengineV1AnswerQueryResponse`

```typescript
const res = await discoveryengine.servingConfigs.answer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.servingConfigs.search`

**POST** `v1/{+servingConfig}:search`

Performs a search.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1SearchRequest`

**Response**: `GoogleCloudDiscoveryengineV1SearchResponse`

```typescript
const res = await discoveryengine.servingConfigs.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.servingConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the ServingConfig to delete. Format: `projects/{project}/locations/{location}/collecti... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.servingConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.servingConfigs.searchLite`

**POST** `v1/{+servingConfig}:searchLite`

Performs a search. Similar to the SearchService.Search method, but a lite version that allows API key for authentication, where OAuth and IAM checks are not required. Only public website search is supported by this method. If data stores and engines not associated with public website search are specified, a `FAILED_PRECONDITION` error is returned. This method can be used for easy onboarding without having to implement an authentication backend. However, it is strongly recommended to use SearchService.Search instead with required OAuth and IAM checks to provide better data security.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `servingConfig` | `string` | path | Yes | Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_co... |

**Request body**: `GoogleCloudDiscoveryengineV1SearchRequest`

**Response**: `GoogleCloudDiscoveryengineV1SearchResponse`

```typescript
const res = await discoveryengine.servingConfigs.searchLite({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.batchGetDocumentsMetadata`

**GET** `v1/{+parent}/batchGetDocumentsMetadata`

Gets index freshness metadata for Documents. Supported for website search only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent branch resource name, such as `projects/{project}/locations/{location}/collections/{collection}/... |
| `matcher.fhirMatcher.fhirResources` | `string` | query | No | Required. The FHIR resources to match by. Format: projects/{project}/locations/{location}/datasets/{dataset}/fhirStor... |
| `matcher.urisMatcher.uris` | `string` | query | No | The exact URIs to match by. |

**Response**: `GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse`

```typescript
const res = await discoveryengine.branches.batchGetDocumentsMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.documents.import`

**POST** `v1/{+parent}/documents:import`

Bulk import of multiple Documents. Request processing may be synchronous. Non-existing items are created. Note: It is possible for a subset of the Documents to be successfully updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent branch resource name, such as `projects/{project}/locations/{location}/collections/{collection}/... |

**Request body**: `GoogleCloudDiscoveryengineV1ImportDocumentsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.documents.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.documents.patch`

**PATCH** `v1/{+name}`

Updates a Document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The full resource name of the document. Format: `projects/{project}/locations/{location}/collections/{coll... |
| `allowMissing` | `boolean` | query | No | If set to `true` and the Document is not found, a new Document is be created. |
| `updateMask` | `string` | query | No | Indicates which fields in the provided imported 'document' to update. If not set, by default updates all fields. |

**Request body**: `GoogleCloudDiscoveryengineV1Document`

**Response**: `GoogleCloudDiscoveryengineV1Document`

```typescript
const res = await discoveryengine.documents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.documents.get`

**GET** `v1/{+name}`

Gets a Document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of Document, such as `projects/{project}/locations/{location}/collections/{collection}/d... |

**Response**: `GoogleCloudDiscoveryengineV1Document`

```typescript
const res = await discoveryengine.documents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.documents.list`

**GET** `v1/{+parent}/documents`

Gets a list of Documents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent branch resource name, such as `projects/{project}/locations/{location}/collections/{collection}/... |
| `pageSize` | `integer` | query | No | Maximum number of Documents to return. If unspecified, defaults to 100. The maximum allowed value is 1000. Values abo... |
| `pageToken` | `string` | query | No | A page token ListDocumentsResponse.next_page_token, received from a previous DocumentService.ListDocuments call. Prov... |

**Response**: `GoogleCloudDiscoveryengineV1ListDocumentsResponse`

```typescript
const res = await discoveryengine.documents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.documents.create`

**POST** `v1/{+parent}/documents`

Creates a Document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, such as `projects/{project}/locations/{location}/collections/{collection}/dataSto... |
| `documentId` | `string` | query | No | Required. The ID to use for the Document, which becomes the final component of the Document.name. If the caller does ... |

**Request body**: `GoogleCloudDiscoveryengineV1Document`

**Response**: `GoogleCloudDiscoveryengineV1Document`

```typescript
const res = await discoveryengine.documents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.documents.delete`

**DELETE** `v1/{+name}`

Deletes a Document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full resource name of Document, such as `projects/{project}/locations/{location}/collections/{collection}/d... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.documents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.branches.documents.purge`

**POST** `v1/{+parent}/documents:purge`

Permanently deletes all selected Documents in a branch. This process is asynchronous. Depending on the number of Documents to be deleted, this operation can take hours to complete. Before the delete operation completes, some Documents might still be returned by DocumentService.GetDocument or DocumentService.ListDocuments. To get a list of the Documents to be deleted, set PurgeDocumentsRequest.force to false.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name, such as `projects/{project}/locations/{location}/collections/{collection}/dataSto... |

**Request body**: `GoogleCloudDiscoveryengineV1PurgeDocumentsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.documents.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.schemas.create`

**POST** `v1/{+parent}/schemas`

Creates a Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name, in the format of `projects/{project}/locations/{location}/collections/... |
| `schemaId` | `string` | query | No | Required. The ID to use for the Schema, which becomes the final component of the Schema.name. This field should confo... |

**Request body**: `GoogleCloudDiscoveryengineV1Schema`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.schemas.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.schemas.list`

**GET** `v1/{+parent}/schemas`

Gets a list of Schemas.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name, in the format of `projects/{project}/locations/{location}/collections/... |
| `pageSize` | `integer` | query | No | The maximum number of Schemas to return. The service may return fewer than this value. If unspecified, at most 100 Sc... |
| `pageToken` | `string` | query | No | A page token, received from a previous SchemaService.ListSchemas call. Provide this to retrieve the subsequent page. ... |

**Response**: `GoogleCloudDiscoveryengineV1ListSchemasResponse`

```typescript
const res = await discoveryengine.schemas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.schemas.get`

**GET** `v1/{+name}`

Gets a Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections... |

**Response**: `GoogleCloudDiscoveryengineV1Schema`

```typescript
const res = await discoveryengine.schemas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.schemas.patch`

**PATCH** `v1/{+name}`

Updates a Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collection... |
| `allowMissing` | `boolean` | query | No | If set to true, and the Schema is not found, a new Schema is created. In this situation, `update_mask` is ignored. |

**Request body**: `GoogleCloudDiscoveryengineV1Schema`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.schemas.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.schemas.delete`

**DELETE** `v1/{+name}`

Deletes a Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.schemas.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.completionSuggestions.import`

**POST** `v1/{+parent}/completionSuggestions:import`

Imports CompletionSuggestions for a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name for which to import customer autocomplete suggestions. Follows pattern ... |

**Request body**: `GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.completionSuggestions.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.completionSuggestions.purge`

**POST** `v1/{+parent}/completionSuggestions:purge`

Permanently deletes all CompletionSuggestions for a DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent data store resource name for which to purge completion suggestions. Follows pattern projects/*/l... |

**Request body**: `GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.completionSuggestions.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.conversations.patch`

**PATCH** `v1/{+name}`

Updates a Conversation. Conversation action type cannot be changed. If the Conversation to update does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/dataStore/*/conversatio... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided Conversation to update. The following are NOT supported: * Conversation.name I... |

**Request body**: `GoogleCloudDiscoveryengineV1Conversation`

**Response**: `GoogleCloudDiscoveryengineV1Conversation`

```typescript
const res = await discoveryengine.conversations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.conversations.converse`

**POST** `v1/{+name}:converse`

Converses a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Conversation to get. Format: `projects/{project}/locations/{location}/collections/... |

**Request body**: `GoogleCloudDiscoveryengineV1ConverseConversationRequest`

**Response**: `GoogleCloudDiscoveryengineV1ConverseConversationResponse`

```typescript
const res = await discoveryengine.conversations.converse({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.conversations.get`

**GET** `v1/{+name}`

Gets a Conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Conversation to get. Format: `projects/{project}/locations/{location}/collections/... |

**Response**: `GoogleCloudDiscoveryengineV1Conversation`

```typescript
const res = await discoveryengine.conversations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.conversations.delete`

**DELETE** `v1/{+name}`

Deletes a Conversation. If the Conversation to delete does not exist, a NOT_FOUND error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Conversation to delete. Format: `projects/{project}/locations/{location}/collectio... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.conversations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.conversations.list`

**GET** `v1/{+parent}/conversations`

Lists all Conversations by their parent DataStore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The data store resource name. Format: `projects/{project}/locations/{location}/collections/{collection}/dat... |
| `filter` | `string` | query | No | A filter to apply on the list results. The supported features are: user_pseudo_id, state. Example: "user_pseudo_id = ... |
| `orderBy` | `string` | query | No | A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field name for descending... |
| `pageSize` | `integer` | query | No | Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListConversations` call. Provide this to retrieve the subsequent page. |

**Response**: `GoogleCloudDiscoveryengineV1ListConversationsResponse`

```typescript
const res = await discoveryengine.conversations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.conversations.create`

**POST** `v1/{+parent}/conversations`

Creates a Conversation. If the Conversation to create already exists, an ALREADY_EXISTS error is returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Full resource name of parent data store. Format: `projects/{project}/locations/{location}/collections/{coll... |

**Request body**: `GoogleCloudDiscoveryengineV1Conversation`

**Response**: `GoogleCloudDiscoveryengineV1Conversation`

```typescript
const res = await discoveryengine.conversations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.widgetConfigs.get`

**GET** `v1/{+name}`

Gets a WidgetConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full WidgetConfig resource name. Format: `projects/{project}/locations/{location}/collections/{collection_i... |
| `acceptCache` | `boolean` | query | No | Optional. Whether it's acceptable to load the widget config from cache. If set to true, recent changes on widget conf... |
| `getWidgetConfigRequestOption.turnOffCollectionComponents` | `boolean` | query | No | Optional. Whether to turn off collection_components in WidgetConfig to reduce latency and data transmission. |

**Response**: `GoogleCloudDiscoveryengineV1WidgetConfig`

```typescript
const res = await discoveryengine.widgetConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.dataStores.widgetConfigs.patch`

**PATCH** `v1/{+name}`

Update a WidgetConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The full resource name of the widget config. Format: `projects/{project}/locations/{location}/collections/... |
| `updateMask` | `string` | query | No | Indicates which fields in the provided WidgetConfig to update. The following are the only supported fields: * WidgetC... |

**Request body**: `GoogleCloudDiscoveryengineV1WidgetConfig`

**Response**: `GoogleCloudDiscoveryengineV1WidgetConfig`

```typescript
const res = await discoveryengine.widgetConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.assist.readwrite`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.podcasts.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.userStores.batchUpdateUserLicenses`

**POST** `v1/{+parent}:batchUpdateUserLicenses`

Updates the User License. This method is used for batch assign/unassign licenses to users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent UserStore resource name, format: `projects/{project}/locations/{location}/userStores/{user_store... |

**Request body**: `GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.userStores.batchUpdateUserLicenses({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.userStores.create`

**POST** `v1/{+parent}/userStores`

Creates a new User Store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection resource name, such as `projects/{project}/locations/{location}`. |
| `userStoreId` | `string` | query | No | Required. The ID of the User Store to create. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores... |

**Request body**: `GoogleCloudDiscoveryengineV1UserStore`

**Response**: `GoogleCloudDiscoveryengineV1UserStore`

```typescript
const res = await discoveryengine.userStores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.userStores.patch`

**PATCH** `v1/{+name}`

Updates the User Store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The full resource name of the User Store, in the format of `projects/{project}/locations/{location}/userSt... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `GoogleCloudDiscoveryengineV1UserStore`

**Response**: `GoogleCloudDiscoveryengineV1UserStore`

```typescript
const res = await discoveryengine.userStores.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.userStores.get`

**GET** `v1/{+name}`

Gets the User Store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the User Store to get. Format: `projects/{project}/locations/{location}/userStores/{user_store_... |

**Response**: `GoogleCloudDiscoveryengineV1UserStore`

```typescript
const res = await discoveryengine.userStores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.userStores.delete`

**DELETE** `v1/{+name}`

Deletes the User Store.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the User Store to delete. Format: `projects/{project}/locations/{location}/userStores/{user_sto... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.userStores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.userStores.userLicenses.list`

**GET** `v1/{+parent}/userLicenses`

Lists the User Licenses.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent UserStore resource name, format: `projects/{project}/locations/{location}/userStores/{user_store... |
| `orderBy` | `string` | query | No | Optional. The order in which the UserLicenses are listed. The value must be a comma-separated list of fields. Default... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, defaults to 10. The maxi... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListUserLicenses` call. Provide this to retrieve the subsequent pag... |

**Response**: `GoogleCloudDiscoveryengineV1ListUserLicensesResponse`

```typescript
const res = await discoveryengine.userLicenses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.userStores.licenseConfigsUsageStats.list`

**GET** `v1/{+parent}/licenseConfigsUsageStats`

Lists all the LicenseConfigUsageStatss associated with the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent branch resource name, such as `projects/{project}/locations/{location}/userStores/{user_store_id}`. |

**Response**: `GoogleCloudDiscoveryengineV1ListLicenseConfigsUsageStatsResponse`

```typescript
const res = await discoveryengine.licenseConfigsUsageStats.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.groundingConfigs.check`

**POST** `v1/{+groundingConfig}:check`

Performs a grounding check.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groundingConfig` | `string` | path | Yes | Required. The resource name of the grounding config, such as `projects/*/locations/global/groundingConfigs/default_gr... |

**Request body**: `GoogleCloudDiscoveryengineV1CheckGroundingRequest`

**Response**: `GoogleCloudDiscoveryengineV1CheckGroundingResponse`

```typescript
const res = await discoveryengine.groundingConfigs.check({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.locations.rankingConfigs.rank`

**POST** `v1/{+rankingConfig}:rank`

Ranks a list of text records based on the given input query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `rankingConfig` | `string` | path | Yes | Required. The resource name of the rank service config, such as `projects/{project_num}/locations/{location}/rankingC... |

**Request body**: `GoogleCloudDiscoveryengineV1RankRequest`

**Response**: `GoogleCloudDiscoveryengineV1RankResponse`

```typescript
const res = await discoveryengine.rankingConfigs.rank({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await discoveryengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await discoveryengine.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

### `discoveryengine.projects.operations.list`

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
const res = await discoveryengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/discoveryengine.readwrite`

---

## Schemas

### `A2aV1APIKeySecurityScheme`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of this security scheme. |
| `location` | `string` | Location of the API key, valid values are "query", "header", or "cookie" |
| `name` | `string` | Name of the header, query or cookie parameter to be used. |

### `A2aV1AgentCapabilities`

Defines the A2A feature set supported by the agent

| Property | Type | Description |
|----------|------|-------------|
| `extensions` | `array<A2aV1AgentExtension>` | Extensions supported by this agent. |
| `pushNotifications` | `boolean` | If the agent can send push notifications to the clients webhook |
| `streaming` | `boolean` | If the agent will support streaming responses |

### `A2aV1AgentCard`

AgentCard conveys key information: - Overall details (version, name, description, uses) - Skills; a set of actions/solutions the agent can perform - Default modalities/content types supported by the agent. - Authentication requirements Next ID: 19

| Property | Type | Description |
|----------|------|-------------|
| `additionalInterfaces` | `array<A2aV1AgentInterface>` | Announcement of additional supported transports. Client can use any of the supported transports. |
| `capabilities` | `A2aV1AgentCapabilities` | A2A Capability set supported by the agent. |
| `defaultInputModes` | `array<string>` | protolint:enable REPEATED_FIELD_NAMES_PLURALIZED The set of interaction modes that the agent supp... |
| `defaultOutputModes` | `array<string>` | The mime types supported as outputs from this agent. |
| `description` | `string` | A description of the agent's domain of action/solution space. Example: "Agent that helps users wi... |
| `documentationUrl` | `string` | A url to provide additional documentation about the agent. |
| `iconUrl` | `string` | An optional URL to an icon for the agent. |
| `name` | `string` | A human readable name for the agent. Example: "Recipe Agent" |
| `preferredTransport` | `string` | The transport of the preferred endpoint. If empty, defaults to JSONRPC. |
| `protocolVersion` | `string` | The version of the A2A protocol this agent supports. |
| `provider` | `A2aV1AgentProvider` | The service provider of the agent. |
| `security` | `array<A2aV1Security>` | protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Security requirements for contacting the agent.... |
| `securitySchemes` | `object` | The security scheme details used for authenticating with this agent. |
| `signatures` | `array<A2aV1AgentCardSignature>` | JSON Web Signatures computed for this AgentCard. |
| `skills` | `array<A2aV1AgentSkill>` | Skills represent a unit of ability an agent can perform. This may somewhat abstract but represent... |
| `supportsAuthenticatedExtendedCard` | `boolean` | Whether the agent supports providing an extended agent card when the user is authenticated, i.e. ... |
| `url` | `string` | A URL to the address the agent is hosted at. This represents the preferred endpoint as declared b... |
| `version` | `string` | The version of the agent. Example: "1.0.0" |

### `A2aV1AgentCardSignature`

AgentCardSignature represents a JWS signature of an AgentCard. This follows the JSON format of an RFC 7515 JSON Web Signature (JWS).

| Property | Type | Description |
|----------|------|-------------|
| `header` | `object` | The unprotected JWS header values. |
| `protected` | `string` | Required. The protected JWS header for the signature. This is always a base64url-encoded JSON obj... |
| `signature` | `string` | Required. The computed signature, base64url-encoded. Required. |

### `A2aV1AgentExtension`

A declaration of an extension supported by an Agent.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A description of how this agent uses this extension. Example: "Google OAuth 2.0 authentication" |
| `params` | `object` | Optional configuration for the extension. |
| `required` | `boolean` | Whether the client must follow specific requirements of the extension. Example: false |
| `uri` | `string` | The URI of the extension. Example: "https://developers.google.com/identity/protocols/oauth2" |

### `A2aV1AgentInterface`

Defines additional transport information for the agent.

| Property | Type | Description |
|----------|------|-------------|
| `tenant` | `string` | Tenant to be set in the request when calling the agent. Experimental, might still change for 1.0 ... |
| `transport` | `string` | The transport supported this url. This is an open form string, to be easily extended for many tra... |
| `url` | `string` | The url this interface is found at. |

### `A2aV1AgentProvider`

Represents information about the service provider of an agent.

| Property | Type | Description |
|----------|------|-------------|
| `organization` | `string` | The providers organization name Example: "Google" |
| `url` | `string` | The providers reference url Example: "https://ai.google.dev" |

### `A2aV1AgentSkill`

AgentSkill represents a unit of action/solution that the agent can perform. One can think of this as a type of highly reliable solution that an agent can be tasked to provide. Agents have the autonomy to choose how and when to use specific skills, but clients should have confidence that if the skill is defined that unit of action can be reliably performed.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A human (or llm) readable description of the skill details and behaviors. |
| `examples` | `array<string>` | A set of example queries that this skill is designed to address. These examples should help the c... |
| `id` | `string` | Unique identifier of the skill within this agent. |
| `inputModes` | `array<string>` | Possible input modalities supported. |
| `name` | `string` | A human readable name for the skill. |
| `outputModes` | `array<string>` | Possible output modalities produced |
| `security` | `array<A2aV1Security>` | protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Security schemes necessary for the agent to lev... |
| `tags` | `array<string>` | A set of tags for the skill to enhance categorization/utilization. Example: ["cooking", "customer... |

### `A2aV1Artifact`

Artifacts are the container for task completed results. These are similar to Messages but are intended to be the product of a task, as opposed to point-to-point communication.

| Property | Type | Description |
|----------|------|-------------|
| `artifactId` | `string` | Unique identifier (e.g. UUID) for the artifact. It must be at least unique within a task. |
| `description` | `string` | A human readable description of the artifact, optional. |
| `extensions` | `array<string>` | The URIs of extensions that are present or contributed to this Artifact. |
| `metadata` | `object` | Optional metadata included with the artifact. |
| `name` | `string` | A human readable name for the artifact. |
| `parts` | `array<A2aV1Part>` | The content of the artifact. |

### `A2aV1AuthenticationInfo`

Defines authentication details, used for push notifications.

| Property | Type | Description |
|----------|------|-------------|
| `credentials` | `string` | Optional credentials |
| `schemes` | `array<string>` | Supported authentication schemes - e.g. Basic, Bearer, etc |

### `A2aV1AuthorizationCodeOAuthFlow`

| Property | Type | Description |
|----------|------|-------------|
| `authorizationUrl` | `string` | The authorization URL to be used for this flow. This MUST be in the form of a URL. The OAuth2 sta... |
| `refreshUrl` | `string` | The URL to be used for obtaining refresh tokens. This MUST be in the form of a URL. The OAuth2 st... |
| `scopes` | `object` | The available scopes for the OAuth2 security scheme. A map between the scope name and a short des... |
| `tokenUrl` | `string` | The token URL to be used for this flow. This MUST be in the form of a URL. The OAuth2 standard re... |

### `A2aV1CancelTaskRequest`

### `A2aV1ClientCredentialsOAuthFlow`

| Property | Type | Description |
|----------|------|-------------|
| `refreshUrl` | `string` | The URL to be used for obtaining refresh tokens. This MUST be in the form of a URL. The OAuth2 st... |
| `scopes` | `object` | The available scopes for the OAuth2 security scheme. A map between the scope name and a short des... |
| `tokenUrl` | `string` | The token URL to be used for this flow. This MUST be in the form of a URL. The OAuth2 standard re... |

### `A2aV1DataPart`

DataPart represents a structured blob. This is most commonly a JSON payload.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` |  |

### `A2aV1FilePart`

FilePart represents the different ways files can be provided. If files are small, directly feeding the bytes is supported via file_with_bytes. If the file is large, the agent should read the content as appropriate directly from the file_with_uri source.

| Property | Type | Description |
|----------|------|-------------|
| `fileWithBytes` | `string` |  |
| `fileWithUri` | `string` |  |
| `mimeType` | `string` |  |
| `name` | `string` |  |

### `A2aV1HTTPAuthSecurityScheme`

| Property | Type | Description |
|----------|------|-------------|
| `bearerFormat` | `string` | A hint to the client to identify how the bearer token is formatted. Bearer tokens are usually gen... |
| `description` | `string` | Description of this security scheme. |
| `scheme` | `string` | The name of the HTTP Authentication scheme to be used in the Authorization header as defined in R... |

### `A2aV1ImplicitOAuthFlow`

| Property | Type | Description |
|----------|------|-------------|
| `authorizationUrl` | `string` | The authorization URL to be used for this flow. This MUST be in the form of a URL. The OAuth2 sta... |
| `refreshUrl` | `string` | The URL to be used for obtaining refresh tokens. This MUST be in the form of a URL. The OAuth2 st... |
| `scopes` | `object` | The available scopes for the OAuth2 security scheme. A map between the scope name and a short des... |

### `A2aV1ListTaskPushNotificationConfigResponse`

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `array<A2aV1TaskPushNotificationConfig>` | The list of push notification configurations. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `A2aV1Message`

Message is one unit of communication between client and server. It is associated with a context and optionally a task. Since the server is responsible for the context definition, it must always provide a context_id in its messages. The client can optionally provide the context_id if it knows the context to associate the message to. Similarly for task_id, except the server decides if a task is created and whether to include the task_id.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `array<A2aV1Part>` | protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Content is the container of the message content. |
| `contextId` | `string` | The context id of the message. This is optional and if set, the message will be associated with t... |
| `extensions` | `array<string>` | The URIs of extensions that are present or contributed to this Message. |
| `messageId` | `string` | The unique identifier (e.g. UUID)of the message. This is required and created by the message crea... |
| `metadata` | `object` | protolint:enable REPEATED_FIELD_NAMES_PLURALIZED Any optional metadata to provide along with the ... |
| `role` | `string` | A role for the message. |
| `taskId` | `string` | The task id of the message. This is optional and if set, the message will be associated with the ... |

### `A2aV1MutualTlsSecurityScheme`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of this security scheme. |

### `A2aV1OAuth2SecurityScheme`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of this security scheme. |
| `flows` | `A2aV1OAuthFlows` | An object containing configuration information for the flow types supported |
| `oauth2MetadataUrl` | `string` | URL to the oauth2 authorization server metadata [RFC8414](https://datatracker.ietf.org/doc/html/r... |

### `A2aV1OAuthFlows`

| Property | Type | Description |
|----------|------|-------------|
| `authorizationCode` | `A2aV1AuthorizationCodeOAuthFlow` |  |
| `clientCredentials` | `A2aV1ClientCredentialsOAuthFlow` |  |
| `implicit` | `A2aV1ImplicitOAuthFlow` |  |
| `password` | `A2aV1PasswordOAuthFlow` |  |

### `A2aV1OpenIdConnectSecurityScheme`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of this security scheme. |
| `openIdConnectUrl` | `string` | Well-known URL to discover the [[OpenID-Connect-Discovery]] provider metadata. |

### `A2aV1Part`

Part represents a container for a section of communication content. Parts can be purely textual, some sort of file (image, video, etc) or a structured data blob (i.e. JSON).

| Property | Type | Description |
|----------|------|-------------|
| `data` | `A2aV1DataPart` |  |
| `file` | `A2aV1FilePart` |  |
| `metadata` | `object` | Optional metadata associated with this part. |
| `text` | `string` |  |

### `A2aV1PasswordOAuthFlow`

| Property | Type | Description |
|----------|------|-------------|
| `refreshUrl` | `string` | The URL to be used for obtaining refresh tokens. This MUST be in the form of a URL. The OAuth2 st... |
| `scopes` | `object` | The available scopes for the OAuth2 security scheme. A map between the scope name and a short des... |
| `tokenUrl` | `string` | The token URL to be used for this flow. This MUST be in the form of a URL. The OAuth2 standard re... |

### `A2aV1PushNotificationConfig`

Configuration for setting up push notifications for task updates.

| Property | Type | Description |
|----------|------|-------------|
| `authentication` | `A2aV1AuthenticationInfo` | Information about the authentication to sent with the notification |
| `id` | `string` | A unique identifier (e.g. UUID) for this push notification. |
| `token` | `string` | Token unique for this task/session |
| `url` | `string` | Url to send the notification too |

### `A2aV1Security`

| Property | Type | Description |
|----------|------|-------------|
| `schemes` | `object` |  |

### `A2aV1SecurityScheme`

| Property | Type | Description |
|----------|------|-------------|
| `apiKeySecurityScheme` | `A2aV1APIKeySecurityScheme` |  |
| `httpAuthSecurityScheme` | `A2aV1HTTPAuthSecurityScheme` |  |
| `mtlsSecurityScheme` | `A2aV1MutualTlsSecurityScheme` |  |
| `oauth2SecurityScheme` | `A2aV1OAuth2SecurityScheme` |  |
| `openIdConnectSecurityScheme` | `A2aV1OpenIdConnectSecurityScheme` |  |

### `A2aV1SendMessageConfiguration`

Configuration of a send message request.

| Property | Type | Description |
|----------|------|-------------|
| `acceptedOutputModes` | `array<string>` | The output modes that the agent is expected to respond with. |
| `blocking` | `boolean` | If true, the message will be blocking until the task is completed. If false, the message will be ... |
| `historyLength` | `integer` | The maximum number of messages to include in the history. if 0, the history will be unlimited. |
| `pushNotification` | `A2aV1PushNotificationConfig` | A configuration of a webhook that can be used to receive updates |

### `A2aV1SendMessageRequest`

/////////// Request Messages ///////////

| Property | Type | Description |
|----------|------|-------------|
| `configuration` | `A2aV1SendMessageConfiguration` | Configuration for the send request. |
| `message` | `A2aV1Message` | Required. The message to send to the agent. |
| `metadata` | `object` | Optional metadata for the request. |

### `A2aV1SendMessageResponse`

////// Response Messages ///////////

| Property | Type | Description |
|----------|------|-------------|
| `message` | `A2aV1Message` |  |
| `task` | `A2aV1Task` |  |

### `A2aV1StreamResponse`

The stream response for a message. The stream should be one of the following sequences: If the response is a message, the stream should contain one, and only one, message and then close If the response is a task lifecycle, the first response should be a Task object followed by zero or more TaskStatusUpdateEvents and TaskArtifactUpdateEvents. The stream should complete when the Task if in an interrupted or terminal state. A stream that ends before these conditions are met are

| Property | Type | Description |
|----------|------|-------------|
| `artifactUpdate` | `A2aV1TaskArtifactUpdateEvent` |  |
| `message` | `A2aV1Message` |  |
| `statusUpdate` | `A2aV1TaskStatusUpdateEvent` |  |
| `task` | `A2aV1Task` |  |

### `A2aV1StringList`

protolint:disable REPEATED_FIELD_NAMES_PLURALIZED

| Property | Type | Description |
|----------|------|-------------|
| `list` | `array<string>` |  |

### `A2aV1Task`

Task is the core unit of action for A2A. It has a current status and when results are created for the task they are stored in the artifact. If there are multiple turns for a task, these are stored in history.

| Property | Type | Description |
|----------|------|-------------|
| `artifacts` | `array<A2aV1Artifact>` | A set of output artifacts for a Task. |
| `contextId` | `string` | Unique identifier (e.g. UUID) for the contextual collection of interactions (tasks and messages).... |
| `history` | `array<A2aV1Message>` | protolint:disable REPEATED_FIELD_NAMES_PLURALIZED The history of interactions from a task. |
| `id` | `string` | Unique identifier (e.g. UUID) for the task, generated by the server for a new task. |
| `metadata` | `object` | protolint:enable REPEATED_FIELD_NAMES_PLURALIZED A key/value object to store custom metadata abou... |
| `status` | `A2aV1TaskStatus` | The current status of a Task, including state and a message. |

### `A2aV1TaskArtifactUpdateEvent`

TaskArtifactUpdateEvent represents a task delta where an artifact has been generated.

| Property | Type | Description |
|----------|------|-------------|
| `append` | `boolean` | Whether this should be appended to a prior one produced |
| `artifact` | `A2aV1Artifact` | The artifact itself |
| `contextId` | `string` | The id of the context that this task belongs too |
| `lastChunk` | `boolean` | Whether this represents the last part of an artifact |
| `metadata` | `object` | Optional metadata associated with the artifact update. |
| `taskId` | `string` | The id of the task for this artifact |

### `A2aV1TaskPushNotificationConfig`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the config. Format: tasks/{task_id}/pushNotificationConfigs/{config_id} |
| `pushNotificationConfig` | `A2aV1PushNotificationConfig` | The push notification configuration details. |

### `A2aV1TaskStatus`

A container for the status of a task

| Property | Type | Description |
|----------|------|-------------|
| `message` | `A2aV1Message` | A message associated with the status. |
| `state` | `string` | The current state of this task |
| `timestamp` | `string` | Timestamp when the status was recorded. Example: "2023-10-27T10:00:00Z" |

### `A2aV1TaskStatusUpdateEvent`

TaskStatusUpdateEvent is a delta even on a task indicating that a task has changed.

| Property | Type | Description |
|----------|------|-------------|
| `contextId` | `string` | The id of the context that the task belongs to |
| `final` | `boolean` | Whether this is the last status update expected for this task. |
| `metadata` | `object` | Optional metadata to associate with the task update. |
| `status` | `A2aV1TaskStatus` | The new status of the task. |
| `taskId` | `string` | The id of the task that is changed |

### `GoogleApiDistribution`

`Distribution` contains summary statistics for a population of values. It optionally contains a histogram representing the distribution of those values across a set of buckets. The summary statistics are the count, mean, sum of the squared deviation from the mean, the minimum, and the maximum of the set of population of values. The histogram is based on a sequence of buckets and gives a count of values that fall into each bucket. The boundaries of the buckets are given either explicitly or by formulas for buckets of fixed or exponentially increasing widths. Although it is not forbidden, it is generally a bad idea to include non-finite values (infinities or NaNs) in the population of values, as this will render the `mean` and `sum_of_squared_deviation` fields meaningless.

| Property | Type | Description |
|----------|------|-------------|
| `bucketCounts` | `array<string>` | The number of values in each bucket of the histogram, as described in `bucket_options`. If the di... |
| `bucketOptions` | `GoogleApiDistributionBucketOptions` | Defines the histogram bucket boundaries. If the distribution does not contain a histogram, then o... |
| `count` | `string` | The number of values in the population. Must be non-negative. This value must equal the sum of th... |
| `exemplars` | `array<GoogleApiDistributionExemplar>` | Must be in increasing order of `value` field. |
| `mean` | `number` | The arithmetic mean of the values in the population. If `count` is zero then this field must be z... |
| `range` | `GoogleApiDistributionRange` | If specified, contains the range of the population values. The field must not be present if the `... |
| `sumOfSquaredDeviation` | `number` | The sum of squared deviations from the mean of the values in the population. For values x_i this ... |

### `GoogleApiDistributionBucketOptions`

`BucketOptions` describes the bucket boundaries used to create a histogram for the distribution. The buckets can be in a linear sequence, an exponential sequence, or each bucket can be specified explicitly. `BucketOptions` does not include the number of values in each bucket. A bucket has an inclusive lower bound and exclusive upper bound for the values that are counted for that bucket. The upper bound of a bucket must be strictly greater than the lower bound. The sequence of N buckets for a distribution consists of an underflow bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an overflow bucket (number N - 1). The buckets are contiguous: the lower bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets span the whole range of finite values: lower bound of the underflow bucket is -infinity and the upper bound of the overflow bucket is +infinity. The finite buckets are so-called because both bounds are finite.

| Property | Type | Description |
|----------|------|-------------|
| `explicitBuckets` | `GoogleApiDistributionBucketOptionsExplicit` | The explicit buckets. |
| `exponentialBuckets` | `GoogleApiDistributionBucketOptionsExponential` | The exponential buckets. |
| `linearBuckets` | `GoogleApiDistributionBucketOptionsLinear` | The linear bucket. |

### `GoogleApiDistributionBucketOptionsExplicit`

Specifies a set of buckets with arbitrary widths. There are `size(bounds) + 1` (= N) buckets. Bucket `i` has the following boundaries: Upper bound (0 <= i < N-1): bounds[i] Lower bound (1 <= i < N); bounds[i - 1] The `bounds` field must contain at least one element. If `bounds` has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.

| Property | Type | Description |
|----------|------|-------------|
| `bounds` | `array<number>` | The values must be monotonically increasing. |

### `GoogleApiDistributionBucketOptionsExponential`

Specifies an exponential sequence of buckets that have a width that is proportional to the value of the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket. There are `num_finite_buckets + 2` (= N) buckets. Bucket `i` has the following boundaries: Upper bound (0 <= i < N-1): scale * (growth_factor ^ i). Lower bound (1 <= i < N): scale * (growth_factor ^ (i - 1)).

| Property | Type | Description |
|----------|------|-------------|
| `growthFactor` | `number` | Must be greater than 1. |
| `numFiniteBuckets` | `integer` | Must be greater than 0. |
| `scale` | `number` | Must be greater than 0. |

### `GoogleApiDistributionBucketOptionsLinear`

Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket. There are `num_finite_buckets + 2` (= N) buckets. Bucket `i` has the following boundaries: Upper bound (0 <= i < N-1): offset + (width * i). Lower bound (1 <= i < N): offset + (width * (i - 1)).

| Property | Type | Description |
|----------|------|-------------|
| `numFiniteBuckets` | `integer` | Must be greater than 0. |
| `offset` | `number` | Lower bound of the first bucket. |
| `width` | `number` | Must be greater than 0. |

### `GoogleApiDistributionExemplar`

Exemplars are example points that may be used to annotate aggregated distribution values. They are metadata that gives information about a particular value added to a Distribution bucket, such as a trace ID that was active when a value was added. They may contain further information, such as a example values and timestamps, origin, etc.

| Property | Type | Description |
|----------|------|-------------|
| `attachments` | `array<object>` | Contextual information about the example value. Examples are: Trace: type.googleapis.com/google.m... |
| `timestamp` | `string` | The observation (sampling) time of the above value. |
| `value` | `number` | Value of the exemplar point. This value determines to which bucket the exemplar belongs. |

### `GoogleApiDistributionRange`

The range of the population values.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `number` | The maximum of the population values. |
| `min` | `number` | The minimum of the population values. |

### `GoogleApiHttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `GoogleApiMetric`

A specific metric, identified by specifying values for all of the labels of a `MetricDescriptor`.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | The set of label values that uniquely identify this metric. All labels listed in the `MetricDescr... |
| `type` | `string` | An existing metric type, see google.api.MetricDescriptor. For example, `custom.googleapis.com/inv... |

### `GoogleApiMonitoredResource`

An object representing a resource that can be used for monitoring, logging, billing, or other purposes. Examples include virtual machine instances, databases, and storage devices such as disks. The `type` field identifies a MonitoredResourceDescriptor object that describes the resource's schema. Information in the `labels` field identifies the actual resource and its attributes according to the schema. For example, a particular Compute Engine VM instance could be represented by the following object, because the MonitoredResourceDescriptor for `"gce_instance"` has labels `"project_id"`, `"instance_id"` and `"zone"`: { "type": "gce_instance", "labels": { "project_id": "my-project", "instance_id": "12345678901234", "zone": "us-central1-a" }}

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Required. Values for all of the labels listed in the associated monitored resource descriptor. Fo... |
| `type` | `string` | Required. The monitored resource type. This field must match the `type` field of a MonitoredResou... |

### `GoogleApiMonitoredResourceMetadata`

Auxiliary metadata for a MonitoredResource object. MonitoredResource objects contain the minimum set of information to uniquely identify a monitored resource instance. There is some other useful auxiliary metadata. Monitoring and Logging use an ingestion pipeline to extract metadata for cloud resources of all types, and store the metadata in this message.

| Property | Type | Description |
|----------|------|-------------|
| `systemLabels` | `object` | Output only. Values for predefined system metadata labels. System labels are a kind of metadata e... |
| `userLabels` | `object` | Output only. A map of user-defined metadata labels. |

### `GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext`

The error payload that is populated on LRO sync APIs, including the following: * `google.cloud.discoveryengine.v1main.DataConnectorService.SetUpDataConnector` * `google.cloud.discoveryengine.v1main.DataConnectorService.StartConnectorRun`

| Property | Type | Description |
|----------|------|-------------|
| `connectorRun` | `string` | The full resource name of the Connector Run. Format: `projects/*/locations/*/collections/*/dataCo... |
| `dataConnector` | `string` | The full resource name of the DataConnector. Format: `projects/*/locations/*/collections/*/dataCo... |
| `endTime` | `string` | The time when the connector run ended. |
| `entity` | `string` | The entity to sync for the connector run. |
| `operation` | `string` | The operation resource name of the LRO to sync the connector. |
| `startTime` | `string` | The time when the connector run started. |
| `syncType` | `string` | The type of sync run. Can be one of the following: * `FULL` * `INCREMENTAL` |

### `GoogleCloudDiscoveryengineLoggingErrorContext`

A description of the context in which an error occurred.

| Property | Type | Description |
|----------|------|-------------|
| `httpRequest` | `GoogleCloudDiscoveryengineLoggingHttpRequestContext` | The HTTP request which was processed when the error was triggered. |
| `reportLocation` | `GoogleCloudDiscoveryengineLoggingSourceLocation` | The location in the source code where the decision was made to report the error, usually the plac... |

### `GoogleCloudDiscoveryengineLoggingErrorLog`

An error log which is reported to the Error Reporting system.

| Property | Type | Description |
|----------|------|-------------|
| `connectorRunPayload` | `GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext` | The error payload that is populated on LRO connector sync APIs. |
| `context` | `GoogleCloudDiscoveryengineLoggingErrorContext` | A description of the context in which the error occurred. |
| `importPayload` | `GoogleCloudDiscoveryengineLoggingImportErrorContext` | The error payload that is populated on LRO import APIs. |
| `message` | `string` | A message describing the error. |
| `requestPayload` | `object` | The API request payload, represented as a protocol buffer. Most API request types are supported—f... |
| `responsePayload` | `object` | The API response payload, represented as a protocol buffer. This is used to log some "soft errors... |
| `serviceContext` | `GoogleCloudDiscoveryengineLoggingServiceContext` | The service context in which this error has occurred. |
| `status` | `GoogleRpcStatus` | The RPC status associated with the error log. |

### `GoogleCloudDiscoveryengineLoggingHttpRequestContext`

HTTP request data that is related to a reported error.

| Property | Type | Description |
|----------|------|-------------|
| `responseStatusCode` | `integer` | The HTTP response status code for the request. |

### `GoogleCloudDiscoveryengineLoggingImportErrorContext`

The error payload that is populated on LRO import APIs, including the following: * `google.cloud.discoveryengine.v1alpha.DocumentService.ImportDocuments` * `google.cloud.discoveryengine.v1alpha.UserEventService.ImportUserEvents`

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | The detailed content which caused the error on importing a document. |
| `gcsPath` | `string` | Google Cloud Storage file path of the import source. Can be set for batch operation error. |
| `lineNumber` | `string` | Line number of the content in file. Should be empty for permission or batch operation error. |
| `operation` | `string` | The operation resource name of the LRO. |
| `userEvent` | `string` | The detailed content which caused the error on importing a user event. |

### `GoogleCloudDiscoveryengineLoggingServiceContext`

Describes a running service that sends errors.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | An identifier of the service—for example, `discoveryengine.googleapis.com`. |

### `GoogleCloudDiscoveryengineLoggingSourceLocation`

Indicates a location in the source code of the service for which errors are reported.

| Property | Type | Description |
|----------|------|-------------|
| `functionName` | `string` | Human-readable name of a function or method—for example, `google.cloud.discoveryengine.v1alpha.Re... |

### `GoogleCloudDiscoveryengineV1AclConfig`

Access Control Configuration.

| Property | Type | Description |
|----------|------|-------------|
| `idpConfig` | `GoogleCloudDiscoveryengineV1IdpConfig` | Identity provider config. |
| `name` | `string` | Immutable. The full resource name of the acl configuration. Format: `projects/{project}/locations... |

### `GoogleCloudDiscoveryengineV1ActionConfig`

Informations to support actions on the connector.

| Property | Type | Description |
|----------|------|-------------|
| `actionParams` | `object` | Optional. Action parameters in structured json format. |
| `isActionConfigured` | `boolean` | Output only. The connector contains the necessary parameters and is configured to support actions. |
| `jsonActionParams` | `string` | Optional. Action parameters in json string format. |
| `serviceName` | `string` | Optional. The Service Directory resource name (projects/*/locations/*/namespaces/*/services/*) re... |
| `useStaticSecrets` | `boolean` | Optional. Whether to use static secrets for the connector. If true, the secrets provided in the a... |

### `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequest`

Request message for CompletionService.AdvancedCompleteQuery method. .

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec` | Optional. Specification to boost suggestions matching the condition. |
| `experimentIds` | `array<string>` | Optional. Experiment ids for this request. |
| `includeTailSuggestions` | `boolean` | Indicates if tail suggestions should be returned if there are no suggestions that match the full ... |
| `query` | `string` | Required. The typeahead input used to fetch suggestions. Maximum length is 128 characters. The qu... |
| `queryModel` | `string` | Specifies the autocomplete query model, which only applies to the QUERY SuggestionType. This over... |
| `suggestionTypeSpecs` | `array<GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestSuggestionTypeSpec>` | Optional. Specification of each suggestion type. |
| `suggestionTypes` | `array<string>` | Optional. Suggestion types to return. If empty or unspecified, query suggestions are returned. On... |
| `userInfo` | `GoogleCloudDiscoveryengineV1UserInfo` | Optional. Information about the end user. This should be the same identifier information as UserE... |
| `userPseudoId` | `string` | Optional. A unique identifier for tracking visitors. For example, this could be implemented with ... |

### `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpec`

Specification to boost suggestions based on the condition of the suggestion.

| Property | Type | Description |
|----------|------|-------------|
| `conditionBoostSpecs` | `array<GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpecConditionBoostSpec>` | Condition boost specifications. If a suggestion matches multiple conditions in the specifications... |

### `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestBoostSpecConditionBoostSpec`

Boost applies to suggestions which match a condition.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Strength of the boost, which should be in [-1, 1]. Negative boost means demotion. Default is 0.0.... |
| `condition` | `string` | An expression which specifies a boost condition. The syntax is the same as [filter expression syn... |

### `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryRequestSuggestionTypeSpec`

Specification of each suggestion type.

| Property | Type | Description |
|----------|------|-------------|
| `maxSuggestions` | `integer` | Optional. Maximum number of suggestions to return for each suggestion type. |
| `suggestionType` | `string` | Optional. Suggestion type. |

### `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponse`

Response message for CompletionService.AdvancedCompleteQuery method.

| Property | Type | Description |
|----------|------|-------------|
| `contentSuggestions` | `array<GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion>` | Results of the matched content suggestions. The result list is ordered and the first result is th... |
| `peopleSuggestions` | `array<GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion>` | Results of the matched people suggestions. The result list is ordered and the first result is the... |
| `querySuggestions` | `array<GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseQuerySuggestion>` | Results of the matched query suggestions. The result list is ordered and the first result is a to... |
| `recentSearchSuggestions` | `array<GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseRecentSearchSuggestion>` | Results of the matched "recent search" suggestions. The result list is ordered and the first resu... |
| `tailMatchTriggered` | `boolean` | True if the returned suggestions are all tail suggestions. For tail matching to be triggered, inc... |

### `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseContentSuggestion`

Suggestions as content.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The type of the content suggestion. |
| `dataStore` | `string` | The name of the dataStore that this suggestion belongs to. |
| `destinationUri` | `string` | The destination uri of the content suggestion. |
| `document` | `GoogleCloudDiscoveryengineV1Document` | The document data snippet in the suggestion. Only a subset of fields will be populated. |
| `iconUri` | `string` | The icon uri of the content suggestion. |
| `score` | `number` | The score of each suggestion. The score is in the range of [0, 1]. |
| `suggestion` | `string` | The suggestion for the query. |

### `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponsePersonSuggestion`

Suggestions as people.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | The name of the dataStore that this suggestion belongs to. |
| `destinationUri` | `string` | The destination uri of the person suggestion. |
| `displayPhotoUri` | `string` | The photo uri of the person suggestion. |
| `document` | `GoogleCloudDiscoveryengineV1Document` | The document data snippet in the suggestion. Only a subset of fields is populated. |
| `personType` | `string` | The type of the person. |
| `score` | `number` | The score of each suggestion. The score is in the range of [0, 1]. |
| `suggestion` | `string` | The suggestion for the query. |

### `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseQuerySuggestion`

Suggestions as search queries.

| Property | Type | Description |
|----------|------|-------------|
| `completableFieldPaths` | `array<string>` | The unique document field paths that serve as the source of this suggestion if it was generated f... |
| `dataStore` | `array<string>` | The name of the dataStore that this suggestion belongs to. |
| `score` | `number` | The score of each suggestion. The score is in the range of [0, 1]. |
| `suggestion` | `string` | The suggestion for the query. |

### `GoogleCloudDiscoveryengineV1AdvancedCompleteQueryResponseRecentSearchSuggestion`

Suggestions from recent search history.

| Property | Type | Description |
|----------|------|-------------|
| `recentSearchTime` | `string` | The time when this recent rearch happened. |
| `score` | `number` | The score of each suggestion. The score is in the range of [0, 1]. |
| `suggestion` | `string` | The suggestion for the query. |

### `GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig`

Configuration data for advance site search.

| Property | Type | Description |
|----------|------|-------------|
| `disableAutomaticRefresh` | `boolean` | If set true, automatic refresh is disabled for the DataStore. |
| `disableInitialIndex` | `boolean` | If set true, initial indexing is disabled for the DataStore. |

### `GoogleCloudDiscoveryengineV1AlertPolicyConfig`

The connector level alert config.

| Property | Type | Description |
|----------|------|-------------|
| `alertEnrollments` | `array<GoogleCloudDiscoveryengineV1AlertPolicyConfigAlertEnrollment>` | Optional. The enrollment states of each alert. |
| `alertPolicyName` | `string` | Immutable. The fully qualified resource name of the AlertPolicy. |

### `GoogleCloudDiscoveryengineV1AlertPolicyConfigAlertEnrollment`

The alert enrollment status.

| Property | Type | Description |
|----------|------|-------------|
| `alertId` | `string` | Immutable. The id of an alert. |
| `enrollState` | `string` | Required. The enrollment status of a customer. |

### `GoogleCloudDiscoveryengineV1AlloyDbSource`

AlloyDB source import data from.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Required. The AlloyDB cluster to copy the data from with a length limit of 256 characters. |
| `databaseId` | `string` | Required. The AlloyDB database to copy the data from with a length limit of 256 characters. |
| `gcsStagingDir` | `string` | Intermediate Cloud Storage directory used for the import with a length limit of 2,000 characters.... |
| `locationId` | `string` | Required. The AlloyDB location to copy the data from with a length limit of 256 characters. |
| `projectId` | `string` | The project ID that contains the AlloyDB source. Has a length limit of 128 characters. If not spe... |
| `tableId` | `string` | Required. The AlloyDB table to copy the data from with a length limit of 256 characters. |

### `GoogleCloudDiscoveryengineV1Answer`

Defines an answer.

| Property | Type | Description |
|----------|------|-------------|
| `answerSkippedReasons` | `array<string>` | Additional answer-skipped reasons. This provides the reason for ignored cases. If nothing is skip... |
| `answerText` | `string` | The textual answer. |
| `citations` | `array<GoogleCloudDiscoveryengineV1AnswerCitation>` | Citations. |
| `completeTime` | `string` | Output only. Answer completed timestamp. |
| `createTime` | `string` | Output only. Answer creation timestamp. |
| `groundingScore` | `number` | A score in the range of [0, 1] describing how grounded the answer is by the reference chunks. |
| `groundingSupports` | `array<GoogleCloudDiscoveryengineV1AnswerGroundingSupport>` | Optional. Grounding supports. |
| `name` | `string` | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/eng... |
| `queryUnderstandingInfo` | `GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo` | Query understanding information. |
| `references` | `array<GoogleCloudDiscoveryengineV1AnswerReference>` | References. |
| `relatedQuestions` | `array<string>` | Suggested related questions. |
| `safetyRatings` | `array<GoogleCloudDiscoveryengineV1SafetyRating>` | Optional. Safety ratings. |
| `state` | `string` | The state of the answer generation. |
| `steps` | `array<GoogleCloudDiscoveryengineV1AnswerStep>` | Answer generation steps. |

### `GoogleCloudDiscoveryengineV1AnswerCitation`

Citation info for a segment.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `string` | End of the attributed segment, exclusive. Measured in bytes (UTF-8 unicode). If there are multi-b... |
| `sources` | `array<GoogleCloudDiscoveryengineV1AnswerCitationSource>` | Citation sources for the attributed segment. |
| `startIndex` | `string` | Index indicates the start of the segment, measured in bytes (UTF-8 unicode). If there are multi-b... |

### `GoogleCloudDiscoveryengineV1AnswerCitationSource`

Citation source.

| Property | Type | Description |
|----------|------|-------------|
| `referenceId` | `string` | ID of the citation source. |

### `GoogleCloudDiscoveryengineV1AnswerGenerationSpec`

The specification for answer generation.

| Property | Type | Description |
|----------|------|-------------|
| `userDefinedClassifierSpec` | `GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec` | Optional. The specification for user specified classifier spec. |

### `GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec`

The specification for user defined classifier.

| Property | Type | Description |
|----------|------|-------------|
| `enableUserDefinedClassifier` | `boolean` | Optional. Whether or not to enable and include user defined classifier. |
| `modelId` | `string` | Optional. The model id to be used for the user defined classifier. |
| `preamble` | `string` | Optional. The preamble to be used for the user defined classifier. |
| `seed` | `integer` | Optional. The seed value to be used for the user defined classifier. |
| `taskMarker` | `string` | Optional. The task marker to be used for the user defined classifier. |
| `temperature` | `number` | Optional. The temperature value to be used for the user defined classifier. |
| `topK` | `string` | Optional. The top-k value to be used for the user defined classifier. |
| `topP` | `number` | Optional. The top-p value to be used for the user defined classifier. |

### `GoogleCloudDiscoveryengineV1AnswerGroundingSupport`

Grounding support for a claim in `answer_text`.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `string` | Required. End of the claim, exclusive. |
| `groundingCheckRequired` | `boolean` | Indicates that this claim required grounding check. When the system decided this claim didn't req... |
| `groundingScore` | `number` | A score in the range of [0, 1] describing how grounded is a specific claim by the references. Hig... |
| `sources` | `array<GoogleCloudDiscoveryengineV1AnswerCitationSource>` | Optional. Citation sources for the claim. |
| `startIndex` | `string` | Required. Index indicates the start of the claim, measured in bytes (UTF-8 unicode). |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequest`

Request message for ConversationalSearchService.AnswerQuery method.

| Property | Type | Description |
|----------|------|-------------|
| `answerGenerationSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec` | Answer generation specification. |
| `asynchronousMode` | `boolean` | Deprecated: This field is deprecated. Streaming Answer API will be supported. Asynchronous mode c... |
| `endUserSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec` | Optional. End user specification. |
| `groundingSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestGroundingSpec` | Optional. Grounding specification. |
| `query` | `GoogleCloudDiscoveryengineV1Query` | Required. Current user query. |
| `queryUnderstandingSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec` | Query understanding specification. |
| `relatedQuestionsSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec` | Related questions specification. |
| `safetySpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec` | Model specification. |
| `searchSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec` | Search specification. |
| `session` | `string` | The session resource name. Not required. When session field is not set, the API is in sessionless... |
| `userLabels` | `object` | The user labels applied to a resource must meet the following requirements: * Each resource can h... |
| `userPseudoId` | `string` | A unique identifier for tracking visitors. For example, this could be implemented with an HTTP co... |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpec`

Answer generation specification.

| Property | Type | Description |
|----------|------|-------------|
| `answerLanguageCode` | `string` | Language code for Answer. Use language tags defined by [BCP47](https://www.rfc-editor.org/rfc/bcp... |
| `ignoreAdversarialQuery` | `boolean` | Specifies whether to filter out adversarial queries. The default value is `false`. Google employs... |
| `ignoreJailBreakingQuery` | `boolean` | Optional. Specifies whether to filter out jail-breaking queries. The default value is `false`. Go... |
| `ignoreLowRelevantContent` | `boolean` | Specifies whether to filter out queries that have low relevance. If this field is set to `false`,... |
| `ignoreNonAnswerSeekingQuery` | `boolean` | Specifies whether to filter out queries that are not answer-seeking. The default value is `false`... |
| `includeCitations` | `boolean` | Specifies whether to include citation metadata in the answer. The default value is `false`. |
| `modelSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecModelSpec` | Answer generation model specification. |
| `promptSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecPromptSpec` | Answer generation prompt specification. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecModelSpec`

Answer Generation Model specification.

| Property | Type | Description |
|----------|------|-------------|
| `modelVersion` | `string` | Model version. If not set, it will use the default stable model. Allowed values are: stable, prev... |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestAnswerGenerationSpecPromptSpec`

Answer generation prompt specification.

| Property | Type | Description |
|----------|------|-------------|
| `preamble` | `string` | Customized preamble. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpec`

End user specification.

| Property | Type | Description |
|----------|------|-------------|
| `endUserMetadata` | `array<GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData>` | Optional. End user metadata. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaData`

End user metadata.

| Property | Type | Description |
|----------|------|-------------|
| `chunkInfo` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo` | Chunk information. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo`

Chunk information.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Chunk textual content. It is limited to 8000 characters. |
| `documentMetadata` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata` | Metadata of the document from the current chunk. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata`

Document metadata contains the information of the document of the current chunk.

| Property | Type | Description |
|----------|------|-------------|
| `title` | `string` | Title of the document. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestGroundingSpec`

Grounding specification.

| Property | Type | Description |
|----------|------|-------------|
| `filteringLevel` | `string` | Optional. Specifies whether to enable the filtering based on grounding score and at what level. |
| `includeGroundingSupports` | `boolean` | Optional. Specifies whether to include grounding_supports in the answer. The default value is `fa... |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpec`

Query understanding specification.

| Property | Type | Description |
|----------|------|-------------|
| `disableSpellCorrection` | `boolean` | Optional. Whether to disable spell correction. The default value is `false`. |
| `queryClassificationSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec` | Query classification specification. |
| `queryRephraserSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec` | Query rephraser specification. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec`

Query classification specification.

| Property | Type | Description |
|----------|------|-------------|
| `types` | `array<string>` | Enabled query classification types. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec`

Query rephraser specification.

| Property | Type | Description |
|----------|------|-------------|
| `disable` | `boolean` | Disable query rephraser. |
| `maxRephraseSteps` | `integer` | Max rephrase steps. The max number is 5 steps. If not set or set to < 1, it will be set to 1 by d... |
| `modelSpec` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec` | Optional. Query Rephraser Model specification. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec`

Query Rephraser Model specification.

| Property | Type | Description |
|----------|------|-------------|
| `modelType` | `string` | Optional. Enabled query rephraser model type. If not set, it will use LARGE by default. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestRelatedQuestionsSpec`

Related questions specification.

| Property | Type | Description |
|----------|------|-------------|
| `enable` | `boolean` | Enable related questions feature if true. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpec`

Safety specification. There are two use cases: 1. when only safety_spec.enable is set, the BLOCK_LOW_AND_ABOVE threshold will be applied for all categories. 2. when safety_spec.enable is set and some safety_settings are set, only specified safety_settings are applied.

| Property | Type | Description |
|----------|------|-------------|
| `enable` | `boolean` | Enable the safety filtering on the answer response. It is false by default. |
| `safetySettings` | `array<GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpecSafetySetting>` | Optional. Safety settings. This settings are effective only when the safety_spec.enable is true. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSafetySpecSafetySetting`

Safety settings.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Required. Harm category. |
| `threshold` | `string` | Required. The harm block threshold. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpec`

Search specification.

| Property | Type | Description |
|----------|------|-------------|
| `searchParams` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams` | Search parameters. |
| `searchResultList` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList` | Search result list. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchParams`

Search parameters.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudDiscoveryengineV1SearchRequestBoostSpec` | Boost specification to boost certain documents in search results which may affect the answer quer... |
| `dataStoreSpecs` | `array<GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec>` | Specs defining dataStores to filter on in a search call and configurations for those dataStores. ... |
| `filter` | `string` | The filter syntax consists of an expression language for constructing a predicate from one or mor... |
| `maxReturnResults` | `integer` | Number of search results to return. The default value is 10. |
| `orderBy` | `string` | The order in which documents are returned. Documents can be ordered by a field in an Document obj... |
| `searchResultMode` | `string` | Specifies the search result mode. If unspecified, the search result mode defaults to `DOCUMENTS`.... |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultList`

Search result list.

| Property | Type | Description |
|----------|------|-------------|
| `searchResults` | `array<GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult>` | Search results. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResult`

Search result.

| Property | Type | Description |
|----------|------|-------------|
| `chunkInfo` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo` | Chunk information. |
| `unstructuredDocumentInfo` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo` | Unstructured document information. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo`

Chunk information.

| Property | Type | Description |
|----------|------|-------------|
| `chunk` | `string` | Chunk resource name. |
| `content` | `string` | Chunk textual content. |
| `documentMetadata` | `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata` | Metadata of the document from the current chunk. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata`

Document metadata contains the information of the document of the current chunk.

| Property | Type | Description |
|----------|------|-------------|
| `title` | `string` | Title of the document. |
| `uri` | `string` | Uri of the document. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo`

Unstructured document information.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | Document resource name. |
| `documentContexts` | `array<GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext>` | List of document contexts. The content will be used for Answer Generation. This is supposed to be... |
| `extractiveAnswers` | `array<GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer>` | Deprecated: This field is deprecated and will have no effect on the Answer generation. Please use... |
| `extractiveSegments` | `array<GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment>` | List of extractive segments. |
| `title` | `string` | Title. |
| `uri` | `string` | URI for the document. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext`

Document context.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Document content to be used for answer generation. |
| `pageIdentifier` | `string` | Page identifier. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer`

Extractive answer. [Guide](https://cloud.google.com/generative-ai-app-builder/docs/snippets#get-answers)

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Extractive answer content. |
| `pageIdentifier` | `string` | Page identifier. |

### `GoogleCloudDiscoveryengineV1AnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment`

Extractive segment. [Guide](https://cloud.google.com/generative-ai-app-builder/docs/snippets#extractive-segments) Answer generation will only use it if document_contexts is empty. This is supposed to be shorter snippets.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Extractive segment content. |
| `pageIdentifier` | `string` | Page identifier. |

### `GoogleCloudDiscoveryengineV1AnswerQueryResponse`

Response message for ConversationalSearchService.AnswerQuery method.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `GoogleCloudDiscoveryengineV1Answer` | Answer resource object. If AnswerQueryRequest.QueryUnderstandingSpec.QueryRephraserSpec.max_rephr... |
| `answerQueryToken` | `string` | A global unique ID used for logging. |
| `session` | `GoogleCloudDiscoveryengineV1Session` | Session resource object. It will be only available when session field is set and valid in the Ans... |

### `GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfo`

Query understanding information.

| Property | Type | Description |
|----------|------|-------------|
| `queryClassificationInfo` | `array<GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfoQueryClassificationInfo>` | Query classification information. |

### `GoogleCloudDiscoveryengineV1AnswerQueryUnderstandingInfoQueryClassificationInfo`

Query classification information.

| Property | Type | Description |
|----------|------|-------------|
| `positive` | `boolean` | Classification output. |
| `type` | `string` | Query classification type. |

### `GoogleCloudDiscoveryengineV1AnswerReference`

Reference.

| Property | Type | Description |
|----------|------|-------------|
| `chunkInfo` | `GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo` | Chunk information. |
| `structuredDocumentInfo` | `GoogleCloudDiscoveryengineV1AnswerReferenceStructuredDocumentInfo` | Structured document information. |
| `unstructuredDocumentInfo` | `GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo` | Unstructured document information. |

### `GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfo`

Chunk information.

| Property | Type | Description |
|----------|------|-------------|
| `chunk` | `string` | Chunk resource name. |
| `content` | `string` | Chunk textual content. |
| `documentMetadata` | `GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfoDocumentMetadata` | Document metadata. |
| `relevanceScore` | `number` | The relevance of the chunk for a given query. Values range from 0.0 (completely irrelevant) to 1.... |

### `GoogleCloudDiscoveryengineV1AnswerReferenceChunkInfoDocumentMetadata`

Document metadata.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | Document resource name. |
| `pageIdentifier` | `string` | Page identifier. |
| `structData` | `object` | The structured JSON metadata for the document. It is populated from the struct data from the Chun... |
| `title` | `string` | Title. |
| `uri` | `string` | URI for the document. |

### `GoogleCloudDiscoveryengineV1AnswerReferenceStructuredDocumentInfo`

Structured search information.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | Document resource name. |
| `structData` | `object` | Structured search data. |
| `title` | `string` | Output only. The title of the document. |
| `uri` | `string` | Output only. The URI of the document. |

### `GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfo`

Unstructured document information.

| Property | Type | Description |
|----------|------|-------------|
| `chunkContents` | `array<GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent>` | List of cited chunk contents derived from document content. |
| `document` | `string` | Document resource name. |
| `structData` | `object` | The structured JSON metadata for the document. It is populated from the struct data from the Chun... |
| `title` | `string` | Title. |
| `uri` | `string` | URI for the document. |

### `GoogleCloudDiscoveryengineV1AnswerReferenceUnstructuredDocumentInfoChunkContent`

Chunk content.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Chunk textual content. |
| `pageIdentifier` | `string` | Page identifier. |
| `relevanceScore` | `number` | The relevance of the chunk for a given query. Values range from 0.0 (completely irrelevant) to 1.... |

### `GoogleCloudDiscoveryengineV1AnswerStep`

Step information.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GoogleCloudDiscoveryengineV1AnswerStepAction>` | Actions. |
| `description` | `string` | The description of the step. |
| `state` | `string` | The state of the step. |
| `thought` | `string` | The thought of the step. |

### `GoogleCloudDiscoveryengineV1AnswerStepAction`

Action.

| Property | Type | Description |
|----------|------|-------------|
| `observation` | `GoogleCloudDiscoveryengineV1AnswerStepActionObservation` | Observation. |
| `searchAction` | `GoogleCloudDiscoveryengineV1AnswerStepActionSearchAction` | Search action. |

### `GoogleCloudDiscoveryengineV1AnswerStepActionObservation`

Observation.

| Property | Type | Description |
|----------|------|-------------|
| `searchResults` | `array<GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult>` | Search results observed by the search action, it can be snippets info or chunk info, depending on... |

### `GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult`

| Property | Type | Description |
|----------|------|-------------|
| `chunkInfo` | `array<GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo>` | If citation_type is CHUNK_LEVEL_CITATION and chunk mode is on, populate chunk info. |
| `document` | `string` | Document resource name. |
| `snippetInfo` | `array<GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo>` | If citation_type is DOCUMENT_LEVEL_CITATION, populate document level snippets. |
| `structData` | `object` | Data representation. The structured JSON data for the document. It's populated from the struct da... |
| `title` | `string` | Title. |
| `uri` | `string` | URI for the document. |

### `GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo`

Chunk information.

| Property | Type | Description |
|----------|------|-------------|
| `chunk` | `string` | Chunk resource name. |
| `content` | `string` | Chunk textual content. |
| `relevanceScore` | `number` | The relevance of the chunk for a given query. Values range from 0.0 (completely irrelevant) to 1.... |

### `GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo`

Snippet information.

| Property | Type | Description |
|----------|------|-------------|
| `snippet` | `string` | Snippet content. |
| `snippetStatus` | `string` | Status of the snippet defined by the search team. |

### `GoogleCloudDiscoveryengineV1AnswerStepActionSearchAction`

Search action.

| Property | Type | Description |
|----------|------|-------------|
| `query` | `string` | The query to search. |

### `GoogleCloudDiscoveryengineV1AssistAnswer`

AssistAnswer resource, main part of AssistResponse.

| Property | Type | Description |
|----------|------|-------------|
| `assistSkippedReasons` | `array<string>` | Reasons for not answering the assist call. |
| `customerPolicyEnforcementResult` | `GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResult` | Optional. The field contains information about the various policy checks' results like the banned... |
| `name` | `string` | Immutable. Identifier. Resource name of the `AssistAnswer`. Format: `projects/{project}/locations... |
| `replies` | `array<GoogleCloudDiscoveryengineV1AssistAnswerReply>` | Replies of the assistant. |
| `state` | `string` | State of the answer generation. |

### `GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResult`

Customer policy enforcement results. Contains the results of the various policy checks, like the banned phrases or the Model Armor checks.

| Property | Type | Description |
|----------|------|-------------|
| `policyResults` | `array<GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult>` | Customer policy enforcement results. Populated only if the assist call was skipped due to a polic... |
| `verdict` | `string` | Final verdict of the customer policy enforcement. If only one policy blocked the processing, the ... |

### `GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult`

Customer policy enforcement result for the banned phrase policy.

| Property | Type | Description |
|----------|------|-------------|
| `bannedPhrases` | `array<string>` | The banned phrases that were found in the query or the answer. |

### `GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult`

Customer policy enforcement result for the Model Armor policy.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` | The error returned by Model Armor if the policy enforcement failed for some reason. |
| `modelArmorViolation` | `string` | The Model Armor violation that was found. |

### `GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult`

Customer policy enforcement result for a single policy type.

| Property | Type | Description |
|----------|------|-------------|
| `bannedPhraseEnforcementResult` | `GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult` | The policy enforcement result for the banned phrase policy. |
| `modelArmorEnforcementResult` | `GoogleCloudDiscoveryengineV1AssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult` | The policy enforcement result for the Model Armor policy. |

### `GoogleCloudDiscoveryengineV1AssistAnswerReply`

One part of the multi-part response of the assist call.

| Property | Type | Description |
|----------|------|-------------|
| `groundedContent` | `GoogleCloudDiscoveryengineV1AssistantGroundedContent` | Possibly grounded response text or media from the assistant. |

### `GoogleCloudDiscoveryengineV1AssistUserMetadata`

User metadata of the request.

| Property | Type | Description |
|----------|------|-------------|
| `preferredLanguageCode` | `string` | Optional. Preferred language to be used for answering if language detection fails. Also used as t... |
| `timeZone` | `string` | Optional. IANA time zone, e.g. Europe/Budapest. |

### `GoogleCloudDiscoveryengineV1Assistant`

Discovery Engine Assistant resource.

| Property | Type | Description |
|----------|------|-------------|
| `customerPolicy` | `GoogleCloudDiscoveryengineV1AssistantCustomerPolicy` | Optional. Customer policy for the assistant. |
| `defaultWebGroundingToggleOff` | `boolean` | Optional. This field controls the default web grounding toggle for end users if `web_grounding_ty... |
| `description` | `string` | Optional. Description for additional information. Expected to be shown on the configuration UI, n... |
| `displayName` | `string` | Required. The assistant display name. It must be a UTF-8 encoded string with a length limit of 12... |
| `enabledTools` | `object` | Optional. Note: not implemented yet. Use enabled_actions instead. The enabled tools on this assis... |
| `generationConfig` | `GoogleCloudDiscoveryengineV1AssistantGenerationConfig` | Optional. Configuration for the generation of the assistant response. |
| `name` | `string` | Immutable. Resource name of the assistant. Format: `projects/{project}/locations/{location}/colle... |
| `webGroundingType` | `string` | Optional. The type of web grounding to use. |

### `GoogleCloudDiscoveryengineV1AssistantContent`

Multi-modal content.

| Property | Type | Description |
|----------|------|-------------|
| `codeExecutionResult` | `GoogleCloudDiscoveryengineV1AssistantContentCodeExecutionResult` | Result of executing an ExecutableCode. |
| `executableCode` | `GoogleCloudDiscoveryengineV1AssistantContentExecutableCode` | Code generated by the model that is meant to be executed. |
| `file` | `GoogleCloudDiscoveryengineV1AssistantContentFile` | A file, e.g., an audio summary. |
| `inlineData` | `GoogleCloudDiscoveryengineV1AssistantContentBlob` | Inline binary data. |
| `role` | `string` | The producer of the content. Can be "model" or "user". |
| `text` | `string` | Inline text. |
| `thought` | `boolean` | Optional. Indicates if the part is thought from the model. |

### `GoogleCloudDiscoveryengineV1AssistantContentBlob`

Inline blob.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Required. Raw bytes. |
| `mimeType` | `string` | Required. The media type (MIME type) of the generated data. |

### `GoogleCloudDiscoveryengineV1AssistantContentCodeExecutionResult`

Result of executing ExecutableCode.

| Property | Type | Description |
|----------|------|-------------|
| `outcome` | `string` | Required. Outcome of the code execution. |
| `output` | `string` | Optional. Contains stdout when code execution is successful, stderr or other description otherwise. |

### `GoogleCloudDiscoveryengineV1AssistantContentExecutableCode`

Code generated by the model that is meant to be executed by the model.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Required. The code content. Currently only supports Python. |

### `GoogleCloudDiscoveryengineV1AssistantContentFile`

A file, e.g., an audio summary.

| Property | Type | Description |
|----------|------|-------------|
| `fileId` | `string` | Required. The file ID. |
| `mimeType` | `string` | Required. The media type (MIME type) of the file. |

### `GoogleCloudDiscoveryengineV1AssistantCustomerPolicy`

Customer-defined policy for the assistant.

| Property | Type | Description |
|----------|------|-------------|
| `bannedPhrases` | `array<GoogleCloudDiscoveryengineV1AssistantCustomerPolicyBannedPhrase>` | Optional. List of banned phrases. |
| `modelArmorConfig` | `GoogleCloudDiscoveryengineV1AssistantCustomerPolicyModelArmorConfig` | Optional. Model Armor configuration to be used for sanitizing user prompts and assistant responses. |

### `GoogleCloudDiscoveryengineV1AssistantCustomerPolicyBannedPhrase`

Definition of a customer-defined banned phrase. A banned phrase is not allowed to appear in the user query or the LLM response, or else the answer will be refused.

| Property | Type | Description |
|----------|------|-------------|
| `ignoreDiacritics` | `boolean` | Optional. If true, diacritical marks (e.g., accents, umlauts) are ignored when matching banned ph... |
| `matchType` | `string` | Optional. Match type for the banned phrase. |
| `phrase` | `string` | Required. The raw string content to be banned. |

### `GoogleCloudDiscoveryengineV1AssistantCustomerPolicyModelArmorConfig`

Configuration for customer defined Model Armor templates to be used for sanitizing user prompts and assistant responses.

| Property | Type | Description |
|----------|------|-------------|
| `failureMode` | `string` | Optional. Defines the failure mode for Model Armor sanitization. |
| `responseTemplate` | `string` | Optional. The resource name of the Model Armor template for sanitizing assistant responses. Forma... |
| `userPromptTemplate` | `string` | Optional. The resource name of the Model Armor template for sanitizing user prompts. Format: `pro... |

### `GoogleCloudDiscoveryengineV1AssistantGenerationConfig`

Configuration for the generation of the assistant response.

| Property | Type | Description |
|----------|------|-------------|
| `allowedModelIds` | `array<string>` | Optional. The list of models that are allowed to be used for assistant. |
| `defaultLanguage` | `string` | The default language to use for the generation of the assistant response. Use an ISO 639-1 langua... |
| `defaultModelId` | `string` | Optional. The default model to use for assistant. |
| `systemInstruction` | `GoogleCloudDiscoveryengineV1AssistantGenerationConfigSystemInstruction` | System instruction, also known as the prompt preamble for LLM calls. See also https://cloud.googl... |

### `GoogleCloudDiscoveryengineV1AssistantGenerationConfigSystemInstruction`

System instruction, also known as the prompt preamble for LLM calls.

| Property | Type | Description |
|----------|------|-------------|
| `additionalSystemInstruction` | `string` | Optional. Additional system instruction that will be added to the default system instruction. |

### `GoogleCloudDiscoveryengineV1AssistantGroundedContent`

A piece of content and possibly its grounding information. Not all content needs grounding. Phrases like "Of course, I will gladly search it for you." do not need grounding.

| Property | Type | Description |
|----------|------|-------------|
| `citationMetadata` | `GoogleCloudDiscoveryengineV1CitationMetadata` | Source attribution of the generated content. See also https://cloud.google.com/vertex-ai/generati... |
| `content` | `GoogleCloudDiscoveryengineV1AssistantContent` | The content. |
| `textGroundingMetadata` | `GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata` | Metadata for grounding based on text sources. |

### `GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadata`

Grounding details for text sources.

| Property | Type | Description |
|----------|------|-------------|
| `references` | `array<GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference>` | References for the grounded text. |
| `segments` | `array<GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataSegment>` | Grounding information for parts of the text. |

### `GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReference`

Referenced content and related document metadata.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Referenced text content. |
| `documentMetadata` | `GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata` | Document metadata. |

### `GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata`

Document metadata.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | Document resource name. |
| `domain` | `string` | Domain name from the document URI. Note that the `uri` field may contain a URL that redirects to ... |
| `mimeType` | `string` | The mime type of the document. https://www.iana.org/assignments/media-types/media-types.xhtml. |
| `pageIdentifier` | `string` | Page identifier. |
| `title` | `string` | Title. |
| `uri` | `string` | URI for the document. It may contain a URL that redirects to the actual website. |

### `GoogleCloudDiscoveryengineV1AssistantGroundedContentTextGroundingMetadataSegment`

Grounding information for a segment of the text.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `string` | End of the segment, exclusive. |
| `groundingScore` | `number` | Score for the segment. |
| `referenceIndices` | `array<integer>` | References for the segment. |
| `startIndex` | `string` | Zero-based index indicating the start of the segment, measured in bytes of a UTF-8 string (i.e. c... |
| `text` | `string` | The text segment itself. |

### `GoogleCloudDiscoveryengineV1AssistantToolInfo`

Information to identify a tool.

| Property | Type | Description |
|----------|------|-------------|
| `toolDisplayName` | `string` | The display name of the tool. |
| `toolName` | `string` | The name of the tool as defined by DataConnectorService.QueryAvailableActions. Note: it's using `... |

### `GoogleCloudDiscoveryengineV1AssistantToolList`

The enabled tools on a connector

| Property | Type | Description |
|----------|------|-------------|
| `toolInfo` | `array<GoogleCloudDiscoveryengineV1AssistantToolInfo>` | The list of tools with corresponding tool information. |

### `GoogleCloudDiscoveryengineV1BAPConfig`

The configuration for the BAP connector.

| Property | Type | Description |
|----------|------|-------------|
| `enabledActions` | `array<string>` | Optional. The actions enabled on the associated BAP connection. |
| `supportedConnectorModes` | `array<string>` | Required. The supported connector modes for the associated BAP connection. |

### `GoogleCloudDiscoveryengineV1BatchCreateTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.BatchCreateTargetSites operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1BatchCreateTargetSitesRequest`

Request message for SiteSearchEngineService.BatchCreateTargetSites method.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GoogleCloudDiscoveryengineV1CreateTargetSiteRequest>` | Required. The request message specifying the resources to create. A maximum of 20 TargetSites can... |

### `GoogleCloudDiscoveryengineV1BatchCreateTargetSitesResponse`

Response message for SiteSearchEngineService.BatchCreateTargetSites method.

| Property | Type | Description |
|----------|------|-------------|
| `targetSites` | `array<GoogleCloudDiscoveryengineV1TargetSite>` | TargetSites created. |

### `GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponse`

Response message for DocumentService.BatchGetDocumentsMetadata method.

| Property | Type | Description |
|----------|------|-------------|
| `documentsMetadata` | `array<GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata>` | The metadata of the Documents. |

### `GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadata`

The metadata of a Document.

| Property | Type | Description |
|----------|------|-------------|
| `dataIngestionSource` | `string` | The data ingestion source of the Document. Allowed values are: * `batch`: Data ingested via Batch... |
| `lastRefreshedTime` | `string` | The timestamp of the last time the Document was last indexed. |
| `matcherValue` | `GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue` | The value of the matcher that was used to match the Document. |
| `state` | `string` | The state of the document. |

### `GoogleCloudDiscoveryengineV1BatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue`

The value of the matcher that was used to match the Document.

| Property | Type | Description |
|----------|------|-------------|
| `fhirResource` | `string` | Format: projects/{project}/locations/{location}/datasets/{dataset}/fhirStores/{fhir_store}/fhir/{... |
| `uri` | `string` | If match by URI, the URI of the Document. |

### `GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesMetadata`

Metadata related to the progress of the UserLicenseService.BatchUpdateUserLicenses operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of user licenses that failed to be updated. |
| `successCount` | `string` | Count of user licenses successfully updated. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequest`

Request message for UserLicenseService.BatchUpdateUserLicenses method.

| Property | Type | Description |
|----------|------|-------------|
| `deleteUnassignedUserLicenses` | `boolean` | Optional. If true, if user licenses removed associated license config, the user license will be d... |
| `inlineSource` | `GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource` | The inline source for the input content for document embeddings. |

### `GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesRequestInlineSource`

The inline source for the input config for BatchUpdateUserLicenses method.

| Property | Type | Description |
|----------|------|-------------|
| `updateMask` | `string` | Optional. The list of fields to update. |
| `userLicenses` | `array<GoogleCloudDiscoveryengineV1UserLicense>` | Required. A list of user licenses to update. Each user license must have a valid UserLicense.user... |

### `GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesResponse`

Response message for UserLicenseService.BatchUpdateUserLicenses method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `userLicenses` | `array<GoogleCloudDiscoveryengineV1UserLicense>` | UserLicenses successfully updated. |

### `GoogleCloudDiscoveryengineV1BatchVerifyTargetSitesRequest`

Request message for SiteSearchEngineService.BatchVerifyTargetSites method.

### `GoogleCloudDiscoveryengineV1BigQuerySource`

BigQuery source import data from.

| Property | Type | Description |
|----------|------|-------------|
| `dataSchema` | `string` | The schema to use when parsing the data from the source. Supported values for user event imports:... |
| `datasetId` | `string` | Required. The BigQuery data set to copy the data from with a length limit of 1,024 characters. |
| `gcsStagingDir` | `string` | Intermediate Cloud Storage directory used for the import with a length limit of 2,000 characters.... |
| `partitionDate` | `GoogleTypeDate` | BigQuery time partitioned table's _PARTITIONDATE in YYYY-MM-DD format. |
| `projectId` | `string` | The project ID or the project number that contains the BigQuery source. Has a length limit of 128... |
| `tableId` | `string` | Required. The BigQuery table to copy the data from with a length limit of 1,024 characters. |

### `GoogleCloudDiscoveryengineV1BigtableOptions`

The Bigtable Options object that contains information to support the import.

| Property | Type | Description |
|----------|------|-------------|
| `families` | `object` | The mapping from family names to an object that contains column families level information for th... |
| `keyFieldName` | `string` | The field name used for saving row key value in the document. The name has to match the pattern `... |

### `GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumn`

The column of the Bigtable.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `string` | The encoding mode of the values when the type is not `STRING`. Acceptable encoding values are: * ... |
| `fieldName` | `string` | The field name to use for this column in the document. The name has to match the pattern `a-zA-Z0... |
| `qualifier` | `string` | Required. Qualifier of the column. If it cannot be decoded with utf-8, use a base-64 encoded stri... |
| `type` | `string` | The type of values in this column family. The values are expected to be encoded using `HBase Byte... |

### `GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumnFamily`

The column family of the Bigtable.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<GoogleCloudDiscoveryengineV1BigtableOptionsBigtableColumn>` | The list of objects that contains column level information for each column. If a column is not pr... |
| `encoding` | `string` | The encoding mode of the values when the type is not STRING. Acceptable encoding values are: * `T... |
| `fieldName` | `string` | The field name to use for this column family in the document. The name has to match the pattern `... |
| `type` | `string` | The type of values in this column family. The values are expected to be encoded using `HBase Byte... |

### `GoogleCloudDiscoveryengineV1BigtableSource`

The Cloud Bigtable source for importing data.

| Property | Type | Description |
|----------|------|-------------|
| `bigtableOptions` | `GoogleCloudDiscoveryengineV1BigtableOptions` | Required. Bigtable options that contains information needed when parsing data into typed structur... |
| `instanceId` | `string` | Required. The instance ID of the Cloud Bigtable that needs to be imported. |
| `projectId` | `string` | The project ID that contains the Bigtable source. Has a length limit of 128 characters. If not sp... |
| `tableId` | `string` | Required. The table ID of the Cloud Bigtable that needs to be imported. |

### `GoogleCloudDiscoveryengineV1CheckGroundingRequest`

Request message for GroundedGenerationService.CheckGrounding method.

| Property | Type | Description |
|----------|------|-------------|
| `answerCandidate` | `string` | Answer candidate to check. It can have a maximum length of 4096 tokens. |
| `facts` | `array<GoogleCloudDiscoveryengineV1GroundingFact>` | List of facts for the grounding check. We support up to 200 facts. |
| `groundingSpec` | `GoogleCloudDiscoveryengineV1CheckGroundingSpec` | Configuration of the grounding check. |
| `userLabels` | `object` | The user labels applied to a resource must meet the following requirements: * Each resource can h... |

### `GoogleCloudDiscoveryengineV1CheckGroundingResponse`

Response message for the GroundedGenerationService.CheckGrounding method.

| Property | Type | Description |
|----------|------|-------------|
| `citedChunks` | `array<GoogleCloudDiscoveryengineV1FactChunk>` | List of facts cited across all claims in the answer candidate. These are derived from the facts s... |
| `citedFacts` | `array<GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk>` | List of facts cited across all claims in the answer candidate. These are derived from the facts s... |
| `claims` | `array<GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim>` | Claim texts and citation info across all claims in the answer candidate. |
| `supportScore` | `number` | The support score for the input answer candidate. Higher the score, higher is the fraction of cla... |

### `GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk`

Fact chunk for grounding check.

| Property | Type | Description |
|----------|------|-------------|
| `chunkText` | `string` | Text content of the fact chunk. Can be at most 10K characters long. |

### `GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim`

Text and citation info for a claim in the answer candidate.

| Property | Type | Description |
|----------|------|-------------|
| `citationIndices` | `array<integer>` | A list of indices (into 'cited_chunks') specifying the citations associated with the claim. For i... |
| `claimText` | `string` | Text for the claim in the answer candidate. Always provided regardless of whether citations or an... |
| `endPos` | `integer` | Position indicating the end of the claim in the answer candidate, exclusive, in bytes. Note that ... |
| `groundingCheckRequired` | `boolean` | Indicates that this claim required grounding check. When the system decided this claim doesn't re... |
| `score` | `number` | Confidence score for the claim in the answer candidate, in the range of [0, 1]. This is set only ... |
| `startPos` | `integer` | Position indicating the start of the claim in the answer candidate, measured in bytes. Note that ... |

### `GoogleCloudDiscoveryengineV1CheckGroundingSpec`

Specification for the grounding check.

| Property | Type | Description |
|----------|------|-------------|
| `citationThreshold` | `number` | The threshold (in [0,1]) used for determining whether a fact must be cited for a claim in the ans... |
| `enableClaimLevelScore` | `boolean` | The control flag that enables claim-level grounding score in the response. |

### `GoogleCloudDiscoveryengineV1Chunk`

Chunk captures all raw metadata information of items to be recommended or searched in the chunk mode.

| Property | Type | Description |
|----------|------|-------------|
| `annotationContents` | `array<string>` | Output only. Annotation contents if the current chunk contains annotations. |
| `annotationMetadata` | `array<GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata>` | Output only. The annotation metadata includes structured content in the current chunk. |
| `chunkMetadata` | `GoogleCloudDiscoveryengineV1ChunkChunkMetadata` | Output only. Metadata of the current chunk. |
| `content` | `string` | Content is a string from a document (parsed content). |
| `dataUrls` | `array<string>` | Output only. Image Data URLs if the current chunk contains images. Data URLs are composed of four... |
| `derivedStructData` | `object` | Output only. This field is OUTPUT_ONLY. It contains derived data that are not in the original inp... |
| `documentMetadata` | `GoogleCloudDiscoveryengineV1ChunkDocumentMetadata` | Metadata of the document from the current chunk. |
| `id` | `string` | Unique chunk ID of the current chunk. |
| `name` | `string` | The full resource name of the chunk. Format: `projects/{project}/locations/{location}/collections... |
| `pageSpan` | `GoogleCloudDiscoveryengineV1ChunkPageSpan` | Page span of the chunk. |
| `relevanceScore` | `number` | Output only. Represents the relevance score based on similarity. Higher score indicates higher ch... |

### `GoogleCloudDiscoveryengineV1ChunkAnnotationMetadata`

The annotation metadata includes structured content in the current chunk.

| Property | Type | Description |
|----------|------|-------------|
| `imageId` | `string` | Output only. Image id is provided if the structured content is based on an image. |
| `structuredContent` | `GoogleCloudDiscoveryengineV1ChunkStructuredContent` | Output only. The structured content information. |

### `GoogleCloudDiscoveryengineV1ChunkChunkMetadata`

Metadata of the current chunk. This field is only populated on SearchService.Search API.

| Property | Type | Description |
|----------|------|-------------|
| `nextChunks` | `array<GoogleCloudDiscoveryengineV1Chunk>` | The next chunks of the current chunk. The number is controlled by SearchRequest.ContentSearchSpec... |
| `previousChunks` | `array<GoogleCloudDiscoveryengineV1Chunk>` | The previous chunks of the current chunk. The number is controlled by SearchRequest.ContentSearch... |

### `GoogleCloudDiscoveryengineV1ChunkDocumentMetadata`

Document metadata contains the information of the document of the current chunk.

| Property | Type | Description |
|----------|------|-------------|
| `mimeType` | `string` | The mime type of the document. https://www.iana.org/assignments/media-types/media-types.xhtml. |
| `structData` | `object` | Data representation. The structured JSON data for the document. It should conform to the register... |
| `title` | `string` | Title of the document. |
| `uri` | `string` | Uri of the document. |

### `GoogleCloudDiscoveryengineV1ChunkPageSpan`

Page span of the chunk.

| Property | Type | Description |
|----------|------|-------------|
| `pageEnd` | `integer` | The end page of the chunk. |
| `pageStart` | `integer` | The start page of the chunk. |

### `GoogleCloudDiscoveryengineV1ChunkStructuredContent`

The structured content information.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Output only. The content of the structured content. |
| `structureType` | `string` | Output only. The structure type of the structured content. |

### `GoogleCloudDiscoveryengineV1Citation`

Source attributions for content.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `integer` | Output only. End index into the content. |
| `license` | `string` | Output only. License of the attribution. |
| `publicationDate` | `GoogleTypeDate` | Output only. Publication date of the attribution. |
| `startIndex` | `integer` | Output only. Start index into the content. |
| `title` | `string` | Output only. Title of the attribution. |
| `uri` | `string` | Output only. Url reference of the attribution. |

### `GoogleCloudDiscoveryengineV1CitationMetadata`

A collection of source attributions for a piece of content.

| Property | Type | Description |
|----------|------|-------------|
| `citations` | `array<GoogleCloudDiscoveryengineV1Citation>` | Output only. List of citations. |

### `GoogleCloudDiscoveryengineV1CloudSqlSource`

Cloud SQL source import data from.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | Required. The Cloud SQL database to copy the data from with a length limit of 256 characters. |
| `gcsStagingDir` | `string` | Intermediate Cloud Storage directory used for the import with a length limit of 2,000 characters.... |
| `instanceId` | `string` | Required. The Cloud SQL instance to copy the data from with a length limit of 256 characters. |
| `offload` | `boolean` | Option for serverless export. Enabling this option will incur additional cost. More info can be f... |
| `projectId` | `string` | The project ID that contains the Cloud SQL source. Has a length limit of 128 characters. If not s... |
| `tableId` | `string` | Required. The Cloud SQL table to copy the data from with a length limit of 256 characters. |

### `GoogleCloudDiscoveryengineV1CmekConfig`

Configurations used to enable CMEK data encryption with Cloud KMS keys.

| Property | Type | Description |
|----------|------|-------------|
| `isDefault` | `boolean` | Output only. The default CmekConfig for the Customer. |
| `kmsKey` | `string` | Required. KMS key resource name which will be used to encrypt resources `projects/{project}/locat... |
| `kmsKeyVersion` | `string` | Output only. KMS key version resource name which will be used to encrypt resources `/cryptoKeyVer... |
| `lastRotationTimestampMicros` | `string` | Output only. The timestamp of the last key rotation. |
| `name` | `string` | Required. The name of the CmekConfig of the form `projects/{project}/locations/{location}/cmekCon... |
| `notebooklmState` | `string` | Output only. Whether the NotebookLM Corpus is ready to be used. |
| `singleRegionKeys` | `array<GoogleCloudDiscoveryengineV1SingleRegionKey>` | Optional. Single-regional CMEKs that are required for some VAIS features. |
| `state` | `string` | Output only. The states of the CmekConfig. |

### `GoogleCloudDiscoveryengineV1Collection`

Collection is a container for configuring resources and access to a set of DataStores.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp the Collection was created at. |
| `displayName` | `string` | Required. The Collection display name. This field must be a UTF-8 encoded string with a length li... |
| `name` | `string` | Immutable. The full resource name of the Collection. Format: `projects/{project}/locations/{locat... |

### `GoogleCloudDiscoveryengineV1CompleteQueryResponse`

Response message for CompletionService.CompleteQuery method.

| Property | Type | Description |
|----------|------|-------------|
| `querySuggestions` | `array<GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion>` | Results of the matched query suggestions. The result list is ordered and the first result is a to... |
| `tailMatchTriggered` | `boolean` | True if the returned suggestions are all tail suggestions. For tail matching to be triggered, inc... |

### `GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion`

Suggestions as search queries.

| Property | Type | Description |
|----------|------|-------------|
| `completableFieldPaths` | `array<string>` | The unique document field paths that serve as the source of this suggestion if it was generated f... |
| `suggestion` | `string` | The suggestion for the query. |

### `GoogleCloudDiscoveryengineV1CompletionInfo`

Detailed completion information including completion attribution token and clicked completion info.

| Property | Type | Description |
|----------|------|-------------|
| `selectedPosition` | `integer` | End user selected CompleteQueryResponse.QuerySuggestion.suggestion position, starting from 0. |
| `selectedSuggestion` | `string` | End user selected CompleteQueryResponse.QuerySuggestion.suggestion. |

### `GoogleCloudDiscoveryengineV1CompletionSuggestion`

Autocomplete suggestions that are imported from Customer.

| Property | Type | Description |
|----------|------|-------------|
| `alternativePhrases` | `array<string>` | Alternative matching phrases for this suggestion. |
| `frequency` | `string` | Frequency of this suggestion. Will be used to rank suggestions when score is not available. |
| `globalScore` | `number` | Global score of this suggestion. Control how this suggestion would be scored / ranked. |
| `groupId` | `string` | If two suggestions have the same groupId, they will not be returned together. Instead the one ran... |
| `groupScore` | `number` | The score of this suggestion within its group. |
| `languageCode` | `string` | BCP-47 language code of this suggestion. |
| `suggestion` | `string` | Required. The suggestion text. |

### `GoogleCloudDiscoveryengineV1Condition`

Defines circumstances to be checked before allowing a behavior

| Property | Type | Description |
|----------|------|-------------|
| `activeTimeRange` | `array<GoogleCloudDiscoveryengineV1ConditionTimeRange>` | Range of time(s) specifying when condition is active. Maximum of 10 time ranges. |
| `queryRegex` | `string` | Optional. Query regex to match the whole search query. Cannot be set when Condition.query_terms i... |
| `queryTerms` | `array<GoogleCloudDiscoveryengineV1ConditionQueryTerm>` | Search only A list of terms to match the query on. Cannot be set when Condition.query_regex is se... |

### `GoogleCloudDiscoveryengineV1ConditionQueryTerm`

Matcher for search request query

| Property | Type | Description |
|----------|------|-------------|
| `fullMatch` | `boolean` | Whether the search query needs to exactly match the query term. |
| `value` | `string` | The specific query value to match against Must be lowercase, must be UTF-8. Can have at most 3 sp... |

### `GoogleCloudDiscoveryengineV1ConditionTimeRange`

Used for time-dependent conditions.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End of time range. Range is inclusive. Must be in the future. |
| `startTime` | `string` | Start of time range. Range is inclusive. |

### `GoogleCloudDiscoveryengineV1Control`

Defines a conditioned behavior to employ during serving. Must be attached to a ServingConfig to be considered at serving time. Permitted actions dependent on `SolutionType`.

| Property | Type | Description |
|----------|------|-------------|
| `associatedServingConfigIds` | `array<string>` | Output only. List of all ServingConfig IDs this control is attached to. May take up to 10 minutes... |
| `boostAction` | `GoogleCloudDiscoveryengineV1ControlBoostAction` | Defines a boost-type control |
| `conditions` | `array<GoogleCloudDiscoveryengineV1Condition>` | Determines when the associated action will trigger. Omit to always apply the action. Currently on... |
| `displayName` | `string` | Required. Human readable name. The identifier used in UI views. Must be UTF-8 encoded string. Len... |
| `filterAction` | `GoogleCloudDiscoveryengineV1ControlFilterAction` | Defines a filter-type control Currently not supported by Recommendation |
| `name` | `string` | Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/controls/*` |
| `promoteAction` | `GoogleCloudDiscoveryengineV1ControlPromoteAction` | Promote certain links based on predefined trigger queries. |
| `redirectAction` | `GoogleCloudDiscoveryengineV1ControlRedirectAction` | Defines a redirect-type control. |
| `solutionType` | `string` | Required. Immutable. What solution the control belongs to. Must be compatible with vertical of re... |
| `synonymsAction` | `GoogleCloudDiscoveryengineV1ControlSynonymsAction` | Treats a group of terms as synonyms of one another. |
| `useCases` | `array<string>` | Specifies the use case for the control. Affects what condition fields can be set. Only applies to... |

### `GoogleCloudDiscoveryengineV1ControlBoostAction`

Adjusts order of products in returned list.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Strength of the boost, which should be in [-1, 1]. Negative boost means demotion. Default is 0.0 ... |
| `dataStore` | `string` | Required. Specifies which data store's documents can be boosted by this control. Full data store ... |
| `filter` | `string` | Required. Specifies which products to apply the boost to. If no filter is provided all products w... |
| `fixedBoost` | `number` | Optional. Strength of the boost, which should be in [-1, 1]. Negative boost means demotion. Defau... |
| `interpolationBoostSpec` | `GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec` | Optional. Complex specification for custom ranking based on customer defined attribute value. |

### `GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec`

Specification for custom ranking based on customer specified attribute value. It provides more controls for customized ranking than the simple (condition, boost) combination above.

| Property | Type | Description |
|----------|------|-------------|
| `attributeType` | `string` | Optional. The attribute type to be used to determine the boost amount. The attribute value can be... |
| `controlPoints` | `array<GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint>` | Optional. The control points used to define the curve. The monotonic function (defined through th... |
| `fieldName` | `string` | Optional. The name of the field whose value will be used to determine the boost amount. |
| `interpolationType` | `string` | Optional. The interpolation type to be applied to connect the control points listed below. |

### `GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint`

The control points used to define the curve. The curve defined through these control points can only be monotonically increasing or decreasing(constant values are acceptable).

| Property | Type | Description |
|----------|------|-------------|
| `attributeValue` | `string` | Optional. Can be one of: 1. The numerical field value. 2. The duration spec for freshness: The va... |
| `boostAmount` | `number` | Optional. The value between -1 to 1 by which to boost the score if the attribute_value evaluates ... |

### `GoogleCloudDiscoveryengineV1ControlFilterAction`

Specified which products may be included in results. Uses same filter as boost.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Required. Specifies which data store's documents can be filtered by this control. Full data store... |
| `filter` | `string` | Required. A filter to apply on the matching condition results. Required Syntax documentation: htt... |

### `GoogleCloudDiscoveryengineV1ControlPromoteAction`

Promote certain links based on some trigger queries. Example: Promote shoe store link when searching for `shoe` keyword. The link can be outside of associated data store.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Required. Data store with which this promotion is attached to. |
| `searchLinkPromotion` | `GoogleCloudDiscoveryengineV1SearchLinkPromotion` | Required. Promotion attached to this action. |

### `GoogleCloudDiscoveryengineV1ControlRedirectAction`

Redirects a shopper to the provided URI.

| Property | Type | Description |
|----------|------|-------------|
| `redirectUri` | `string` | Required. The URI to which the shopper will be redirected. Required. URI must have length equal o... |

### `GoogleCloudDiscoveryengineV1ControlSynonymsAction`

Creates a set of terms that will act as synonyms of one another. Example: "happy" will also be considered as "glad", "glad" will also be considered as "happy".

| Property | Type | Description |
|----------|------|-------------|
| `synonyms` | `array<string>` | Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at least 2 synonyms. Othe... |

### `GoogleCloudDiscoveryengineV1Conversation`

External conversation proto definition.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. The time the conversation finished. |
| `messages` | `array<GoogleCloudDiscoveryengineV1ConversationMessage>` | Conversation messages. |
| `name` | `string` | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/dat... |
| `startTime` | `string` | Output only. The time the conversation started. |
| `state` | `string` | The state of the Conversation. |
| `userPseudoId` | `string` | A unique identifier for tracking users. |

### `GoogleCloudDiscoveryengineV1ConversationContext`

Defines context of the conversation

| Property | Type | Description |
|----------|------|-------------|
| `activeDocument` | `string` | The current active document the user opened. It contains the document resource reference. |
| `contextDocuments` | `array<string>` | The current list of documents the user is seeing. It contains the document resource references. |

### `GoogleCloudDiscoveryengineV1ConversationMessage`

Defines a conversation message.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Message creation timestamp. |
| `reply` | `GoogleCloudDiscoveryengineV1Reply` | Search reply. |
| `userInput` | `GoogleCloudDiscoveryengineV1TextInput` | User text input. |

### `GoogleCloudDiscoveryengineV1ConverseConversationRequest`

Request message for ConversationalSearchService.ConverseConversation method.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudDiscoveryengineV1SearchRequestBoostSpec` | Boost specification to boost certain documents in search results which may affect the converse re... |
| `conversation` | `GoogleCloudDiscoveryengineV1Conversation` | The conversation to be used by auto session only. The name field will be ignored as we automatica... |
| `filter` | `string` | The filter syntax consists of an expression language for constructing a predicate from one or mor... |
| `query` | `GoogleCloudDiscoveryengineV1TextInput` | Required. Current user input. |
| `safeSearch` | `boolean` | Whether to turn on safe search. |
| `servingConfig` | `string` | The resource name of the Serving Config to use. Format: `projects/{project}/locations/{location}/... |
| `summarySpec` | `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec` | A specification for configuring the summary returned in the response. |
| `userLabels` | `object` | The user labels applied to a resource must meet the following requirements: * Each resource can h... |

### `GoogleCloudDiscoveryengineV1ConverseConversationResponse`

Response message for ConversationalSearchService.ConverseConversation method.

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `GoogleCloudDiscoveryengineV1Conversation` | Updated conversation including the answer. |
| `reply` | `GoogleCloudDiscoveryengineV1Reply` | Answer to the current query. |
| `searchResults` | `array<GoogleCloudDiscoveryengineV1SearchResponseSearchResult>` | Search Results. |

### `GoogleCloudDiscoveryengineV1CreateDataStoreMetadata`

Metadata related to the progress of the DataStoreService.CreateDataStore operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1CreateEngineMetadata`

Metadata related to the progress of the EngineService.CreateEngine operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1CreateSchemaMetadata`

Metadata for Create Schema LRO.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1CreateSitemapMetadata`

Metadata related to the progress of the SiteSearchEngineService.CreateSitemap operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1CreateTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.CreateTargetSite operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1CreateTargetSiteRequest`

Request message for SiteSearchEngineService.CreateTargetSite method.

| Property | Type | Description |
|----------|------|-------------|
| `parent` | `string` | Required. Parent resource name of TargetSite, such as `projects/{project}/locations/{location}/co... |
| `targetSite` | `GoogleCloudDiscoveryengineV1TargetSite` | Required. The TargetSite to create. |

### `GoogleCloudDiscoveryengineV1CustomAttribute`

A custom attribute that is not explicitly modeled in a resource, e.g. UserEvent.

| Property | Type | Description |
|----------|------|-------------|
| `numbers` | `array<number>` | The numerical values of this custom attribute. For example, `[2.3, 15.4]` when the key is "length... |
| `text` | `array<string>` | The textual values of this custom attribute. For example, `["yellow", "green"]` when the key is "... |

### `GoogleCloudDiscoveryengineV1CustomTuningModel`

Metadata that describes a custom tuned model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Deprecated: Timestamp the Model was created at. |
| `displayName` | `string` | The display name of the model. |
| `errorMessage` | `string` | Currently this is only populated if the model state is `INPUT_VALIDATION_FAILED`. |
| `metrics` | `object` | The metrics of the trained model. |
| `modelState` | `string` | The state that the model is in (e.g.`TRAINING` or `TRAINING_FAILED`). |
| `modelVersion` | `string` | The version of the model. |
| `name` | `string` | Required. The fully qualified resource name of the model. Format: `projects/{project}/locations/{... |
| `trainingStartTime` | `string` | Timestamp the model training was initiated. |

### `GoogleCloudDiscoveryengineV1DataConnector`

Manages the connection to external data sources for all data stores grouped under a Collection. It's a singleton resource of Collection. The initialization is only supported through DataConnectorService.SetUpDataConnector method, which will create a new Collection and initialize its DataConnector.

| Property | Type | Description |
|----------|------|-------------|
| `aclEnabled` | `boolean` | Optional. Whether the connector will be created with an ACL config. Currently this field only aff... |
| `actionConfig` | `GoogleCloudDiscoveryengineV1ActionConfig` | Optional. Action configurations to make the connector support actions. |
| `actionState` | `string` | Output only. State of the action connector. This reflects whether the action connector is initial... |
| `alertPolicyConfigs` | `array<GoogleCloudDiscoveryengineV1AlertPolicyConfig>` | Optional. The connector level alert config. |
| `autoRunDisabled` | `boolean` | Optional. Indicates whether the connector is disabled for auto run. It can be used to pause perio... |
| `bapConfig` | `GoogleCloudDiscoveryengineV1BAPConfig` | Optional. The configuration for establishing a BAP connection. |
| `blockingReasons` | `array<string>` | Output only. User actions that must be completed before the connector can start syncing data. |
| `connectorModes` | `array<string>` | Optional. The modes enabled for this connector. Default state is CONNECTOR_MODE_UNSPECIFIED. |
| `connectorType` | `string` | Output only. The type of connector. Each source can only map to one type. For example, salesforce... |
| `createEuaSaas` | `boolean` | Optional. Whether the END USER AUTHENTICATION connector is created in SaaS. |
| `createTime` | `string` | Output only. Timestamp the DataConnector was created at. |
| `dataSource` | `string` | Required. The name of the data source. Supported values: `salesforce`, `jira`, `confluence`, `big... |
| `destinationConfigs` | `array<GoogleCloudDiscoveryengineV1DestinationConfig>` | Optional. Any target destinations used to connect to third-party services. |
| `endUserConfig` | `GoogleCloudDiscoveryengineV1DataConnectorEndUserConfig` | Optional. Any params and credentials used specifically for EUA connectors. |
| `entities` | `array<GoogleCloudDiscoveryengineV1DataConnectorSourceEntity>` | List of entities from the connected data source to ingest. |
| `errors` | `array<GoogleRpcStatus>` | Output only. The errors from initialization or from the latest connector run. |
| `federatedConfig` | `GoogleCloudDiscoveryengineV1DataConnectorFederatedConfig` | Optional. Any params and credentials used specifically for hybrid connectors supporting FEDERATED... |
| `hybridIngestionDisabled` | `boolean` | Optional. If the connector is a hybrid connector, determines whether ingestion is enabled and app... |
| `identityRefreshInterval` | `string` | The refresh interval to sync the Access Control List information for the documents ingested by th... |
| `identityScheduleConfig` | `GoogleCloudDiscoveryengineV1IdentityScheduleConfig` | The configuration for the identity data synchronization runs. This contains the refresh interval ... |
| `incrementalRefreshInterval` | `string` | Optional. The refresh interval specifically for incremental data syncs. If unset, incremental syn... |
| `incrementalSyncDisabled` | `boolean` | Optional. Indicates whether incremental syncs are paused for this connector. This is independent ... |
| `jsonParams` | `string` | Required data connector parameters in json string format. |
| `kmsKeyName` | `string` | Input only. The KMS key to be used to protect the DataStores managed by this connector. Must be s... |
| `lastSyncTime` | `string` | Output only. For periodic connectors only, the last time a data sync was completed. |
| `latestPauseTime` | `string` | Output only. The most recent timestamp when this DataConnector was paused, affecting all function... |
| `name` | `string` | Output only. The full resource name of the Data Connector. Format: `projects/*/locations/*/collec... |
| `nextSyncTime` | `GoogleTypeDateTime` | Defines the scheduled time for the next data synchronization. This field requires hour , minute, ... |
| `params` | `object` | Required data connector parameters in structured json format. |
| `privateConnectivityProjectId` | `string` | Output only. The tenant project ID associated with private connectivity connectors. This project ... |
| `realtimeState` | `string` | Output only. real-time sync state |
| `realtimeSyncConfig` | `GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfig` | Optional. The configuration for realtime sync. |
| `refreshInterval` | `string` | Required. The refresh interval for data sync. If duration is set to 0, the data will be synced in... |
| `removeParamKeys` | `array<string>` | Optional. Specifies keys to be removed from the 'params' field. This is only active when 'params'... |
| `state` | `string` | Output only. State of the connector. |
| `staticIpAddresses` | `array<string>` | Output only. The static IP addresses used by this connector. |
| `staticIpEnabled` | `boolean` | Optional. Whether customer has enabled static IP addresses for this connector. |
| `syncMode` | `string` | The data synchronization mode supported by the data connector. |
| `updateTime` | `string` | Output only. Timestamp the DataConnector was last updated. |

### `GoogleCloudDiscoveryengineV1DataConnectorEndUserConfig`

Any params and credentials used specifically for EUA connectors.

| Property | Type | Description |
|----------|------|-------------|
| `additionalParams` | `object` | Optional. Any additional parameters needed for EUA. |
| `authParams` | `object` | Optional. Any authentication parameters specific to EUA connectors. |
| `jsonAuthParams` | `string` | Optional. Any authentication parameters specific to EUA connectors in json string format. |
| `tenant` | `GoogleCloudDiscoveryengineV1Tenant` | Optional. The tenant project the connector is connected to. |

### `GoogleCloudDiscoveryengineV1DataConnectorFederatedConfig`

Any params and credentials used specifically for hybrid connectors supporting FEDERATED mode.

| Property | Type | Description |
|----------|------|-------------|
| `additionalParams` | `object` | Optional. Any additional parameters needed for FEDERATED. |
| `authParams` | `object` | Optional. Any authentication parameters specific to FEDERATED connectors. |
| `jsonAuthParams` | `string` | Optional. Any authentication parameters specific to FEDERATED connectors in json string format. |

### `GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfig`

The configuration for realtime sync to store additional params for realtime sync.

| Property | Type | Description |
|----------|------|-------------|
| `realtimeSyncSecret` | `string` | Optional. The ID of the Secret Manager secret used for webhook secret. |
| `streamingError` | `GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfigStreamingError` | Optional. Streaming error details. |
| `webhookUri` | `string` | Optional. Webhook url for the connector to specify additional params for realtime sync. |

### `GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfigStreamingError`

Streaming error details.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` | Optional. Error details. |
| `streamingErrorReason` | `string` | Optional. Streaming error. |

### `GoogleCloudDiscoveryengineV1DataConnectorSourceEntity`

Represents an entity in the data source. For example, the `Account` object in Salesforce.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Output only. The full resource name of the associated data store for the source entity. Format: `... |
| `entityName` | `string` | The name of the entity. Supported values by data source: * Salesforce: `Lead`, `Opportunity`, `Co... |
| `healthcareFhirConfig` | `GoogleCloudDiscoveryengineV1HealthcareFhirConfig` | Optional. Configuration for `HEALTHCARE_FHIR` vertical. |
| `jsonParams` | `string` | The parameters for the entity to facilitate data ingestion in json string format. |
| `keyPropertyMappings` | `object` | Attributes for indexing. Key: Field name. Value: The key property to map a field to, such as `tit... |
| `params` | `object` | The parameters for the entity to facilitate data ingestion in structured json format. |
| `startingSchema` | `GoogleCloudDiscoveryengineV1Schema` | Optional. The start schema to use for the DataStore created from this SourceEntity. If unset, a d... |

### `GoogleCloudDiscoveryengineV1DataStore`

DataStore captures global settings and configs at the DataStore level.

| Property | Type | Description |
|----------|------|-------------|
| `aclEnabled` | `boolean` | Immutable. Whether data in the DataStore has ACL information. If set to `true`, the source data m... |
| `advancedSiteSearchConfig` | `GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig` | Optional. Configuration for advanced site search. |
| `billingEstimation` | `GoogleCloudDiscoveryengineV1DataStoreBillingEstimation` | Output only. Data size estimation for billing. |
| `cmekConfig` | `GoogleCloudDiscoveryengineV1CmekConfig` | Output only. CMEK-related information for the DataStore. |
| `configurableBillingApproach` | `string` | Optional. Configuration for configurable billing approach. See |
| `configurableBillingApproachUpdateTime` | `string` | Output only. The timestamp when configurable_billing_approach was last updated. |
| `contentConfig` | `string` | Immutable. The content config of the data store. If this field is unset, the server behavior defa... |
| `createTime` | `string` | Output only. Timestamp the DataStore was created at. |
| `defaultSchemaId` | `string` | Output only. The id of the default Schema associated to this data store. |
| `displayName` | `string` | Required. The data store display name. This field must be a UTF-8 encoded string with a length li... |
| `documentProcessingConfig` | `GoogleCloudDiscoveryengineV1DocumentProcessingConfig` | Configuration for Document understanding and enrichment. |
| `healthcareFhirConfig` | `GoogleCloudDiscoveryengineV1HealthcareFhirConfig` | Optional. Configuration for `HEALTHCARE_FHIR` vertical. |
| `identityMappingStore` | `string` | Immutable. The fully qualified resource name of the associated IdentityMappingStore. This field c... |
| `industryVertical` | `string` | Immutable. The industry vertical that the data store registers. |
| `isInfobotFaqDataStore` | `boolean` | Optional. If set, this DataStore is an Infobot FAQ DataStore. |
| `kmsKeyName` | `string` | Input only. The KMS key to be used to protect this DataStore at creation time. Must be set for re... |
| `name` | `string` | Immutable. Identifier. The full resource name of the data store. Format: `projects/{project}/loca... |
| `naturalLanguageQueryUnderstandingConfig` | `GoogleCloudDiscoveryengineV1NaturalLanguageQueryUnderstandingConfig` | Optional. Configuration for Natural Language Query Understanding. |
| `servingConfigDataStore` | `GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore` | Optional. Stores serving config at DataStore level. |
| `solutionTypes` | `array<string>` | The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MED... |
| `startingSchema` | `GoogleCloudDiscoveryengineV1Schema` | The start schema to use for this DataStore when provisioning it. If unset, a default vertical spe... |
| `workspaceConfig` | `GoogleCloudDiscoveryengineV1WorkspaceConfig` | Config to store data store type configuration for workspace data. This must be set when DataStore... |

### `GoogleCloudDiscoveryengineV1DataStoreBillingEstimation`

Estimation of data size per data store.

| Property | Type | Description |
|----------|------|-------------|
| `structuredDataSize` | `string` | Data size for structured data in terms of bytes. |
| `structuredDataUpdateTime` | `string` | Last updated timestamp for structured data. |
| `unstructuredDataSize` | `string` | Data size for unstructured data in terms of bytes. |
| `unstructuredDataUpdateTime` | `string` | Last updated timestamp for unstructured data. |
| `websiteDataSize` | `string` | Data size for websites in terms of bytes. |
| `websiteDataUpdateTime` | `string` | Last updated timestamp for websites. |

### `GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore`

Stores information regarding the serving configurations at DataStore level.

| Property | Type | Description |
|----------|------|-------------|
| `disabledForServing` | `boolean` | Optional. If set true, the DataStore will not be available for serving search requests. |

### `GoogleCloudDiscoveryengineV1DeleteCmekConfigMetadata`

Metadata related to the progress of the CmekConfigService.DeleteCmekConfig operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1DeleteCollectionMetadata`

Metadata related to the progress of the CollectionService.UpdateCollection operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1DeleteDataStoreMetadata`

Metadata related to the progress of the DataStoreService.DeleteDataStore operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1DeleteEngineMetadata`

Metadata related to the progress of the EngineService.DeleteEngine operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1DeleteIdentityMappingStoreMetadata`

Metadata related to the progress of the IdentityMappingStoreService.DeleteIdentityMappingStore operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1DeleteSchemaMetadata`

Metadata for DeleteSchema LRO.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1DeleteSitemapMetadata`

Metadata related to the progress of the SiteSearchEngineService.DeleteSitemap operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1DeleteTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.DeleteTargetSite operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1DestinationConfig`

Defines target endpoints used to connect to third-party sources.

| Property | Type | Description |
|----------|------|-------------|
| `destinations` | `array<GoogleCloudDiscoveryengineV1DestinationConfigDestination>` | Optional. The destinations for the corresponding key. |
| `jsonParams` | `string` | Additional parameters for this destination config in json string format. |
| `key` | `string` | Optional. Unique destination identifier that is supported by the connector. |
| `params` | `object` | Optional. Additional parameters for this destination config in structured json format. |

### `GoogleCloudDiscoveryengineV1DestinationConfigDestination`

Defines a target endpoint

| Property | Type | Description |
|----------|------|-------------|
| `host` | `string` | Publicly routable host. |
| `port` | `integer` | Optional. Target port number accepted by the destination. |

### `GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchMetadata`

Metadata related to the progress of the SiteSearchEngineService.DisableAdvancedSiteSearch operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchRequest`

Request message for SiteSearchEngineService.DisableAdvancedSiteSearch method.

### `GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchResponse`

Response message for SiteSearchEngineService.DisableAdvancedSiteSearch method.

### `GoogleCloudDiscoveryengineV1Document`

Document captures all raw metadata information of items to be recommended or searched.

| Property | Type | Description |
|----------|------|-------------|
| `aclInfo` | `GoogleCloudDiscoveryengineV1DocumentAclInfo` | Access control information for the document. |
| `content` | `GoogleCloudDiscoveryengineV1DocumentContent` | The unstructured data linked to this document. Content can only be set and must be set if this do... |
| `derivedStructData` | `object` | Output only. This field is OUTPUT_ONLY. It contains derived data that are not in the original inp... |
| `id` | `string` | Immutable. The identifier of the document. Id should conform to [RFC-1034](https://tools.ietf.org... |
| `indexStatus` | `GoogleCloudDiscoveryengineV1DocumentIndexStatus` | Output only. The index status of the document. * If document is indexed successfully, the index_t... |
| `indexTime` | `string` | Output only. The last time the document was indexed. If this field is set, the document could be ... |
| `jsonData` | `string` | The JSON string representation of the document. It should conform to the registered Schema or an ... |
| `name` | `string` | Immutable. The full resource name of the document. Format: `projects/{project}/locations/{locatio... |
| `parentDocumentId` | `string` | The identifier of the parent document. Currently supports at most two level document hierarchy. I... |
| `schemaId` | `string` | The identifier of the schema located in the same data store. |
| `structData` | `object` | The structured JSON data for the document. It should conform to the registered Schema or an `INVA... |

### `GoogleCloudDiscoveryengineV1DocumentAclInfo`

ACL Information of the Document.

| Property | Type | Description |
|----------|------|-------------|
| `readers` | `array<GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction>` | Readers of the document. |

### `GoogleCloudDiscoveryengineV1DocumentAclInfoAccessRestriction`

AclRestriction to model complex inheritance restrictions. Example: Modeling a "Both Permit" inheritance, where to access a child document, user needs to have access to parent document. Document Hierarchy - Space_S --> Page_P. Readers: Space_S: group_1, user_1 Page_P: group_2, group_3, user_2 Space_S ACL Restriction - { "acl_info": { "readers": [ { "principals": [ { "group_id": "group_1" }, { "user_id": "user_1" } ] } ] } } Page_P ACL Restriction. { "acl_info": { "readers": [ { "principals": [ { "group_id": "group_2" }, { "group_id": "group_3" }, { "user_id": "user_2" } ], }, { "principals": [ { "group_id": "group_1" }, { "user_id": "user_1" } ], } ] } }

| Property | Type | Description |
|----------|------|-------------|
| `idpWide` | `boolean` | All users within the Identity Provider. |
| `principals` | `array<GoogleCloudDiscoveryengineV1Principal>` | List of principals. |

### `GoogleCloudDiscoveryengineV1DocumentContent`

Unstructured data linked to this document.

| Property | Type | Description |
|----------|------|-------------|
| `mimeType` | `string` | The MIME type of the content. Supported types: * `application/pdf` (PDF, only native PDFs are sup... |
| `rawBytes` | `string` | The content represented as a stream of bytes. The maximum length is 1,000,000 bytes (1 MB / ~0.95... |
| `uri` | `string` | The URI of the content. Only Cloud Storage URIs (e.g. `gs://bucket-name/path/to/file`) are suppor... |

### `GoogleCloudDiscoveryengineV1DocumentIndexStatus`

Index status of the document.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while indexing the document. If this field is populated, the docum... |
| `indexTime` | `string` | The time when the document was indexed. If this field is populated, it means the document has bee... |
| `pendingMessage` | `string` | Immutable. The message indicates the document index is in progress. If this field is populated, t... |

### `GoogleCloudDiscoveryengineV1DocumentInfo`

Detailed document information associated with a user event.

| Property | Type | Description |
|----------|------|-------------|
| `conversionValue` | `number` | Optional. The conversion value associated with this Document. Must be set if UserEvent.event_type... |
| `id` | `string` | The Document resource ID. |
| `joined` | `boolean` | Output only. Whether the referenced Document can be found in the data store. |
| `name` | `string` | The Document resource full name, of the form: `projects/{project}/locations/{location}/collection... |
| `promotionIds` | `array<string>` | The promotion IDs associated with this Document. Currently, this field is restricted to at most o... |
| `quantity` | `integer` | Quantity of the Document associated with the user event. Defaults to 1. For example, this field i... |
| `uri` | `string` | The Document URI - only allowed for website data stores. |

### `GoogleCloudDiscoveryengineV1DocumentProcessingConfig`

A singleton resource of DataStore. If it's empty when DataStore is created and DataStore is set to DataStore.ContentConfig.CONTENT_REQUIRED, the default parser will default to digital parser.

| Property | Type | Description |
|----------|------|-------------|
| `chunkingConfig` | `GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig` | Whether chunking mode is enabled. |
| `defaultParsingConfig` | `GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig` | Configurations for default Document parser. If not specified, we will configure it as default Dig... |
| `name` | `string` | The full resource name of the Document Processing Config. Format: `projects/*/locations/*/collect... |
| `parsingConfigOverrides` | `object` | Map from file type to override the default parsing configuration based on the file type. Supporte... |

### `GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig`

Configuration for chunking config.

| Property | Type | Description |
|----------|------|-------------|
| `layoutBasedChunkingConfig` | `GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig` | Configuration for the layout based chunking. |

### `GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig`

Configuration for the layout based chunking.

| Property | Type | Description |
|----------|------|-------------|
| `chunkSize` | `integer` | The token size limit for each chunk. Supported values: 100-500 (inclusive). Default value: 500. |
| `includeAncestorHeadings` | `boolean` | Whether to include appending different levels of headings to chunks from the middle of the docume... |

### `GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig`

Related configurations applied to a specific type of document parser.

| Property | Type | Description |
|----------|------|-------------|
| `digitalParsingConfig` | `GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig` | Configurations applied to digital parser. |
| `layoutParsingConfig` | `GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig` | Configurations applied to layout parser. |
| `ocrParsingConfig` | `GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig` | Configurations applied to OCR parser. Currently it only applies to PDFs. |

### `GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig`

The digital parsing configurations for documents.

### `GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig`

The layout parsing configurations for documents.

| Property | Type | Description |
|----------|------|-------------|
| `enableGetProcessedDocument` | `boolean` | Optional. If true, the processed document will be made available for the GetProcessedDocument API. |
| `enableImageAnnotation` | `boolean` | Optional. If true, the LLM based annotation is added to the image during parsing. |
| `enableLlmLayoutParsing` | `boolean` | Optional. If true, the pdf layout will be refined using an LLM. |
| `enableTableAnnotation` | `boolean` | Optional. If true, the LLM based annotation is added to the table during parsing. |
| `excludeHtmlClasses` | `array<string>` | Optional. List of HTML classes to exclude from the parsed content. |
| `excludeHtmlElements` | `array<string>` | Optional. List of HTML elements to exclude from the parsed content. |
| `excludeHtmlIds` | `array<string>` | Optional. List of HTML ids to exclude from the parsed content. |
| `structuredContentTypes` | `array<string>` | Optional. Contains the required structure types to extract from the document. Supported values: *... |

### `GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig`

The OCR parsing configurations for documents.

| Property | Type | Description |
|----------|------|-------------|
| `enhancedDocumentElements` | `array<string>` | [DEPRECATED] This field is deprecated. To use the additional enhanced document elements processin... |
| `useNativeText` | `boolean` | If true, will use native text instead of OCR text on pages containing native text. |

### `GoogleCloudDiscoveryengineV1DoubleList`

Double list.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<number>` | Double values. |

### `GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchMetadata`

Metadata related to the progress of the SiteSearchEngineService.EnableAdvancedSiteSearch operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchRequest`

Request message for SiteSearchEngineService.EnableAdvancedSiteSearch method.

### `GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchResponse`

Response message for SiteSearchEngineService.EnableAdvancedSiteSearch method.

### `GoogleCloudDiscoveryengineV1Engine`

Metadata that describes the training and serving parameters of an Engine.

| Property | Type | Description |
|----------|------|-------------|
| `appType` | `string` | Optional. Immutable. This the application type which this engine resource represents. NOTE: this ... |
| `chatEngineConfig` | `GoogleCloudDiscoveryengineV1EngineChatEngineConfig` | Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT. |
| `chatEngineMetadata` | `GoogleCloudDiscoveryengineV1EngineChatEngineMetadata` | Output only. Additional information of the Chat Engine. Only applicable if solution_type is SOLUT... |
| `cmekConfig` | `GoogleCloudDiscoveryengineV1CmekConfig` | Output only. CMEK-related information for the Engine. |
| `commonConfig` | `GoogleCloudDiscoveryengineV1EngineCommonConfig` | Common config spec that specifies the metadata of the engine. |
| `configurableBillingApproach` | `string` | Optional. Configuration for configurable billing approach. |
| `connectorTenantInfo` | `object` | Optional. Maps a connector ID (e.g., "hybrid-github", "shopify") to tenant-specific information r... |
| `createTime` | `string` | Output only. Timestamp the Recommendation Engine was created at. |
| `dataStoreIds` | `array<string>` | Optional. The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE... |
| `disableAnalytics` | `boolean` | Optional. Whether to disable analytics for searches performed on this engine. |
| `displayName` | `string` | Required. The display name of the engine. Should be human readable. UTF-8 encoded string with lim... |
| `features` | `object` | Optional. Feature config for the engine to opt in or opt out of features. Supported keys: * `*`: ... |
| `industryVertical` | `string` | Optional. The industry vertical that the engine registers. The restriction of the Engine industry... |
| `knowledgeGraphConfig` | `GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfig` | Optional. Configurations for the Knowledge Graph. Only applicable if solution_type is SOLUTION_TY... |
| `mediaRecommendationEngineConfig` | `GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig` | Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTI... |
| `modelConfigs` | `object` | Optional. Maps a model name to its specific configuration for this engine. This allows admin user... |
| `name` | `string` | Immutable. Identifier. The fully qualified resource name of the engine. This field must be a UTF-... |
| `observabilityConfig` | `GoogleCloudDiscoveryengineV1ObservabilityConfig` | Optional. Observability config for the engine. |
| `searchEngineConfig` | `GoogleCloudDiscoveryengineV1EngineSearchEngineConfig` | Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH. |
| `solutionType` | `string` | Required. The solutions of the engine. |
| `updateTime` | `string` | Output only. Timestamp the Recommendation Engine was last updated. |

### `GoogleCloudDiscoveryengineV1EngineChatEngineConfig`

Configurations for a Chat Engine.

| Property | Type | Description |
|----------|------|-------------|
| `agentCreationConfig` | `GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig` | The configurationt generate the Dialogflow agent that is associated to this Engine. Note that the... |
| `allowCrossRegion` | `boolean` | Optional. If the flag set to true, we allow the agent and engine are in different locations, othe... |
| `dialogflowAgentToLink` | `string` | The resource name of an exist Dialogflow agent to link to this Chat Engine. Customers can either ... |

### `GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig`

Configurations for generating a Dialogflow agent. Note that these configurations are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation.

| Property | Type | Description |
|----------|------|-------------|
| `business` | `string` | Name of the company, organization or other entity that the agent represents. Used for knowledge c... |
| `defaultLanguageCode` | `string` | Required. The default language of the agent as a language tag. See [Language Support](https://clo... |
| `location` | `string` | Agent location for Agent creation, supported values: global/us/eu. If not provided, us Engine wil... |
| `timeZone` | `string` | Required. The time zone of the agent from the [time zone database](https://www.iana.org/time-zone... |

### `GoogleCloudDiscoveryengineV1EngineChatEngineMetadata`

Additional information of a Chat Engine. Fields in this message are output only.

| Property | Type | Description |
|----------|------|-------------|
| `dialogflowAgent` | `string` | The resource name of a Dialogflow agent, that this Chat Engine refers to. Format: `projects//loca... |

### `GoogleCloudDiscoveryengineV1EngineCommonConfig`

Common configurations for an Engine.

| Property | Type | Description |
|----------|------|-------------|
| `companyName` | `string` | The name of the company, business or entity that is associated with the engine. Setting this may ... |

### `GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfig`

Configuration message for the Knowledge Graph.

| Property | Type | Description |
|----------|------|-------------|
| `cloudKnowledgeGraphTypes` | `array<string>` | Specify entity types to support. |
| `enableCloudKnowledgeGraph` | `boolean` | Whether to enable the Cloud Knowledge Graph for the engine. Defaults to false if not specified. |
| `enablePrivateKnowledgeGraph` | `boolean` | Whether to enable the Private Knowledge Graph for the engine. Defaults to false if not specified. |
| `featureConfig` | `GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfigFeatureConfig` | Optional. Feature config for the Knowledge Graph. |
| `privateKnowledgeGraphTypes` | `array<string>` | Specify entity types to support. |

### `GoogleCloudDiscoveryengineV1EngineKnowledgeGraphConfigFeatureConfig`

Feature config for the Knowledge Graph.

| Property | Type | Description |
|----------|------|-------------|
| `disablePrivateKgAutoComplete` | `boolean` | Whether to disable the private KG auto complete for the engine. Defaults to false if not specified. |
| `disablePrivateKgEnrichment` | `boolean` | Whether to disable the private KG enrichment for the engine. Defaults to false if not specified. |
| `disablePrivateKgQueryUiChips` | `boolean` | Whether to disable the private KG for query UI chips. Defaults to false if not specified. |
| `disablePrivateKgQueryUnderstanding` | `boolean` | Whether to disable the private KG query understanding for the engine. Defaults to false if not sp... |

### `GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig`

Additional config specs for a Media Recommendation engine.

| Property | Type | Description |
|----------|------|-------------|
| `engineFeaturesConfig` | `GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig` | Optional. Additional engine features config. |
| `optimizationObjective` | `string` | The optimization objective. e.g., `cvr`. This field together with optimization_objective describe... |
| `optimizationObjectiveConfig` | `GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig` | Name and value of the custom threshold for cvr optimization_objective. For target_field `watch-ti... |
| `trainingState` | `string` | The training state that the engine is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of... |
| `type` | `string` | Required. The type of engine. e.g., `recommended-for-you`. This field together with optimization_... |

### `GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig`

More feature configs of the selected engine type.

| Property | Type | Description |
|----------|------|-------------|
| `mostPopularConfig` | `GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig` | Most popular engine feature config. |
| `recommendedForYouConfig` | `GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig` | Recommended for you engine feature config. |

### `GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig`

Feature configurations that are required for creating a Most Popular engine.

| Property | Type | Description |
|----------|------|-------------|
| `timeWindowDays` | `string` | The time window of which the engine is queried at training and prediction time. Positive integers... |

### `GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig`

Custom threshold for `cvr` optimization_objective.

| Property | Type | Description |
|----------|------|-------------|
| `targetField` | `string` | Required. The name of the field to target. Currently supported values: `watch-percentage`, `watch... |
| `targetFieldValueFloat` | `number` | Required. The threshold to be applied to the target (e.g., 0.5). |

### `GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig`

Additional feature configurations for creating a `recommended-for-you` engine.

| Property | Type | Description |
|----------|------|-------------|
| `contextEventType` | `string` | The type of event with which the engine is queried at prediction time. If set to `generic`, only ... |

### `GoogleCloudDiscoveryengineV1EngineSearchEngineConfig`

Configurations for a Search Engine.

| Property | Type | Description |
|----------|------|-------------|
| `requiredSubscriptionTier` | `string` | Optional. The required subscription tier of this engine. They cannot be modified after engine cre... |
| `searchAddOns` | `array<string>` | The add-on that this search engine enables. |
| `searchTier` | `string` | The search feature tier of this engine. Different tiers might have different pricing. To learn mo... |

### `GoogleCloudDiscoveryengineV1FactChunk`

Fact Chunk.

| Property | Type | Description |
|----------|------|-------------|
| `chunkText` | `string` | Text content of the fact chunk. Can be at most 10K characters long. |
| `domain` | `string` | The domain of the source. |
| `index` | `integer` | The index of this chunk. Currently, only used for the streaming mode. |
| `source` | `string` | Source from which this fact chunk was retrieved. If it was retrieved from the GroundingFacts prov... |
| `sourceMetadata` | `object` | More fine-grained information for the source reference. |
| `title` | `string` | The title of the source. |
| `uri` | `string` | The URI of the source. |

### `GoogleCloudDiscoveryengineV1FetchDomainVerificationStatusResponse`

Response message for SiteSearchEngineService.FetchDomainVerificationStatus method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `targetSites` | `array<GoogleCloudDiscoveryengineV1TargetSite>` | List of TargetSites containing the site verification status. |
| `totalSize` | `integer` | The total number of items matching the request. This will always be populated in the response. |

### `GoogleCloudDiscoveryengineV1FetchSitemapsResponse`

Response message for SiteSearchEngineService.FetchSitemaps method.

| Property | Type | Description |
|----------|------|-------------|
| `sitemapsMetadata` | `array<GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata>` | List of Sitemaps fetched. |

### `GoogleCloudDiscoveryengineV1FetchSitemapsResponseSitemapMetadata`

Contains a Sitemap and its metadata.

| Property | Type | Description |
|----------|------|-------------|
| `sitemap` | `GoogleCloudDiscoveryengineV1Sitemap` | The Sitemap. |

### `GoogleCloudDiscoveryengineV1FhirStoreSource`

Cloud FhirStore source import data from.

| Property | Type | Description |
|----------|------|-------------|
| `fhirStore` | `string` | Required. The full resource name of the FHIR store to import data from, in the format of `project... |
| `gcsStagingDir` | `string` | Intermediate Cloud Storage directory used for the import with a length limit of 2,000 characters.... |
| `resourceTypes` | `array<string>` | The FHIR resource types to import. The resource types should be a subset of all [supported FHIR r... |
| `updateFromLatestPredefinedSchema` | `boolean` | Optional. Whether to update the DataStore schema to the latest predefined schema. If true, the Da... |

### `GoogleCloudDiscoveryengineV1FirestoreSource`

Firestore source import data from.

| Property | Type | Description |
|----------|------|-------------|
| `collectionId` | `string` | Required. The Firestore collection (or entity) to copy the data from with a length limit of 1,500... |
| `databaseId` | `string` | Required. The Firestore database to copy the data from with a length limit of 256 characters. |
| `gcsStagingDir` | `string` | Intermediate Cloud Storage directory used for the import with a length limit of 2,000 characters.... |
| `projectId` | `string` | The project ID that the Cloud SQL source is in with a length limit of 128 characters. If not spec... |

### `GoogleCloudDiscoveryengineV1GcsSource`

Cloud Storage location for input content.

| Property | Type | Description |
|----------|------|-------------|
| `dataSchema` | `string` | The schema to use when parsing the data from the source. Supported values for document imports: *... |
| `inputUris` | `array<string>` | Required. Cloud Storage URIs to input files. Each URI can be up to 2000 characters long. URIs can... |

### `GoogleCloudDiscoveryengineV1GroundingFact`

Grounding Fact.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Attributes associated with the fact. Common attributes include `source` (indicating where the fac... |
| `factText` | `string` | Text content of the fact. Can be at most 10K characters long. |

### `GoogleCloudDiscoveryengineV1HealthcareFhirConfig`

Config to data store for `HEALTHCARE_FHIR` vertical.

| Property | Type | Description |
|----------|------|-------------|
| `enableConfigurableSchema` | `boolean` | Whether to enable configurable schema for `HEALTHCARE_FHIR` vertical. If set to `true`, the prede... |
| `enableStaticIndexingForBatchIngestion` | `boolean` | Whether to enable static indexing for `HEALTHCARE_FHIR` batch ingestion. If set to `true`, the ba... |
| `initialFilterGroups` | `array<string>` | Optional. Names of the Group resources to use as a basis for the initial patient filter, in forma... |

### `GoogleCloudDiscoveryengineV1IdentityMappingEntry`

Identity Mapping Entry that maps an external identity to an internal identity.

| Property | Type | Description |
|----------|------|-------------|
| `externalIdentity` | `string` | Required. Identity outside the customer identity provider. The length limit of external identity ... |
| `externalIdentityName` | `string` | Optional. The name of the external identity. |
| `groupId` | `string` | Group identifier. For Google Workspace user account, group_id should be the google workspace grou... |
| `userId` | `string` | User identifier. For Google Workspace user account, user_id should be the google workspace user e... |

### `GoogleCloudDiscoveryengineV1IdentityMappingEntryOperationMetadata`

IdentityMappingEntry LongRunningOperation metadata for IdentityMappingStoreService.ImportIdentityMappings and IdentityMappingStoreService.PurgeIdentityMappings

| Property | Type | Description |
|----------|------|-------------|
| `failureCount` | `string` | The number of IdentityMappingEntries that failed to be processed. |
| `successCount` | `string` | The number of IdentityMappingEntries that were successfully processed. |
| `totalCount` | `string` | The total number of IdentityMappingEntries that were processed. |

### `GoogleCloudDiscoveryengineV1IdentityMappingStore`

Identity Mapping Store which contains Identity Mapping Entries.

| Property | Type | Description |
|----------|------|-------------|
| `cmekConfig` | `GoogleCloudDiscoveryengineV1CmekConfig` | Output only. CMEK-related information for the Identity Mapping Store. |
| `kmsKeyName` | `string` | Input only. The KMS key to be used to protect this Identity Mapping Store at creation time. Must ... |
| `name` | `string` | Immutable. The full resource name of the identity mapping store. Format: `projects/{project}/loca... |

### `GoogleCloudDiscoveryengineV1IdentityScheduleConfig`

The configuration for the identity data synchronization runs.

| Property | Type | Description |
|----------|------|-------------|
| `nextSyncTime` | `GoogleTypeDateTime` | Optional. The UTC time when the next data sync is expected to start for the Data Connector. Custo... |
| `refreshInterval` | `string` | Optional. The refresh interval to sync the Access Control List information for the documents inge... |

### `GoogleCloudDiscoveryengineV1IdpConfig`

Identity Provider Config.

| Property | Type | Description |
|----------|------|-------------|
| `externalIdpConfig` | `GoogleCloudDiscoveryengineV1IdpConfigExternalIdpConfig` | External Identity provider config. |
| `idpType` | `string` | Identity provider type configured. |

### `GoogleCloudDiscoveryengineV1IdpConfigExternalIdpConfig`

Third party IDP Config.

| Property | Type | Description |
|----------|------|-------------|
| `workforcePoolName` | `string` | Workforce pool name. Example: "locations/global/workforcePools/pool_id" |

### `GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsMetadata`

Metadata related to the progress of the ImportCompletionSuggestions operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of CompletionSuggestions that failed to be imported. |
| `successCount` | `string` | Count of CompletionSuggestions successfully imported. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest`

Request message for CompletionService.ImportCompletionSuggestions method.

| Property | Type | Description |
|----------|------|-------------|
| `bigquerySource` | `GoogleCloudDiscoveryengineV1BigQuerySource` | BigQuery input source. |
| `errorConfig` | `GoogleCloudDiscoveryengineV1ImportErrorConfig` | The desired location of errors incurred during the Import. |
| `gcsSource` | `GoogleCloudDiscoveryengineV1GcsSource` | Cloud Storage location for the input content. |
| `inlineSource` | `GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource` | The Inline source for suggestion entries. |

### `GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource`

The inline source for CompletionSuggestions.

| Property | Type | Description |
|----------|------|-------------|
| `suggestions` | `array<GoogleCloudDiscoveryengineV1CompletionSuggestion>` | Required. A list of all denylist entries to import. Max of 1000 items. |

### `GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsResponse`

Response of the CompletionService.ImportCompletionSuggestions method. If the long running operation is done, this message is returned by the google.longrunning.Operations.response field if the operation is successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1ImportErrorConfig` | The desired location of errors incurred during the Import. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1ImportDocumentsMetadata`

Metadata related to the progress of the ImportDocuments operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `successCount` | `string` | Count of entries that were processed successfully. |
| `totalCount` | `string` | Total count of entries that were processed. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1ImportDocumentsRequest`

Request message for Import methods.

| Property | Type | Description |
|----------|------|-------------|
| `alloyDbSource` | `GoogleCloudDiscoveryengineV1AlloyDbSource` | AlloyDB input source. |
| `autoGenerateIds` | `boolean` | Whether to automatically generate IDs for the documents if absent. If set to `true`, Document.ids... |
| `bigquerySource` | `GoogleCloudDiscoveryengineV1BigQuerySource` | BigQuery input source. |
| `bigtableSource` | `GoogleCloudDiscoveryengineV1BigtableSource` | Cloud Bigtable input source. |
| `cloudSqlSource` | `GoogleCloudDiscoveryengineV1CloudSqlSource` | Cloud SQL input source. |
| `errorConfig` | `GoogleCloudDiscoveryengineV1ImportErrorConfig` | The desired location of errors incurred during the Import. |
| `fhirStoreSource` | `GoogleCloudDiscoveryengineV1FhirStoreSource` | FhirStore input source. |
| `firestoreSource` | `GoogleCloudDiscoveryengineV1FirestoreSource` | Firestore input source. |
| `forceRefreshContent` | `boolean` | Optional. Whether to force refresh the unstructured content of the documents. If set to `true`, t... |
| `gcsSource` | `GoogleCloudDiscoveryengineV1GcsSource` | Cloud Storage location for the input content. |
| `idField` | `string` | The field indicates the ID field or column to be used as unique IDs of the documents. For GcsSour... |
| `inlineSource` | `GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource` | The Inline source for the input content for documents. |
| `reconciliationMode` | `string` | The mode of reconciliation between existing documents and the documents to be imported. Defaults ... |
| `spannerSource` | `GoogleCloudDiscoveryengineV1SpannerSource` | Spanner input source. |
| `updateMask` | `string` | Indicates which fields in the provided imported documents to update. If not set, the default is t... |

### `GoogleCloudDiscoveryengineV1ImportDocumentsRequestInlineSource`

The inline source for the input config for ImportDocuments method.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<GoogleCloudDiscoveryengineV1Document>` | Required. A list of documents to update/create. Each document must have a valid Document.id. Reco... |

### `GoogleCloudDiscoveryengineV1ImportDocumentsResponse`

Response of the ImportDocumentsRequest. If the long running operation is done, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1ImportErrorConfig` | Echoes the destination for the complete errors in the request if set. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1ImportErrorConfig`

Configuration of destination for Import related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Cloud Storage prefix for import errors. This must be an empty, existing Cloud Storage directory. ... |

### `GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequest`

Request message for IdentityMappingStoreService.ImportIdentityMappings

| Property | Type | Description |
|----------|------|-------------|
| `inlineSource` | `GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource` | The inline source to import identity mapping entries from. |

### `GoogleCloudDiscoveryengineV1ImportIdentityMappingsRequestInlineSource`

The inline source to import identity mapping entries from.

| Property | Type | Description |
|----------|------|-------------|
| `identityMappingEntries` | `array<GoogleCloudDiscoveryengineV1IdentityMappingEntry>` | A maximum of 10000 entries can be imported at one time |

### `GoogleCloudDiscoveryengineV1ImportIdentityMappingsResponse`

Response message for IdentityMappingStoreService.ImportIdentityMappings

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesMetadata`

Metadata related to the progress of the ImportSuggestionDenyListEntries operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequest`

Request message for CompletionService.ImportSuggestionDenyListEntries method.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `GoogleCloudDiscoveryengineV1GcsSource` | Cloud Storage location for the input content. Only 1 file can be specified that contains all entr... |
| `inlineSource` | `GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource` | The Inline source for the input content for suggestion deny list entries. |

### `GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesRequestInlineSource`

The inline source for SuggestionDenyListEntry.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<GoogleCloudDiscoveryengineV1SuggestionDenyListEntry>` | Required. A list of all denylist entries to import. Max of 1000 items. |

### `GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesResponse`

Response message for CompletionService.ImportSuggestionDenyListEntries method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `failedEntriesCount` | `string` | Count of deny list entries that failed to be imported. |
| `importedEntriesCount` | `string` | Count of deny list entries successfully imported. |

### `GoogleCloudDiscoveryengineV1ImportUserEventsMetadata`

Metadata related to the progress of the Import operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `successCount` | `string` | Count of entries that were processed successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1ImportUserEventsRequest`

Request message for the ImportUserEvents request.

| Property | Type | Description |
|----------|------|-------------|
| `bigquerySource` | `GoogleCloudDiscoveryengineV1BigQuerySource` | BigQuery input source. |
| `errorConfig` | `GoogleCloudDiscoveryengineV1ImportErrorConfig` | The desired location of errors incurred during the Import. Cannot be set for inline user event im... |
| `gcsSource` | `GoogleCloudDiscoveryengineV1GcsSource` | Cloud Storage location for the input content. |
| `inlineSource` | `GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource` | The Inline source for the input content for UserEvents. |

### `GoogleCloudDiscoveryengineV1ImportUserEventsRequestInlineSource`

The inline source for the input config for ImportUserEvents method.

| Property | Type | Description |
|----------|------|-------------|
| `userEvents` | `array<GoogleCloudDiscoveryengineV1UserEvent>` | Required. A list of user events to import. Recommended max of 10k items. |

### `GoogleCloudDiscoveryengineV1ImportUserEventsResponse`

Response of the ImportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1ImportErrorConfig` | Echoes the destination for the complete errors if this field was set in the request. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `joinedEventsCount` | `string` | Count of user events imported with complete existing Documents. |
| `unjoinedEventsCount` | `string` | Count of user events imported, but with Document information not found in the existing Branch. |

### `GoogleCloudDiscoveryengineV1Interval`

A floating point interval.

| Property | Type | Description |
|----------|------|-------------|
| `exclusiveMaximum` | `number` | Exclusive upper bound. |
| `exclusiveMinimum` | `number` | Exclusive lower bound. |
| `maximum` | `number` | Inclusive upper bound. |
| `minimum` | `number` | Inclusive lower bound. |

### `GoogleCloudDiscoveryengineV1LicenseConfig`

Information about users' licenses.

| Property | Type | Description |
|----------|------|-------------|
| `autoRenew` | `boolean` | Optional. Whether the license config should be auto renewed when it reaches the end date. |
| `earlyTerminated` | `boolean` | Output only. Indication of whether the subscription is terminated earlier than the expiration dat... |
| `earlyTerminationDate` | `GoogleTypeDate` | Output only. The date when the subscription is terminated earlier than the expiration date. |
| `endDate` | `GoogleTypeDate` | Optional. The planed end date. |
| `freeTrial` | `boolean` | Optional. Whether the license config is for free trial. |
| `geminiBundle` | `boolean` | Output only. Whether the license config is for Gemini bundle. |
| `licenseCount` | `string` | Required. Number of licenses purchased. |
| `name` | `string` | Immutable. Identifier. The fully qualified resource name of the license config. Format: `projects... |
| `startDate` | `GoogleTypeDate` | Required. The start date. |
| `state` | `string` | Output only. The state of the license config. |
| `subscriptionTerm` | `string` | Required. Subscription term. |
| `subscriptionTier` | `string` | Required. Subscription tier information for the license config. |

### `GoogleCloudDiscoveryengineV1LicenseConfigUsageStats`

Stats about users' licenses.

| Property | Type | Description |
|----------|------|-------------|
| `licenseConfig` | `string` | Required. The LicenseConfig name. |
| `usedLicenseCount` | `string` | Required. The number of licenses used. |

### `GoogleCloudDiscoveryengineV1ListAssistantsResponse`

Response message for the AssistantService.ListAssistants method.

| Property | Type | Description |
|----------|------|-------------|
| `assistants` | `array<GoogleCloudDiscoveryengineV1Assistant>` | All the customer's Assistants. |
| `nextPageToken` | `string` | A token that can be sent as ListAssistantsRequest.page_token to retrieve the next page. If this f... |

### `GoogleCloudDiscoveryengineV1ListCmekConfigsResponse`

Response message for CmekConfigService.ListCmekConfigs method.

| Property | Type | Description |
|----------|------|-------------|
| `cmekConfigs` | `array<GoogleCloudDiscoveryengineV1CmekConfig>` | All the customer's CmekConfigs. |

### `GoogleCloudDiscoveryengineV1ListControlsResponse`

Response for ListControls method.

| Property | Type | Description |
|----------|------|-------------|
| `controls` | `array<GoogleCloudDiscoveryengineV1Control>` | All the Controls for a given data store. |
| `nextPageToken` | `string` | Pagination token, if not returned indicates the last page. |

### `GoogleCloudDiscoveryengineV1ListConversationsResponse`

Response for ListConversations method.

| Property | Type | Description |
|----------|------|-------------|
| `conversations` | `array<GoogleCloudDiscoveryengineV1Conversation>` | All the Conversations for a given data store. |
| `nextPageToken` | `string` | Pagination token, if not returned indicates the last page. |

### `GoogleCloudDiscoveryengineV1ListCustomModelsResponse`

Response message for SearchTuningService.ListCustomModels method.

| Property | Type | Description |
|----------|------|-------------|
| `models` | `array<GoogleCloudDiscoveryengineV1CustomTuningModel>` | List of custom tuning models. |

### `GoogleCloudDiscoveryengineV1ListDataStoresResponse`

Response message for DataStoreService.ListDataStores method.

| Property | Type | Description |
|----------|------|-------------|
| `dataStores` | `array<GoogleCloudDiscoveryengineV1DataStore>` | All the customer's DataStores. |
| `nextPageToken` | `string` | A token that can be sent as ListDataStoresRequest.page_token to retrieve the next page. If this f... |

### `GoogleCloudDiscoveryengineV1ListDocumentsResponse`

Response message for DocumentService.ListDocuments method.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<GoogleCloudDiscoveryengineV1Document>` | The Documents. |
| `nextPageToken` | `string` | A token that can be sent as ListDocumentsRequest.page_token to retrieve the next page. If this fi... |

### `GoogleCloudDiscoveryengineV1ListEnginesResponse`

Response message for EngineService.ListEngines method.

| Property | Type | Description |
|----------|------|-------------|
| `engines` | `array<GoogleCloudDiscoveryengineV1Engine>` | All the customer's Engines. |
| `nextPageToken` | `string` | Not supported. |

### `GoogleCloudDiscoveryengineV1ListIdentityMappingStoresResponse`

Response message for IdentityMappingStoreService.ListIdentityMappingStores

| Property | Type | Description |
|----------|------|-------------|
| `identityMappingStores` | `array<GoogleCloudDiscoveryengineV1IdentityMappingStore>` | The Identity Mapping Stores. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `GoogleCloudDiscoveryengineV1ListIdentityMappingsResponse`

Response message for IdentityMappingStoreService.ListIdentityMappings

| Property | Type | Description |
|----------|------|-------------|
| `identityMappingEntries` | `array<GoogleCloudDiscoveryengineV1IdentityMappingEntry>` | The Identity Mapping Entries. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `GoogleCloudDiscoveryengineV1ListLicenseConfigsUsageStatsResponse`

Response message for UserLicenseService.ListLicenseConfigsUsageStats method.

| Property | Type | Description |
|----------|------|-------------|
| `licenseConfigUsageStats` | `array<GoogleCloudDiscoveryengineV1LicenseConfigUsageStats>` | All the customer's LicenseConfigUsageStats. |

### `GoogleCloudDiscoveryengineV1ListSchemasResponse`

Response message for SchemaService.ListSchemas method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as ListSchemasRequest.page_token to retrieve the next page. If this fiel... |
| `schemas` | `array<GoogleCloudDiscoveryengineV1Schema>` | The Schemas. |

### `GoogleCloudDiscoveryengineV1ListServingConfigsResponse`

Response for ListServingConfigs method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token, if not returned indicates the last page. |
| `servingConfigs` | `array<GoogleCloudDiscoveryengineV1ServingConfig>` | All the ServingConfigs for a given dataStore. |

### `GoogleCloudDiscoveryengineV1ListSessionsResponse`

Response for ListSessions method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token, if not returned indicates the last page. |
| `sessions` | `array<GoogleCloudDiscoveryengineV1Session>` | All the Sessions for a given data store. |

### `GoogleCloudDiscoveryengineV1ListTargetSitesResponse`

Response message for SiteSearchEngineService.ListTargetSites method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `targetSites` | `array<GoogleCloudDiscoveryengineV1TargetSite>` | List of TargetSites. |
| `totalSize` | `integer` | The total number of items matching the request. This will always be populated in the response. |

### `GoogleCloudDiscoveryengineV1ListUserLicensesResponse`

Response message for UserLicenseService.ListUserLicenses.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `userLicenses` | `array<GoogleCloudDiscoveryengineV1UserLicense>` | All the customer's UserLicenses. |

### `GoogleCloudDiscoveryengineV1MediaInfo`

Media-specific user event information.

| Property | Type | Description |
|----------|------|-------------|
| `mediaProgressDuration` | `string` | The media progress time in seconds, if applicable. For example, if the end user has finished 90 s... |
| `mediaProgressPercentage` | `number` | Media progress should be computed using only the media_progress_duration relative to the media to... |

### `GoogleCloudDiscoveryengineV1NaturalLanguageQueryUnderstandingConfig`

Configuration for Natural Language Query Understanding.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Mode of Natural Language Query Understanding. If this field is unset, the behavior defaults to Na... |

### `GoogleCloudDiscoveryengineV1ObservabilityConfig`

Observability config for a resource.

| Property | Type | Description |
|----------|------|-------------|
| `observabilityEnabled` | `boolean` | Optional. Enables observability. If false, all other flags are ignored. |
| `sensitiveLoggingEnabled` | `boolean` | Optional. Enables sensitive logging. Sensitive logging includes customer core content (e.g. promp... |

### `GoogleCloudDiscoveryengineV1PageInfo`

Detailed page information.

| Property | Type | Description |
|----------|------|-------------|
| `pageCategory` | `string` | The most specific category associated with a category page. To represent full path of category, u... |
| `pageviewId` | `string` | A unique ID of a web page view. This should be kept the same for all user events triggered from t... |
| `referrerUri` | `string` | The referrer URL of the current page. When using the client side event reporting with JavaScript ... |
| `uri` | `string` | Complete URL (window.location.href) of the user's current page. When using the client side event ... |

### `GoogleCloudDiscoveryengineV1PanelInfo`

Detailed panel information associated with a user event.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The display name of the panel. |
| `documents` | `array<GoogleCloudDiscoveryengineV1DocumentInfo>` | Optional. The document IDs associated with this panel. |
| `panelId` | `string` | Required. The panel ID. |
| `panelPosition` | `integer` | The ordered position of the panel, if shown to the user with other panels. If set, then total_pan... |
| `totalPanels` | `integer` | The total number of panels, including this one, shown to the user. Must be set if panel_position ... |

### `GoogleCloudDiscoveryengineV1Principal`

Principal identifier of a user or a group.

| Property | Type | Description |
|----------|------|-------------|
| `externalEntityId` | `string` | For 3P application identities which are not present in the customer identity provider. |
| `groupId` | `string` | Group identifier. For Google Workspace user account, group_id should be the google workspace grou... |
| `userId` | `string` | User identifier. For Google Workspace user account, user_id should be the google workspace user e... |

### `GoogleCloudDiscoveryengineV1Project`

Metadata and configurations for a Google Cloud project in the service.

| Property | Type | Description |
|----------|------|-------------|
| `configurableBillingStatus` | `GoogleCloudDiscoveryengineV1ProjectConfigurableBillingStatus` | Output only. The current status of the project's configurable billing. |
| `createTime` | `string` | Output only. The timestamp when this project is created. |
| `customerProvidedConfig` | `GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfig` | Optional. Customer provided configurations. |
| `name` | `string` | Output only. Full resource name of the project, for example `projects/{project}`. Note that when ... |
| `provisionCompletionTime` | `string` | Output only. The timestamp when this project is successfully provisioned. Empty value means this ... |
| `serviceTermsMap` | `object` | Output only. A map of terms of services. The key is the `id` of ServiceTerms. |

### `GoogleCloudDiscoveryengineV1ProjectConfigurableBillingStatus`

Represents the currently effective configurable billing parameters. These values are derived from the customer's subscription history stored internally and reflect the thresholds actively being used for billing purposes at the time of the GetProject call. This includes the start_time of the subscription and may differ from the values in `customer_provided_config` due to billing rules (e.g., scale-downs taking effect only at the start of a new month).

| Property | Type | Description |
|----------|------|-------------|
| `effectiveIndexingCoreThreshold` | `string` | Optional. The currently effective Indexing Core threshold. This is the threshold against which In... |
| `effectiveSearchQpmThreshold` | `string` | Optional. The currently effective Search QPM threshold in queries per minute. This is the thresho... |
| `indexingCoreThresholdNextUpdateTime` | `string` | Output only. The earliest next update time for the indexing core subscription threshold. This is ... |
| `searchQpmThresholdNextUpdateTime` | `string` | Output only. The earliest next update time for the search QPM subscription threshold. This is bas... |
| `startTime` | `string` | Optional. The start time of the currently active billing subscription. |
| `terminateTime` | `string` | Output only. The latest terminate effective time of search qpm and indexing core subscriptions. |

### `GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfig`

Customer provided configurations.

| Property | Type | Description |
|----------|------|-------------|
| `notebooklmConfig` | `GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfig` | Optional. Configuration for NotebookLM settings. |

### `GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfig`

Configuration for NotebookLM.

| Property | Type | Description |
|----------|------|-------------|
| `dataProtectionPolicy` | `GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicy` | Optional. Specifies the data protection policy for NotebookLM. |
| `modelArmorConfig` | `GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig` | Model Armor configuration to be used for sanitizing user prompts and LLM responses. |
| `observabilityConfig` | `GoogleCloudDiscoveryengineV1ObservabilityConfig` | Optional. Observability config for NotebookLM. |
| `optOutNotebookSharing` | `boolean` | Optional. Whether to disable the notebook sharing feature for the project. Default to false if no... |

### `GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicy`

Data protection policy config for NotebookLM.

| Property | Type | Description |
|----------|------|-------------|
| `sensitiveDataProtectionPolicy` | `GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicySensitiveDataProtectionPolicy` | Optional. The sensitive data protection policy. |

### `GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicySensitiveDataProtectionPolicy`

Specifies a Sensitive Data Protection (https://cloud.google.com/sensitive-data-protection/docs/sensitive-data-protection-overview) policy.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `string` | Optional. The Sensitive Data Protection policy resource name. |

### `GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig`

Configuration for customer defined Model Armor templates to be used for sanitizing user prompts and LLM responses.

| Property | Type | Description |
|----------|------|-------------|
| `responseTemplate` | `string` | Optional. The resource name of the Model Armor Template for sanitizing LLM responses. Format: pro... |
| `userPromptTemplate` | `string` | Optional. The resource name of the Model Armor Template for sanitizing user prompts. Format: proj... |

### `GoogleCloudDiscoveryengineV1ProjectServiceTerms`

Metadata about the terms of service.

| Property | Type | Description |
|----------|------|-------------|
| `acceptTime` | `string` | The last time when the project agreed to the terms of service. |
| `declineTime` | `string` | The last time when the project declined or revoked the agreement to terms of service. |
| `id` | `string` | The unique identifier of this terms of service. Available terms: * `GA_DATA_USE_TERMS`: [Terms fo... |
| `state` | `string` | Whether the project has accepted/rejected the service terms or it is still pending. |
| `version` | `string` | The version string of the terms of service. For acceptable values, see the comments for id above. |

### `GoogleCloudDiscoveryengineV1ProvisionProjectMetadata`

Metadata associated with a project provision operation.

### `GoogleCloudDiscoveryengineV1ProvisionProjectRequest`

Request for ProjectService.ProvisionProject method.

| Property | Type | Description |
|----------|------|-------------|
| `acceptDataUseTerms` | `boolean` | Required. Set to `true` to specify that caller has read and would like to give consent to the [Te... |
| `dataUseTermsVersion` | `string` | Required. The version of the [Terms for data use](https://cloud.google.com/retail/data-use-terms)... |
| `saasParams` | `GoogleCloudDiscoveryengineV1ProvisionProjectRequestSaasParams` | Optional. Parameters for Agentspace. |

### `GoogleCloudDiscoveryengineV1ProvisionProjectRequestSaasParams`

Parameters for Agentspace.

| Property | Type | Description |
|----------|------|-------------|
| `acceptBizQos` | `boolean` | Optional. Set to `true` to specify that caller has read and would like to give consent to the [Te... |
| `isBiz` | `boolean` | Optional. Indicates if the current request is for Biz edition (= true) or not (= false). |

### `GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsMetadata`

Metadata related to the progress of the PurgeCompletionSuggestions operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsRequest`

Request message for CompletionService.PurgeCompletionSuggestions method.

### `GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsResponse`

Response message for CompletionService.PurgeCompletionSuggestions method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `purgeSucceeded` | `boolean` | Whether the completion suggestions were successfully purged. |

### `GoogleCloudDiscoveryengineV1PurgeDocumentsMetadata`

Metadata related to the progress of the PurgeDocuments operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `ignoredCount` | `string` | Count of entries that were ignored as entries were not found. |
| `successCount` | `string` | Count of entries that were deleted successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1PurgeDocumentsRequest`

Request message for DocumentService.PurgeDocuments method.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1PurgeErrorConfig` | The desired location of errors incurred during the purge. |
| `filter` | `string` | Required. Filter matching documents to purge. Only currently supported value is `*` (all items). |
| `force` | `boolean` | Actually performs the purge. If `force` is set to false, return the expected purge count without ... |
| `gcsSource` | `GoogleCloudDiscoveryengineV1GcsSource` | Cloud Storage location for the input content. Supported `data_schema`: * `document_id`: One valid... |
| `inlineSource` | `GoogleCloudDiscoveryengineV1PurgeDocumentsRequestInlineSource` | Inline source for the input content for purge. |

### `GoogleCloudDiscoveryengineV1PurgeDocumentsRequestInlineSource`

The inline source for the input config for DocumentService.PurgeDocuments method.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<string>` | Required. A list of full resource name of documents to purge. In the format `projects/*/locations... |

### `GoogleCloudDiscoveryengineV1PurgeDocumentsResponse`

Response message for DocumentService.PurgeDocuments method. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgeCount` | `string` | The total count of documents purged as a result of the operation. |
| `purgeSample` | `array<string>` | A sample of document names that will be deleted. Only populated if `force` is set to false. A max... |

### `GoogleCloudDiscoveryengineV1PurgeErrorConfig`

Configuration of destination for Purge related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Cloud Storage prefix for purge errors. This must be an empty, existing Cloud Storage directory. P... |

### `GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequest`

Request message for IdentityMappingStoreService.PurgeIdentityMappings

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Filter matching identity mappings to purge. The eligible field for filtering is: * `update_time`:... |
| `force` | `boolean` | Actually performs the purge. If `force` is set to false, return the expected purge count without ... |
| `inlineSource` | `GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource` | The inline source to purge identity mapping entries from. |

### `GoogleCloudDiscoveryengineV1PurgeIdentityMappingsRequestInlineSource`

The inline source to purge identity mapping entries from.

| Property | Type | Description |
|----------|------|-------------|
| `identityMappingEntries` | `array<GoogleCloudDiscoveryengineV1IdentityMappingEntry>` | A maximum of 10000 entries can be purged at one time |

### `GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesMetadata`

Metadata related to the progress of the PurgeSuggestionDenyListEntries operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesRequest`

Request message for CompletionService.PurgeSuggestionDenyListEntries method.

### `GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesResponse`

Response message for CompletionService.PurgeSuggestionDenyListEntries method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `purgeCount` | `string` | Number of suggestion deny list entries purged. |

### `GoogleCloudDiscoveryengineV1PurgeUserEventsRequest`

Request message for PurgeUserEvents method.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Required. The filter string to specify the events to be deleted with a length limit of 5,000 char... |
| `force` | `boolean` | The `force` field is currently not supported. Purge user event requests will permanently delete a... |

### `GoogleCloudDiscoveryengineV1Query`

Defines a user inputed query.

| Property | Type | Description |
|----------|------|-------------|
| `queryId` | `string` | Output only. Unique Id for the query. |
| `text` | `string` | Plain text. |

### `GoogleCloudDiscoveryengineV1RankRequest`

Request message for RankService.Rank method.

| Property | Type | Description |
|----------|------|-------------|
| `ignoreRecordDetailsInResponse` | `boolean` | If true, the response will contain only record ID and score. By default, it is false, the respons... |
| `model` | `string` | The identifier of the model to use. It is one of: * `semantic-ranker-512@latest`: Semantic rankin... |
| `query` | `string` | The query to use. |
| `records` | `array<GoogleCloudDiscoveryengineV1RankingRecord>` | Required. A list of records to rank. |
| `topN` | `integer` | The number of results to return. If this is unset or no bigger than zero, returns all results. |
| `userLabels` | `object` | The user labels applied to a resource must meet the following requirements: * Each resource can h... |

### `GoogleCloudDiscoveryengineV1RankResponse`

Response message for RankService.Rank method.

| Property | Type | Description |
|----------|------|-------------|
| `records` | `array<GoogleCloudDiscoveryengineV1RankingRecord>` | A list of records sorted by descending score. |

### `GoogleCloudDiscoveryengineV1RankingRecord`

Record message for RankService.Rank method.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The content of the record. Empty by default. At least one of title or content should be set other... |
| `id` | `string` | The unique ID to represent the record. |
| `score` | `number` | The score of this record based on the given query and selected model. The score will be rounded t... |
| `title` | `string` | The title of the record. Empty by default. At least one of title or content should be set otherwi... |

### `GoogleCloudDiscoveryengineV1RecommendRequest`

Request message for Recommend method.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Filter for restricting recommendation results with a length limit of 5,000 characters. Currently,... |
| `pageSize` | `integer` | Maximum number of results to return. Set this property to the number of recommendation results ne... |
| `params` | `object` | Additional domain specific parameters for the recommendations. Allowed values: * `returnDocument`... |
| `userEvent` | `GoogleCloudDiscoveryengineV1UserEvent` | Required. Context about the user, what they are looking at and what action they took to trigger t... |
| `userLabels` | `object` | The user labels applied to a resource must meet the following requirements: * Each resource can h... |
| `validateOnly` | `boolean` | Use validate only mode for this recommendation query. If set to `true`, a fake model is used that... |

### `GoogleCloudDiscoveryengineV1RecommendResponse`

Response message for Recommend method.

| Property | Type | Description |
|----------|------|-------------|
| `attributionToken` | `string` | A unique attribution token. This should be included in the UserEvent logs resulting from this rec... |
| `missingIds` | `array<string>` | IDs of documents in the request that were missing from the default Branch associated with the req... |
| `results` | `array<GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult>` | A list of recommended Documents. The order represents the ranking (from the most relevant Documen... |
| `validateOnly` | `boolean` | True if RecommendRequest.validate_only was set. |

### `GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult`

RecommendationResult represents a generic recommendation result with associated metadata.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `GoogleCloudDiscoveryengineV1Document` | Set if `returnDocument` is set to true in RecommendRequest.params. |
| `id` | `string` | Resource ID of the recommended Document. |
| `metadata` | `object` | Additional Document metadata or annotations. Possible values: * `score`: Recommendation score in ... |

### `GoogleCloudDiscoveryengineV1RecrawlUrisRequest`

Request message for SiteSearchEngineService.RecrawlUris method.

| Property | Type | Description |
|----------|------|-------------|
| `siteCredential` | `string` | Optional. Credential id to use for crawling. |
| `uris` | `array<string>` | Required. List of URIs to crawl. At most 10K URIs are supported, otherwise an INVALID_ARGUMENT er... |

### `GoogleCloudDiscoveryengineV1Reply`

Defines a reply message to user.

| Property | Type | Description |
|----------|------|-------------|
| `summary` | `GoogleCloudDiscoveryengineV1SearchResponseSummary` | Summary based on search results. |

### `GoogleCloudDiscoveryengineV1SafetyRating`

Safety rating corresponding to the generated content.

| Property | Type | Description |
|----------|------|-------------|
| `blocked` | `boolean` | Output only. Indicates whether the content was filtered out because of this rating. |
| `category` | `string` | Output only. Harm category. |
| `probability` | `string` | Output only. Harm probability levels in the content. |
| `probabilityScore` | `number` | Output only. Harm probability score. |
| `severity` | `string` | Output only. Harm severity levels in the content. |
| `severityScore` | `number` | Output only. Harm severity score. |

### `GoogleCloudDiscoveryengineV1Schema`

Defines the structure and layout of a type of document data.

| Property | Type | Description |
|----------|------|-------------|
| `jsonSchema` | `string` | The JSON representation of the schema. |
| `name` | `string` | Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{... |
| `structSchema` | `object` | The structured representation of the schema. |

### `GoogleCloudDiscoveryengineV1SearchInfo`

Detailed search information.

| Property | Type | Description |
|----------|------|-------------|
| `offset` | `integer` | An integer that specifies the current offset for pagination (the 0-indexed starting location, amo... |
| `orderBy` | `string` | The order in which products are returned, if applicable. See SearchRequest.order_by for definitio... |
| `searchQuery` | `string` | The user's search query. See SearchRequest.query for definition. The value must be a UTF-8 encode... |

### `GoogleCloudDiscoveryengineV1SearchLinkPromotion`

Promotion proto includes uri and other helping information to display the promotion.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. The Promotion description. Maximum length: 200 characters. |
| `document` | `string` | Optional. The Document the user wants to promote. For site search, leave unset and only populate ... |
| `enabled` | `boolean` | Optional. The enabled promotion will be returned for any serving configs associated with the pare... |
| `imageUri` | `string` | Optional. The promotion thumbnail image url. |
| `title` | `string` | Required. The title of the promotion. Maximum length: 160 characters. |
| `uri` | `string` | Optional. The URL for the page the user wants to promote. Must be set for site search. For other ... |

### `GoogleCloudDiscoveryengineV1SearchRequest`

Request message for SearchService.Search method.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudDiscoveryengineV1SearchRequestBoostSpec` | Boost specification to boost certain documents. For more information on boosting, see [Boosting](... |
| `branch` | `string` | The branch resource name, such as `projects/*/locations/global/collections/default_collection/dat... |
| `canonicalFilter` | `string` | The default filter that is applied when a user performs a search without checking any filters on ... |
| `contentSearchSpec` | `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec` | A specification for configuring the behavior of content search. |
| `crowdingSpecs` | `array<GoogleCloudDiscoveryengineV1SearchRequestCrowdingSpec>` | Optional. Crowding specifications for improving result diversity. If multiple CrowdingSpecs are s... |
| `dataStoreSpecs` | `array<GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec>` | Specifications that define the specific DataStores to be searched, along with configurations for ... |
| `displaySpec` | `GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec` | Optional. Config for display feature, like match highlighting on search results. |
| `facetSpecs` | `array<GoogleCloudDiscoveryengineV1SearchRequestFacetSpec>` | Facet specifications for faceted search. If empty, no facets are returned. A maximum of 100 value... |
| `filter` | `string` | The filter syntax consists of an expression language for constructing a predicate from one or mor... |
| `imageQuery` | `GoogleCloudDiscoveryengineV1SearchRequestImageQuery` | Raw image query. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see [Standard field... |
| `naturalLanguageQueryUnderstandingSpec` | `GoogleCloudDiscoveryengineV1SearchRequestNaturalLanguageQueryUnderstandingSpec` | Optional. Config for natural language query understanding capabilities, such as extracting struct... |
| `offset` | `integer` | A 0-indexed integer that specifies the current offset (that is, starting result location, amongst... |
| `oneBoxPageSize` | `integer` | The maximum number of results to return for OneBox. This applies to each OneBox type individually... |
| `orderBy` | `string` | The order in which documents are returned. Documents can be ordered by a field in an Document obj... |
| `pageCategories` | `array<string>` | Optional. The categories associated with a category page. Must be set for category navigation que... |
| `pageSize` | `integer` | Maximum number of Documents to return. The maximum allowed value depends on the data type. Values... |
| `pageToken` | `string` | A page token received from a previous SearchService.Search call. Provide this to retrieve the sub... |
| `params` | `object` | Additional search parameters. For public website search only, supported values are: * `user_count... |
| `query` | `string` | Raw search query. |
| `queryExpansionSpec` | `GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec` | The query expansion specification that specifies the conditions under which query expansion occurs. |
| `rankingExpression` | `string` | Optional. The ranking expression controls the customized ranking on retrieval documents. This ove... |
| `rankingExpressionBackend` | `string` | Optional. The backend to use for the ranking expression evaluation. |
| `relevanceScoreSpec` | `GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec` | Optional. The specification for returning the relevance score. |
| `relevanceThreshold` | `string` | The global relevance threshold of the search results. Defaults to Google defined threshold, lever... |
| `safeSearch` | `boolean` | Whether to turn on safe search. This is only supported for website search. |
| `searchAsYouTypeSpec` | `GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec` | Search as you type configuration. Only supported for the IndustryVertical.MEDIA vertical. |
| `session` | `string` | The session resource name. Optional. Session allows users to do multi-turn /search API calls or c... |
| `sessionSpec` | `GoogleCloudDiscoveryengineV1SearchRequestSessionSpec` | Session specification. Can be used only when `session` is set. |
| `spellCorrectionSpec` | `GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec` | The spell correction specification that specifies the mode under which spell correction takes eff... |
| `userInfo` | `GoogleCloudDiscoveryengineV1UserInfo` | Information about the end user. Highly recommended for analytics and personalization. UserInfo.us... |
| `userLabels` | `object` | The user labels applied to a resource must meet the following requirements: * Each resource can h... |
| `userPseudoId` | `string` | Optional. A unique identifier for tracking visitors. For example, this could be implemented with ... |

### `GoogleCloudDiscoveryengineV1SearchRequestBoostSpec`

Boost specification to boost certain documents.

| Property | Type | Description |
|----------|------|-------------|
| `conditionBoostSpecs` | `array<GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec>` | Condition boost specifications. If a document matches multiple conditions in the specifications, ... |

### `GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpec`

Boost applies to documents which match a condition.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Strength of the condition boost, which should be in [-1, 1]. Negative boost means demotion. Defau... |
| `boostControlSpec` | `GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec` | Complex specification for custom ranking based on customer defined attribute value. |
| `condition` | `string` | An expression which specifies a boost condition. The syntax and supported fields are the same as ... |

### `GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpec`

Specification for custom ranking based on customer specified attribute value. It provides more controls for customized ranking than the simple (condition, boost) combination above.

| Property | Type | Description |
|----------|------|-------------|
| `attributeType` | `string` | The attribute type to be used to determine the boost amount. The attribute value can be derived f... |
| `controlPoints` | `array<GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint>` | The control points used to define the curve. The monotonic function (defined through the interpol... |
| `fieldName` | `string` | The name of the field whose value will be used to determine the boost amount. |
| `interpolationType` | `string` | The interpolation type to be applied to connect the control points listed below. |

### `GoogleCloudDiscoveryengineV1SearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint`

The control points used to define the curve. The curve defined through these control points can only be monotonically increasing or decreasing(constant values are acceptable).

| Property | Type | Description |
|----------|------|-------------|
| `attributeValue` | `string` | Can be one of: 1. The numerical field value. 2. The duration spec for freshness: The value must b... |
| `boostAmount` | `number` | The value between -1 to 1 by which to boost the score if the attribute_value evaluates to the val... |

### `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec`

A specification for configuring the behavior of content search.

| Property | Type | Description |
|----------|------|-------------|
| `chunkSpec` | `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec` | Specifies the chunk spec to be returned from the search response. Only available if the SearchReq... |
| `extractiveContentSpec` | `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec` | If there is no extractive_content_spec provided, there will be no extractive answer in the search... |
| `searchResultMode` | `string` | Specifies the search result mode. If unspecified, the search result mode defaults to `DOCUMENTS`. |
| `snippetSpec` | `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec` | If `snippetSpec` is not specified, snippets are not included in the search response. |
| `summarySpec` | `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec` | If `summarySpec` is not specified, summaries are not included in the search response. |

### `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec`

Specifies the chunk spec to be returned from the search response. Only available if the SearchRequest.ContentSearchSpec.search_result_mode is set to CHUNKS

| Property | Type | Description |
|----------|------|-------------|
| `numNextChunks` | `integer` | The number of next chunks to be returned of the current chunk. The maximum allowed value is 3. If... |
| `numPreviousChunks` | `integer` | The number of previous chunks to be returned of the current chunk. The maximum allowed value is 3... |

### `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec`

A specification for configuring the extractive content in a search response.

| Property | Type | Description |
|----------|------|-------------|
| `maxExtractiveAnswerCount` | `integer` | The maximum number of extractive answers returned in each search result. An extractive answer is ... |
| `maxExtractiveSegmentCount` | `integer` | The max number of extractive segments returned in each search result. Only applied if the DataSto... |
| `numNextSegments` | `integer` | Return at most `num_next_segments` segments after each selected segments. |
| `numPreviousSegments` | `integer` | Specifies whether to also include the adjacent from each selected segments. Return at most `num_p... |
| `returnExtractiveSegmentScore` | `boolean` | Specifies whether to return the confidence score from the extractive segments in each search resu... |

### `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec`

A specification for configuring snippets in a search response.

| Property | Type | Description |
|----------|------|-------------|
| `maxSnippetCount` | `integer` | [DEPRECATED] This field is deprecated. To control snippet return, use `return_snippet` field. For... |
| `referenceOnly` | `boolean` | [DEPRECATED] This field is deprecated and will have no affect on the snippet. |
| `returnSnippet` | `boolean` | If `true`, then return snippet. If no snippet can be generated, we return "No snippet is availabl... |

### `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec`

A specification for configuring a summary returned in a search response.

| Property | Type | Description |
|----------|------|-------------|
| `ignoreAdversarialQuery` | `boolean` | Specifies whether to filter out adversarial queries. The default value is `false`. Google employs... |
| `ignoreJailBreakingQuery` | `boolean` | Optional. Specifies whether to filter out jail-breaking queries. The default value is `false`. Go... |
| `ignoreLowRelevantContent` | `boolean` | Specifies whether to filter out queries that have low relevance. The default value is `false`. If... |
| `ignoreNonSummarySeekingQuery` | `boolean` | Specifies whether to filter out queries that are not summary-seeking. The default value is `false... |
| `includeCitations` | `boolean` | Specifies whether to include citations in the summary. The default value is `false`. When this fi... |
| `languageCode` | `string` | Language code for Summary. Use language tags defined by [BCP47](https://www.rfc-editor.org/rfc/bc... |
| `modelPromptSpec` | `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec` | If specified, the spec will be used to modify the prompt provided to the LLM. |
| `modelSpec` | `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec` | If specified, the spec will be used to modify the model specification provided to the LLM. |
| `summaryResultCount` | `integer` | The number of top results to generate the summary from. If the number of results returned is less... |
| `useSemanticChunks` | `boolean` | If true, answer will be generated from most relevant chunks from top search results. This feature... |

### `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec`

Specification of the prompt to use with the model.

| Property | Type | Description |
|----------|------|-------------|
| `preamble` | `string` | Text at the beginning of the prompt that instructs the assistant. Examples are available in the u... |

### `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec`

Specification of the model.

| Property | Type | Description |
|----------|------|-------------|
| `version` | `string` | The model version used to generate the summary. Supported values are: * `stable`: string. Default... |

### `GoogleCloudDiscoveryengineV1SearchRequestCrowdingSpec`

Specification for crowding. Crowding improves the diversity of search results by limiting the number of results that share the same field value. For example, crowding on the color field with a max_count of 3 and mode DROP_CROWDED_RESULTS will return at most 3 results with the same color across all pages.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | The field to use for crowding. Documents can be crowded by a field in the Document object. Crowdi... |
| `maxCount` | `integer` | The maximum number of documents to keep per value of the field. Once there are at least max_count... |
| `mode` | `string` | Mode to use for documents that are crowded away. |

### `GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec`

A struct to define data stores to filter on in a search call and configurations for those data stores. Otherwise, an `INVALID_ARGUMENT` error is returned.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudDiscoveryengineV1SearchRequestBoostSpec` | Optional. Boost specification to boost certain documents. For more information on boosting, see [... |
| `customSearchOperators` | `string` | Optional. Custom search operators which if specified will be used to filter results from workspac... |
| `dataStore` | `string` | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/colle... |
| `filter` | `string` | Optional. Filter specification to filter documents in the data store specified by data_store fiel... |

### `GoogleCloudDiscoveryengineV1SearchRequestDisplaySpec`

Specifies features for display, like match highlighting.

| Property | Type | Description |
|----------|------|-------------|
| `matchHighlightingCondition` | `string` | The condition under which match highlighting should occur. |

### `GoogleCloudDiscoveryengineV1SearchRequestFacetSpec`

A facet specification to perform faceted search.

| Property | Type | Description |
|----------|------|-------------|
| `enableDynamicPosition` | `boolean` | Enables dynamic position for this facet. If set to true, the position of this facet among all fac... |
| `excludedFilterKeys` | `array<string>` | List of keys to exclude when faceting. By default, FacetKey.key is not excluded from the filter u... |
| `facetKey` | `GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey` | Required. The facet key specification. |
| `limit` | `integer` | Maximum facet values that are returned for this facet. If unspecified, defaults to 20. The maximu... |

### `GoogleCloudDiscoveryengineV1SearchRequestFacetSpecFacetKey`

Specifies how a facet is computed.

| Property | Type | Description |
|----------|------|-------------|
| `caseInsensitive` | `boolean` | True to make facet keys case insensitive when getting faceting values with prefixes or contains; ... |
| `contains` | `array<string>` | Only get facet values that contain the given strings. For example, suppose "category" has three v... |
| `intervals` | `array<GoogleCloudDiscoveryengineV1Interval>` | Set only if values should be bucketed into intervals. Must be set for facets with numerical value... |
| `key` | `string` | Required. Supported textual and numerical facet keys in Document object, over which the facet val... |
| `orderBy` | `string` | The order in which documents are returned. Allowed values are: * "count desc", which means order ... |
| `prefixes` | `array<string>` | Only get facet values that start with the given string prefix. For example, suppose "category" ha... |
| `restrictedValues` | `array<string>` | Only get facet for the given restricted values. Only supported on textual fields. For example, su... |

### `GoogleCloudDiscoveryengineV1SearchRequestImageQuery`

Specifies the image query input.

| Property | Type | Description |
|----------|------|-------------|
| `imageBytes` | `string` | Base64 encoded image bytes. Supported image formats: JPEG, PNG, and BMP. |

### `GoogleCloudDiscoveryengineV1SearchRequestNaturalLanguageQueryUnderstandingSpec`

Specification to enable natural language understanding capabilities for search requests.

| Property | Type | Description |
|----------|------|-------------|
| `allowedFieldNames` | `array<string>` | Optional. Allowlist of fields that can be used for natural language filter extraction. By default... |
| `extractedFilterBehavior` | `string` | Optional. Controls behavior of how extracted filters are applied to the search. The default behav... |
| `filterExtractionCondition` | `string` | The condition under which filter extraction should occur. Server behavior defaults to `DISABLED`. |
| `geoSearchQueryDetectionFieldNames` | `array<string>` | Field names used for location-based filtering, where geolocation filters are detected in natural ... |

### `GoogleCloudDiscoveryengineV1SearchRequestQueryExpansionSpec`

Specification to determine under which conditions query expansion should occur.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | The condition under which query expansion should occur. Default to Condition.DISABLED. |
| `pinUnexpandedResults` | `boolean` | Whether to pin unexpanded results. If this field is set to true, unexpanded products are always a... |

### `GoogleCloudDiscoveryengineV1SearchRequestRelevanceScoreSpec`

The specification for returning the document relevance score.

| Property | Type | Description |
|----------|------|-------------|
| `returnRelevanceScore` | `boolean` | Optional. Whether to return the relevance score for search results. The higher the score, the mor... |

### `GoogleCloudDiscoveryengineV1SearchRequestSearchAsYouTypeSpec`

Specification for search as you type in search requests.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | The condition under which search as you type should occur. Default to Condition.DISABLED. |

### `GoogleCloudDiscoveryengineV1SearchRequestSessionSpec`

Session specification. Multi-turn Search feature is currently at private GA stage. Please use v1alpha or v1beta version instead before we launch this feature to public GA. Or ask for allowlisting through Google Support team.

| Property | Type | Description |
|----------|------|-------------|
| `queryId` | `string` | If set, the search result gets stored to the "turn" specified by this query ID. Example: Let's sa... |
| `searchResultPersistenceCount` | `integer` | The number of top search results to persist. The persisted search results can be used for the sub... |

### `GoogleCloudDiscoveryengineV1SearchRequestSpellCorrectionSpec`

The specification for query spell correction.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | The mode under which spell correction replaces the original search query. Defaults to Mode.AUTO. |

### `GoogleCloudDiscoveryengineV1SearchResponse`

Response message for SearchService.Search method.

| Property | Type | Description |
|----------|------|-------------|
| `attributionToken` | `string` | A unique search token. This should be included in the UserEvent logs resulting from this search, ... |
| `correctedQuery` | `string` | Contains the spell corrected query, if found. If the spell correction type is AUTOMATIC, then the... |
| `facets` | `array<GoogleCloudDiscoveryengineV1SearchResponseFacet>` | Results of facets requested by user. |
| `naturalLanguageQueryUnderstandingInfo` | `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfo` | Output only. Natural language query understanding information for the returned results. |
| `nextPageToken` | `string` | A token that can be sent as SearchRequest.page_token to retrieve the next page. If this field is ... |
| `queryExpansionInfo` | `GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo` | Query expansion information for the returned results. |
| `redirectUri` | `string` | The URI of a customer-defined redirect page. If redirect action is triggered, no search is perfor... |
| `results` | `array<GoogleCloudDiscoveryengineV1SearchResponseSearchResult>` | A list of matched documents. The order represents the ranking. |
| `searchLinkPromotions` | `array<GoogleCloudDiscoveryengineV1SearchLinkPromotion>` | Promotions for site search. |
| `semanticState` | `string` | Output only. Indicates the semantic state of the search response. |
| `sessionInfo` | `GoogleCloudDiscoveryengineV1SearchResponseSessionInfo` | Session information. Only set if SearchRequest.session is provided. See its description for more ... |
| `summary` | `GoogleCloudDiscoveryengineV1SearchResponseSummary` | A summary as part of the search results. This field is only returned if SearchRequest.ContentSear... |
| `totalSize` | `integer` | The estimated total count of matched items irrespective of pagination. The count of results retur... |

### `GoogleCloudDiscoveryengineV1SearchResponseFacet`

A facet result.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicFacet` | `boolean` | Whether the facet is dynamically generated. |
| `key` | `string` | The key for this facet. For example, `"colors"` or `"price"`. It matches SearchRequest.FacetSpec.... |
| `values` | `array<GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue>` | The facet values for this field. |

### `GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue`

A facet value which contains value names and their count.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Number of items that have this facet value. |
| `interval` | `GoogleCloudDiscoveryengineV1Interval` | Interval value for a facet, such as 10, 20) for facet "price". It matches [SearchRequest.FacetSpe... |
| `value` | `string` | Text value of a facet, such as "Black" for facet "colors". |

### `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfo`

Information describing what natural language understanding was done on the input query.

| Property | Type | Description |
|----------|------|-------------|
| `classifiedIntents` | `array<string>` | The classified intents from the input query. |
| `extractedFilters` | `string` | The filters that were extracted from the input query. |
| `rewrittenQuery` | `string` | Rewritten input query minus the extracted filters. |
| `structuredExtractedFilter` | `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter` | The filters that were extracted from the input query represented in a structured form. |

### `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter`

The filters that were extracted from the input query represented in a structured form.

| Property | Type | Description |
|----------|------|-------------|
| `expression` | `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression` | The expression denoting the filter that was extracted from the input query in a structured form. ... |

### `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression`

Logical `And` operator.

| Property | Type | Description |
|----------|------|-------------|
| `expressions` | `array<GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression>` | The expressions that were ANDed together. |

### `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression`

The expression denoting the filter that was extracted from the input query.

| Property | Type | Description |
|----------|------|-------------|
| `andExpr` | `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression` | Logical "And" compound operator connecting multiple expressions. |
| `geolocationConstraint` | `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint` | Geolocation constraint expression. |
| `numberConstraint` | `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint` | Numerical constraint expression. |
| `orExpr` | `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression` | Logical "Or" compound operator connecting multiple expressions. |
| `stringConstraint` | `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint` | String constraint expression. |

### `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint`

Constraint of a geolocation field. Name of the geolocation field as defined in the schema.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The reference address that was inferred from the input query. The proximity of the reference addr... |
| `fieldName` | `string` | The name of the geolocation field as defined in the schema. |
| `latitude` | `number` | The latitude of the geolocation inferred from the input query. |
| `longitude` | `number` | The longitude of the geolocation inferred from the input query. |
| `radiusInMeters` | `number` | The radius in meters around the address. The record is returned if the location of the geolocatio... |

### `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint`

Constraint expression of a number field. Example: price < 100.

| Property | Type | Description |
|----------|------|-------------|
| `comparison` | `string` | The comparison operation performed between the field value and the value specified in the constra... |
| `fieldName` | `string` | Name of the numerical field as defined in the schema. |
| `querySegment` | `string` | Identifies the keywords within the search query that match a filter. |
| `value` | `number` | The value specified in the numerical constraint. |

### `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression`

Logical `Or` operator.

| Property | Type | Description |
|----------|------|-------------|
| `expressions` | `array<GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression>` | The expressions that were ORed together. |

### `GoogleCloudDiscoveryengineV1SearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint`

Constraint expression of a string field.

| Property | Type | Description |
|----------|------|-------------|
| `fieldName` | `string` | Name of the string field as defined in the schema. |
| `querySegment` | `string` | Identifies the keywords within the search query that match a filter. |
| `values` | `array<string>` | Values of the string field. The record will only be returned if the field value matches one of th... |

### `GoogleCloudDiscoveryengineV1SearchResponseQueryExpansionInfo`

Information describing query expansion including whether expansion has occurred.

| Property | Type | Description |
|----------|------|-------------|
| `expandedQuery` | `boolean` | Bool describing whether query expansion has occurred. |
| `pinnedResultCount` | `string` | Number of pinned results. This field will only be set when expansion happens and SearchRequest.Qu... |

### `GoogleCloudDiscoveryengineV1SearchResponseSearchResult`

Represents the search results.

| Property | Type | Description |
|----------|------|-------------|
| `chunk` | `GoogleCloudDiscoveryengineV1Chunk` | The chunk data in the search response if the SearchRequest.ContentSearchSpec.search_result_mode i... |
| `document` | `GoogleCloudDiscoveryengineV1Document` | The document data snippet in the search response. Only fields that are marked as `retrievable` ar... |
| `id` | `string` | Document.id of the searched Document. |
| `modelScores` | `object` | Output only. Google provided available scores. |
| `rankSignals` | `GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignals` | Optional. A set of ranking signals associated with the result. |

### `GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignals`

A set of ranking signals.

| Property | Type | Description |
|----------|------|-------------|
| `boostingFactor` | `number` | Optional. Combined custom boosts for a doc. |
| `customSignals` | `array<GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignalsCustomSignal>` | Optional. A list of custom clearbox signals. |
| `defaultRank` | `number` | Optional. The default rank of the result. |
| `documentAge` | `number` | Optional. Age of the document in hours. |
| `keywordSimilarityScore` | `number` | Optional. Keyword matching adjustment. |
| `pctrRank` | `number` | Optional. Predicted conversion rate adjustment as a rank. |
| `relevanceScore` | `number` | Optional. Semantic relevance adjustment. |
| `semanticSimilarityScore` | `number` | Optional. Semantic similarity adjustment. |
| `topicalityRank` | `number` | Optional. Topicality adjustment as a rank. |

### `GoogleCloudDiscoveryengineV1SearchResponseSearchResultRankSignalsCustomSignal`

Custom clearbox signal represented by name and value pair.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of the signal. |
| `value` | `number` | Optional. Float value representing the ranking signal (e.g. 1.25 for BM25). |

### `GoogleCloudDiscoveryengineV1SearchResponseSessionInfo`

Information about the session.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the session. If the auto-session mode is used (when SearchRequest.session ends with "-"),... |
| `queryId` | `string` | Query ID that corresponds to this search API call. One session can have multiple turns, each with... |

### `GoogleCloudDiscoveryengineV1SearchResponseSummary`

Summary of the top N search results specified by the summary spec.

| Property | Type | Description |
|----------|------|-------------|
| `safetyAttributes` | `GoogleCloudDiscoveryengineV1SearchResponseSummarySafetyAttributes` | A collection of Safety Attribute categories and their associated confidence scores. |
| `summarySkippedReasons` | `array<string>` | Additional summary-skipped reasons. This provides the reason for ignored cases. If nothing is ski... |
| `summaryText` | `string` | The summary content. |
| `summaryWithMetadata` | `GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata` | Summary with metadata information. |

### `GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation`

Citation info for a segment.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `string` | End of the attributed segment, exclusive. |
| `sources` | `array<GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationSource>` | Citation sources for the attributed segment. |
| `startIndex` | `string` | Index indicates the start of the segment, measured in bytes/unicode. |

### `GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata`

Citation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `citations` | `array<GoogleCloudDiscoveryengineV1SearchResponseSummaryCitation>` | Citations for segments. |

### `GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationSource`

Citation source.

| Property | Type | Description |
|----------|------|-------------|
| `referenceIndex` | `string` | Document reference index from SummaryWithMetadata.references. It is 0-indexed and the value will ... |

### `GoogleCloudDiscoveryengineV1SearchResponseSummaryReference`

Document reference.

| Property | Type | Description |
|----------|------|-------------|
| `chunkContents` | `array<GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent>` | List of cited chunk contents derived from document content. |
| `document` | `string` | Required. Document.name of the document. Full resource name of the referenced document, in the fo... |
| `title` | `string` | Title of the document. |
| `uri` | `string` | Cloud Storage or HTTP uri for the document. |

### `GoogleCloudDiscoveryengineV1SearchResponseSummaryReferenceChunkContent`

Chunk content.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Chunk textual content. |
| `pageIdentifier` | `string` | Page identifier. |

### `GoogleCloudDiscoveryengineV1SearchResponseSummarySafetyAttributes`

Safety Attribute categories and their associated confidence scores.

| Property | Type | Description |
|----------|------|-------------|
| `categories` | `array<string>` | The display names of Safety Attribute categories associated with the generated content. Order mat... |
| `scores` | `array<number>` | The confidence scores of the each category, higher value means higher confidence. Order matches t... |

### `GoogleCloudDiscoveryengineV1SearchResponseSummarySummaryWithMetadata`

Summary with metadata information.

| Property | Type | Description |
|----------|------|-------------|
| `citationMetadata` | `GoogleCloudDiscoveryengineV1SearchResponseSummaryCitationMetadata` | Citation metadata for given summary. |
| `references` | `array<GoogleCloudDiscoveryengineV1SearchResponseSummaryReference>` | Document References. |
| `summary` | `string` | Summary text with no citation information. |

### `GoogleCloudDiscoveryengineV1ServingConfig`

Configures metadata that is used to generate serving time results (e.g. search results or recommendation predictions). The ServingConfig is passed in the search and predict request and generates results.

| Property | Type | Description |
|----------|------|-------------|
| `answerGenerationSpec` | `GoogleCloudDiscoveryengineV1AnswerGenerationSpec` | Optional. The specification for answer generation. |
| `boostControlIds` | `array<string>` | Boost controls to use in serving path. All triggered boost controls will be applied. Boost contro... |
| `createTime` | `string` | Output only. ServingConfig created timestamp. |
| `displayName` | `string` | Required. The human readable serving config display name. Used in Discovery UI. This field must b... |
| `dissociateControlIds` | `array<string>` | Condition do not associate specifications. If multiple do not associate conditions match, all mat... |
| `diversityLevel` | `string` | How much diversity to use in recommendation model results e.g. `medium-diversity` or `high-divers... |
| `filterControlIds` | `array<string>` | Filter controls to use in serving path. All triggered filter controls will be applied. Filter con... |
| `genericConfig` | `GoogleCloudDiscoveryengineV1ServingConfigGenericConfig` | The GenericConfig of the serving configuration. |
| `ignoreControlIds` | `array<string>` | Condition ignore specifications. If multiple ignore conditions match, all matching ignore control... |
| `mediaConfig` | `GoogleCloudDiscoveryengineV1ServingConfigMediaConfig` | The MediaConfig of the serving configuration. |
| `modelId` | `string` | The id of the model to use at serving time. Currently only RecommendationModels are supported. Ca... |
| `name` | `string` | Immutable. Fully qualified name `projects/{project}/locations/{location}/collections/{collection_... |
| `onewaySynonymsControlIds` | `array<string>` | Condition oneway synonyms specifications. If multiple oneway synonyms conditions match, all match... |
| `promoteControlIds` | `array<string>` | Condition promote specifications. Maximum number of specifications is 100. |
| `rankingExpression` | `string` | The ranking expression controls the customized ranking on retrieval documents. To leverage this, ... |
| `redirectControlIds` | `array<string>` | IDs of the redirect controls. Only the first triggered redirect action is applied, even if multip... |
| `replacementControlIds` | `array<string>` | Condition replacement specifications. Applied according to the order in the list. A previously re... |
| `solutionType` | `string` | Required. Immutable. Specifies the solution type that a serving config can be associated with. |
| `synonymsControlIds` | `array<string>` | Condition synonyms specifications. If multiple synonyms conditions match, all matching synonyms c... |
| `updateTime` | `string` | Output only. ServingConfig updated timestamp. |

### `GoogleCloudDiscoveryengineV1ServingConfigGenericConfig`

Specifies the configurations needed for Generic Discovery.Currently we support: * `content_search_spec`: configuration for generic content search.

| Property | Type | Description |
|----------|------|-------------|
| `contentSearchSpec` | `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec` | Specifies the expected behavior of content search. Only valid for content-search enabled data store. |

### `GoogleCloudDiscoveryengineV1ServingConfigMediaConfig`

Specifies the configurations needed for Media Discovery. Currently we support: * `demote_content_watched`: Threshold for watched content demotion. Customers can specify if using watched content demotion or use viewed detail page. Using the content watched demotion, customers need to specify the watched minutes or percentage exceeds the threshold, the content will be demoted in the recommendation result. * `promote_fresh_content`: cutoff days for fresh content promotion. Customers can specify if using content freshness promotion. If the content was published within the cutoff days, the content will be promoted in the recommendation result. Can only be set if SolutionType is SOLUTION_TYPE_RECOMMENDATION.

| Property | Type | Description |
|----------|------|-------------|
| `contentFreshnessCutoffDays` | `integer` | Specifies the content freshness used for recommendation result. Contents will be demoted if conte... |
| `contentWatchedPercentageThreshold` | `number` | Specifies the content watched percentage threshold for demotion. Threshold value must be between ... |
| `contentWatchedSecondsThreshold` | `number` | Specifies the content watched minutes threshold for demotion. |
| `demoteContentWatchedPastDays` | `integer` | Optional. Specifies the number of days to look back for demoting watched content. If set to zero ... |
| `demotionEventType` | `string` | Specifies the event type used for demoting recommendation result. Currently supported values: * `... |

### `GoogleCloudDiscoveryengineV1Session`

External session proto definition.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional. The display name of the session. This field is used to identify the session in the UI. ... |
| `endTime` | `string` | Output only. The time the session finished. |
| `isPinned` | `boolean` | Optional. Whether the session is pinned, pinned session will be displayed on the top of the sessi... |
| `labels` | `array<string>` | Optional. The labels for the session. Can be set as filter in ListSessionsRequest. |
| `name` | `string` | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/eng... |
| `startTime` | `string` | Output only. The time the session started. |
| `state` | `string` | The state of the session. |
| `turns` | `array<GoogleCloudDiscoveryengineV1SessionTurn>` | Turns. |
| `userPseudoId` | `string` | A unique identifier for tracking users. |

### `GoogleCloudDiscoveryengineV1SessionTurn`

Represents a turn, including a query from the user and a answer from service.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` | Optional. The resource name of the answer to the user query. Only set if the answer generation (/... |
| `detailedAnswer` | `GoogleCloudDiscoveryengineV1Answer` | Output only. In ConversationalSearchService.GetSession API, if GetSessionRequest.include_answer_d... |
| `detailedAssistAnswer` | `GoogleCloudDiscoveryengineV1AssistAnswer` | Output only. In ConversationalSearchService.GetSession API, if GetSessionRequest.include_answer_d... |
| `query` | `GoogleCloudDiscoveryengineV1Query` | Optional. The user query. May not be set if this turn is merely regenerating an answer to a diffe... |
| `queryConfig` | `object` | Optional. Represents metadata related to the query config, for example LLM model and version used... |

### `GoogleCloudDiscoveryengineV1SetUpDataConnectorMetadata`

Metadata for DataConnectorService.SetUpDataConnector method.

### `GoogleCloudDiscoveryengineV1SetUpDataConnectorRequest`

Request for DataConnectorService.SetUpDataConnector method.

| Property | Type | Description |
|----------|------|-------------|
| `collectionDisplayName` | `string` | Required. The display name of the Collection. Should be human readable, used to display collectio... |
| `collectionId` | `string` | Required. The ID to use for the Collection, which will become the final component of the Collecti... |
| `dataConnector` | `GoogleCloudDiscoveryengineV1DataConnector` | Required. The DataConnector to initialize in the newly created Collection. |

### `GoogleCloudDiscoveryengineV1SingleRegionKey`

Metadata for single-regional CMEKs.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Required. Single-regional kms key resource name which will be used to encrypt resources `projects... |

### `GoogleCloudDiscoveryengineV1SiteSearchEngine`

SiteSearchEngine captures DataStore level site search persisting configurations. It is a singleton value per data store.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The fully qualified resource name of the site search engine. Format: `projects/*/locations/*/data... |

### `GoogleCloudDiscoveryengineV1SiteVerificationInfo`

Verification information for target sites in advanced site search.

| Property | Type | Description |
|----------|------|-------------|
| `siteVerificationState` | `string` | Site verification state indicating the ownership and validity. |
| `verifyTime` | `string` | Latest site verification time. |

### `GoogleCloudDiscoveryengineV1Sitemap`

A sitemap for the SiteSearchEngine.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The sitemap's creation time. |
| `name` | `string` | Output only. The fully qualified resource name of the sitemap. `projects/*/locations/*/collection... |
| `uri` | `string` | Public URI for the sitemap, e.g. `www.example.com/sitemap.xml`. |

### `GoogleCloudDiscoveryengineV1SpannerSource`

The Spanner source for importing data

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | Required. The database ID of the source Spanner table. |
| `enableDataBoost` | `boolean` | Whether to apply data boost on Spanner export. Enabling this option will incur additional cost. M... |
| `instanceId` | `string` | Required. The instance ID of the source Spanner table. |
| `projectId` | `string` | The project ID that contains the Spanner source. Has a length limit of 128 characters. If not spe... |
| `tableId` | `string` | Required. The table name of the Spanner database that needs to be imported. |

### `GoogleCloudDiscoveryengineV1StreamAssistRequest`

Request for the AssistantService.StreamAssist method.

| Property | Type | Description |
|----------|------|-------------|
| `generationSpec` | `GoogleCloudDiscoveryengineV1StreamAssistRequestGenerationSpec` | Optional. Specification of the generation configuration for the request. |
| `query` | `GoogleCloudDiscoveryengineV1Query` | Optional. Current user query. Empty query is only supported if `file_ids` are provided. In this c... |
| `session` | `string` | Optional. The session to use for the request. If specified, the assistant has access to the sessi... |
| `toolsSpec` | `GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec` | Optional. Specification of tools that are used to serve the request. |
| `userMetadata` | `GoogleCloudDiscoveryengineV1AssistUserMetadata` | Optional. Information about the user initiating the query. |

### `GoogleCloudDiscoveryengineV1StreamAssistRequestGenerationSpec`

Assistant generation specification for the request. This allows to override the default generation configuration at the engine level.

| Property | Type | Description |
|----------|------|-------------|
| `modelId` | `string` | Optional. The Vertex AI model_id used for the generative model. If not set, the default Assistant... |

### `GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpec`

Specification of tools that are used to serve the request.

| Property | Type | Description |
|----------|------|-------------|
| `imageGenerationSpec` | `GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecImageGenerationSpec` | Optional. Specification of the image generation tool. |
| `vertexAiSearchSpec` | `GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec` | Optional. Specification of the Vertex AI Search tool. |
| `videoGenerationSpec` | `GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVideoGenerationSpec` | Optional. Specification of the video generation tool. |
| `webGroundingSpec` | `GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecWebGroundingSpec` | Optional. Specification of the web grounding tool. If field is present, enables grounding with we... |

### `GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecImageGenerationSpec`

Specification of the image generation tool.

### `GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVertexAiSearchSpec`

Specification of the Vertex AI Search tool.

| Property | Type | Description |
|----------|------|-------------|
| `dataStoreSpecs` | `array<GoogleCloudDiscoveryengineV1SearchRequestDataStoreSpec>` | Optional. Specs defining DataStores to filter on in a search call and configurations for those da... |
| `filter` | `string` | Optional. The filter syntax consists of an expression language for constructing a predicate from ... |

### `GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecVideoGenerationSpec`

Specification of the video generation tool.

### `GoogleCloudDiscoveryengineV1StreamAssistRequestToolsSpecWebGroundingSpec`

Specification of the web grounding tool.

### `GoogleCloudDiscoveryengineV1StreamAssistResponse`

Response for the AssistantService.StreamAssist method.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `GoogleCloudDiscoveryengineV1AssistAnswer` | Assist answer resource object containing parts of the assistant's final answer for the user's que... |
| `assistToken` | `string` | A global unique ID that identifies the current pair of request and stream of responses. Used for ... |
| `invocationTools` | `array<string>` | The tool names of the tools that were invoked. |
| `sessionInfo` | `GoogleCloudDiscoveryengineV1StreamAssistResponseSessionInfo` | Session information. Only included in the final StreamAssistResponse of the response stream. |

### `GoogleCloudDiscoveryengineV1StreamAssistResponseSessionInfo`

Information about the session.

| Property | Type | Description |
|----------|------|-------------|
| `session` | `string` | Name of the newly generated or continued session. Format: `projects/{project}/locations/{location... |

### `GoogleCloudDiscoveryengineV1SuggestionDenyListEntry`

Suggestion deny list entry identifying the phrase to block from suggestions and the applied operation for the phrase.

| Property | Type | Description |
|----------|------|-------------|
| `blockPhrase` | `string` | Required. Phrase to block from suggestions served. Can be maximum 125 characters. |
| `matchOperator` | `string` | Required. The match operator to apply for this phrase. Whether to block the exact phrase, or bloc... |

### `GoogleCloudDiscoveryengineV1TargetSite`

A target site for the SiteSearchEngine.

| Property | Type | Description |
|----------|------|-------------|
| `exactMatch` | `boolean` | Immutable. If set to false, a uri_pattern is generated to include all pages whose address contain... |
| `failureReason` | `GoogleCloudDiscoveryengineV1TargetSiteFailureReason` | Output only. Failure reason. |
| `generatedUriPattern` | `string` | Output only. This is system-generated based on the provided_uri_pattern. |
| `indexingStatus` | `string` | Output only. Indexing status. |
| `name` | `string` | Output only. The fully qualified resource name of the target site. `projects/{project}/locations/... |
| `providedUriPattern` | `string` | Required. Input only. The user provided URI pattern from which the `generated_uri_pattern` is gen... |
| `rootDomainUri` | `string` | Output only. Root domain of the provided_uri_pattern. |
| `siteVerificationInfo` | `GoogleCloudDiscoveryengineV1SiteVerificationInfo` | Output only. Site ownership and validity verification status. |
| `type` | `string` | The type of the target site, e.g., whether the site is to be included or excluded. |
| `updateTime` | `string` | Output only. The target site's last updated time. |

### `GoogleCloudDiscoveryengineV1TargetSiteFailureReason`

Site search indexing failure reasons.

| Property | Type | Description |
|----------|------|-------------|
| `quotaFailure` | `GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure` | Failed due to insufficient quota. |

### `GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure`

Failed due to insufficient quota.

| Property | Type | Description |
|----------|------|-------------|
| `totalRequiredQuota` | `string` | This number is an estimation on how much total quota this project needs to successfully complete ... |

### `GoogleCloudDiscoveryengineV1Tenant`

Tenant information for a connector source. This includes some of the same information stored in the Credential message, but is limited to only what is needed to provide a list of accessible tenants to the user.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional display name for the tenant, e.g. "My Slack Team". |
| `id` | `string` | The tenant's instance ID. Examples: Jira ("8594f221-9797-5f78-1fa4-485e198d7cd0"), Slack ("T12345... |
| `uri` | `string` | The URI of the tenant, if applicable. For example, the URI of a Jira instance is https://my-jira-... |

### `GoogleCloudDiscoveryengineV1TextInput`

Defines text input.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `GoogleCloudDiscoveryengineV1ConversationContext` | Conversation context of the input. |
| `input` | `string` | Text input. |

### `GoogleCloudDiscoveryengineV1TrainCustomModelMetadata`

Metadata related to the progress of the TrainCustomModel operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1TrainCustomModelRequest`

Request message for SearchTuningService.TrainCustomModel method.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1ImportErrorConfig` | The desired location of errors incurred during the data ingestion and training. |
| `gcsTrainingInput` | `GoogleCloudDiscoveryengineV1TrainCustomModelRequestGcsTrainingInput` | Cloud Storage training input. |
| `modelId` | `string` | If not provided, a UUID will be generated. |
| `modelType` | `string` | Model to be trained. Supported values are: * **search-tuning**: Fine tuning the search system bas... |

### `GoogleCloudDiscoveryengineV1TrainCustomModelRequestGcsTrainingInput`

Cloud Storage training data input.

| Property | Type | Description |
|----------|------|-------------|
| `corpusDataPath` | `string` | The Cloud Storage corpus data which could be associated in train data. The data path format is `g... |
| `queryDataPath` | `string` | The gcs query data which could be associated in train data. The data path format is `gs:///`. A n... |
| `testDataPath` | `string` | Cloud Storage test data. Same format as train_data_path. If not provided, a random 80/20 train/te... |
| `trainDataPath` | `string` | Cloud Storage training data path whose format should be `gs:///`. The file should be in tsv forma... |

### `GoogleCloudDiscoveryengineV1TrainCustomModelResponse`

Response of the TrainCustomModelRequest. This message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1ImportErrorConfig` | Echoes the destination for the complete errors in the request if set. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the data. |
| `metrics` | `object` | The metrics of the trained model. |
| `modelName` | `string` | Fully qualified name of the CustomTuningModel. |
| `modelStatus` | `string` | The trained model status. Possible values are: * **bad-data**: The training data quality is bad. ... |

### `GoogleCloudDiscoveryengineV1TransactionInfo`

A transaction represents the entire purchase transaction.

| Property | Type | Description |
|----------|------|-------------|
| `cost` | `number` | All the costs associated with the products. These can be manufacturing costs, shipping expenses n... |
| `currency` | `string` | Required. Currency code. Use three-character ISO-4217 code. |
| `discountValue` | `number` | The total discount(s) value applied to this transaction. This figure should be excluded from Tran... |
| `tax` | `number` | All the taxes associated with the transaction. |
| `transactionId` | `string` | The transaction ID with a length limit of 128 characters. |
| `value` | `number` | Required. Total non-zero value associated with the transaction. This value may include shipping, ... |

### `GoogleCloudDiscoveryengineV1UpdateCmekConfigMetadata`

Metadata related to the progress of the CmekConfigService.UpdateCmekConfig operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1UpdateSchemaMetadata`

Metadata for UpdateSchema LRO.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1UpdateTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.UpdateTargetSite operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1UserEvent`

UserEvent captures all metadata information Discovery Engine API needs to know about how end users interact with your website.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Extra user event features to include in the recommendation model. These attributes must NOT conta... |
| `attributionToken` | `string` | Token to attribute an API response to user action(s) to trigger the event. Highly recommended for... |
| `completionInfo` | `GoogleCloudDiscoveryengineV1CompletionInfo` | CompletionService.CompleteQuery details related to the event. This field should be set for `searc... |
| `conversionType` | `string` | Optional. Conversion type. Required if UserEvent.event_type is `conversion`. This is a customer-d... |
| `dataStore` | `string` | The DataStore resource full name, of the form `projects/{project}/locations/{location}/collection... |
| `directUserRequest` | `boolean` | Should set to true if the request is made directly from the end user, in which case the UserEvent... |
| `documents` | `array<GoogleCloudDiscoveryengineV1DocumentInfo>` | List of Documents associated with this user event. This field is optional except for the followin... |
| `engine` | `string` | The Engine resource name, in the form of `projects/{project}/locations/{location}/collections/{co... |
| `eventTime` | `string` | Only required for UserEventService.ImportUserEvents method. Timestamp of when the user event happ... |
| `eventType` | `string` | Required. User event type. Allowed values are: Generic values: * `search`: Search for Documents. ... |
| `filter` | `string` | Optional. The filter syntax consists of an expression language for constructing a predicate from ... |
| `mediaInfo` | `GoogleCloudDiscoveryengineV1MediaInfo` | Media-specific info. |
| `pageInfo` | `GoogleCloudDiscoveryengineV1PageInfo` | Page metadata such as categories and other critical information for certain event types such as `... |
| `panel` | `GoogleCloudDiscoveryengineV1PanelInfo` | Panel metadata associated with this user event. |
| `panels` | `array<GoogleCloudDiscoveryengineV1PanelInfo>` | Optional. List of panels associated with this event. Used for page-level impression data. |
| `promotionIds` | `array<string>` | The promotion IDs if this is an event associated with promotions. Currently, this field is restri... |
| `searchInfo` | `GoogleCloudDiscoveryengineV1SearchInfo` | SearchService.Search details related to the event. This field should be set for `search` event. |
| `sessionId` | `string` | A unique identifier for tracking a visitor session with a length limit of 128 bytes. A session is... |
| `tagIds` | `array<string>` | A list of identifiers for the independent experiment groups this user event belongs to. This is u... |
| `transactionInfo` | `GoogleCloudDiscoveryengineV1TransactionInfo` | The transaction metadata (if any) associated with this user event. |
| `userInfo` | `GoogleCloudDiscoveryengineV1UserInfo` | Information about the end user. |
| `userPseudoId` | `string` | Required. A unique identifier for tracking visitors. For example, this could be implemented with ... |

### `GoogleCloudDiscoveryengineV1UserInfo`

Information of an end user.

| Property | Type | Description |
|----------|------|-------------|
| `timeZone` | `string` | Optional. IANA time zone, e.g. Europe/Budapest. |
| `userAgent` | `string` | User agent as included in the HTTP header. The field must be a UTF-8 encoded string with a length... |
| `userId` | `string` | Highly recommended for logged-in users. Unique identifier for logged-in user, such as a user name... |

### `GoogleCloudDiscoveryengineV1UserLicense`

User License information assigned by the admin.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. User created timestamp. |
| `lastLoginTime` | `string` | Output only. User last logged in time. If the user has not logged in yet, this field will be empty. |
| `licenseAssignmentState` | `string` | Output only. License assignment state of the user. If the user is assigned with a license config,... |
| `licenseConfig` | `string` | Optional. The full resource name of the Subscription(LicenseConfig) assigned to the user. |
| `updateTime` | `string` | Output only. User update timestamp. |
| `userPrincipal` | `string` | Required. Immutable. The user principal of the User, could be email address or other prinical ide... |
| `userProfile` | `string` | Optional. The user profile. We user user full name(First name + Last name) as user profile. |

### `GoogleCloudDiscoveryengineV1UserStore`

Configures metadata that is used for End User entities.

| Property | Type | Description |
|----------|------|-------------|
| `defaultLicenseConfig` | `string` | Optional. The default subscription LicenseConfig for the UserStore, if UserStore.enable_license_a... |
| `displayName` | `string` | The display name of the User Store. |
| `enableExpiredLicenseAutoUpdate` | `boolean` | Optional. Whether to enable license auto update for users in this User Store. If true, users with... |
| `enableLicenseAutoRegister` | `boolean` | Optional. Whether to enable license auto register for users in this User Store. If true, new user... |
| `name` | `string` | Immutable. The full resource name of the User Store, in the format of `projects/{project}/locatio... |

### `GoogleCloudDiscoveryengineV1WidgetConfig`

WidgetConfig captures configs at the Widget level.

| Property | Type | Description |
|----------|------|-------------|
| `accessSettings` | `GoogleCloudDiscoveryengineV1WidgetConfigAccessSettings` | Will be used for all widget access settings seen in cloud console integration page. Replaces top ... |
| `allowPublicAccess` | `boolean` | Whether allow no-auth integration with widget. If set true, public access to search or other solu... |
| `allowlistedDomains` | `array<string>` | Allowlisted domains that can load this widget. |
| `assistantSettings` | `GoogleCloudDiscoveryengineV1WidgetConfigAssistantSettings` | Optional. Output only. Describes the assistant settings of the widget. |
| `collectionComponents` | `array<GoogleCloudDiscoveryengineV1WidgetConfigCollectionComponent>` | Output only. Collection components that lists all collections and child data stores associated wi... |
| `configId` | `string` | Output only. Unique obfuscated identifier of a WidgetConfig. |
| `contentSearchSpec` | `GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec` | The content search spec that configs the desired behavior of content search. |
| `createTime` | `string` | Output only. Timestamp the WidgetConfig was created. |
| `customerProvidedConfig` | `GoogleCloudDiscoveryengineV1WidgetConfigCustomerProvidedConfig` | Optional. Output only. Describes the customer related configurations, currently only used for gov... |
| `dataStoreType` | `string` | Output only. The type of the parent data store. |
| `dataStoreUiConfigs` | `array<GoogleCloudDiscoveryengineV1WidgetConfigDataStoreUiConfig>` | Configurable UI configurations per data store. |
| `defaultSearchRequestOrderBy` | `string` | The default ordering for search results if specified. Used to set SearchRequest#order_by on appli... |
| `displayName` | `string` | Required. The human readable widget config display name. Used in Discovery UI. This field must be... |
| `enableAutocomplete` | `boolean` | Whether or not to enable autocomplete. |
| `enableConversationalSearch` | `boolean` | Whether to allow conversational search (LLM, multi-turn) or not (non-LLM, single-turn). |
| `enablePrivateKnowledgeGraph` | `boolean` | Optional. Output only. Whether to enable private knowledge graph. |
| `enableQualityFeedback` | `boolean` | Turn on or off collecting the search result quality feedback from end users. |
| `enableResultScore` | `boolean` | Whether to show the result score. |
| `enableSafeSearch` | `boolean` | Whether to enable safe search. |
| `enableSearchAsYouType` | `boolean` | Whether to enable search-as-you-type behavior for the search widget |
| `enableSnippetResultSummary` | `boolean` | Turn on or off summary for each snippets result. |
| `enableSummarization` | `boolean` | Turn on or off summarization for the search response. |
| `enableWebApp` | `boolean` | Whether to enable standalone web app. |
| `facetField` | `array<GoogleCloudDiscoveryengineV1WidgetConfigFacetField>` | The configuration and appearance of facets in the end user view. |
| `fieldsUiComponentsMap` | `object` | The key is the UI component. Mock. Currently supported `title`, `thumbnail`, `url`, `custom1`, `c... |
| `geminiBundle` | `boolean` | Output only. Whether the subscription is gemini bundle or not. |
| `homepageSetting` | `GoogleCloudDiscoveryengineV1WidgetConfigHomepageSetting` | Optional. Describes the homepage settings of the widget. |
| `industryVertical` | `string` | Output only. The industry vertical that the WidgetConfig registers. The WidgetConfig industry ver... |
| `llmEnabled` | `boolean` | Output only. Whether LLM is enabled in the corresponding data store. |
| `minimumDataTermAccepted` | `boolean` | Output only. Whether the customer accepted data use terms. |
| `name` | `string` | Immutable. The full resource name of the widget config. Format: `projects/{project}/locations/{lo... |
| `nodes` | `array<GoogleCloudDiscoveryengineV1WidgetConfigNode>` | Output only. The nodes associated with the Widget Config. |
| `resultDisplayType` | `string` | The type of snippet to display in UCS widget. - RESULT_DISPLAY_TYPE_UNSPECIFIED for existing user... |
| `solutionType` | `string` | Required. Immutable. Specifies the solution type that this WidgetConfig can be used for. |
| `uiBranding` | `GoogleCloudDiscoveryengineV1WidgetConfigUiBrandingSettings` | Describes search widget UI branding settings, such as the widget title, logo, favicons, and colors. |
| `uiSettings` | `GoogleCloudDiscoveryengineV1WidgetConfigUiSettings` | Describes general widget search settings as seen in cloud console widget configuration page. Repl... |
| `updateTime` | `string` | Output only. Timestamp the WidgetConfig was updated. |

### `GoogleCloudDiscoveryengineV1WidgetConfigAccessSettings`

Describes widget access settings.

| Property | Type | Description |
|----------|------|-------------|
| `allowPublicAccess` | `boolean` | Whether public unauthenticated access is allowed. |
| `allowlistedDomains` | `array<string>` | List of domains that are allowed to integrate the search widget. |
| `enableWebApp` | `boolean` | Whether web app access is enabled. |
| `languageCode` | `string` | Optional. Language code for user interface. Use language tags defined by [BCP47](https://www.rfc-... |
| `workforceIdentityPoolProvider` | `string` | Optional. The workforce identity pool provider used to access the widget. |

### `GoogleCloudDiscoveryengineV1WidgetConfigAssistantSettings`

Describes the assistant settings of the widget.

| Property | Type | Description |
|----------|------|-------------|
| `defaultWebGroundingToggleOff` | `boolean` | Output only. This field controls the default web grounding toggle for end users if `web_grounding... |
| `disableLocationContext` | `boolean` | Optional. Output only. Whether to disable user location context. |
| `googleSearchGroundingEnabled` | `boolean` | Whether or not the Google search grounding toggle is shown. Deprecated. Use web_grounding_type in... |
| `webGroundingType` | `string` | Optional. The type of web grounding to use. |

### `GoogleCloudDiscoveryengineV1WidgetConfigCollectionComponent`

Read-only collection component that contains data store collections fields that may be used for filtering

| Property | Type | Description |
|----------|------|-------------|
| `connectorIconLink` | `string` | Output only. The icon link of the connector source. |
| `dataSource` | `string` | The name of the data source, retrieved from `Collection.data_connector.data_source`. |
| `dataSourceDisplayName` | `string` | Output only. The display name of the data source. |
| `dataStoreComponents` | `array<GoogleCloudDiscoveryengineV1WidgetConfigDataStoreComponent>` | For the data store collection, list of the children data stores. |
| `displayName` | `string` | The display name of the collection. |
| `id` | `string` | Output only. the identifier of the collection, used for widget service. For now it refers to coll... |
| `name` | `string` | The name of the collection. It should be collection resource name. Format: `projects/{project}/lo... |

### `GoogleCloudDiscoveryengineV1WidgetConfigCustomerProvidedConfig`

Customer provided configurations.

| Property | Type | Description |
|----------|------|-------------|
| `customerType` | `string` | Customer type. |

### `GoogleCloudDiscoveryengineV1WidgetConfigDataStoreComponent`

Read-only data store component that contains data stores fields that may be used for filtering, it's the child of `CollectionComponent`.

| Property | Type | Description |
|----------|------|-------------|
| `dataStoreConfigType` | `string` | Output only. The type of the data store config. |
| `displayName` | `string` | The display name of the data store. |
| `entityName` | `string` | The name of the entity, retrieved from `Collection.data_connector.entities.entityName`. |
| `id` | `string` | Output only. the identifier of the data store, used for widget service. For now it refers to data... |
| `name` | `string` | The name of the data store. It should be data store resource name Format: `projects/{project}/loc... |

### `GoogleCloudDiscoveryengineV1WidgetConfigDataStoreUiConfig`

UI component configuration for data store.

| Property | Type | Description |
|----------|------|-------------|
| `facetField` | `array<GoogleCloudDiscoveryengineV1WidgetConfigFacetField>` | Facet fields that store the mapping of fields to end user widget appearance. |
| `fieldsUiComponentsMap` | `object` | The key is the UI component. Mock. Currently supported `title`, `thumbnail`, `url`, `custom1`, `c... |
| `id` | `string` | Output only. the identifier of the data store, used for widget service. For now it refers to data... |
| `name` | `string` | The name of the data store. It should be data store resource name Format: `projects/{project}/loc... |

### `GoogleCloudDiscoveryengineV1WidgetConfigFacetField`

Facet fields that store the mapping of fields to end user widget appearance.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional. The field name that end users will see. |
| `field` | `string` | Required. Registered field name. The format is `field.abc`. |

### `GoogleCloudDiscoveryengineV1WidgetConfigHomepageSetting`

Describes the homepage setting of the widget. It includes all homepage related settings and configurations, such as shortcuts.

| Property | Type | Description |
|----------|------|-------------|
| `shortcuts` | `array<GoogleCloudDiscoveryengineV1WidgetConfigHomepageSettingShortcut>` | Optional. The shortcuts to display on the homepage. |

### `GoogleCloudDiscoveryengineV1WidgetConfigHomepageSettingShortcut`

Describes an entity of shortcut (aka pinned content) on the homepage. The home page will render these shortcuts in the same order as what the API returns. If a customer wants to reorder or remove a shortcut, the UI should always provide the new full list of shortcuts.

| Property | Type | Description |
|----------|------|-------------|
| `destinationUri` | `string` | Optional. Destination URL of shortcut. |
| `icon` | `GoogleCloudDiscoveryengineV1WidgetConfigImage` | Optional. Icon URL of shortcut. |
| `title` | `string` | Optional. Title of the shortcut. |

### `GoogleCloudDiscoveryengineV1WidgetConfigImage`

Options to store an image.

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | Image URL. |

### `GoogleCloudDiscoveryengineV1WidgetConfigNode`

Represents a single reusable computational or logical unit.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. A detailed description of what the node does. |
| `displayName` | `string` | Output only. A human readable name for the node. |
| `iconUrl` | `string` | Output only. An identifier or URL pointing to an icon representing this node type. |
| `outputSchema` | `object` | Output only. The output schema of the tool. This schema is expected to conform to the OpenAPI Sch... |
| `parameterSchema` | `object` | Output only. The parameter schema of the tool. This schema is expected to conform to the OpenAPI ... |
| `type` | `string` | Output only. The type of the node. |

### `GoogleCloudDiscoveryengineV1WidgetConfigUIComponentField`

Facet field that maps to a UI Component.

| Property | Type | Description |
|----------|------|-------------|
| `deviceVisibility` | `array<string>` | The field visibility on different types of devices. |
| `displayTemplate` | `string` | The template to customize how the field is displayed. An example value would be a string that loo... |
| `field` | `string` | Required. Registered field name. The format is `field.abc`. |

### `GoogleCloudDiscoveryengineV1WidgetConfigUiBrandingSettings`

Describes widget UI branding settings.

| Property | Type | Description |
|----------|------|-------------|
| `logo` | `GoogleCloudDiscoveryengineV1WidgetConfigImage` | Logo image. |

### `GoogleCloudDiscoveryengineV1WidgetConfigUiSettings`

Describes general widget (or web app) UI settings as seen in the cloud console UI configuration page.

| Property | Type | Description |
|----------|------|-------------|
| `dataStoreUiConfigs` | `array<GoogleCloudDiscoveryengineV1WidgetConfigDataStoreUiConfig>` | Per data store configuration. |
| `defaultSearchRequestOrderBy` | `string` | The default ordering for search results if specified. Used to set SearchRequest#order_by on appli... |
| `disableUserEventsCollection` | `boolean` | If set to true, the widget will not collect user events. |
| `enableAutocomplete` | `boolean` | Whether or not to enable autocomplete. |
| `enableCreateAgentButton` | `boolean` | Optional. If set to true, the widget will enable the create agent button. |
| `enablePeopleSearch` | `boolean` | Optional. If set to true, the widget will enable people search. |
| `enableQualityFeedback` | `boolean` | Turn on or off collecting the search result quality feedback from end users. |
| `enableSafeSearch` | `boolean` | Whether to enable safe search. |
| `enableSearchAsYouType` | `boolean` | Whether to enable search-as-you-type behavior for the search widget. |
| `enableVisualContentSummary` | `boolean` | If set to true, the widget will enable visual content summary on applicable search requests. Only... |
| `features` | `object` | Output only. Feature config for the engine to opt in or opt out of features. Supported keys: * `a... |
| `generativeAnswerConfig` | `GoogleCloudDiscoveryengineV1WidgetConfigUiSettingsGenerativeAnswerConfig` | Describes generative answer configuration. |
| `interactionType` | `string` | Describes widget (or web app) interaction type |
| `modelConfigs` | `object` | Output only. Maps a model name to its specific configuration for this engine. This allows admin u... |
| `resultDescriptionType` | `string` | Controls whether result extract is display and how (snippet or extractive answer). Default to no ... |

### `GoogleCloudDiscoveryengineV1WidgetConfigUiSettingsGenerativeAnswerConfig`

Describes configuration for generative answer.

| Property | Type | Description |
|----------|------|-------------|
| `disableRelatedQuestions` | `boolean` | Whether generated answer contains suggested related questions. |
| `ignoreAdversarialQuery` | `boolean` | Optional. Specifies whether to filter out queries that are adversarial. |
| `ignoreLowRelevantContent` | `boolean` | Optional. Specifies whether to filter out queries that are not relevant to the content. |
| `ignoreNonAnswerSeekingQuery` | `boolean` | Optional. Specifies whether to filter out queries that are not answer-seeking. The default value ... |
| `imageSource` | `string` | Optional. Source of image returned in the answer. |
| `languageCode` | `string` | Language code for Summary. Use language tags defined by [BCP47](https://www.rfc-editor.org/rfc/bc... |
| `maxRephraseSteps` | `integer` | Max rephrase steps. The max number is 5 steps. If not set or set to < 1, it will be set to 1 by d... |
| `modelPromptPreamble` | `string` | Text at the beginning of the prompt that instructs the model that generates the answer. |
| `modelVersion` | `string` | The model version used to generate the answer. |
| `resultCount` | `integer` | The number of top results to generate the answer from. Up to 10. |

### `GoogleCloudDiscoveryengineV1WorkspaceConfig`

Config to store data store type configuration for workspace data

| Property | Type | Description |
|----------|------|-------------|
| `dasherCustomerId` | `string` | Obfuscated Dasher customer ID. |
| `superAdminEmailAddress` | `string` | Optional. The super admin email address for the workspace that will be used for access token gene... |
| `superAdminServiceAccount` | `string` | Optional. The super admin service account for the workspace that will be used for access token ge... |
| `type` | `string` | The Google Workspace data source. |

### `GoogleCloudDiscoveryengineV1alphaAclConfig`

Access Control Configuration.

| Property | Type | Description |
|----------|------|-------------|
| `idpConfig` | `GoogleCloudDiscoveryengineV1alphaIdpConfig` | Identity provider config. |
| `name` | `string` | Immutable. The full resource name of the acl configuration. Format: `projects/{project}/locations... |

### `GoogleCloudDiscoveryengineV1alphaActionConfig`

Informations to support actions on the connector.

| Property | Type | Description |
|----------|------|-------------|
| `actionParams` | `object` | Optional. Action parameters in structured json format. |
| `isActionConfigured` | `boolean` | Output only. The connector contains the necessary parameters and is configured to support actions. |
| `jsonActionParams` | `string` | Optional. Action parameters in json string format. |
| `serviceName` | `string` | Optional. The Service Directory resource name (projects/*/locations/*/namespaces/*/services/*) re... |
| `useStaticSecrets` | `boolean` | Optional. Whether to use static secrets for the connector. If true, the secrets provided in the a... |

### `GoogleCloudDiscoveryengineV1alphaAddPatientFilterRequest`

Request for DataStoreService.AddPatientFilter method.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/colle... |
| `filterGroups` | `array<string>` | Required. Names of the Group resources to use as a basis for the patient filter, in format `proje... |

### `GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig`

Configuration data for advance site search.

| Property | Type | Description |
|----------|------|-------------|
| `disableAutomaticRefresh` | `boolean` | If set true, automatic refresh is disabled for the DataStore. |
| `disableInitialIndex` | `boolean` | If set true, initial indexing is disabled for the DataStore. |

### `GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig`

The connector level alert config.

| Property | Type | Description |
|----------|------|-------------|
| `alertEnrollments` | `array<GoogleCloudDiscoveryengineV1alphaAlertPolicyConfigAlertEnrollment>` | Optional. The enrollment states of each alert. |
| `alertPolicyName` | `string` | Immutable. The fully qualified resource name of the AlertPolicy. |

### `GoogleCloudDiscoveryengineV1alphaAlertPolicyConfigAlertEnrollment`

The alert enrollment status.

| Property | Type | Description |
|----------|------|-------------|
| `alertId` | `string` | Immutable. The id of an alert. |
| `enrollState` | `string` | Required. The enrollment status of a customer. |

### `GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfig`

The resource level alert config. Used in: * UserLicense * EngineUserData The AlertPolicyConfig in data connector is of same usage. No easy way to migrate.

| Property | Type | Description |
|----------|------|-------------|
| `alertEnrollments` | `array<GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfigAlertEnrollment>` | Optional. The enrollment state of each alert. |
| `alertPolicy` | `string` | Immutable. The fully qualified resource name of the AlertPolicy. |
| `contactDetails` | `array<GoogleCloudDiscoveryengineV1alphaContactDetails>` | Optional. The contact details for each alert policy. |
| `languageCode` | `string` | Optional. The language code used for notifications |
| `regionCode` | `string` | Optional. The region code used of the user that subscribed to the alert policy. |

### `GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfigAlertEnrollment`

The alert enrollment status.

| Property | Type | Description |
|----------|------|-------------|
| `alertId` | `string` | Immutable. The id of an alert. |
| `enrollState` | `string` | Required. The enrollment status of a customer. |
| `notificationParams` | `object` | Optional. Parameters used to instantiate a notification. Used for notifications that are triggere... |

### `GoogleCloudDiscoveryengineV1alphaAnswer`

Defines an answer.

| Property | Type | Description |
|----------|------|-------------|
| `answerSkippedReasons` | `array<string>` | Additional answer-skipped reasons. This provides the reason for ignored cases. If nothing is skip... |
| `answerText` | `string` | The textual answer. |
| `blobAttachments` | `array<GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachment>` | List of blob attachments in the answer. |
| `citations` | `array<GoogleCloudDiscoveryengineV1alphaAnswerCitation>` | Citations. |
| `completeTime` | `string` | Output only. Answer completed timestamp. |
| `createTime` | `string` | Output only. Answer creation timestamp. |
| `groundingScore` | `number` | A score in the range of [0, 1] describing how grounded the answer is by the reference chunks. |
| `groundingSupports` | `array<GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport>` | Optional. Grounding supports. |
| `name` | `string` | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/eng... |
| `queryUnderstandingInfo` | `GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo` | Query understanding information. |
| `references` | `array<GoogleCloudDiscoveryengineV1alphaAnswerReference>` | References. |
| `relatedQuestions` | `array<string>` | Suggested related questions. |
| `safetyRatings` | `array<GoogleCloudDiscoveryengineV1alphaSafetyRating>` | Optional. Safety ratings. |
| `state` | `string` | The state of the answer generation. |
| `steps` | `array<GoogleCloudDiscoveryengineV1alphaAnswerStep>` | Answer generation steps. |

### `GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachment`

Stores binarydata attached to text answer, e.g. image, video, audio, etc.

| Property | Type | Description |
|----------|------|-------------|
| `attributionType` | `string` | Output only. The attribution type of the blob. |
| `data` | `GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachmentBlob` | Output only. The mime type and data of the blob. |

### `GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachmentBlob`

The media type and data of the blob.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Output only. Raw bytes. |
| `mimeType` | `string` | Output only. The media type (MIME type) of the generated or retrieved data. |

### `GoogleCloudDiscoveryengineV1alphaAnswerCitation`

Citation info for a segment.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `string` | End of the attributed segment, exclusive. Measured in bytes (UTF-8 unicode). If there are multi-b... |
| `sources` | `array<GoogleCloudDiscoveryengineV1alphaAnswerCitationSource>` | Citation sources for the attributed segment. |
| `startIndex` | `string` | Index indicates the start of the segment, measured in bytes (UTF-8 unicode). If there are multi-b... |

### `GoogleCloudDiscoveryengineV1alphaAnswerCitationSource`

Citation source.

| Property | Type | Description |
|----------|------|-------------|
| `referenceId` | `string` | ID of the citation source. |

### `GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport`

Grounding support for a claim in `answer_text`.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `string` | Required. End of the claim, exclusive. |
| `groundingCheckRequired` | `boolean` | Indicates that this claim required grounding check. When the system decided this claim didn't req... |
| `groundingScore` | `number` | A score in the range of [0, 1] describing how grounded is a specific claim by the references. Hig... |
| `sources` | `array<GoogleCloudDiscoveryengineV1alphaAnswerCitationSource>` | Optional. Citation sources for the claim. |
| `startIndex` | `string` | Required. Index indicates the start of the claim, measured in bytes (UTF-8 unicode). |

### `GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo`

Query understanding information.

| Property | Type | Description |
|----------|------|-------------|
| `queryClassificationInfo` | `array<GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo>` | Query classification information. |

### `GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo`

Query classification information.

| Property | Type | Description |
|----------|------|-------------|
| `positive` | `boolean` | Classification output. |
| `type` | `string` | Query classification type. |

### `GoogleCloudDiscoveryengineV1alphaAnswerReference`

Reference.

| Property | Type | Description |
|----------|------|-------------|
| `chunkInfo` | `GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo` | Chunk information. |
| `structuredDocumentInfo` | `GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo` | Structured document information. |
| `unstructuredDocumentInfo` | `GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo` | Unstructured document information. |

### `GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo`

Chunk information.

| Property | Type | Description |
|----------|------|-------------|
| `blobAttachmentIndexes` | `array<string>` | Output only. Stores indexes of blobattachments linked to this chunk. |
| `chunk` | `string` | Chunk resource name. |
| `content` | `string` | Chunk textual content. |
| `documentMetadata` | `GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata` | Document metadata. |
| `relevanceScore` | `number` | The relevance of the chunk for a given query. Values range from 0.0 (completely irrelevant) to 1.... |

### `GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata`

Document metadata.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | Document resource name. |
| `pageIdentifier` | `string` | Page identifier. |
| `structData` | `object` | The structured JSON metadata for the document. It is populated from the struct data from the Chun... |
| `title` | `string` | Title. |
| `uri` | `string` | URI for the document. |

### `GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo`

Structured search information.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | Document resource name. |
| `structData` | `object` | Structured search data. |
| `title` | `string` | Output only. The title of the document. |
| `uri` | `string` | Output only. The URI of the document. |

### `GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo`

Unstructured document information.

| Property | Type | Description |
|----------|------|-------------|
| `chunkContents` | `array<GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent>` | List of cited chunk contents derived from document content. |
| `document` | `string` | Document resource name. |
| `structData` | `object` | The structured JSON metadata for the document. It is populated from the struct data from the Chun... |
| `title` | `string` | Title. |
| `uri` | `string` | URI for the document. |

### `GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent`

Chunk content.

| Property | Type | Description |
|----------|------|-------------|
| `blobAttachmentIndexes` | `array<string>` | Output only. Stores indexes of blobattachments linked to this chunk. |
| `content` | `string` | Chunk textual content. |
| `pageIdentifier` | `string` | Page identifier. |
| `relevanceScore` | `number` | The relevance of the chunk for a given query. Values range from 0.0 (completely irrelevant) to 1.... |

### `GoogleCloudDiscoveryengineV1alphaAnswerStep`

Step information.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<GoogleCloudDiscoveryengineV1alphaAnswerStepAction>` | Actions. |
| `description` | `string` | The description of the step. |
| `state` | `string` | The state of the step. |
| `thought` | `string` | The thought of the step. |

### `GoogleCloudDiscoveryengineV1alphaAnswerStepAction`

Action.

| Property | Type | Description |
|----------|------|-------------|
| `observation` | `GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation` | Observation. |
| `searchAction` | `GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction` | Search action. |

### `GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation`

Observation.

| Property | Type | Description |
|----------|------|-------------|
| `searchResults` | `array<GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult>` | Search results observed by the search action, it can be snippets info or chunk info, depending on... |

### `GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult`

| Property | Type | Description |
|----------|------|-------------|
| `chunkInfo` | `array<GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo>` | If citation_type is CHUNK_LEVEL_CITATION and chunk mode is on, populate chunk info. |
| `document` | `string` | Document resource name. |
| `snippetInfo` | `array<GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo>` | If citation_type is DOCUMENT_LEVEL_CITATION, populate document level snippets. |
| `structData` | `object` | Data representation. The structured JSON data for the document. It's populated from the struct da... |
| `title` | `string` | Title. |
| `uri` | `string` | URI for the document. |

### `GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo`

Chunk information.

| Property | Type | Description |
|----------|------|-------------|
| `chunk` | `string` | Chunk resource name. |
| `content` | `string` | Chunk textual content. |
| `relevanceScore` | `number` | The relevance of the chunk for a given query. Values range from 0.0 (completely irrelevant) to 1.... |

### `GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo`

Snippet information.

| Property | Type | Description |
|----------|------|-------------|
| `snippet` | `string` | Snippet content. |
| `snippetStatus` | `string` | Status of the snippet defined by the search team. |

### `GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction`

Search action.

| Property | Type | Description |
|----------|------|-------------|
| `query` | `string` | The query to search. |

### `GoogleCloudDiscoveryengineV1alphaAssistAnswer`

AssistAnswer resource, main part of AssistResponse.

| Property | Type | Description |
|----------|------|-------------|
| `assistSkippedReasons` | `array<string>` | Reasons for not answering the assist call. |
| `customerPolicyEnforcementResult` | `GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResult` | Optional. The field contains information about the various policy checks' results like the banned... |
| `name` | `string` | Immutable. Identifier. Resource name of the `AssistAnswer`. Format: `projects/{project}/locations... |
| `replies` | `array<GoogleCloudDiscoveryengineV1alphaAssistAnswerReply>` | Replies of the assistant. |
| `state` | `string` | State of the answer generation. |

### `GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResult`

Customer policy enforcement results. Contains the results of the various policy checks, like the banned phrases or the Model Armor checks.

| Property | Type | Description |
|----------|------|-------------|
| `policyResults` | `array<GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult>` | Customer policy enforcement results. Populated only if the assist call was skipped due to a polic... |
| `verdict` | `string` | Final verdict of the customer policy enforcement. If only one policy blocked the processing, the ... |

### `GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult`

Customer policy enforcement result for the banned phrase policy.

| Property | Type | Description |
|----------|------|-------------|
| `bannedPhrases` | `array<string>` | The banned phrases that were found in the query or the answer. |

### `GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult`

Customer policy enforcement result for the Model Armor policy.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` | The error returned by Model Armor if the policy enforcement failed for some reason. |
| `modelArmorViolation` | `string` | The Model Armor violation that was found. |

### `GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult`

Customer policy enforcement result for a single policy type.

| Property | Type | Description |
|----------|------|-------------|
| `bannedPhraseEnforcementResult` | `GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult` | The policy enforcement result for the banned phrase policy. |
| `modelArmorEnforcementResult` | `GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult` | The policy enforcement result for the Model Armor policy. |

### `GoogleCloudDiscoveryengineV1alphaAssistAnswerReply`

One part of the multi-part response of the assist call.

| Property | Type | Description |
|----------|------|-------------|
| `groundedContent` | `GoogleCloudDiscoveryengineV1alphaAssistantGroundedContent` | Possibly grounded response text or media from the assistant. |
| `replyId` | `string` | Output only. When set, uniquely identifies a reply within the `AssistAnswer` resource. During an ... |

### `GoogleCloudDiscoveryengineV1alphaAssistantContent`

Multi-modal content.

| Property | Type | Description |
|----------|------|-------------|
| `codeExecutionResult` | `GoogleCloudDiscoveryengineV1alphaAssistantContentCodeExecutionResult` | Result of executing an ExecutableCode. |
| `executableCode` | `GoogleCloudDiscoveryengineV1alphaAssistantContentExecutableCode` | Code generated by the model that is meant to be executed. |
| `file` | `GoogleCloudDiscoveryengineV1alphaAssistantContentFile` | A file, e.g., an audio summary. |
| `inlineData` | `GoogleCloudDiscoveryengineV1alphaAssistantContentBlob` | Inline binary data. |
| `role` | `string` | The producer of the content. Can be "model" or "user". |
| `text` | `string` | Inline text. |
| `thought` | `boolean` | Optional. Indicates if the part is thought from the model. |

### `GoogleCloudDiscoveryengineV1alphaAssistantContentBlob`

Inline blob.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Required. Raw bytes. |
| `mimeType` | `string` | Required. The media type (MIME type) of the generated data. |

### `GoogleCloudDiscoveryengineV1alphaAssistantContentCodeExecutionResult`

Result of executing ExecutableCode.

| Property | Type | Description |
|----------|------|-------------|
| `outcome` | `string` | Required. Outcome of the code execution. |
| `output` | `string` | Optional. Contains stdout when code execution is successful, stderr or other description otherwise. |

### `GoogleCloudDiscoveryengineV1alphaAssistantContentExecutableCode`

Code generated by the model that is meant to be executed by the model.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Required. The code content. Currently only supports Python. |

### `GoogleCloudDiscoveryengineV1alphaAssistantContentFile`

A file, e.g., an audio summary.

| Property | Type | Description |
|----------|------|-------------|
| `fileId` | `string` | Required. The file ID. |
| `mimeType` | `string` | Required. The media type (MIME type) of the file. |

### `GoogleCloudDiscoveryengineV1alphaAssistantGroundedContent`

A piece of content and possibly its grounding information. Not all content needs grounding. Phrases like "Of course, I will gladly search it for you." do not need grounding.

| Property | Type | Description |
|----------|------|-------------|
| `citationMetadata` | `GoogleCloudDiscoveryengineV1alphaCitationMetadata` | Source attribution of the generated content. See also https://cloud.google.com/vertex-ai/generati... |
| `content` | `GoogleCloudDiscoveryengineV1alphaAssistantContent` | The content. |
| `textGroundingMetadata` | `GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadata` | Metadata for grounding based on text sources. |

### `GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadata`

Grounding details for text sources.

| Property | Type | Description |
|----------|------|-------------|
| `references` | `array<GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReference>` | References for the grounded text. |
| `segments` | `array<GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataSegment>` | Grounding information for parts of the text. |

### `GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReference`

Referenced content and related document metadata.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | Referenced text content. |
| `documentMetadata` | `GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata` | Document metadata. |

### `GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata`

Document metadata.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | Document resource name. |
| `domain` | `string` | Domain name from the document URI. Note that the `uri` field may contain a URL that redirects to ... |
| `mimeType` | `string` | The mime type of the document. https://www.iana.org/assignments/media-types/media-types.xhtml. |
| `pageIdentifier` | `string` | Page identifier. |
| `title` | `string` | Title. |
| `uri` | `string` | URI for the document. It may contain a URL that redirects to the actual website. |

### `GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataSegment`

Grounding information for a segment of the text.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `string` | End of the segment, exclusive. |
| `groundingScore` | `number` | Score for the segment. |
| `referenceIndices` | `array<integer>` | References for the segment. |
| `startIndex` | `string` | Zero-based index indicating the start of the segment, measured in bytes of a UTF-8 string (i.e. c... |
| `text` | `string` | The text segment itself. |

### `GoogleCloudDiscoveryengineV1alphaBAPConfig`

The configuration for the BAP connector.

| Property | Type | Description |
|----------|------|-------------|
| `enabledActions` | `array<string>` | Optional. The actions enabled on the associated BAP connection. |
| `supportedConnectorModes` | `array<string>` | Required. The supported connector modes for the associated BAP connection. |

### `GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.BatchCreateTargetSites operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesResponse`

Response message for SiteSearchEngineService.BatchCreateTargetSites method.

| Property | Type | Description |
|----------|------|-------------|
| `targetSites` | `array<GoogleCloudDiscoveryengineV1alphaTargetSite>` | TargetSites created. |

### `GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesMetadata`

Metadata related to the progress of the UserLicenseService.BatchUpdateUserLicenses operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of user licenses that failed to be updated. |
| `successCount` | `string` | Count of user licenses successfully updated. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesResponse`

Response message for UserLicenseService.BatchUpdateUserLicenses method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `userLicenses` | `array<GoogleCloudDiscoveryengineV1alphaUserLicense>` | UserLicenses successfully updated. |

### `GoogleCloudDiscoveryengineV1alphaCitation`

Source attributions for content.

| Property | Type | Description |
|----------|------|-------------|
| `endIndex` | `integer` | Output only. End index into the content. |
| `license` | `string` | Output only. License of the attribution. |
| `publicationDate` | `GoogleTypeDate` | Output only. Publication date of the attribution. |
| `startIndex` | `integer` | Output only. Start index into the content. |
| `title` | `string` | Output only. Title of the attribution. |
| `uri` | `string` | Output only. Url reference of the attribution. |

### `GoogleCloudDiscoveryengineV1alphaCitationMetadata`

A collection of source attributions for a piece of content.

| Property | Type | Description |
|----------|------|-------------|
| `citations` | `array<GoogleCloudDiscoveryengineV1alphaCitation>` | Output only. List of citations. |

### `GoogleCloudDiscoveryengineV1alphaCmekConfig`

Configurations used to enable CMEK data encryption with Cloud KMS keys.

| Property | Type | Description |
|----------|------|-------------|
| `isDefault` | `boolean` | Output only. The default CmekConfig for the Customer. |
| `kmsKey` | `string` | Required. KMS key resource name which will be used to encrypt resources `projects/{project}/locat... |
| `kmsKeyVersion` | `string` | Output only. KMS key version resource name which will be used to encrypt resources `/cryptoKeyVer... |
| `lastRotationTimestampMicros` | `string` | Output only. The timestamp of the last key rotation. |
| `name` | `string` | Required. The name of the CmekConfig of the form `projects/{project}/locations/{location}/cmekCon... |
| `notebooklmState` | `string` | Output only. Whether the NotebookLM Corpus is ready to be used. |
| `singleRegionKeys` | `array<GoogleCloudDiscoveryengineV1alphaSingleRegionKey>` | Optional. Single-regional CMEKs that are required for some VAIS features. |
| `state` | `string` | Output only. The states of the CmekConfig. |

### `GoogleCloudDiscoveryengineV1alphaCollection`

Collection is a container for configuring resources and access to a set of DataStores.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp the Collection was created at. |
| `dataConnector` | `GoogleCloudDiscoveryengineV1alphaDataConnector` | Output only. The data connector, if present, manages the connection for data stores in the Collec... |
| `displayName` | `string` | Required. The Collection display name. This field must be a UTF-8 encoded string with a length li... |
| `name` | `string` | Immutable. The full resource name of the Collection. Format: `projects/{project}/locations/{locat... |

### `GoogleCloudDiscoveryengineV1alphaCondition`

Defines circumstances to be checked before allowing a behavior

| Property | Type | Description |
|----------|------|-------------|
| `activeTimeRange` | `array<GoogleCloudDiscoveryengineV1alphaConditionTimeRange>` | Range of time(s) specifying when condition is active. Maximum of 10 time ranges. |
| `queryRegex` | `string` | Optional. Query regex to match the whole search query. Cannot be set when Condition.query_terms i... |
| `queryTerms` | `array<GoogleCloudDiscoveryengineV1alphaConditionQueryTerm>` | Search only A list of terms to match the query on. Cannot be set when Condition.query_regex is se... |

### `GoogleCloudDiscoveryengineV1alphaConditionQueryTerm`

Matcher for search request query

| Property | Type | Description |
|----------|------|-------------|
| `fullMatch` | `boolean` | Whether the search query needs to exactly match the query term. |
| `value` | `string` | The specific query value to match against Must be lowercase, must be UTF-8. Can have at most 3 sp... |

### `GoogleCloudDiscoveryengineV1alphaConditionTimeRange`

Used for time-dependent conditions.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End of time range. Range is inclusive. Must be in the future. |
| `startTime` | `string` | Start of time range. Range is inclusive. |

### `GoogleCloudDiscoveryengineV1alphaConnectorRun`

A data sync run of DataConnector. After DataConnector is successfully initialized, data syncs are scheduled at DataConnector.refresh_interval. A ConnectorRun represents a data sync either in the past or onging that the moment. //

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. The time when the connector run ended. |
| `entityRuns` | `array<GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun>` | Output only. The details of the entities synced at the ConnectorRun. Each ConnectorRun consists o... |
| `errors` | `array<GoogleRpcStatus>` | Contains info about errors incurred during the sync. Only exist if running into an error state. C... |
| `latestPauseTime` | `string` | Output only. The time when the connector run was most recently paused. |
| `name` | `string` | Output only. The full resource name of the Connector Run. Format: `projects/*/locations/*/collect... |
| `startTime` | `string` | Output only. The time when the connector run started. |
| `state` | `string` | Output only. The state of the sync run. |
| `stateUpdateTime` | `string` | Timestamp at which the connector run sync state was last updated. |
| `trigger` | `string` | Output only. The trigger for this ConnectorRun. |

### `GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun`

Represents an entity that was synced in this ConnectorRun.

| Property | Type | Description |
|----------|------|-------------|
| `deletedRecordCount` | `string` | Optional. The number of documents deleted. |
| `entityName` | `string` | The name of the source entity. |
| `errorRecordCount` | `string` | Optional. The total number of documents failed at sync at indexing stage. |
| `errors` | `array<GoogleRpcStatus>` | The errors from the entity's sync run. Only exist if running into an error state. Contains error ... |
| `extractedRecordCount` | `string` | Optional. The number of documents extracted from connector source, ready to be ingested to VAIS. |
| `indexedRecordCount` | `string` | Optional. The number of documents indexed. |
| `progress` | `GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress` | Metadata to generate the progress bar. |
| `scheduledRecordCount` | `string` | Optional. The number of documents scheduled to be crawled/extracted from connector source. This o... |
| `sourceApiRequestCount` | `string` | Optional. The number of requests sent to 3p API. |
| `state` | `string` | The state of the entity's sync run. |
| `stateUpdateTime` | `string` | Timestamp at which the entity sync state was last updated. |
| `statsUpdateTime` | `string` | The timestamp for either extracted_documents_count, indexed_documents_count and error_documents_c... |
| `syncType` | `string` | Sync type of this run. |

### `GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress`

Represents the progress of a sync run.

| Property | Type | Description |
|----------|------|-------------|
| `currentCount` | `string` | The current progress. |
| `percentile` | `number` | Derived. The percentile of the progress.current_count / total_count. The value is between [0, 1.0... |
| `totalCount` | `string` | The total. |

### `GoogleCloudDiscoveryengineV1alphaContactDetails`

The contact info stored in resource level. If both project level and resource level is populated, the resource level contact info will override the project level contact info.

| Property | Type | Description |
|----------|------|-------------|
| `emailAddress` | `string` | Optional. The email address of the contact. |

### `GoogleCloudDiscoveryengineV1alphaControl`

Defines a conditioned behavior to employ during serving. Must be attached to a ServingConfig to be considered at serving time. Permitted actions dependent on `SolutionType`.

| Property | Type | Description |
|----------|------|-------------|
| `associatedServingConfigIds` | `array<string>` | Output only. List of all ServingConfig IDs this control is attached to. May take up to 10 minutes... |
| `boostAction` | `GoogleCloudDiscoveryengineV1alphaControlBoostAction` | Defines a boost-type control |
| `conditions` | `array<GoogleCloudDiscoveryengineV1alphaCondition>` | Determines when the associated action will trigger. Omit to always apply the action. Currently on... |
| `displayName` | `string` | Required. Human readable name. The identifier used in UI views. Must be UTF-8 encoded string. Len... |
| `filterAction` | `GoogleCloudDiscoveryengineV1alphaControlFilterAction` | Defines a filter-type control Currently not supported by Recommendation |
| `name` | `string` | Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/controls/*` |
| `promoteAction` | `GoogleCloudDiscoveryengineV1alphaControlPromoteAction` | Promote certain links based on predefined trigger queries. |
| `redirectAction` | `GoogleCloudDiscoveryengineV1alphaControlRedirectAction` | Defines a redirect-type control. |
| `solutionType` | `string` | Required. Immutable. What solution the control belongs to. Must be compatible with vertical of re... |
| `synonymsAction` | `GoogleCloudDiscoveryengineV1alphaControlSynonymsAction` | Treats a group of terms as synonyms of one another. |
| `useCases` | `array<string>` | Specifies the use case for the control. Affects what condition fields can be set. Only applies to... |

### `GoogleCloudDiscoveryengineV1alphaControlBoostAction`

Adjusts order of products in returned list.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Strength of the boost, which should be in [-1, 1]. Negative boost means demotion. Default is 0.0 ... |
| `dataStore` | `string` | Required. Specifies which data store's documents can be boosted by this control. Full data store ... |
| `filter` | `string` | Required. Specifies which products to apply the boost to. If no filter is provided all products w... |
| `fixedBoost` | `number` | Optional. Strength of the boost, which should be in [-1, 1]. Negative boost means demotion. Defau... |
| `interpolationBoostSpec` | `GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec` | Optional. Complex specification for custom ranking based on customer defined attribute value. |

### `GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec`

Specification for custom ranking based on customer specified attribute value. It provides more controls for customized ranking than the simple (condition, boost) combination above.

| Property | Type | Description |
|----------|------|-------------|
| `attributeType` | `string` | Optional. The attribute type to be used to determine the boost amount. The attribute value can be... |
| `controlPoints` | `array<GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint>` | Optional. The control points used to define the curve. The monotonic function (defined through th... |
| `fieldName` | `string` | Optional. The name of the field whose value will be used to determine the boost amount. |
| `interpolationType` | `string` | Optional. The interpolation type to be applied to connect the control points listed below. |

### `GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint`

The control points used to define the curve. The curve defined through these control points can only be monotonically increasing or decreasing(constant values are acceptable).

| Property | Type | Description |
|----------|------|-------------|
| `attributeValue` | `string` | Optional. Can be one of: 1. The numerical field value. 2. The duration spec for freshness: The va... |
| `boostAmount` | `number` | Optional. The value between -1 to 1 by which to boost the score if the attribute_value evaluates ... |

### `GoogleCloudDiscoveryengineV1alphaControlFilterAction`

Specified which products may be included in results. Uses same filter as boost.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Required. Specifies which data store's documents can be filtered by this control. Full data store... |
| `filter` | `string` | Required. A filter to apply on the matching condition results. Required Syntax documentation: htt... |

### `GoogleCloudDiscoveryengineV1alphaControlPromoteAction`

Promote certain links based on some trigger queries. Example: Promote shoe store link when searching for `shoe` keyword. The link can be outside of associated data store.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Required. Data store with which this promotion is attached to. |
| `searchLinkPromotion` | `GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion` | Required. Promotion attached to this action. |

### `GoogleCloudDiscoveryengineV1alphaControlRedirectAction`

Redirects a shopper to the provided URI.

| Property | Type | Description |
|----------|------|-------------|
| `redirectUri` | `string` | Required. The URI to which the shopper will be redirected. Required. URI must have length equal o... |

### `GoogleCloudDiscoveryengineV1alphaControlSynonymsAction`

Creates a set of terms that will act as synonyms of one another. Example: "happy" will also be considered as "glad", "glad" will also be considered as "happy".

| Property | Type | Description |
|----------|------|-------------|
| `synonyms` | `array<string>` | Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at least 2 synonyms. Othe... |

### `GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries`

The historical crawl rate timeseries data, used for monitoring.

| Property | Type | Description |
|----------|------|-------------|
| `qpsTimeSeries` | `GoogleMonitoringV3TimeSeries` | The QPS of the crawl rate. |

### `GoogleCloudDiscoveryengineV1alphaCreateDataStoreMetadata`

Metadata related to the progress of the DataStoreService.CreateDataStore operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaCreateEngineMetadata`

Metadata related to the progress of the EngineService.CreateEngine operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaCreateEvaluationMetadata`

Metadata for EvaluationService.CreateEvaluation method.

### `GoogleCloudDiscoveryengineV1alphaCreateSchemaMetadata`

Metadata for Create Schema LRO.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaCreateSitemapMetadata`

Metadata related to the progress of the SiteSearchEngineService.CreateSitemap operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaCreateTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.CreateTargetSite operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec`

Defines custom fine tuning spec.

| Property | Type | Description |
|----------|------|-------------|
| `enableSearchAdaptor` | `boolean` | Whether or not to enable and include custom fine tuned search adaptor model. |

### `GoogleCloudDiscoveryengineV1alphaDataConnector`

Manages the connection to external data sources for all data stores grouped under a Collection. It's a singleton resource of Collection. The initialization is only supported through DataConnectorService.SetUpDataConnector method, which will create a new Collection and initialize its DataConnector.

| Property | Type | Description |
|----------|------|-------------|
| `aclEnabled` | `boolean` | Optional. Whether the connector will be created with an ACL config. Currently this field only aff... |
| `actionConfig` | `GoogleCloudDiscoveryengineV1alphaActionConfig` | Optional. Action configurations to make the connector support actions. |
| `actionState` | `string` | Output only. State of the action connector. This reflects whether the action connector is initial... |
| `alertPolicyConfigs` | `array<GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig>` | Optional. The connector level alert config. |
| `autoRunDisabled` | `boolean` | Optional. Indicates whether the connector is disabled for auto run. It can be used to pause perio... |
| `bapConfig` | `GoogleCloudDiscoveryengineV1alphaBAPConfig` | Optional. The configuration for establishing a BAP connection. |
| `blockingReasons` | `array<string>` | Output only. User actions that must be completed before the connector can start syncing data. |
| `connectorModes` | `array<string>` | Optional. The modes enabled for this connector. Default state is CONNECTOR_MODE_UNSPECIFIED. |
| `connectorType` | `string` | Output only. The type of connector. Each source can only map to one type. For example, salesforce... |
| `createEuaSaas` | `boolean` | Optional. Whether the END USER AUTHENTICATION connector is created in SaaS. |
| `createTime` | `string` | Output only. Timestamp the DataConnector was created at. |
| `dataProtectionPolicy` | `GoogleCloudDiscoveryengineV1alphaDataProtectionPolicy` | Optional. Specifies the data protection policy for the connector. |
| `dataSource` | `string` | Required. The name of the data source. Supported values: `salesforce`, `jira`, `confluence`, `big... |
| `destinationConfigs` | `array<GoogleCloudDiscoveryengineV1alphaDestinationConfig>` | Optional. Any target destinations used to connect to third-party services. |
| `endUserConfig` | `GoogleCloudDiscoveryengineV1alphaDataConnectorEndUserConfig` | Optional. Any params and credentials used specifically for EUA connectors. |
| `entities` | `array<GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity>` | List of entities from the connected data source to ingest. |
| `errors` | `array<GoogleRpcStatus>` | Output only. The errors from initialization or from the latest connector run. |
| `federatedConfig` | `GoogleCloudDiscoveryengineV1alphaDataConnectorFederatedConfig` | Optional. Any params and credentials used specifically for hybrid connectors supporting FEDERATED... |
| `hybridIngestionDisabled` | `boolean` | Optional. If the connector is a hybrid connector, determines whether ingestion is enabled and app... |
| `identityRefreshInterval` | `string` | The refresh interval to sync the Access Control List information for the documents ingested by th... |
| `identityScheduleConfig` | `GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig` | The configuration for the identity data synchronization runs. This contains the refresh interval ... |
| `incrementalRefreshInterval` | `string` | Optional. The refresh interval specifically for incremental data syncs. If unset, incremental syn... |
| `incrementalSyncDisabled` | `boolean` | Optional. Indicates whether incremental syncs are paused for this connector. This is independent ... |
| `jsonParams` | `string` | Required data connector parameters in json string format. |
| `kmsKeyName` | `string` | Input only. The KMS key to be used to protect the DataStores managed by this connector. Must be s... |
| `lastSyncTime` | `string` | Output only. For periodic connectors only, the last time a data sync was completed. |
| `latestPauseTime` | `string` | Output only. The most recent timestamp when this DataConnector was paused, affecting all function... |
| `name` | `string` | Output only. The full resource name of the Data Connector. Format: `projects/*/locations/*/collec... |
| `nextSyncTime` | `GoogleTypeDateTime` | Defines the scheduled time for the next data synchronization. This field requires hour , minute, ... |
| `params` | `object` | Required data connector parameters in structured json format. |
| `privateConnectivityProjectId` | `string` | Output only. The tenant project ID associated with private connectivity connectors. This project ... |
| `realtimeState` | `string` | Output only. real-time sync state |
| `realtimeSyncConfig` | `GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig` | Optional. The configuration for realtime sync. |
| `refreshInterval` | `string` | Required. The refresh interval for data sync. If duration is set to 0, the data will be synced in... |
| `removeParamKeys` | `array<string>` | Optional. Specifies keys to be removed from the 'params' field. This is only active when 'params'... |
| `state` | `string` | Output only. State of the connector. |
| `staticIpAddresses` | `array<string>` | Output only. The static IP addresses used by this connector. |
| `staticIpEnabled` | `boolean` | Optional. Whether customer has enabled static IP addresses for this connector. |
| `syncMode` | `string` | The data synchronization mode supported by the data connector. |
| `updateTime` | `string` | Output only. Timestamp the DataConnector was last updated. |

### `GoogleCloudDiscoveryengineV1alphaDataConnectorEndUserConfig`

Any params and credentials used specifically for EUA connectors.

| Property | Type | Description |
|----------|------|-------------|
| `additionalParams` | `object` | Optional. Any additional parameters needed for EUA. |
| `authParams` | `object` | Optional. Any authentication parameters specific to EUA connectors. |
| `jsonAuthParams` | `string` | Optional. Any authentication parameters specific to EUA connectors in json string format. |
| `tenant` | `GoogleCloudDiscoveryengineV1alphaTenant` | Optional. The tenant project the connector is connected to. |

### `GoogleCloudDiscoveryengineV1alphaDataConnectorFederatedConfig`

Any params and credentials used specifically for hybrid connectors supporting FEDERATED mode.

| Property | Type | Description |
|----------|------|-------------|
| `additionalParams` | `object` | Optional. Any additional parameters needed for FEDERATED. |
| `authParams` | `object` | Optional. Any authentication parameters specific to FEDERATED connectors. |
| `jsonAuthParams` | `string` | Optional. Any authentication parameters specific to FEDERATED connectors in json string format. |

### `GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig`

The configuration for realtime sync to store additional params for realtime sync.

| Property | Type | Description |
|----------|------|-------------|
| `realtimeSyncSecret` | `string` | Optional. The ID of the Secret Manager secret used for webhook secret. |
| `streamingError` | `GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfigStreamingError` | Optional. Streaming error details. |
| `webhookUri` | `string` | Optional. Webhook url for the connector to specify additional params for realtime sync. |

### `GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfigStreamingError`

Streaming error details.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` | Optional. Error details. |
| `streamingErrorReason` | `string` | Optional. Streaming error. |

### `GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity`

Represents an entity in the data source. For example, the `Account` object in Salesforce.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Output only. The full resource name of the associated data store for the source entity. Format: `... |
| `entityName` | `string` | The name of the entity. Supported values by data source: * Salesforce: `Lead`, `Opportunity`, `Co... |
| `healthcareFhirConfig` | `GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig` | Optional. Configuration for `HEALTHCARE_FHIR` vertical. |
| `jsonParams` | `string` | The parameters for the entity to facilitate data ingestion in json string format. |
| `keyPropertyMappings` | `object` | Attributes for indexing. Key: Field name. Value: The key property to map a field to, such as `tit... |
| `params` | `object` | The parameters for the entity to facilitate data ingestion in structured json format. |
| `startingSchema` | `GoogleCloudDiscoveryengineV1alphaSchema` | Optional. The start schema to use for the DataStore created from this SourceEntity. If unset, a d... |

### `GoogleCloudDiscoveryengineV1alphaDataProtectionPolicy`

Data protection policy config for a connector.

| Property | Type | Description |
|----------|------|-------------|
| `sensitiveDataProtectionPolicy` | `GoogleCloudDiscoveryengineV1alphaDataProtectionPolicySensitiveDataProtectionPolicy` | Optional. The sensitive data protection policy for the connector source. |

### `GoogleCloudDiscoveryengineV1alphaDataProtectionPolicySensitiveDataProtectionPolicy`

Specifies a Sensitive Data Protection (https://cloud.google.com/sensitive-data-protection/docs/sensitive-data-protection-overview) policy.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `string` | Optional. The Sensitive Data Protection content policy resource name. |

### `GoogleCloudDiscoveryengineV1alphaDataStore`

DataStore captures global settings and configs at the DataStore level.

| Property | Type | Description |
|----------|------|-------------|
| `aclEnabled` | `boolean` | Immutable. Whether data in the DataStore has ACL information. If set to `true`, the source data m... |
| `advancedSiteSearchConfig` | `GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig` | Optional. Configuration for advanced site search. |
| `billingEstimation` | `GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation` | Output only. Data size estimation for billing. |
| `cmekConfig` | `GoogleCloudDiscoveryengineV1alphaCmekConfig` | Output only. CMEK-related information for the DataStore. |
| `configurableBillingApproach` | `string` | Optional. Configuration for configurable billing approach. See |
| `configurableBillingApproachUpdateTime` | `string` | Output only. The timestamp when configurable_billing_approach was last updated. |
| `contentConfig` | `string` | Immutable. The content config of the data store. If this field is unset, the server behavior defa... |
| `createTime` | `string` | Output only. Timestamp the DataStore was created at. |
| `defaultSchemaId` | `string` | Output only. The id of the default Schema associated to this data store. |
| `displayName` | `string` | Required. The data store display name. This field must be a UTF-8 encoded string with a length li... |
| `documentProcessingConfig` | `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig` | Configuration for Document understanding and enrichment. |
| `healthcareFhirConfig` | `GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig` | Optional. Configuration for `HEALTHCARE_FHIR` vertical. |
| `identityMappingStore` | `string` | Immutable. The fully qualified resource name of the associated IdentityMappingStore. This field c... |
| `idpConfig` | `GoogleCloudDiscoveryengineV1alphaIdpConfig` | Output only. Data store level identity provider config. |
| `industryVertical` | `string` | Immutable. The industry vertical that the data store registers. |
| `isInfobotFaqDataStore` | `boolean` | Optional. If set, this DataStore is an Infobot FAQ DataStore. |
| `kmsKeyName` | `string` | Input only. The KMS key to be used to protect this DataStore at creation time. Must be set for re... |
| `languageInfo` | `GoogleCloudDiscoveryengineV1alphaLanguageInfo` | Language info for DataStore. |
| `name` | `string` | Immutable. Identifier. The full resource name of the data store. Format: `projects/{project}/loca... |
| `naturalLanguageQueryUnderstandingConfig` | `GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig` | Optional. Configuration for Natural Language Query Understanding. |
| `servingConfigDataStore` | `GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore` | Optional. Stores serving config at DataStore level. |
| `solutionTypes` | `array<string>` | The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MED... |
| `startingSchema` | `GoogleCloudDiscoveryengineV1alphaSchema` | The start schema to use for this DataStore when provisioning it. If unset, a default vertical spe... |
| `workspaceConfig` | `GoogleCloudDiscoveryengineV1alphaWorkspaceConfig` | Config to store data store type configuration for workspace data. This must be set when DataStore... |

### `GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation`

Estimation of data size per data store.

| Property | Type | Description |
|----------|------|-------------|
| `structuredDataSize` | `string` | Data size for structured data in terms of bytes. |
| `structuredDataUpdateTime` | `string` | Last updated timestamp for structured data. |
| `unstructuredDataSize` | `string` | Data size for unstructured data in terms of bytes. |
| `unstructuredDataUpdateTime` | `string` | Last updated timestamp for unstructured data. |
| `websiteDataSize` | `string` | Data size for websites in terms of bytes. |
| `websiteDataUpdateTime` | `string` | Last updated timestamp for websites. |

### `GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore`

Stores information regarding the serving configurations at DataStore level.

| Property | Type | Description |
|----------|------|-------------|
| `disabledForServing` | `boolean` | Optional. If set true, the DataStore will not be available for serving search requests. |

### `GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries`

The historical dedicated crawl rate timeseries data, used for monitoring. Dedicated crawl is used by Vertex AI to crawl the user's website when dedicate crawl is set.

| Property | Type | Description |
|----------|------|-------------|
| `autoRefreshCrawlErrorRate` | `GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries` | Vertex AI's error rate time series of auto-refresh dedicated crawl. |
| `autoRefreshCrawlRate` | `GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries` | Vertex AI's dedicated crawl rate time series of auto-refresh, which is the crawl rate of Google-C... |
| `userTriggeredCrawlErrorRate` | `GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries` | Vertex AI's error rate time series of user triggered dedicated crawl. |
| `userTriggeredCrawlRate` | `GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries` | Vertex AI's dedicated crawl rate time series of user triggered crawl, which is the crawl rate of ... |

### `GoogleCloudDiscoveryengineV1alphaDeleteAgentMetadata`

Metadata related to the progress of the AgentService.DeleteAgent operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaDeleteCmekConfigMetadata`

Metadata related to the progress of the CmekConfigService.DeleteCmekConfig operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaDeleteCollectionMetadata`

Metadata related to the progress of the CollectionService.UpdateCollection operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaDeleteDataStoreMetadata`

Metadata related to the progress of the DataStoreService.DeleteDataStore operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaDeleteEngineMetadata`

Metadata related to the progress of the EngineService.DeleteEngine operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaDeleteIdentityMappingStoreMetadata`

Metadata related to the progress of the IdentityMappingStoreService.DeleteIdentityMappingStore operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaDeletePatientFiltersRequest`

Request for DataStoreService.DeletePatientFilters method.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/colle... |

### `GoogleCloudDiscoveryengineV1alphaDeleteSchemaMetadata`

Metadata for DeleteSchema LRO.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaDeleteSessionRequest`

Request for DeleteSession method.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The resource name of the Session to delete. Format: `projects/{project}/locations/{loca... |

### `GoogleCloudDiscoveryengineV1alphaDeleteSitemapMetadata`

Metadata related to the progress of the SiteSearchEngineService.DeleteSitemap operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaDeleteTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.DeleteTargetSite operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaDeleteUserStoreMetadata`

Metadata related to the progress of the UserStoreService.DeleteUserStore operation. This will be returned by the google.longrunning.Operation.metadata field. Delete UserStore will delete all the end users under the user store, return the number of end users successfully deleted or failed to delete in the metadata.

| Property | Type | Description |
|----------|------|-------------|
| `failureCount` | `string` | The number of end users under the user store that failed to be deleted. |
| `successCount` | `string` | The number of end users under the user store that were successfully deleted. |

### `GoogleCloudDiscoveryengineV1alphaDestinationConfig`

Defines target endpoints used to connect to third-party sources.

| Property | Type | Description |
|----------|------|-------------|
| `destinations` | `array<GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination>` | Optional. The destinations for the corresponding key. |
| `jsonParams` | `string` | Additional parameters for this destination config in json string format. |
| `key` | `string` | Optional. Unique destination identifier that is supported by the connector. |
| `params` | `object` | Optional. Additional parameters for this destination config in structured json format. |

### `GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination`

Defines a target endpoint

| Property | Type | Description |
|----------|------|-------------|
| `host` | `string` | Publicly routable host. |
| `port` | `integer` | Optional. Target port number accepted by the destination. |

### `GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchMetadata`

Metadata related to the progress of the SiteSearchEngineService.DisableAdvancedSiteSearch operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchResponse`

Response message for SiteSearchEngineService.DisableAdvancedSiteSearch method.

### `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig`

A singleton resource of DataStore. If it's empty when DataStore is created and DataStore is set to DataStore.ContentConfig.CONTENT_REQUIRED, the default parser will default to digital parser.

| Property | Type | Description |
|----------|------|-------------|
| `chunkingConfig` | `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig` | Whether chunking mode is enabled. |
| `defaultParsingConfig` | `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig` | Configurations for default Document parser. If not specified, we will configure it as default Dig... |
| `name` | `string` | The full resource name of the Document Processing Config. Format: `projects/*/locations/*/collect... |
| `parsingConfigOverrides` | `object` | Map from file type to override the default parsing configuration based on the file type. Supporte... |

### `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig`

Configuration for chunking config.

| Property | Type | Description |
|----------|------|-------------|
| `layoutBasedChunkingConfig` | `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig` | Configuration for the layout based chunking. |

### `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig`

Configuration for the layout based chunking.

| Property | Type | Description |
|----------|------|-------------|
| `chunkSize` | `integer` | The token size limit for each chunk. Supported values: 100-500 (inclusive). Default value: 500. |
| `includeAncestorHeadings` | `boolean` | Whether to include appending different levels of headings to chunks from the middle of the docume... |

### `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig`

Related configurations applied to a specific type of document parser.

| Property | Type | Description |
|----------|------|-------------|
| `digitalParsingConfig` | `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig` | Configurations applied to digital parser. |
| `layoutParsingConfig` | `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig` | Configurations applied to layout parser. |
| `ocrParsingConfig` | `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig` | Configurations applied to OCR parser. Currently it only applies to PDFs. |

### `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig`

The digital parsing configurations for documents.

### `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig`

The layout parsing configurations for documents.

| Property | Type | Description |
|----------|------|-------------|
| `enableGetProcessedDocument` | `boolean` | Optional. If true, the processed document will be made available for the GetProcessedDocument API. |
| `enableImageAnnotation` | `boolean` | Optional. If true, the LLM based annotation is added to the image during parsing. |
| `enableLlmLayoutParsing` | `boolean` | Optional. If true, the pdf layout will be refined using an LLM. |
| `enableTableAnnotation` | `boolean` | Optional. If true, the LLM based annotation is added to the table during parsing. |
| `excludeHtmlClasses` | `array<string>` | Optional. List of HTML classes to exclude from the parsed content. |
| `excludeHtmlElements` | `array<string>` | Optional. List of HTML elements to exclude from the parsed content. |
| `excludeHtmlIds` | `array<string>` | Optional. List of HTML ids to exclude from the parsed content. |
| `structuredContentTypes` | `array<string>` | Optional. Contains the required structure types to extract from the document. Supported values: *... |

### `GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig`

The OCR parsing configurations for documents.

| Property | Type | Description |
|----------|------|-------------|
| `enhancedDocumentElements` | `array<string>` | [DEPRECATED] This field is deprecated. To use the additional enhanced document elements processin... |
| `useNativeText` | `boolean` | If true, will use native text instead of OCR text on pages containing native text. |

### `GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchMetadata`

Metadata related to the progress of the SiteSearchEngineService.EnableAdvancedSiteSearch operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchResponse`

Response message for SiteSearchEngineService.EnableAdvancedSiteSearch method.

### `GoogleCloudDiscoveryengineV1alphaEngine`

Metadata that describes the training and serving parameters of an Engine.

| Property | Type | Description |
|----------|------|-------------|
| `appType` | `string` | Optional. Immutable. This the application type which this engine resource represents. NOTE: this ... |
| `chatEngineConfig` | `GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig` | Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT. |
| `chatEngineMetadata` | `GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata` | Output only. Additional information of the Chat Engine. Only applicable if solution_type is SOLUT... |
| `cmekConfig` | `GoogleCloudDiscoveryengineV1alphaCmekConfig` | Output only. CMEK-related information for the Engine. |
| `commonConfig` | `GoogleCloudDiscoveryengineV1alphaEngineCommonConfig` | Common config spec that specifies the metadata of the engine. |
| `configurableBillingApproach` | `string` | Optional. Configuration for configurable billing approach. |
| `connectorTenantInfo` | `object` | Optional. Maps a connector ID (e.g., "hybrid-github", "shopify") to tenant-specific information r... |
| `createTime` | `string` | Output only. Timestamp the Recommendation Engine was created at. |
| `dataStoreIds` | `array<string>` | Optional. The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE... |
| `disableAnalytics` | `boolean` | Optional. Whether to disable analytics for searches performed on this engine. |
| `displayName` | `string` | Required. The display name of the engine. Should be human readable. UTF-8 encoded string with lim... |
| `features` | `object` | Optional. Feature config for the engine to opt in or opt out of features. Supported keys: * `*`: ... |
| `industryVertical` | `string` | Optional. The industry vertical that the engine registers. The restriction of the Engine industry... |
| `knowledgeGraphConfig` | `GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfig` | Optional. Configurations for the Knowledge Graph. Only applicable if solution_type is SOLUTION_TY... |
| `mediaRecommendationEngineConfig` | `GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig` | Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTI... |
| `modelConfigs` | `object` | Optional. Maps a model name to its specific configuration for this engine. This allows admin user... |
| `name` | `string` | Immutable. Identifier. The fully qualified resource name of the engine. This field must be a UTF-... |
| `observabilityConfig` | `GoogleCloudDiscoveryengineV1alphaObservabilityConfig` | Optional. Observability config for the engine. |
| `recommendationMetadata` | `GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata` | Output only. Additional information of a recommendation engine. Only applicable if solution_type ... |
| `searchEngineConfig` | `GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig` | Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH. |
| `similarDocumentsConfig` | `GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig` | Additional config specs for a `similar-items` engine. |
| `solutionType` | `string` | Required. The solutions of the engine. |
| `updateTime` | `string` | Output only. Timestamp the Recommendation Engine was last updated. |

### `GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig`

Configurations for a Chat Engine.

| Property | Type | Description |
|----------|------|-------------|
| `agentCreationConfig` | `GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig` | The configurationt generate the Dialogflow agent that is associated to this Engine. Note that the... |
| `allowCrossRegion` | `boolean` | Optional. If the flag set to true, we allow the agent and engine are in different locations, othe... |
| `dialogflowAgentToLink` | `string` | The resource name of an exist Dialogflow agent to link to this Chat Engine. Customers can either ... |

### `GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig`

Configurations for generating a Dialogflow agent. Note that these configurations are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation.

| Property | Type | Description |
|----------|------|-------------|
| `business` | `string` | Name of the company, organization or other entity that the agent represents. Used for knowledge c... |
| `defaultLanguageCode` | `string` | Required. The default language of the agent as a language tag. See [Language Support](https://clo... |
| `location` | `string` | Agent location for Agent creation, supported values: global/us/eu. If not provided, us Engine wil... |
| `timeZone` | `string` | Required. The time zone of the agent from the [time zone database](https://www.iana.org/time-zone... |

### `GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata`

Additional information of a Chat Engine. Fields in this message are output only.

| Property | Type | Description |
|----------|------|-------------|
| `dialogflowAgent` | `string` | The resource name of a Dialogflow agent, that this Chat Engine refers to. Format: `projects//loca... |

### `GoogleCloudDiscoveryengineV1alphaEngineCommonConfig`

Common configurations for an Engine.

| Property | Type | Description |
|----------|------|-------------|
| `companyName` | `string` | The name of the company, business or entity that is associated with the engine. Setting this may ... |

### `GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfig`

Configuration message for the Knowledge Graph.

| Property | Type | Description |
|----------|------|-------------|
| `cloudKnowledgeGraphTypes` | `array<string>` | Specify entity types to support. |
| `enableCloudKnowledgeGraph` | `boolean` | Whether to enable the Cloud Knowledge Graph for the engine. Defaults to false if not specified. |
| `enablePrivateKnowledgeGraph` | `boolean` | Whether to enable the Private Knowledge Graph for the engine. Defaults to false if not specified. |
| `featureConfig` | `GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfigFeatureConfig` | Optional. Feature config for the Knowledge Graph. |
| `privateKnowledgeGraphTypes` | `array<string>` | Specify entity types to support. |

### `GoogleCloudDiscoveryengineV1alphaEngineKnowledgeGraphConfigFeatureConfig`

Feature config for the Knowledge Graph.

| Property | Type | Description |
|----------|------|-------------|
| `disablePrivateKgAutoComplete` | `boolean` | Whether to disable the private KG auto complete for the engine. Defaults to false if not specified. |
| `disablePrivateKgEnrichment` | `boolean` | Whether to disable the private KG enrichment for the engine. Defaults to false if not specified. |
| `disablePrivateKgQueryUiChips` | `boolean` | Whether to disable the private KG for query UI chips. Defaults to false if not specified. |
| `disablePrivateKgQueryUnderstanding` | `boolean` | Whether to disable the private KG query understanding for the engine. Defaults to false if not sp... |

### `GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig`

Additional config specs for a Media Recommendation engine.

| Property | Type | Description |
|----------|------|-------------|
| `engineFeaturesConfig` | `GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigEngineFeaturesConfig` | Optional. Additional engine features config. |
| `optimizationObjective` | `string` | The optimization objective. e.g., `cvr`. This field together with optimization_objective describe... |
| `optimizationObjectiveConfig` | `GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig` | Name and value of the custom threshold for cvr optimization_objective. For target_field `watch-ti... |
| `trainingState` | `string` | The training state that the engine is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of... |
| `type` | `string` | Required. The type of engine. e.g., `recommended-for-you`. This field together with optimization_... |

### `GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigEngineFeaturesConfig`

More feature configs of the selected engine type.

| Property | Type | Description |
|----------|------|-------------|
| `mostPopularConfig` | `GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig` | Most popular engine feature config. |
| `recommendedForYouConfig` | `GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig` | Recommended for you engine feature config. |

### `GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig`

Feature configurations that are required for creating a Most Popular engine.

| Property | Type | Description |
|----------|------|-------------|
| `timeWindowDays` | `string` | The time window of which the engine is queried at training and prediction time. Positive integers... |

### `GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig`

Custom threshold for `cvr` optimization_objective.

| Property | Type | Description |
|----------|------|-------------|
| `targetField` | `string` | Required. The name of the field to target. Currently supported values: `watch-percentage`, `watch... |
| `targetFieldValueFloat` | `number` | Required. The threshold to be applied to the target (e.g., 0.5). |

### `GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig`

Additional feature configurations for creating a `recommended-for-you` engine.

| Property | Type | Description |
|----------|------|-------------|
| `contextEventType` | `string` | The type of event with which the engine is queried at prediction time. If set to `generic`, only ... |

### `GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata`

Additional information of a recommendation engine.

| Property | Type | Description |
|----------|------|-------------|
| `dataState` | `string` | Output only. The state of data requirements for this engine: `DATA_OK` and `DATA_ERROR`. Engine c... |
| `lastTrainTime` | `string` | Output only. The timestamp when the latest successful training finished. Only applicable on Media... |
| `lastTuneTime` | `string` | Output only. The timestamp when the latest successful tune finished. Only applicable on Media Rec... |
| `servingState` | `string` | Output only. The serving state of the engine: `ACTIVE`, `NOT_ACTIVE`. |
| `tuningOperation` | `string` | Output only. The latest tune operation id associated with the engine. Only applicable on Media Re... |

### `GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig`

Configurations for a Search Engine.

| Property | Type | Description |
|----------|------|-------------|
| `requiredSubscriptionTier` | `string` | Optional. The required subscription tier of this engine. They cannot be modified after engine cre... |
| `searchAddOns` | `array<string>` | The add-on that this search engine enables. |
| `searchTier` | `string` | The search feature tier of this engine. Different tiers might have different pricing. To learn mo... |

### `GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig`

Additional config specs for a `similar-items` engine.

### `GoogleCloudDiscoveryengineV1alphaEstimateDataSizeMetadata`

Metadata related to the progress of the EstimateDataSize operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |

### `GoogleCloudDiscoveryengineV1alphaEstimateDataSizeResponse`

Response of the EstimateDataSize request. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `dataSizeBytes` | `string` | Data size in terms of bytes. |
| `documentCount` | `string` | Total number of documents. |

### `GoogleCloudDiscoveryengineV1alphaEvaluation`

An evaluation is a single execution (or run) of an evaluation process. It encapsulates the state of the evaluation and the resulting data.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp the Evaluation was created at. |
| `endTime` | `string` | Output only. Timestamp the Evaluation was completed at. |
| `error` | `GoogleRpcStatus` | Output only. The error that occurred during evaluation. Only populated when the evaluation's stat... |
| `errorSamples` | `array<GoogleRpcStatus>` | Output only. A sample of errors encountered while processing the request. |
| `evaluationSpec` | `GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec` | Required. The specification of the evaluation. |
| `name` | `string` | Identifier. The full resource name of the Evaluation, in the format of `projects/{project}/locati... |
| `qualityMetrics` | `GoogleCloudDiscoveryengineV1alphaQualityMetrics` | Output only. The metrics produced by the evaluation, averaged across all SampleQuerys in the Samp... |
| `state` | `string` | Output only. The state of the evaluation. |

### `GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec`

Describes the specification of the evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `querySetSpec` | `GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec` | Optional. The specification of the query set. |
| `searchRequest` | `GoogleCloudDiscoveryengineV1alphaSearchRequest` | Required. The search request that is used to perform the evaluation. Only the following fields wi... |

### `GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec`

Describes the specification of the query set.

| Property | Type | Description |
|----------|------|-------------|
| `sampleQuerySet` | `string` | Optional. The full resource name of the SampleQuerySet used for the evaluation, in the format of ... |

### `GoogleCloudDiscoveryengineV1alphaExportMetricsMetadata`

Metadata related to the progress of the Export operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaExportMetricsResponse`

Response of the ExportMetricsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field.

### `GoogleCloudDiscoveryengineV1alphaFieldConfig`

Configurations for fields of a schema. For example, configuring a field is indexable, or searchable.

| Property | Type | Description |
|----------|------|-------------|
| `advancedSiteSearchDataSources` | `array<string>` | If this field is set, only the corresponding source will be indexed for this field. Otherwise, th... |
| `completableOption` | `string` | If completable_option is COMPLETABLE_ENABLED, field values are directly used and returned as sugg... |
| `dynamicFacetableOption` | `string` | If dynamic_facetable_option is DYNAMIC_FACETABLE_ENABLED, field values are available for dynamic ... |
| `fieldPath` | `string` | Required. Field path of the schema field. For example: `title`, `description`, `release_info.rele... |
| `fieldType` | `string` | Output only. Raw type of the field. |
| `indexableOption` | `string` | If indexable_option is INDEXABLE_ENABLED, field values are indexed so that it can be filtered or ... |
| `keyPropertyType` | `string` | Output only. Type of the key property that this field is mapped to. Empty string if this is not a... |
| `metatagName` | `string` | Optional. The metatag name found in the HTML page. If user defines this field, the value of this ... |
| `recsFilterableOption` | `string` | If recs_filterable_option is FILTERABLE_ENABLED, field values are filterable by filter expression... |
| `retrievableOption` | `string` | If retrievable_option is RETRIEVABLE_ENABLED, field values are included in the search results. If... |
| `schemaOrgPaths` | `array<string>` | Field paths for indexing custom attribute from schema.org data. More details of schema.org and it... |
| `searchableOption` | `string` | If searchable_option is SEARCHABLE_ENABLED, field values are searchable by text queries in Search... |

### `GoogleCloudDiscoveryengineV1alphaGetSessionRequest`

Request for GetSession method.

| Property | Type | Description |
|----------|------|-------------|
| `includeAnswerDetails` | `boolean` | Optional. If set to true, the full session including all answer details will be returned. |
| `name` | `string` | Required. The resource name of the Session to get. Format: `projects/{project}/locations/{locatio... |

### `GoogleCloudDiscoveryengineV1alphaGetUriPatternDocumentDataResponse`

Response message for SiteSearchEngineService.GetUriPatternDocumentData method.

| Property | Type | Description |
|----------|------|-------------|
| `documentDataMap` | `object` | Document data keyed by URI pattern. For example: document_data_map = { "www.url1.com/*": { "Categ... |

### `GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig`

Config to data store for `HEALTHCARE_FHIR` vertical.

| Property | Type | Description |
|----------|------|-------------|
| `enableConfigurableSchema` | `boolean` | Whether to enable configurable schema for `HEALTHCARE_FHIR` vertical. If set to `true`, the prede... |
| `enableStaticIndexingForBatchIngestion` | `boolean` | Whether to enable static indexing for `HEALTHCARE_FHIR` batch ingestion. If set to `true`, the ba... |
| `initialFilterGroups` | `array<string>` | Optional. Names of the Group resources to use as a basis for the initial patient filter, in forma... |

### `GoogleCloudDiscoveryengineV1alphaIdentityMappingEntryOperationMetadata`

IdentityMappingEntry LongRunningOperation metadata for IdentityMappingStoreService.ImportIdentityMappings and IdentityMappingStoreService.PurgeIdentityMappings

| Property | Type | Description |
|----------|------|-------------|
| `failureCount` | `string` | The number of IdentityMappingEntries that failed to be processed. |
| `successCount` | `string` | The number of IdentityMappingEntries that were successfully processed. |
| `totalCount` | `string` | The total number of IdentityMappingEntries that were processed. |

### `GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig`

The configuration for the identity data synchronization runs.

| Property | Type | Description |
|----------|------|-------------|
| `nextSyncTime` | `GoogleTypeDateTime` | Optional. The UTC time when the next data sync is expected to start for the Data Connector. Custo... |
| `refreshInterval` | `string` | Optional. The refresh interval to sync the Access Control List information for the documents inge... |

### `GoogleCloudDiscoveryengineV1alphaIdpConfig`

Identity Provider Config.

| Property | Type | Description |
|----------|------|-------------|
| `externalIdpConfig` | `GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig` | External Identity provider config. |
| `idpType` | `string` | Identity provider type configured. |

### `GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig`

Third party IDP Config.

| Property | Type | Description |
|----------|------|-------------|
| `workforcePoolName` | `string` | Workforce pool name. Example: "locations/global/workforcePools/pool_id" |

### `GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsMetadata`

Metadata related to the progress of the ImportCompletionSuggestions operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of CompletionSuggestions that failed to be imported. |
| `successCount` | `string` | Count of CompletionSuggestions successfully imported. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsResponse`

Response of the CompletionService.ImportCompletionSuggestions method. If the long running operation is done, this message is returned by the google.longrunning.Operations.response field if the operation is successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1alphaImportErrorConfig` | The desired location of errors incurred during the Import. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1alphaImportDocumentsMetadata`

Metadata related to the progress of the ImportDocuments operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `successCount` | `string` | Count of entries that were processed successfully. |
| `totalCount` | `string` | Total count of entries that were processed. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaImportDocumentsResponse`

Response of the ImportDocumentsRequest. If the long running operation is done, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1alphaImportErrorConfig` | Echoes the destination for the complete errors in the request if set. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1alphaImportErrorConfig`

Configuration of destination for Import related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Cloud Storage prefix for import errors. This must be an empty, existing Cloud Storage directory. ... |

### `GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsResponse`

Response message for IdentityMappingStoreService.ImportIdentityMappings

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1alphaImportSampleQueriesMetadata`

Metadata related to the progress of the ImportSampleQueries operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | ImportSampleQueries operation create time. |
| `failureCount` | `string` | Count of SampleQuerys that failed to be imported. |
| `successCount` | `string` | Count of SampleQuerys successfully imported. |
| `totalCount` | `string` | Total count of SampleQuerys that were processed. |
| `updateTime` | `string` | ImportSampleQueries operation last update time. If the operation is done, this is also the finish... |

### `GoogleCloudDiscoveryengineV1alphaImportSampleQueriesResponse`

Response of the SampleQueryService.ImportSampleQueries method. If the long running operation is done, this message is returned by the google.longrunning.Operations.response field if the operation is successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1alphaImportErrorConfig` | The desired location of errors incurred during the Import. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesMetadata`

Metadata related to the progress of the ImportSuggestionDenyListEntries operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesResponse`

Response message for CompletionService.ImportSuggestionDenyListEntries method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `failedEntriesCount` | `string` | Count of deny list entries that failed to be imported. |
| `importedEntriesCount` | `string` | Count of deny list entries successfully imported. |

### `GoogleCloudDiscoveryengineV1alphaImportUserEventsMetadata`

Metadata related to the progress of the Import operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `successCount` | `string` | Count of entries that were processed successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse`

Response of the ImportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1alphaImportErrorConfig` | Echoes the destination for the complete errors if this field was set in the request. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `joinedEventsCount` | `string` | Count of user events imported with complete existing Documents. |
| `unjoinedEventsCount` | `string` | Count of user events imported, but with Document information not found in the existing Branch. |

### `GoogleCloudDiscoveryengineV1alphaInterval`

A floating point interval.

| Property | Type | Description |
|----------|------|-------------|
| `exclusiveMaximum` | `number` | Exclusive upper bound. |
| `exclusiveMinimum` | `number` | Exclusive lower bound. |
| `maximum` | `number` | Inclusive upper bound. |
| `minimum` | `number` | Inclusive lower bound. |

### `GoogleCloudDiscoveryengineV1alphaLanguageInfo`

Language info for DataStore.

| Property | Type | Description |
|----------|------|-------------|
| `language` | `string` | Output only. Language part of normalized_language_code. E.g.: `en-US` -> `en`, `zh-Hans-HK` -> `z... |
| `languageCode` | `string` | The language code for the DataStore. |
| `normalizedLanguageCode` | `string` | Output only. This is the normalized form of language_code. E.g.: language_code of `en-GB`, `en_GB... |
| `region` | `string` | Output only. Region part of normalized_language_code, if present. E.g.: `en-US` -> `US`, `zh-Hans... |

### `GoogleCloudDiscoveryengineV1alphaLicenseConfig`

Information about users' licenses.

| Property | Type | Description |
|----------|------|-------------|
| `alertPolicyResourceConfig` | `GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfig` | Optional. The alert policy config for this license config. |
| `autoRenew` | `boolean` | Optional. Whether the license config should be auto renewed when it reaches the end date. |
| `earlyTerminated` | `boolean` | Output only. Indication of whether the subscription is terminated earlier than the expiration dat... |
| `earlyTerminationDate` | `GoogleTypeDate` | Output only. The date when the subscription is terminated earlier than the expiration date. |
| `endDate` | `GoogleTypeDate` | Optional. The planed end date. |
| `freeTrial` | `boolean` | Optional. Whether the license config is for free trial. |
| `geminiBundle` | `boolean` | Output only. Whether the license config is for Gemini bundle. |
| `licenseCount` | `string` | Required. Number of licenses purchased. |
| `name` | `string` | Immutable. Identifier. The fully qualified resource name of the license config. Format: `projects... |
| `startDate` | `GoogleTypeDate` | Required. The start date. |
| `state` | `string` | Output only. The state of the license config. |
| `subscriptionTerm` | `string` | Required. Subscription term. |
| `subscriptionTier` | `string` | Required. Subscription tier information for the license config. |

### `GoogleCloudDiscoveryengineV1alphaListSessionsRequest`

Request for ListSessions method.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | A comma-separated list of fields to filter by, in EBNF grammar. The supported fields are: * `user... |
| `orderBy` | `string` | A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field... |
| `pageSize` | `integer` | Maximum number of results to return. If unspecified, defaults to 50. Max allowed value is 1000. |
| `pageToken` | `string` | A page token, received from a previous `ListSessions` call. Provide this to retrieve the subseque... |
| `parent` | `string` | Required. The data store resource name. Format: `projects/{project}/locations/{location}/collecti... |

### `GoogleCloudDiscoveryengineV1alphaListSessionsResponse`

Response for ListSessions method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token, if not returned indicates the last page. |
| `sessions` | `array<GoogleCloudDiscoveryengineV1alphaSession>` | All the Sessions for a given data store. |

### `GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig`

Configuration for Natural Language Query Understanding.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Mode of Natural Language Query Understanding. If this field is unset, the behavior defaults to Na... |

### `GoogleCloudDiscoveryengineV1alphaObservabilityConfig`

Observability config for a resource.

| Property | Type | Description |
|----------|------|-------------|
| `observabilityEnabled` | `boolean` | Optional. Enables observability. If false, all other flags are ignored. |
| `sensitiveLoggingEnabled` | `boolean` | Optional. Enables sensitive logging. Sensitive logging includes customer core content (e.g. promp... |

### `GoogleCloudDiscoveryengineV1alphaObtainCrawlRateResponse`

Response message for CrawlRateManagementService.ObtainCrawlRate method. The response contains organcic or dedicated crawl rate time series data for monitoring, depending on whether dedicated crawl rate is set.

| Property | Type | Description |
|----------|------|-------------|
| `dedicatedCrawlRateTimeSeries` | `GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries` | The historical dedicated crawl rate timeseries data, used for monitoring. |
| `error` | `GoogleRpcStatus` | Errors from service when handling the request. |
| `organicCrawlRateTimeSeries` | `GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries` | The historical organic crawl rate timeseries data, used for monitoring. |
| `state` | `string` | Output only. The state of the response. |

### `GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries`

The historical organic crawl rate timeseries data, used for monitoring. Organic crawl is auto-determined by Google to crawl the user's website when dedicate crawl is not set. Crawl rate is the QPS of crawl request Google sends to the user's website.

| Property | Type | Description |
|----------|------|-------------|
| `googleOrganicCrawlRate` | `GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries` | Google's organic crawl rate time series, which is the sum of all googlebots' crawl rate. Please r... |
| `vertexAiOrganicCrawlRate` | `GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries` | Vertex AI's organic crawl rate time series, which is the crawl rate of Google-CloudVertexBot when... |

### `GoogleCloudDiscoveryengineV1alphaPatientFilterOperationMetadata`

Metadata related to the progress of the various patient filter operations. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `filtersAddedCount` | `string` | The number of patient IDs added to the patient filter. |
| `filtersRemovedCount` | `string` | The number of patient IDs removed from the patient filter. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaProject`

Metadata and configurations for a Google Cloud project in the service.

| Property | Type | Description |
|----------|------|-------------|
| `configurableBillingStatus` | `GoogleCloudDiscoveryengineV1alphaProjectConfigurableBillingStatus` | Output only. The current status of the project's configurable billing. |
| `createTime` | `string` | Output only. The timestamp when this project is created. |
| `customerProvidedConfig` | `GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfig` | Optional. Customer provided configurations. |
| `name` | `string` | Output only. Full resource name of the project, for example `projects/{project}`. Note that when ... |
| `provisionCompletionTime` | `string` | Output only. The timestamp when this project is successfully provisioned. Empty value means this ... |
| `serviceTermsMap` | `object` | Output only. A map of terms of services. The key is the `id` of ServiceTerms. |

### `GoogleCloudDiscoveryengineV1alphaProjectConfigurableBillingStatus`

Represents the currently effective configurable billing parameters. These values are derived from the customer's subscription history stored internally and reflect the thresholds actively being used for billing purposes at the time of the GetProject call. This includes the start_time of the subscription and may differ from the values in `customer_provided_config` due to billing rules (e.g., scale-downs taking effect only at the start of a new month).

| Property | Type | Description |
|----------|------|-------------|
| `effectiveIndexingCoreThreshold` | `string` | Optional. The currently effective Indexing Core threshold. This is the threshold against which In... |
| `effectiveSearchQpmThreshold` | `string` | Optional. The currently effective Search QPM threshold in queries per minute. This is the thresho... |
| `indexingCoreThresholdNextUpdateTime` | `string` | Output only. The earliest next update time for the indexing core subscription threshold. This is ... |
| `searchQpmThresholdNextUpdateTime` | `string` | Output only. The earliest next update time for the search QPM subscription threshold. This is bas... |
| `startTime` | `string` | Optional. The start time of the currently active billing subscription. |
| `terminateTime` | `string` | Output only. The latest terminate effective time of search qpm and indexing core subscriptions. |

### `GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfig`

Customer provided configurations.

| Property | Type | Description |
|----------|------|-------------|
| `notebooklmConfig` | `GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfig` | Optional. Configuration for NotebookLM settings. |

### `GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfig`

Configuration for NotebookLM.

| Property | Type | Description |
|----------|------|-------------|
| `dataProtectionPolicy` | `GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicy` | Optional. Specifies the data protection policy for NotebookLM. |
| `modelArmorConfig` | `GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig` | Model Armor configuration to be used for sanitizing user prompts and LLM responses. |
| `observabilityConfig` | `GoogleCloudDiscoveryengineV1alphaObservabilityConfig` | Optional. Observability config for NotebookLM. |
| `optOutNotebookSharing` | `boolean` | Optional. Whether to disable the notebook sharing feature for the project. Default to false if no... |

### `GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicy`

Data protection policy config for NotebookLM.

| Property | Type | Description |
|----------|------|-------------|
| `sensitiveDataProtectionPolicy` | `GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicySensitiveDataProtectionPolicy` | Optional. The sensitive data protection policy. |

### `GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicySensitiveDataProtectionPolicy`

Specifies a Sensitive Data Protection (https://cloud.google.com/sensitive-data-protection/docs/sensitive-data-protection-overview) policy.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `string` | Optional. The Sensitive Data Protection policy resource name. |

### `GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig`

Configuration for customer defined Model Armor templates to be used for sanitizing user prompts and LLM responses.

| Property | Type | Description |
|----------|------|-------------|
| `responseTemplate` | `string` | Optional. The resource name of the Model Armor Template for sanitizing LLM responses. Format: pro... |
| `userPromptTemplate` | `string` | Optional. The resource name of the Model Armor Template for sanitizing user prompts. Format: proj... |

### `GoogleCloudDiscoveryengineV1alphaProjectServiceTerms`

Metadata about the terms of service.

| Property | Type | Description |
|----------|------|-------------|
| `acceptTime` | `string` | The last time when the project agreed to the terms of service. |
| `declineTime` | `string` | The last time when the project declined or revoked the agreement to terms of service. |
| `id` | `string` | The unique identifier of this terms of service. Available terms: * `GA_DATA_USE_TERMS`: [Terms fo... |
| `state` | `string` | Whether the project has accepted/rejected the service terms or it is still pending. |
| `version` | `string` | The version string of the terms of service. For acceptable values, see the comments for id above. |

### `GoogleCloudDiscoveryengineV1alphaProvisionProjectMetadata`

Metadata associated with a project provision operation.

### `GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsMetadata`

Metadata related to the progress of the PurgeCompletionSuggestions operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsResponse`

Response message for CompletionService.PurgeCompletionSuggestions method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `purgeSucceeded` | `boolean` | Whether the completion suggestions were successfully purged. |

### `GoogleCloudDiscoveryengineV1alphaPurgeDocumentsMetadata`

Metadata related to the progress of the PurgeDocuments operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `ignoredCount` | `string` | Count of entries that were ignored as entries were not found. |
| `successCount` | `string` | Count of entries that were deleted successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaPurgeDocumentsResponse`

Response message for DocumentService.PurgeDocuments method. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgeCount` | `string` | The total count of documents purged as a result of the operation. |
| `purgeSample` | `array<string>` | A sample of document names that will be deleted. Only populated if `force` is set to false. A max... |

### `GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesMetadata`

Metadata related to the progress of the PurgeSuggestionDenyListEntries operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesResponse`

Response message for CompletionService.PurgeSuggestionDenyListEntries method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `purgeCount` | `string` | Number of suggestion deny list entries purged. |

### `GoogleCloudDiscoveryengineV1alphaPurgeUserEventsMetadata`

Metadata related to the progress of the PurgeUserEvents operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `successCount` | `string` | Count of entries that were deleted successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaPurgeUserEventsResponse`

Response of the PurgeUserEventsRequest. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgeCount` | `string` | The total count of events purged as a result of the operation. |

### `GoogleCloudDiscoveryengineV1alphaQualityMetrics`

Describes the metrics produced by the evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `docNdcg` | `GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics` | Normalized discounted cumulative gain (NDCG) per document, at various top-k cutoff levels. NDCG m... |
| `docPrecision` | `GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics` | Precision per document, at various top-k cutoff levels. Precision is the fraction of retrieved do... |
| `docRecall` | `GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics` | Recall per document, at various top-k cutoff levels. Recall is the fraction of relevant documents... |
| `pageNdcg` | `GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics` | Normalized discounted cumulative gain (NDCG) per page, at various top-k cutoff levels. NDCG measu... |
| `pageRecall` | `GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics` | Recall per page, at various top-k cutoff levels. Recall is the fraction of relevant pages retriev... |

### `GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics`

Stores the metric values at specific top-k levels.

| Property | Type | Description |
|----------|------|-------------|
| `top1` | `number` | The top-1 value. |
| `top10` | `number` | The top-10 value. |
| `top3` | `number` | The top-3 value. |
| `top5` | `number` | The top-5 value. |

### `GoogleCloudDiscoveryengineV1alphaQuery`

Defines a user inputed query.

| Property | Type | Description |
|----------|------|-------------|
| `parts` | `array<GoogleCloudDiscoveryengineV1alphaQueryPart>` | Query content parts. |
| `queryId` | `string` | Output only. Unique Id for the query. |
| `text` | `string` | Plain text. |

### `GoogleCloudDiscoveryengineV1alphaQueryPart`

Represents a part or the whole of a content, used to represent a query. A query can be made up of multiple parts.

| Property | Type | Description |
|----------|------|-------------|
| `documentReference` | `GoogleCloudDiscoveryengineV1alphaQueryPartDocumentReference` | Other VAIS Document references. |
| `driveDocumentReference` | `GoogleCloudDiscoveryengineV1alphaQueryPartDriveDocumentReference` | Reference to a Google Drive document. |
| `mimeType` | `string` | Optional. The IANA standard MIME type of the data. See https://www.iana.org/assignments/media-typ... |
| `personReference` | `GoogleCloudDiscoveryengineV1alphaQueryPartPersonReference` | Reference to a person. |
| `text` | `string` | Text content. |
| `uiJsonPayload` | `string` | This field is expected to be a ui message in JSON format. As of Q1 2026, ui_json_payload is only ... |

### `GoogleCloudDiscoveryengineV1alphaQueryPartDocumentReference`

Represents a document reference.

| Property | Type | Description |
|----------|------|-------------|
| `destinationUri` | `string` | The destination uri of the reference. |
| `displayTitle` | `string` | The display title of the reference. |
| `documentName` | `string` | The full resource name of the document. Format: `projects/{project}/locations/{location}/collecti... |
| `fileId` | `string` | Output only. The file id of the document data stored in the session context files. |
| `iconUri` | `string` | The icon uri of the reference. |
| `urlForConnector` | `string` | Input only. The url_for_connector of the document returned by Federated Search. |

### `GoogleCloudDiscoveryengineV1alphaQueryPartDriveDocumentReference`

Represents a Google Drive document reference.

| Property | Type | Description |
|----------|------|-------------|
| `destinationUri` | `string` | The destination uri of the reference. |
| `displayTitle` | `string` | The display title of the reference. |
| `documentName` | `string` | The full resource name of the document. Format: `projects/*/locations/*/collections/*/dataStores/... |
| `driveId` | `string` | The Drive id of the document. |
| `fileId` | `string` | Output only. The file id of the Drive document data stored in the session context files. |
| `iconUri` | `string` | The icon uri of the Drive document reference. |

### `GoogleCloudDiscoveryengineV1alphaQueryPartPersonReference`

Represents a person reference.

| Property | Type | Description |
|----------|------|-------------|
| `destinationUri` | `string` | The destination uri of the person. |
| `displayName` | `string` | The display name of the person. |
| `displayPhotoUri` | `string` | The display photo url of the person. |
| `documentName` | `string` | The full resource name of the person. Format: `projects/*/locations/*/collections/*/dataStores/*/... |
| `email` | `string` | The email of the person. |
| `fileId` | `string` | Output only. The file id of the person data stored in the session context files. |
| `personId` | `string` | The person id of the person. |

### `GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata`

Metadata related to the progress of the SiteSearchEngineService.RecrawlUris operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `invalidUris` | `array<string>` | Unique URIs in the request that have invalid format. Sample limited to 1000. |
| `invalidUrisCount` | `integer` | Total number of unique URIs in the request that have invalid format. |
| `noindexUris` | `array<string>` | URIs that have no index meta tag. Sample limited to 1000. |
| `noindexUrisCount` | `integer` | Total number of URIs that have no index meta tag. |
| `pendingCount` | `integer` | Total number of URIs that have yet to be crawled. |
| `quotaExceededCount` | `integer` | Total number of URIs that were rejected due to insufficient indexing resources. |
| `successCount` | `integer` | Total number of URIs that have been crawled so far. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |
| `urisNotMatchingTargetSites` | `array<string>` | Unique URIs in the request that don't match any TargetSite in the DataStore, only match TargetSit... |
| `urisNotMatchingTargetSitesCount` | `integer` | Total number of URIs that don't match any TargetSites. |
| `validUrisCount` | `integer` | Total number of unique URIs in the request that are not in invalid_uris. |

### `GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponse`

Response message for SiteSearchEngineService.RecrawlUris method.

| Property | Type | Description |
|----------|------|-------------|
| `failedUris` | `array<string>` | URIs that were not crawled before the LRO terminated. |
| `failureSamples` | `array<GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo>` | Details for a sample of up to 10 `failed_uris`. |

### `GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo`

Details about why a particular URI failed to be crawled. Each FailureInfo contains one FailureReason per CorpusType.

| Property | Type | Description |
|----------|------|-------------|
| `failureReasons` | `array<GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason>` | List of failure reasons by corpus type (e.g. desktop, mobile). |
| `uri` | `string` | URI that failed to be crawled. |

### `GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason`

Details about why crawling failed for a particular CorpusType, e.g., DESKTOP and MOBILE crawling may fail for different reasons.

| Property | Type | Description |
|----------|------|-------------|
| `corpusType` | `string` | DESKTOP, MOBILE, or CORPUS_TYPE_UNSPECIFIED. |
| `errorMessage` | `string` | Reason why the URI was not crawled. |

### `GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateMetadata`

Metadata related to the progress of the CrawlRateManagementService.RemoveDedicatedCrawlRate operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateResponse`

Response message for CrawlRateManagementService.RemoveDedicatedCrawlRate method. It simply returns the state of the response, and an error message if the state is FAILED.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` | Errors from service when handling the request. |
| `state` | `string` | Output only. The state of the response. |

### `GoogleCloudDiscoveryengineV1alphaRemovePatientFilterRequest`

Request for DataStoreService.RemovePatientFilter method.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/colle... |
| `filterGroups` | `array<string>` | Required. Names of the Group resources to use as a basis for the list of patients to remove from ... |

### `GoogleCloudDiscoveryengineV1alphaReplacePatientFilterRequest`

Request for DataStoreService.ReplacePatientFilter method.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/colle... |
| `filterGroups` | `array<string>` | Required. Names of the Group resources to use as a basis for the list of patients for the new pat... |

### `GoogleCloudDiscoveryengineV1alphaSafetyRating`

Safety rating corresponding to the generated content.

| Property | Type | Description |
|----------|------|-------------|
| `blocked` | `boolean` | Output only. Indicates whether the content was filtered out because of this rating. |
| `category` | `string` | Output only. Harm category. |
| `probability` | `string` | Output only. Harm probability levels in the content. |
| `probabilityScore` | `number` | Output only. Harm probability score. |
| `severity` | `string` | Output only. Harm severity levels in the content. |
| `severityScore` | `number` | Output only. Harm severity score. |

### `GoogleCloudDiscoveryengineV1alphaSchema`

Defines the structure and layout of a type of document data.

| Property | Type | Description |
|----------|------|-------------|
| `fieldConfigs` | `array<GoogleCloudDiscoveryengineV1alphaFieldConfig>` | Output only. Configurations for fields of the schema. |
| `jsonSchema` | `string` | The JSON representation of the schema. |
| `name` | `string` | Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{... |
| `structSchema` | `object` | The structured representation of the schema. |

### `GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion`

Promotion proto includes uri and other helping information to display the promotion.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. The Promotion description. Maximum length: 200 characters. |
| `document` | `string` | Optional. The Document the user wants to promote. For site search, leave unset and only populate ... |
| `enabled` | `boolean` | Optional. The enabled promotion will be returned for any serving configs associated with the pare... |
| `imageUri` | `string` | Optional. The promotion thumbnail image url. |
| `title` | `string` | Required. The title of the promotion. Maximum length: 160 characters. |
| `uri` | `string` | Optional. The URL for the page the user wants to promote. Must be set for site search. For other ... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequest`

Request message for SearchService.Search method.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec` | Boost specification to boost certain documents. For more information on boosting, see [Boosting](... |
| `branch` | `string` | The branch resource name, such as `projects/*/locations/global/collections/default_collection/dat... |
| `canonicalFilter` | `string` | The default filter that is applied when a user performs a search without checking any filters on ... |
| `contentSearchSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec` | A specification for configuring the behavior of content search. |
| `crowdingSpecs` | `array<GoogleCloudDiscoveryengineV1alphaSearchRequestCrowdingSpec>` | Optional. Crowding specifications for improving result diversity. If multiple CrowdingSpecs are s... |
| `customFineTuningSpec` | `GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec` | Custom fine tuning configs. If set, it has higher priority than the configs set in ServingConfig.... |
| `dataStoreSpecs` | `array<GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec>` | Specifications that define the specific DataStores to be searched, along with configurations for ... |
| `displaySpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestDisplaySpec` | Optional. Config for display feature, like match highlighting on search results. |
| `embeddingSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec` | Uses the provided embedding to do additional semantic document retrieval. The retrieval is based ... |
| `facetSpecs` | `array<GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec>` | Facet specifications for faceted search. If empty, no facets are returned. A maximum of 100 value... |
| `filter` | `string` | The filter syntax consists of an expression language for constructing a predicate from one or mor... |
| `imageQuery` | `GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery` | Raw image query. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see [Standard field... |
| `naturalLanguageQueryUnderstandingSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec` | Optional. Config for natural language query understanding capabilities, such as extracting struct... |
| `numResultsPerDataStore` | `integer` | Optional. The maximum number of results to retrieve from each data store. If not specified, it wi... |
| `offset` | `integer` | A 0-indexed integer that specifies the current offset (that is, starting result location, amongst... |
| `oneBoxPageSize` | `integer` | The maximum number of results to return for OneBox. This applies to each OneBox type individually... |
| `orderBy` | `string` | The order in which documents are returned. Documents can be ordered by a field in an Document obj... |
| `pageCategories` | `array<string>` | Optional. The categories associated with a category page. Must be set for category navigation que... |
| `pageSize` | `integer` | Maximum number of Documents to return. The maximum allowed value depends on the data type. Values... |
| `pageToken` | `string` | A page token received from a previous SearchService.Search call. Provide this to retrieve the sub... |
| `params` | `object` | Additional search parameters. For public website search only, supported values are: * `user_count... |
| `personalizationSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec` | The specification for personalization. Notice that if both ServingConfig.personalization_spec and... |
| `query` | `string` | Raw search query. |
| `queryExpansionSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec` | The query expansion specification that specifies the conditions under which query expansion occurs. |
| `rankingExpression` | `string` | Optional. The ranking expression controls the customized ranking on retrieval documents. This ove... |
| `rankingExpressionBackend` | `string` | Optional. The backend to use for the ranking expression evaluation. |
| `regionCode` | `string` | The Unicode country/region code (CLDR) of a location, such as "US" and "419". For more informatio... |
| `relevanceFilterSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpec` | Optional. The granular relevance filtering specification. If not specified, the global `relevance... |
| `relevanceScoreSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceScoreSpec` | Optional. The specification for returning the relevance score. |
| `relevanceThreshold` | `string` | The global relevance threshold of the search results. Defaults to Google defined threshold, lever... |
| `safeSearch` | `boolean` | Whether to turn on safe search. This is only supported for website search. |
| `searchAddonSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAddonSpec` | Optional. SearchAddonSpec is used to disable add-ons for search as per new repricing model. This ... |
| `searchAsYouTypeSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec` | Search as you type configuration. Only supported for the IndustryVertical.MEDIA vertical. |
| `servingConfig` | `string` | Required. The resource name of the Search serving config, such as `projects/*/locations/global/co... |
| `session` | `string` | The session resource name. Optional. Session allows users to do multi-turn /search API calls or c... |
| `sessionSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec` | Session specification. Can be used only when `session` is set. |
| `spellCorrectionSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec` | The spell correction specification that specifies the mode under which spell correction takes eff... |
| `useLatestData` | `boolean` | Uses the Engine, ServingConfig and Control freshly read from the database. Note: this skips confi... |
| `userInfo` | `GoogleCloudDiscoveryengineV1alphaUserInfo` | Information about the end user. Highly recommended for analytics and personalization. UserInfo.us... |
| `userLabels` | `object` | The user labels applied to a resource must meet the following requirements: * Each resource can h... |
| `userPseudoId` | `string` | Optional. A unique identifier for tracking visitors. For example, this could be implemented with ... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec`

Boost specification to boost certain documents.

| Property | Type | Description |
|----------|------|-------------|
| `conditionBoostSpecs` | `array<GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec>` | Condition boost specifications. If a document matches multiple conditions in the specifications, ... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec`

Boost applies to documents which match a condition.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Strength of the condition boost, which should be in [-1, 1]. Negative boost means demotion. Defau... |
| `boostControlSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec` | Complex specification for custom ranking based on customer defined attribute value. |
| `condition` | `string` | An expression which specifies a boost condition. The syntax and supported fields are the same as ... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec`

Specification for custom ranking based on customer specified attribute value. It provides more controls for customized ranking than the simple (condition, boost) combination above.

| Property | Type | Description |
|----------|------|-------------|
| `attributeType` | `string` | The attribute type to be used to determine the boost amount. The attribute value can be derived f... |
| `controlPoints` | `array<GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint>` | The control points used to define the curve. The monotonic function (defined through the interpol... |
| `fieldName` | `string` | The name of the field whose value will be used to determine the boost amount. |
| `interpolationType` | `string` | The interpolation type to be applied to connect the control points listed below. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint`

The control points used to define the curve. The curve defined through these control points can only be monotonically increasing or decreasing(constant values are acceptable).

| Property | Type | Description |
|----------|------|-------------|
| `attributeValue` | `string` | Can be one of: 1. The numerical field value. 2. The duration spec for freshness: The value must b... |
| `boostAmount` | `number` | The value between -1 to 1 by which to boost the score if the attribute_value evaluates to the val... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec`

A specification for configuring the behavior of content search.

| Property | Type | Description |
|----------|------|-------------|
| `chunkSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec` | Specifies the chunk spec to be returned from the search response. Only available if the SearchReq... |
| `extractiveContentSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec` | If there is no extractive_content_spec provided, there will be no extractive answer in the search... |
| `searchResultMode` | `string` | Specifies the search result mode. If unspecified, the search result mode defaults to `DOCUMENTS`. |
| `snippetSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec` | If `snippetSpec` is not specified, snippets are not included in the search response. |
| `summarySpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec` | If `summarySpec` is not specified, summaries are not included in the search response. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec`

Specifies the chunk spec to be returned from the search response. Only available if the SearchRequest.ContentSearchSpec.search_result_mode is set to CHUNKS

| Property | Type | Description |
|----------|------|-------------|
| `numNextChunks` | `integer` | The number of next chunks to be returned of the current chunk. The maximum allowed value is 3. If... |
| `numPreviousChunks` | `integer` | The number of previous chunks to be returned of the current chunk. The maximum allowed value is 3... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec`

A specification for configuring the extractive content in a search response.

| Property | Type | Description |
|----------|------|-------------|
| `maxExtractiveAnswerCount` | `integer` | The maximum number of extractive answers returned in each search result. An extractive answer is ... |
| `maxExtractiveSegmentCount` | `integer` | The max number of extractive segments returned in each search result. Only applied if the DataSto... |
| `numNextSegments` | `integer` | Return at most `num_next_segments` segments after each selected segments. |
| `numPreviousSegments` | `integer` | Specifies whether to also include the adjacent from each selected segments. Return at most `num_p... |
| `returnExtractiveSegmentScore` | `boolean` | Specifies whether to return the confidence score from the extractive segments in each search resu... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec`

A specification for configuring snippets in a search response.

| Property | Type | Description |
|----------|------|-------------|
| `maxSnippetCount` | `integer` | [DEPRECATED] This field is deprecated. To control snippet return, use `return_snippet` field. For... |
| `referenceOnly` | `boolean` | [DEPRECATED] This field is deprecated and will have no affect on the snippet. |
| `returnSnippet` | `boolean` | If `true`, then return snippet. If no snippet can be generated, we return "No snippet is availabl... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec`

A specification for configuring a summary returned in a search response.

| Property | Type | Description |
|----------|------|-------------|
| `ignoreAdversarialQuery` | `boolean` | Specifies whether to filter out adversarial queries. The default value is `false`. Google employs... |
| `ignoreJailBreakingQuery` | `boolean` | Optional. Specifies whether to filter out jail-breaking queries. The default value is `false`. Go... |
| `ignoreLowRelevantContent` | `boolean` | Specifies whether to filter out queries that have low relevance. The default value is `false`. If... |
| `ignoreNonSummarySeekingQuery` | `boolean` | Specifies whether to filter out queries that are not summary-seeking. The default value is `false... |
| `includeCitations` | `boolean` | Specifies whether to include citations in the summary. The default value is `false`. When this fi... |
| `languageCode` | `string` | Language code for Summary. Use language tags defined by [BCP47](https://www.rfc-editor.org/rfc/bc... |
| `modelPromptSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec` | If specified, the spec will be used to modify the prompt provided to the LLM. |
| `modelSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec` | If specified, the spec will be used to modify the model specification provided to the LLM. |
| `multimodalSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecMultiModalSpec` | Optional. Multimodal specification. |
| `summaryResultCount` | `integer` | The number of top results to generate the summary from. If the number of results returned is less... |
| `useSemanticChunks` | `boolean` | If true, answer will be generated from most relevant chunks from top search results. This feature... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec`

Specification of the prompt to use with the model.

| Property | Type | Description |
|----------|------|-------------|
| `preamble` | `string` | Text at the beginning of the prompt that instructs the assistant. Examples are available in the u... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec`

Specification of the model.

| Property | Type | Description |
|----------|------|-------------|
| `version` | `string` | The model version used to generate the summary. Supported values are: * `stable`: string. Default... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecMultiModalSpec`

Multimodal specification: Will return an image from specified source. If multiple sources are specified, the pick is a quality based decision.

| Property | Type | Description |
|----------|------|-------------|
| `imageSource` | `string` | Optional. Source of image returned in the answer. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestCrowdingSpec`

Specification for crowding. Crowding improves the diversity of search results by limiting the number of results that share the same field value. For example, crowding on the color field with a max_count of 3 and mode DROP_CROWDED_RESULTS will return at most 3 results with the same color across all pages.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | The field to use for crowding. Documents can be crowded by a field in the Document object. Crowdi... |
| `maxCount` | `integer` | The maximum number of documents to keep per value of the field. Once there are at least max_count... |
| `mode` | `string` | Mode to use for documents that are crowded away. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec`

A struct to define data stores to filter on in a search call and configurations for those data stores. Otherwise, an `INVALID_ARGUMENT` error is returned.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec` | Optional. Boost specification to boost certain documents. For more information on boosting, see [... |
| `customSearchOperators` | `string` | Optional. Custom search operators which if specified will be used to filter results from workspac... |
| `dataStore` | `string` | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/colle... |
| `filter` | `string` | Optional. Filter specification to filter documents in the data store specified by data_store fiel... |
| `numResults` | `integer` | Optional. The maximum number of results to retrieve from this data store. If not specified, it wi... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestDisplaySpec`

Specifies features for display, like match highlighting.

| Property | Type | Description |
|----------|------|-------------|
| `matchHighlightingCondition` | `string` | The condition under which match highlighting should occur. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec`

The specification that uses customized query embedding vector to do semantic document retrieval.

| Property | Type | Description |
|----------|------|-------------|
| `embeddingVectors` | `array<GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector>` | The embedding vector used for retrieval. Limit to 1. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector`

Embedding vector.

| Property | Type | Description |
|----------|------|-------------|
| `fieldPath` | `string` | Embedding field path in schema. |
| `vector` | `array<number>` | Query embedding vector. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec`

A facet specification to perform faceted search.

| Property | Type | Description |
|----------|------|-------------|
| `enableDynamicPosition` | `boolean` | Enables dynamic position for this facet. If set to true, the position of this facet among all fac... |
| `excludedFilterKeys` | `array<string>` | List of keys to exclude when faceting. By default, FacetKey.key is not excluded from the filter u... |
| `facetKey` | `GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey` | Required. The facet key specification. |
| `limit` | `integer` | Maximum facet values that are returned for this facet. If unspecified, defaults to 20. The maximu... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey`

Specifies how a facet is computed.

| Property | Type | Description |
|----------|------|-------------|
| `caseInsensitive` | `boolean` | True to make facet keys case insensitive when getting faceting values with prefixes or contains; ... |
| `contains` | `array<string>` | Only get facet values that contain the given strings. For example, suppose "category" has three v... |
| `intervals` | `array<GoogleCloudDiscoveryengineV1alphaInterval>` | Set only if values should be bucketed into intervals. Must be set for facets with numerical value... |
| `key` | `string` | Required. Supported textual and numerical facet keys in Document object, over which the facet val... |
| `orderBy` | `string` | The order in which documents are returned. Allowed values are: * "count desc", which means order ... |
| `prefixes` | `array<string>` | Only get facet values that start with the given string prefix. For example, suppose "category" ha... |
| `restrictedValues` | `array<string>` | Only get facet for the given restricted values. Only supported on textual fields. For example, su... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery`

Specifies the image query input.

| Property | Type | Description |
|----------|------|-------------|
| `imageBytes` | `string` | Base64 encoded image bytes. Supported image formats: JPEG, PNG, and BMP. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec`

Specification to enable natural language understanding capabilities for search requests.

| Property | Type | Description |
|----------|------|-------------|
| `allowedFieldNames` | `array<string>` | Optional. Allowlist of fields that can be used for natural language filter extraction. By default... |
| `extractedFilterBehavior` | `string` | Optional. Controls behavior of how extracted filters are applied to the search. The default behav... |
| `filterExtractionCondition` | `string` | The condition under which filter extraction should occur. Server behavior defaults to `DISABLED`. |
| `geoSearchQueryDetectionFieldNames` | `array<string>` | Field names used for location-based filtering, where geolocation filters are detected in natural ... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec`

The specification for personalization.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | The personalization mode of the search request. Defaults to Mode.AUTO. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec`

Specification to determine under which conditions query expansion should occur.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | The condition under which query expansion should occur. Default to Condition.DISABLED. |
| `pinUnexpandedResults` | `boolean` | Whether to pin unexpanded results. If this field is set to true, unexpanded products are always a... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpec`

Relevance filtering specification.

| Property | Type | Description |
|----------|------|-------------|
| `keywordSearchThreshold` | `GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec` | Optional. Relevance filtering threshold specification for keyword search. |
| `semanticSearchThreshold` | `GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec` | Optional. Relevance filtering threshold specification for semantic search. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec`

Specification for relevance filtering on a specific sub-search.

| Property | Type | Description |
|----------|------|-------------|
| `relevanceThreshold` | `string` | Pre-defined relevance threshold for the sub-search. |
| `semanticRelevanceThreshold` | `number` | Custom relevance threshold for the sub-search. The value must be in [0.0, 1.0]. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceScoreSpec`

The specification for returning the document relevance score.

| Property | Type | Description |
|----------|------|-------------|
| `returnRelevanceScore` | `boolean` | Optional. Whether to return the relevance score for search results. The higher the score, the mor... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAddonSpec`

SearchAddonSpec is used to disable add-ons for search as per new repricing model. By default if the SearchAddonSpec is not specified, we consider that the customer wants to enable them wherever applicable.

| Property | Type | Description |
|----------|------|-------------|
| `disableGenerativeAnswerAddOn` | `boolean` | Optional. If true, generative answer add-on is disabled. Generative answer add-on includes natura... |
| `disableKpiPersonalizationAddOn` | `boolean` | Optional. If true, disables event re-ranking and personalization to optimize KPIs & personalize r... |
| `disableSemanticAddOn` | `boolean` | Optional. If true, semantic add-on is disabled. Semantic add-on includes embeddings and jetstream. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec`

Specification for search as you type in search requests.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | The condition under which search as you type should occur. Default to Condition.DISABLED. |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec`

Session specification. Multi-turn Search feature is currently at private GA stage. Please use v1alpha or v1beta version instead before we launch this feature to public GA. Or ask for allowlisting through Google Support team.

| Property | Type | Description |
|----------|------|-------------|
| `queryId` | `string` | If set, the search result gets stored to the "turn" specified by this query ID. Example: Let's sa... |
| `searchResultPersistenceCount` | `integer` | The number of top search results to persist. The persisted search results can be used for the sub... |

### `GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec`

The specification for query spell correction.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | The mode under which spell correction replaces the original search query. Defaults to Mode.AUTO. |

### `GoogleCloudDiscoveryengineV1alphaSession`

External session proto definition.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional. The display name of the session. This field is used to identify the session in the UI. ... |
| `endTime` | `string` | Output only. The time the session finished. |
| `isPinned` | `boolean` | Optional. Whether the session is pinned, pinned session will be displayed on the top of the sessi... |
| `labels` | `array<string>` | Optional. The labels for the session. Can be set as filter in ListSessionsRequest. |
| `name` | `string` | Immutable. Fully qualified name `projects/{project}/locations/global/collections/{collection}/eng... |
| `startTime` | `string` | Output only. The time the session started. |
| `state` | `string` | The state of the session. |
| `turns` | `array<GoogleCloudDiscoveryengineV1alphaSessionTurn>` | Turns. |
| `userPseudoId` | `string` | A unique identifier for tracking users. |

### `GoogleCloudDiscoveryengineV1alphaSessionTurn`

Represents a turn, including a query from the user and a answer from service.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` | Optional. The resource name of the answer to the user query. Only set if the answer generation (/... |
| `detailedAnswer` | `GoogleCloudDiscoveryengineV1alphaAnswer` | Output only. In ConversationalSearchService.GetSession API, if GetSessionRequest.include_answer_d... |
| `detailedAssistAnswer` | `GoogleCloudDiscoveryengineV1alphaAssistAnswer` | Output only. In ConversationalSearchService.GetSession API, if GetSessionRequest.include_answer_d... |
| `query` | `GoogleCloudDiscoveryengineV1alphaQuery` | Optional. The user query. May not be set if this turn is merely regenerating an answer to a diffe... |
| `queryConfig` | `object` | Optional. Represents metadata related to the query config, for example LLM model and version used... |

### `GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateMetadata`

Metadata related to the progress of the CrawlRateManagementService.SetDedicatedCrawlRate operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateResponse`

Response message for CrawlRateManagementService.SetDedicatedCrawlRate method. It simply returns the state of the response, and an error message if the state is FAILED.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` | Errors from service when handling the request. |
| `state` | `string` | Output only. The state of the response. |

### `GoogleCloudDiscoveryengineV1alphaSetUpDataConnectorMetadata`

Metadata for DataConnectorService.SetUpDataConnector method.

### `GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataMetadata`

Metadata related to the progress of the SiteSearchEngineService.SetUriPatternDocumentData operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataResponse`

Response message for SiteSearchEngineService.SetUriPatternDocumentData method.

### `GoogleCloudDiscoveryengineV1alphaSingleRegionKey`

Metadata for single-regional CMEKs.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Required. Single-regional kms key resource name which will be used to encrypt resources `projects... |

### `GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo`

Verification information for target sites in advanced site search.

| Property | Type | Description |
|----------|------|-------------|
| `siteVerificationState` | `string` | Site verification state indicating the ownership and validity. |
| `verifyTime` | `string` | Latest site verification time. |

### `GoogleCloudDiscoveryengineV1alphaSitemap`

A sitemap for the SiteSearchEngine.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The sitemap's creation time. |
| `name` | `string` | Output only. The fully qualified resource name of the sitemap. `projects/*/locations/*/collection... |
| `uri` | `string` | Public URI for the sitemap, e.g. `www.example.com/sitemap.xml`. |

### `GoogleCloudDiscoveryengineV1alphaTargetSite`

A target site for the SiteSearchEngine.

| Property | Type | Description |
|----------|------|-------------|
| `exactMatch` | `boolean` | Immutable. If set to false, a uri_pattern is generated to include all pages whose address contain... |
| `failureReason` | `GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason` | Output only. Failure reason. |
| `generatedUriPattern` | `string` | Output only. This is system-generated based on the provided_uri_pattern. |
| `indexingStatus` | `string` | Output only. Indexing status. |
| `name` | `string` | Output only. The fully qualified resource name of the target site. `projects/{project}/locations/... |
| `providedUriPattern` | `string` | Required. Input only. The user provided URI pattern from which the `generated_uri_pattern` is gen... |
| `rootDomainUri` | `string` | Output only. Root domain of the provided_uri_pattern. |
| `siteVerificationInfo` | `GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo` | Output only. Site ownership and validity verification status. |
| `type` | `string` | The type of the target site, e.g., whether the site is to be included or excluded. |
| `updateTime` | `string` | Output only. The target site's last updated time. |

### `GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason`

Site search indexing failure reasons.

| Property | Type | Description |
|----------|------|-------------|
| `quotaFailure` | `GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure` | Failed due to insufficient quota. |

### `GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure`

Failed due to insufficient quota.

| Property | Type | Description |
|----------|------|-------------|
| `totalRequiredQuota` | `string` | This number is an estimation on how much total quota this project needs to successfully complete ... |

### `GoogleCloudDiscoveryengineV1alphaTenant`

Tenant information for a connector source. This includes some of the same information stored in the Credential message, but is limited to only what is needed to provide a list of accessible tenants to the user.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional display name for the tenant, e.g. "My Slack Team". |
| `id` | `string` | The tenant's instance ID. Examples: Jira ("8594f221-9797-5f78-1fa4-485e198d7cd0"), Slack ("T12345... |
| `uri` | `string` | The URI of the tenant, if applicable. For example, the URI of a Jira instance is https://my-jira-... |

### `GoogleCloudDiscoveryengineV1alphaTrainCustomModelMetadata`

Metadata related to the progress of the TrainCustomModel operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaTrainCustomModelResponse`

Response of the TrainCustomModelRequest. This message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1alphaImportErrorConfig` | Echoes the destination for the complete errors in the request if set. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the data. |
| `metrics` | `object` | The metrics of the trained model. |
| `modelName` | `string` | Fully qualified name of the CustomTuningModel. |
| `modelStatus` | `string` | The trained model status. Possible values are: * **bad-data**: The training data quality is bad. ... |

### `GoogleCloudDiscoveryengineV1alphaTuneEngineMetadata`

Metadata associated with a tune operation.

| Property | Type | Description |
|----------|------|-------------|
| `engine` | `string` | Required. The resource name of the engine that this tune applies to. Format: `projects/{project}/... |

### `GoogleCloudDiscoveryengineV1alphaTuneEngineResponse`

Response associated with a tune operation.

### `GoogleCloudDiscoveryengineV1alphaUpdateCmekConfigMetadata`

Metadata related to the progress of the CmekConfigService.UpdateCmekConfig operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaUpdateCollectionMetadata`

Metadata related to the progress of the CollectionService.UpdateCollection operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaUpdateSchemaMetadata`

Metadata for UpdateSchema LRO.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaUpdateSessionRequest`

Request for UpdateSession method.

| Property | Type | Description |
|----------|------|-------------|
| `session` | `GoogleCloudDiscoveryengineV1alphaSession` | Required. The Session to update. |
| `updateMask` | `string` | Indicates which fields in the provided Session to update. The following are NOT supported: * Sess... |

### `GoogleCloudDiscoveryengineV1alphaUpdateTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.UpdateTargetSite operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1alphaUserInfo`

Information of an end user.

| Property | Type | Description |
|----------|------|-------------|
| `timeZone` | `string` | Optional. IANA time zone, e.g. Europe/Budapest. |
| `userAgent` | `string` | User agent as included in the HTTP header. The field must be a UTF-8 encoded string with a length... |
| `userId` | `string` | Highly recommended for logged-in users. Unique identifier for logged-in user, such as a user name... |

### `GoogleCloudDiscoveryengineV1alphaUserLicense`

User License information assigned by the admin.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. User created timestamp. |
| `lastLoginTime` | `string` | Output only. User last logged in time. If the user has not logged in yet, this field will be empty. |
| `licenseAssignmentState` | `string` | Output only. License assignment state of the user. If the user is assigned with a license config,... |
| `licenseConfig` | `string` | Optional. The full resource name of the Subscription(LicenseConfig) assigned to the user. |
| `updateTime` | `string` | Output only. User update timestamp. |
| `userPrincipal` | `string` | Required. Immutable. The user principal of the User, could be email address or other prinical ide... |
| `userProfile` | `string` | Optional. The user profile. We user user full name(First name + Last name) as user profile. |

### `GoogleCloudDiscoveryengineV1alphaWorkspaceConfig`

Config to store data store type configuration for workspace data

| Property | Type | Description |
|----------|------|-------------|
| `dasherCustomerId` | `string` | Obfuscated Dasher customer ID. |
| `superAdminEmailAddress` | `string` | Optional. The super admin email address for the workspace that will be used for access token gene... |
| `superAdminServiceAccount` | `string` | Optional. The super admin service account for the workspace that will be used for access token ge... |
| `type` | `string` | The Google Workspace data source. |

### `GoogleCloudDiscoveryengineV1betaAclConfig`

Access Control Configuration.

| Property | Type | Description |
|----------|------|-------------|
| `idpConfig` | `GoogleCloudDiscoveryengineV1betaIdpConfig` | Identity provider config. |
| `name` | `string` | Immutable. The full resource name of the acl configuration. Format: `projects/{project}/locations... |

### `GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig`

Configuration data for advance site search.

| Property | Type | Description |
|----------|------|-------------|
| `disableAutomaticRefresh` | `boolean` | If set true, automatic refresh is disabled for the DataStore. |
| `disableInitialIndex` | `boolean` | If set true, initial indexing is disabled for the DataStore. |

### `GoogleCloudDiscoveryengineV1betaBatchCreateTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.BatchCreateTargetSites operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesResponse`

Response message for SiteSearchEngineService.BatchCreateTargetSites method.

| Property | Type | Description |
|----------|------|-------------|
| `targetSites` | `array<GoogleCloudDiscoveryengineV1betaTargetSite>` | TargetSites created. |

### `GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesMetadata`

Metadata related to the progress of the UserLicenseService.BatchUpdateUserLicenses operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of user licenses that failed to be updated. |
| `successCount` | `string` | Count of user licenses successfully updated. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesResponse`

Response message for UserLicenseService.BatchUpdateUserLicenses method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `userLicenses` | `array<GoogleCloudDiscoveryengineV1betaUserLicense>` | UserLicenses successfully updated. |

### `GoogleCloudDiscoveryengineV1betaCmekConfig`

Configurations used to enable CMEK data encryption with Cloud KMS keys.

| Property | Type | Description |
|----------|------|-------------|
| `isDefault` | `boolean` | Output only. The default CmekConfig for the Customer. |
| `kmsKey` | `string` | Required. KMS key resource name which will be used to encrypt resources `projects/{project}/locat... |
| `kmsKeyVersion` | `string` | Output only. KMS key version resource name which will be used to encrypt resources `/cryptoKeyVer... |
| `lastRotationTimestampMicros` | `string` | Output only. The timestamp of the last key rotation. |
| `name` | `string` | Required. The name of the CmekConfig of the form `projects/{project}/locations/{location}/cmekCon... |
| `notebooklmState` | `string` | Output only. Whether the NotebookLM Corpus is ready to be used. |
| `singleRegionKeys` | `array<GoogleCloudDiscoveryengineV1betaSingleRegionKey>` | Optional. Single-regional CMEKs that are required for some VAIS features. |
| `state` | `string` | Output only. The states of the CmekConfig. |

### `GoogleCloudDiscoveryengineV1betaCondition`

Defines circumstances to be checked before allowing a behavior

| Property | Type | Description |
|----------|------|-------------|
| `activeTimeRange` | `array<GoogleCloudDiscoveryengineV1betaConditionTimeRange>` | Range of time(s) specifying when condition is active. Maximum of 10 time ranges. |
| `queryRegex` | `string` | Optional. Query regex to match the whole search query. Cannot be set when Condition.query_terms i... |
| `queryTerms` | `array<GoogleCloudDiscoveryengineV1betaConditionQueryTerm>` | Search only A list of terms to match the query on. Cannot be set when Condition.query_regex is se... |

### `GoogleCloudDiscoveryengineV1betaConditionQueryTerm`

Matcher for search request query

| Property | Type | Description |
|----------|------|-------------|
| `fullMatch` | `boolean` | Whether the search query needs to exactly match the query term. |
| `value` | `string` | The specific query value to match against Must be lowercase, must be UTF-8. Can have at most 3 sp... |

### `GoogleCloudDiscoveryengineV1betaConditionTimeRange`

Used for time-dependent conditions.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End of time range. Range is inclusive. Must be in the future. |
| `startTime` | `string` | Start of time range. Range is inclusive. |

### `GoogleCloudDiscoveryengineV1betaControl`

Defines a conditioned behavior to employ during serving. Must be attached to a ServingConfig to be considered at serving time. Permitted actions dependent on `SolutionType`.

| Property | Type | Description |
|----------|------|-------------|
| `associatedServingConfigIds` | `array<string>` | Output only. List of all ServingConfig IDs this control is attached to. May take up to 10 minutes... |
| `boostAction` | `GoogleCloudDiscoveryengineV1betaControlBoostAction` | Defines a boost-type control |
| `conditions` | `array<GoogleCloudDiscoveryengineV1betaCondition>` | Determines when the associated action will trigger. Omit to always apply the action. Currently on... |
| `displayName` | `string` | Required. Human readable name. The identifier used in UI views. Must be UTF-8 encoded string. Len... |
| `filterAction` | `GoogleCloudDiscoveryengineV1betaControlFilterAction` | Defines a filter-type control Currently not supported by Recommendation |
| `name` | `string` | Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/controls/*` |
| `promoteAction` | `GoogleCloudDiscoveryengineV1betaControlPromoteAction` | Promote certain links based on predefined trigger queries. |
| `redirectAction` | `GoogleCloudDiscoveryengineV1betaControlRedirectAction` | Defines a redirect-type control. |
| `solutionType` | `string` | Required. Immutable. What solution the control belongs to. Must be compatible with vertical of re... |
| `synonymsAction` | `GoogleCloudDiscoveryengineV1betaControlSynonymsAction` | Treats a group of terms as synonyms of one another. |
| `useCases` | `array<string>` | Specifies the use case for the control. Affects what condition fields can be set. Only applies to... |

### `GoogleCloudDiscoveryengineV1betaControlBoostAction`

Adjusts order of products in returned list.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Strength of the boost, which should be in [-1, 1]. Negative boost means demotion. Default is 0.0 ... |
| `dataStore` | `string` | Required. Specifies which data store's documents can be boosted by this control. Full data store ... |
| `filter` | `string` | Required. Specifies which products to apply the boost to. If no filter is provided all products w... |
| `fixedBoost` | `number` | Optional. Strength of the boost, which should be in [-1, 1]. Negative boost means demotion. Defau... |
| `interpolationBoostSpec` | `GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpec` | Optional. Complex specification for custom ranking based on customer defined attribute value. |

### `GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpec`

Specification for custom ranking based on customer specified attribute value. It provides more controls for customized ranking than the simple (condition, boost) combination above.

| Property | Type | Description |
|----------|------|-------------|
| `attributeType` | `string` | Optional. The attribute type to be used to determine the boost amount. The attribute value can be... |
| `controlPoints` | `array<GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpecControlPoint>` | Optional. The control points used to define the curve. The monotonic function (defined through th... |
| `fieldName` | `string` | Optional. The name of the field whose value will be used to determine the boost amount. |
| `interpolationType` | `string` | Optional. The interpolation type to be applied to connect the control points listed below. |

### `GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpecControlPoint`

The control points used to define the curve. The curve defined through these control points can only be monotonically increasing or decreasing(constant values are acceptable).

| Property | Type | Description |
|----------|------|-------------|
| `attributeValue` | `string` | Optional. Can be one of: 1. The numerical field value. 2. The duration spec for freshness: The va... |
| `boostAmount` | `number` | Optional. The value between -1 to 1 by which to boost the score if the attribute_value evaluates ... |

### `GoogleCloudDiscoveryengineV1betaControlFilterAction`

Specified which products may be included in results. Uses same filter as boost.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Required. Specifies which data store's documents can be filtered by this control. Full data store... |
| `filter` | `string` | Required. A filter to apply on the matching condition results. Required Syntax documentation: htt... |

### `GoogleCloudDiscoveryengineV1betaControlPromoteAction`

Promote certain links based on some trigger queries. Example: Promote shoe store link when searching for `shoe` keyword. The link can be outside of associated data store.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `string` | Required. Data store with which this promotion is attached to. |
| `searchLinkPromotion` | `GoogleCloudDiscoveryengineV1betaSearchLinkPromotion` | Required. Promotion attached to this action. |

### `GoogleCloudDiscoveryengineV1betaControlRedirectAction`

Redirects a shopper to the provided URI.

| Property | Type | Description |
|----------|------|-------------|
| `redirectUri` | `string` | Required. The URI to which the shopper will be redirected. Required. URI must have length equal o... |

### `GoogleCloudDiscoveryengineV1betaControlSynonymsAction`

Creates a set of terms that will act as synonyms of one another. Example: "happy" will also be considered as "glad", "glad" will also be considered as "happy".

| Property | Type | Description |
|----------|------|-------------|
| `synonyms` | `array<string>` | Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at least 2 synonyms. Othe... |

### `GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries`

The historical crawl rate timeseries data, used for monitoring.

| Property | Type | Description |
|----------|------|-------------|
| `qpsTimeSeries` | `GoogleMonitoringV3TimeSeries` | The QPS of the crawl rate. |

### `GoogleCloudDiscoveryengineV1betaCreateDataStoreMetadata`

Metadata related to the progress of the DataStoreService.CreateDataStore operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaCreateEngineMetadata`

Metadata related to the progress of the EngineService.CreateEngine operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaCreateEvaluationMetadata`

Metadata for EvaluationService.CreateEvaluation method.

### `GoogleCloudDiscoveryengineV1betaCreateSchemaMetadata`

Metadata for Create Schema LRO.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaCreateSitemapMetadata`

Metadata related to the progress of the SiteSearchEngineService.CreateSitemap operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaCreateTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.CreateTargetSite operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaDataStore`

DataStore captures global settings and configs at the DataStore level.

| Property | Type | Description |
|----------|------|-------------|
| `aclEnabled` | `boolean` | Immutable. Whether data in the DataStore has ACL information. If set to `true`, the source data m... |
| `advancedSiteSearchConfig` | `GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig` | Optional. Configuration for advanced site search. |
| `billingEstimation` | `GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation` | Output only. Data size estimation for billing. |
| `cmekConfig` | `GoogleCloudDiscoveryengineV1betaCmekConfig` | Output only. CMEK-related information for the DataStore. |
| `configurableBillingApproach` | `string` | Optional. Configuration for configurable billing approach. See |
| `configurableBillingApproachUpdateTime` | `string` | Output only. The timestamp when configurable_billing_approach was last updated. |
| `contentConfig` | `string` | Immutable. The content config of the data store. If this field is unset, the server behavior defa... |
| `createTime` | `string` | Output only. Timestamp the DataStore was created at. |
| `defaultSchemaId` | `string` | Output only. The id of the default Schema associated to this data store. |
| `displayName` | `string` | Required. The data store display name. This field must be a UTF-8 encoded string with a length li... |
| `documentProcessingConfig` | `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig` | Configuration for Document understanding and enrichment. |
| `healthcareFhirConfig` | `GoogleCloudDiscoveryengineV1betaHealthcareFhirConfig` | Optional. Configuration for `HEALTHCARE_FHIR` vertical. |
| `identityMappingStore` | `string` | Immutable. The fully qualified resource name of the associated IdentityMappingStore. This field c... |
| `industryVertical` | `string` | Immutable. The industry vertical that the data store registers. |
| `isInfobotFaqDataStore` | `boolean` | Optional. If set, this DataStore is an Infobot FAQ DataStore. |
| `kmsKeyName` | `string` | Input only. The KMS key to be used to protect this DataStore at creation time. Must be set for re... |
| `languageInfo` | `GoogleCloudDiscoveryengineV1betaLanguageInfo` | Language info for DataStore. |
| `name` | `string` | Immutable. Identifier. The full resource name of the data store. Format: `projects/{project}/loca... |
| `naturalLanguageQueryUnderstandingConfig` | `GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig` | Optional. Configuration for Natural Language Query Understanding. |
| `servingConfigDataStore` | `GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore` | Optional. Stores serving config at DataStore level. |
| `solutionTypes` | `array<string>` | The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MED... |
| `startingSchema` | `GoogleCloudDiscoveryengineV1betaSchema` | The start schema to use for this DataStore when provisioning it. If unset, a default vertical spe... |
| `workspaceConfig` | `GoogleCloudDiscoveryengineV1betaWorkspaceConfig` | Config to store data store type configuration for workspace data. This must be set when DataStore... |

### `GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation`

Estimation of data size per data store.

| Property | Type | Description |
|----------|------|-------------|
| `structuredDataSize` | `string` | Data size for structured data in terms of bytes. |
| `structuredDataUpdateTime` | `string` | Last updated timestamp for structured data. |
| `unstructuredDataSize` | `string` | Data size for unstructured data in terms of bytes. |
| `unstructuredDataUpdateTime` | `string` | Last updated timestamp for unstructured data. |
| `websiteDataSize` | `string` | Data size for websites in terms of bytes. |
| `websiteDataUpdateTime` | `string` | Last updated timestamp for websites. |

### `GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore`

Stores information regarding the serving configurations at DataStore level.

| Property | Type | Description |
|----------|------|-------------|
| `disabledForServing` | `boolean` | Optional. If set true, the DataStore will not be available for serving search requests. |

### `GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries`

The historical dedicated crawl rate timeseries data, used for monitoring. Dedicated crawl is used by Vertex AI to crawl the user's website when dedicate crawl is set.

| Property | Type | Description |
|----------|------|-------------|
| `autoRefreshCrawlErrorRate` | `GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries` | Vertex AI's error rate time series of auto-refresh dedicated crawl. |
| `autoRefreshCrawlRate` | `GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries` | Vertex AI's dedicated crawl rate time series of auto-refresh, which is the crawl rate of Google-C... |
| `userTriggeredCrawlErrorRate` | `GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries` | Vertex AI's error rate time series of user triggered dedicated crawl. |
| `userTriggeredCrawlRate` | `GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries` | Vertex AI's dedicated crawl rate time series of user triggered crawl, which is the crawl rate of ... |

### `GoogleCloudDiscoveryengineV1betaDeleteDataStoreMetadata`

Metadata related to the progress of the DataStoreService.DeleteDataStore operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaDeleteEngineMetadata`

Metadata related to the progress of the EngineService.DeleteEngine operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaDeleteIdentityMappingStoreMetadata`

Metadata related to the progress of the IdentityMappingStoreService.DeleteIdentityMappingStore operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaDeleteSchemaMetadata`

Metadata for DeleteSchema LRO.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaDeleteSitemapMetadata`

Metadata related to the progress of the SiteSearchEngineService.DeleteSitemap operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaDeleteTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.DeleteTargetSite operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchMetadata`

Metadata related to the progress of the SiteSearchEngineService.DisableAdvancedSiteSearch operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchResponse`

Response message for SiteSearchEngineService.DisableAdvancedSiteSearch method.

### `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig`

A singleton resource of DataStore. If it's empty when DataStore is created and DataStore is set to DataStore.ContentConfig.CONTENT_REQUIRED, the default parser will default to digital parser.

| Property | Type | Description |
|----------|------|-------------|
| `chunkingConfig` | `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig` | Whether chunking mode is enabled. |
| `defaultParsingConfig` | `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig` | Configurations for default Document parser. If not specified, we will configure it as default Dig... |
| `name` | `string` | The full resource name of the Document Processing Config. Format: `projects/*/locations/*/collect... |
| `parsingConfigOverrides` | `object` | Map from file type to override the default parsing configuration based on the file type. Supporte... |

### `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig`

Configuration for chunking config.

| Property | Type | Description |
|----------|------|-------------|
| `layoutBasedChunkingConfig` | `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig` | Configuration for the layout based chunking. |

### `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig`

Configuration for the layout based chunking.

| Property | Type | Description |
|----------|------|-------------|
| `chunkSize` | `integer` | The token size limit for each chunk. Supported values: 100-500 (inclusive). Default value: 500. |
| `includeAncestorHeadings` | `boolean` | Whether to include appending different levels of headings to chunks from the middle of the docume... |

### `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig`

Related configurations applied to a specific type of document parser.

| Property | Type | Description |
|----------|------|-------------|
| `digitalParsingConfig` | `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig` | Configurations applied to digital parser. |
| `layoutParsingConfig` | `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig` | Configurations applied to layout parser. |
| `ocrParsingConfig` | `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig` | Configurations applied to OCR parser. Currently it only applies to PDFs. |

### `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig`

The digital parsing configurations for documents.

### `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig`

The layout parsing configurations for documents.

| Property | Type | Description |
|----------|------|-------------|
| `enableGetProcessedDocument` | `boolean` | Optional. If true, the processed document will be made available for the GetProcessedDocument API. |
| `enableImageAnnotation` | `boolean` | Optional. If true, the LLM based annotation is added to the image during parsing. |
| `enableLlmLayoutParsing` | `boolean` | Optional. If true, the pdf layout will be refined using an LLM. |
| `enableTableAnnotation` | `boolean` | Optional. If true, the LLM based annotation is added to the table during parsing. |
| `excludeHtmlClasses` | `array<string>` | Optional. List of HTML classes to exclude from the parsed content. |
| `excludeHtmlElements` | `array<string>` | Optional. List of HTML elements to exclude from the parsed content. |
| `excludeHtmlIds` | `array<string>` | Optional. List of HTML ids to exclude from the parsed content. |
| `structuredContentTypes` | `array<string>` | Optional. Contains the required structure types to extract from the document. Supported values: *... |

### `GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig`

The OCR parsing configurations for documents.

| Property | Type | Description |
|----------|------|-------------|
| `enhancedDocumentElements` | `array<string>` | [DEPRECATED] This field is deprecated. To use the additional enhanced document elements processin... |
| `useNativeText` | `boolean` | If true, will use native text instead of OCR text on pages containing native text. |

### `GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchMetadata`

Metadata related to the progress of the SiteSearchEngineService.EnableAdvancedSiteSearch operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchResponse`

Response message for SiteSearchEngineService.EnableAdvancedSiteSearch method.

### `GoogleCloudDiscoveryengineV1betaEngine`

Metadata that describes the training and serving parameters of an Engine.

| Property | Type | Description |
|----------|------|-------------|
| `appType` | `string` | Optional. Immutable. This the application type which this engine resource represents. NOTE: this ... |
| `chatEngineConfig` | `GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig` | Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT. |
| `chatEngineMetadata` | `GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata` | Output only. Additional information of the Chat Engine. Only applicable if solution_type is SOLUT... |
| `cmekConfig` | `GoogleCloudDiscoveryengineV1betaCmekConfig` | Output only. CMEK-related information for the Engine. |
| `commonConfig` | `GoogleCloudDiscoveryengineV1betaEngineCommonConfig` | Common config spec that specifies the metadata of the engine. |
| `configurableBillingApproach` | `string` | Optional. Configuration for configurable billing approach. |
| `connectorTenantInfo` | `object` | Optional. Maps a connector ID (e.g., "hybrid-github", "shopify") to tenant-specific information r... |
| `createTime` | `string` | Output only. Timestamp the Recommendation Engine was created at. |
| `dataStoreIds` | `array<string>` | Optional. The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE... |
| `disableAnalytics` | `boolean` | Optional. Whether to disable analytics for searches performed on this engine. |
| `displayName` | `string` | Required. The display name of the engine. Should be human readable. UTF-8 encoded string with lim... |
| `features` | `object` | Optional. Feature config for the engine to opt in or opt out of features. Supported keys: * `*`: ... |
| `industryVertical` | `string` | Optional. The industry vertical that the engine registers. The restriction of the Engine industry... |
| `knowledgeGraphConfig` | `GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfig` | Optional. Configurations for the Knowledge Graph. Only applicable if solution_type is SOLUTION_TY... |
| `mediaRecommendationEngineConfig` | `GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfig` | Configurations for the Media Engine. Only applicable on the data stores with solution_type SOLUTI... |
| `modelConfigs` | `object` | Optional. Maps a model name to its specific configuration for this engine. This allows admin user... |
| `name` | `string` | Immutable. Identifier. The fully qualified resource name of the engine. This field must be a UTF-... |
| `observabilityConfig` | `GoogleCloudDiscoveryengineV1betaObservabilityConfig` | Optional. Observability config for the engine. |
| `searchEngineConfig` | `GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig` | Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH. |
| `solutionType` | `string` | Required. The solutions of the engine. |
| `updateTime` | `string` | Output only. Timestamp the Recommendation Engine was last updated. |

### `GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig`

Configurations for a Chat Engine.

| Property | Type | Description |
|----------|------|-------------|
| `agentCreationConfig` | `GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig` | The configurationt generate the Dialogflow agent that is associated to this Engine. Note that the... |
| `allowCrossRegion` | `boolean` | Optional. If the flag set to true, we allow the agent and engine are in different locations, othe... |
| `dialogflowAgentToLink` | `string` | The resource name of an exist Dialogflow agent to link to this Chat Engine. Customers can either ... |

### `GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig`

Configurations for generating a Dialogflow agent. Note that these configurations are one-time consumed by and passed to Dialogflow service. It means they cannot be retrieved using EngineService.GetEngine or EngineService.ListEngines API after engine creation.

| Property | Type | Description |
|----------|------|-------------|
| `business` | `string` | Name of the company, organization or other entity that the agent represents. Used for knowledge c... |
| `defaultLanguageCode` | `string` | Required. The default language of the agent as a language tag. See [Language Support](https://clo... |
| `location` | `string` | Agent location for Agent creation, supported values: global/us/eu. If not provided, us Engine wil... |
| `timeZone` | `string` | Required. The time zone of the agent from the [time zone database](https://www.iana.org/time-zone... |

### `GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata`

Additional information of a Chat Engine. Fields in this message are output only.

| Property | Type | Description |
|----------|------|-------------|
| `dialogflowAgent` | `string` | The resource name of a Dialogflow agent, that this Chat Engine refers to. Format: `projects//loca... |

### `GoogleCloudDiscoveryengineV1betaEngineCommonConfig`

Common configurations for an Engine.

| Property | Type | Description |
|----------|------|-------------|
| `companyName` | `string` | The name of the company, business or entity that is associated with the engine. Setting this may ... |

### `GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfig`

Configuration message for the Knowledge Graph.

| Property | Type | Description |
|----------|------|-------------|
| `cloudKnowledgeGraphTypes` | `array<string>` | Specify entity types to support. |
| `enableCloudKnowledgeGraph` | `boolean` | Whether to enable the Cloud Knowledge Graph for the engine. Defaults to false if not specified. |
| `enablePrivateKnowledgeGraph` | `boolean` | Whether to enable the Private Knowledge Graph for the engine. Defaults to false if not specified. |
| `featureConfig` | `GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfigFeatureConfig` | Optional. Feature config for the Knowledge Graph. |
| `privateKnowledgeGraphTypes` | `array<string>` | Specify entity types to support. |

### `GoogleCloudDiscoveryengineV1betaEngineKnowledgeGraphConfigFeatureConfig`

Feature config for the Knowledge Graph.

| Property | Type | Description |
|----------|------|-------------|
| `disablePrivateKgAutoComplete` | `boolean` | Whether to disable the private KG auto complete for the engine. Defaults to false if not specified. |
| `disablePrivateKgEnrichment` | `boolean` | Whether to disable the private KG enrichment for the engine. Defaults to false if not specified. |
| `disablePrivateKgQueryUiChips` | `boolean` | Whether to disable the private KG for query UI chips. Defaults to false if not specified. |
| `disablePrivateKgQueryUnderstanding` | `boolean` | Whether to disable the private KG query understanding for the engine. Defaults to false if not sp... |

### `GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfig`

Additional config specs for a Media Recommendation engine.

| Property | Type | Description |
|----------|------|-------------|
| `engineFeaturesConfig` | `GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigEngineFeaturesConfig` | Optional. Additional engine features config. |
| `optimizationObjective` | `string` | The optimization objective. e.g., `cvr`. This field together with optimization_objective describe... |
| `optimizationObjectiveConfig` | `GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig` | Name and value of the custom threshold for cvr optimization_objective. For target_field `watch-ti... |
| `trainingState` | `string` | The training state that the engine is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of... |
| `type` | `string` | Required. The type of engine. e.g., `recommended-for-you`. This field together with optimization_... |

### `GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigEngineFeaturesConfig`

More feature configs of the selected engine type.

| Property | Type | Description |
|----------|------|-------------|
| `mostPopularConfig` | `GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig` | Most popular engine feature config. |
| `recommendedForYouConfig` | `GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig` | Recommended for you engine feature config. |

### `GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig`

Feature configurations that are required for creating a Most Popular engine.

| Property | Type | Description |
|----------|------|-------------|
| `timeWindowDays` | `string` | The time window of which the engine is queried at training and prediction time. Positive integers... |

### `GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig`

Custom threshold for `cvr` optimization_objective.

| Property | Type | Description |
|----------|------|-------------|
| `targetField` | `string` | Required. The name of the field to target. Currently supported values: `watch-percentage`, `watch... |
| `targetFieldValueFloat` | `number` | Required. The threshold to be applied to the target (e.g., 0.5). |

### `GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig`

Additional feature configurations for creating a `recommended-for-you` engine.

| Property | Type | Description |
|----------|------|-------------|
| `contextEventType` | `string` | The type of event with which the engine is queried at prediction time. If set to `generic`, only ... |

### `GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig`

Configurations for a Search Engine.

| Property | Type | Description |
|----------|------|-------------|
| `requiredSubscriptionTier` | `string` | Optional. The required subscription tier of this engine. They cannot be modified after engine cre... |
| `searchAddOns` | `array<string>` | The add-on that this search engine enables. |
| `searchTier` | `string` | The search feature tier of this engine. Different tiers might have different pricing. To learn mo... |

### `GoogleCloudDiscoveryengineV1betaEvaluation`

An evaluation is a single execution (or run) of an evaluation process. It encapsulates the state of the evaluation and the resulting data.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp the Evaluation was created at. |
| `endTime` | `string` | Output only. Timestamp the Evaluation was completed at. |
| `error` | `GoogleRpcStatus` | Output only. The error that occurred during evaluation. Only populated when the evaluation's stat... |
| `errorSamples` | `array<GoogleRpcStatus>` | Output only. A sample of errors encountered while processing the request. |
| `evaluationSpec` | `GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec` | Required. The specification of the evaluation. |
| `name` | `string` | Identifier. The full resource name of the Evaluation, in the format of `projects/{project}/locati... |
| `qualityMetrics` | `GoogleCloudDiscoveryengineV1betaQualityMetrics` | Output only. The metrics produced by the evaluation, averaged across all SampleQuerys in the Samp... |
| `state` | `string` | Output only. The state of the evaluation. |

### `GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec`

Describes the specification of the evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `querySetSpec` | `GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec` | Optional. The specification of the query set. |
| `searchRequest` | `GoogleCloudDiscoveryengineV1betaSearchRequest` | Required. The search request that is used to perform the evaluation. Only the following fields wi... |

### `GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec`

Describes the specification of the query set.

| Property | Type | Description |
|----------|------|-------------|
| `sampleQuerySet` | `string` | Optional. The full resource name of the SampleQuerySet used for the evaluation, in the format of ... |

### `GoogleCloudDiscoveryengineV1betaHealthcareFhirConfig`

Config to data store for `HEALTHCARE_FHIR` vertical.

| Property | Type | Description |
|----------|------|-------------|
| `enableConfigurableSchema` | `boolean` | Whether to enable configurable schema for `HEALTHCARE_FHIR` vertical. If set to `true`, the prede... |
| `enableStaticIndexingForBatchIngestion` | `boolean` | Whether to enable static indexing for `HEALTHCARE_FHIR` batch ingestion. If set to `true`, the ba... |
| `initialFilterGroups` | `array<string>` | Optional. Names of the Group resources to use as a basis for the initial patient filter, in forma... |

### `GoogleCloudDiscoveryengineV1betaIdentityMappingEntryOperationMetadata`

IdentityMappingEntry LongRunningOperation metadata for IdentityMappingStoreService.ImportIdentityMappings and IdentityMappingStoreService.PurgeIdentityMappings

| Property | Type | Description |
|----------|------|-------------|
| `failureCount` | `string` | The number of IdentityMappingEntries that failed to be processed. |
| `successCount` | `string` | The number of IdentityMappingEntries that were successfully processed. |
| `totalCount` | `string` | The total number of IdentityMappingEntries that were processed. |

### `GoogleCloudDiscoveryengineV1betaIdpConfig`

Identity Provider Config.

| Property | Type | Description |
|----------|------|-------------|
| `externalIdpConfig` | `GoogleCloudDiscoveryengineV1betaIdpConfigExternalIdpConfig` | External Identity provider config. |
| `idpType` | `string` | Identity provider type configured. |

### `GoogleCloudDiscoveryengineV1betaIdpConfigExternalIdpConfig`

Third party IDP Config.

| Property | Type | Description |
|----------|------|-------------|
| `workforcePoolName` | `string` | Workforce pool name. Example: "locations/global/workforcePools/pool_id" |

### `GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsMetadata`

Metadata related to the progress of the ImportCompletionSuggestions operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of CompletionSuggestions that failed to be imported. |
| `successCount` | `string` | Count of CompletionSuggestions successfully imported. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsResponse`

Response of the CompletionService.ImportCompletionSuggestions method. If the long running operation is done, this message is returned by the google.longrunning.Operations.response field if the operation is successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1betaImportErrorConfig` | The desired location of errors incurred during the Import. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1betaImportDocumentsMetadata`

Metadata related to the progress of the ImportDocuments operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `successCount` | `string` | Count of entries that were processed successfully. |
| `totalCount` | `string` | Total count of entries that were processed. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaImportDocumentsResponse`

Response of the ImportDocumentsRequest. If the long running operation is done, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1betaImportErrorConfig` | Echoes the destination for the complete errors in the request if set. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1betaImportErrorConfig`

Configuration of destination for Import related errors.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPrefix` | `string` | Cloud Storage prefix for import errors. This must be an empty, existing Cloud Storage directory. ... |

### `GoogleCloudDiscoveryengineV1betaImportIdentityMappingsResponse`

Response message for IdentityMappingStoreService.ImportIdentityMappings

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1betaImportSampleQueriesMetadata`

Metadata related to the progress of the ImportSampleQueries operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | ImportSampleQueries operation create time. |
| `failureCount` | `string` | Count of SampleQuerys that failed to be imported. |
| `successCount` | `string` | Count of SampleQuerys successfully imported. |
| `totalCount` | `string` | Total count of SampleQuerys that were processed. |
| `updateTime` | `string` | ImportSampleQueries operation last update time. If the operation is done, this is also the finish... |

### `GoogleCloudDiscoveryengineV1betaImportSampleQueriesResponse`

Response of the SampleQueryService.ImportSampleQueries method. If the long running operation is done, this message is returned by the google.longrunning.Operations.response field if the operation is successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1betaImportErrorConfig` | The desired location of errors incurred during the Import. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |

### `GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesMetadata`

Metadata related to the progress of the ImportSuggestionDenyListEntries operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesResponse`

Response message for CompletionService.ImportSuggestionDenyListEntries method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `failedEntriesCount` | `string` | Count of deny list entries that failed to be imported. |
| `importedEntriesCount` | `string` | Count of deny list entries successfully imported. |

### `GoogleCloudDiscoveryengineV1betaImportUserEventsMetadata`

Metadata related to the progress of the Import operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `successCount` | `string` | Count of entries that were processed successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaImportUserEventsResponse`

Response of the ImportUserEventsRequest. If the long running operation was successful, then this message is returned by the google.longrunning.Operations.response field if the operation was successful.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1betaImportErrorConfig` | Echoes the destination for the complete errors if this field was set in the request. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `joinedEventsCount` | `string` | Count of user events imported with complete existing Documents. |
| `unjoinedEventsCount` | `string` | Count of user events imported, but with Document information not found in the existing Branch. |

### `GoogleCloudDiscoveryengineV1betaInterval`

A floating point interval.

| Property | Type | Description |
|----------|------|-------------|
| `exclusiveMaximum` | `number` | Exclusive upper bound. |
| `exclusiveMinimum` | `number` | Exclusive lower bound. |
| `maximum` | `number` | Inclusive upper bound. |
| `minimum` | `number` | Inclusive lower bound. |

### `GoogleCloudDiscoveryengineV1betaLanguageInfo`

Language info for DataStore.

| Property | Type | Description |
|----------|------|-------------|
| `language` | `string` | Output only. Language part of normalized_language_code. E.g.: `en-US` -> `en`, `zh-Hans-HK` -> `z... |
| `languageCode` | `string` | The language code for the DataStore. |
| `normalizedLanguageCode` | `string` | Output only. This is the normalized form of language_code. E.g.: language_code of `en-GB`, `en_GB... |
| `region` | `string` | Output only. Region part of normalized_language_code, if present. E.g.: `en-US` -> `US`, `zh-Hans... |

### `GoogleCloudDiscoveryengineV1betaLicenseConfig`

Information about users' licenses.

| Property | Type | Description |
|----------|------|-------------|
| `autoRenew` | `boolean` | Optional. Whether the license config should be auto renewed when it reaches the end date. |
| `earlyTerminated` | `boolean` | Output only. Indication of whether the subscription is terminated earlier than the expiration dat... |
| `earlyTerminationDate` | `GoogleTypeDate` | Output only. The date when the subscription is terminated earlier than the expiration date. |
| `endDate` | `GoogleTypeDate` | Optional. The planed end date. |
| `freeTrial` | `boolean` | Optional. Whether the license config is for free trial. |
| `geminiBundle` | `boolean` | Output only. Whether the license config is for Gemini bundle. |
| `licenseCount` | `string` | Required. Number of licenses purchased. |
| `name` | `string` | Immutable. Identifier. The fully qualified resource name of the license config. Format: `projects... |
| `startDate` | `GoogleTypeDate` | Required. The start date. |
| `state` | `string` | Output only. The state of the license config. |
| `subscriptionTerm` | `string` | Required. Subscription term. |
| `subscriptionTier` | `string` | Required. Subscription tier information for the license config. |

### `GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig`

Configuration for Natural Language Query Understanding.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Mode of Natural Language Query Understanding. If this field is unset, the behavior defaults to Na... |

### `GoogleCloudDiscoveryengineV1betaObservabilityConfig`

Observability config for a resource.

| Property | Type | Description |
|----------|------|-------------|
| `observabilityEnabled` | `boolean` | Optional. Enables observability. If false, all other flags are ignored. |
| `sensitiveLoggingEnabled` | `boolean` | Optional. Enables sensitive logging. Sensitive logging includes customer core content (e.g. promp... |

### `GoogleCloudDiscoveryengineV1betaObtainCrawlRateResponse`

Response message for CrawlRateManagementService.ObtainCrawlRate method. The response contains organcic or dedicated crawl rate time series data for monitoring, depending on whether dedicated crawl rate is set.

| Property | Type | Description |
|----------|------|-------------|
| `dedicatedCrawlRateTimeSeries` | `GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries` | The historical dedicated crawl rate timeseries data, used for monitoring. |
| `error` | `GoogleRpcStatus` | Errors from service when handling the request. |
| `organicCrawlRateTimeSeries` | `GoogleCloudDiscoveryengineV1betaOrganicCrawlRateTimeSeries` | The historical organic crawl rate timeseries data, used for monitoring. |
| `state` | `string` | Output only. The state of the response. |

### `GoogleCloudDiscoveryengineV1betaOrganicCrawlRateTimeSeries`

The historical organic crawl rate timeseries data, used for monitoring. Organic crawl is auto-determined by Google to crawl the user's website when dedicate crawl is not set. Crawl rate is the QPS of crawl request Google sends to the user's website.

| Property | Type | Description |
|----------|------|-------------|
| `googleOrganicCrawlRate` | `GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries` | Google's organic crawl rate time series, which is the sum of all googlebots' crawl rate. Please r... |
| `vertexAiOrganicCrawlRate` | `GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries` | Vertex AI's organic crawl rate time series, which is the crawl rate of Google-CloudVertexBot when... |

### `GoogleCloudDiscoveryengineV1betaProject`

Metadata and configurations for a Google Cloud project in the service.

| Property | Type | Description |
|----------|------|-------------|
| `configurableBillingStatus` | `GoogleCloudDiscoveryengineV1betaProjectConfigurableBillingStatus` | Output only. The current status of the project's configurable billing. |
| `createTime` | `string` | Output only. The timestamp when this project is created. |
| `customerProvidedConfig` | `GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfig` | Optional. Customer provided configurations. |
| `name` | `string` | Output only. Full resource name of the project, for example `projects/{project}`. Note that when ... |
| `provisionCompletionTime` | `string` | Output only. The timestamp when this project is successfully provisioned. Empty value means this ... |
| `serviceTermsMap` | `object` | Output only. A map of terms of services. The key is the `id` of ServiceTerms. |

### `GoogleCloudDiscoveryengineV1betaProjectConfigurableBillingStatus`

Represents the currently effective configurable billing parameters. These values are derived from the customer's subscription history stored internally and reflect the thresholds actively being used for billing purposes at the time of the GetProject call. This includes the start_time of the subscription and may differ from the values in `customer_provided_config` due to billing rules (e.g., scale-downs taking effect only at the start of a new month).

| Property | Type | Description |
|----------|------|-------------|
| `effectiveIndexingCoreThreshold` | `string` | Optional. The currently effective Indexing Core threshold. This is the threshold against which In... |
| `effectiveSearchQpmThreshold` | `string` | Optional. The currently effective Search QPM threshold in queries per minute. This is the thresho... |
| `indexingCoreThresholdNextUpdateTime` | `string` | Output only. The earliest next update time for the indexing core subscription threshold. This is ... |
| `searchQpmThresholdNextUpdateTime` | `string` | Output only. The earliest next update time for the search QPM subscription threshold. This is bas... |
| `startTime` | `string` | Optional. The start time of the currently active billing subscription. |
| `terminateTime` | `string` | Output only. The latest terminate effective time of search qpm and indexing core subscriptions. |

### `GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfig`

Customer provided configurations.

| Property | Type | Description |
|----------|------|-------------|
| `notebooklmConfig` | `GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfig` | Optional. Configuration for NotebookLM settings. |

### `GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfig`

Configuration for NotebookLM.

| Property | Type | Description |
|----------|------|-------------|
| `dataProtectionPolicy` | `GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicy` | Optional. Specifies the data protection policy for NotebookLM. |
| `modelArmorConfig` | `GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig` | Model Armor configuration to be used for sanitizing user prompts and LLM responses. |
| `observabilityConfig` | `GoogleCloudDiscoveryengineV1betaObservabilityConfig` | Optional. Observability config for NotebookLM. |
| `optOutNotebookSharing` | `boolean` | Optional. Whether to disable the notebook sharing feature for the project. Default to false if no... |

### `GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicy`

Data protection policy config for NotebookLM.

| Property | Type | Description |
|----------|------|-------------|
| `sensitiveDataProtectionPolicy` | `GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicySensitiveDataProtectionPolicy` | Optional. The sensitive data protection policy. |

### `GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigDataProtectionPolicySensitiveDataProtectionPolicy`

Specifies a Sensitive Data Protection (https://cloud.google.com/sensitive-data-protection/docs/sensitive-data-protection-overview) policy.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `string` | Optional. The Sensitive Data Protection policy resource name. |

### `GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig`

Configuration for customer defined Model Armor templates to be used for sanitizing user prompts and LLM responses.

| Property | Type | Description |
|----------|------|-------------|
| `responseTemplate` | `string` | Optional. The resource name of the Model Armor Template for sanitizing LLM responses. Format: pro... |
| `userPromptTemplate` | `string` | Optional. The resource name of the Model Armor Template for sanitizing user prompts. Format: proj... |

### `GoogleCloudDiscoveryengineV1betaProjectServiceTerms`

Metadata about the terms of service.

| Property | Type | Description |
|----------|------|-------------|
| `acceptTime` | `string` | The last time when the project agreed to the terms of service. |
| `declineTime` | `string` | The last time when the project declined or revoked the agreement to terms of service. |
| `id` | `string` | The unique identifier of this terms of service. Available terms: * `GA_DATA_USE_TERMS`: [Terms fo... |
| `state` | `string` | Whether the project has accepted/rejected the service terms or it is still pending. |
| `version` | `string` | The version string of the terms of service. For acceptable values, see the comments for id above. |

### `GoogleCloudDiscoveryengineV1betaProvisionProjectMetadata`

Metadata associated with a project provision operation.

### `GoogleCloudDiscoveryengineV1betaPurgeDocumentsMetadata`

Metadata related to the progress of the PurgeDocuments operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `failureCount` | `string` | Count of entries that encountered errors while processing. |
| `ignoredCount` | `string` | Count of entries that were ignored as entries were not found. |
| `successCount` | `string` | Count of entries that were deleted successfully. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse`

Response message for DocumentService.PurgeDocuments method. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `purgeCount` | `string` | The total count of documents purged as a result of the operation. |
| `purgeSample` | `array<string>` | A sample of document names that will be deleted. Only populated if `force` is set to false. A max... |

### `GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesMetadata`

Metadata related to the progress of the PurgeSuggestionDenyListEntries operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesResponse`

Response message for CompletionService.PurgeSuggestionDenyListEntries method.

| Property | Type | Description |
|----------|------|-------------|
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the request. |
| `purgeCount` | `string` | Number of suggestion deny list entries purged. |

### `GoogleCloudDiscoveryengineV1betaQualityMetrics`

Describes the metrics produced by the evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `docNdcg` | `GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics` | Normalized discounted cumulative gain (NDCG) per document, at various top-k cutoff levels. NDCG m... |
| `docPrecision` | `GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics` | Precision per document, at various top-k cutoff levels. Precision is the fraction of retrieved do... |
| `docRecall` | `GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics` | Recall per document, at various top-k cutoff levels. Recall is the fraction of relevant documents... |
| `pageNdcg` | `GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics` | Normalized discounted cumulative gain (NDCG) per page, at various top-k cutoff levels. NDCG measu... |
| `pageRecall` | `GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics` | Recall per page, at various top-k cutoff levels. Recall is the fraction of relevant pages retriev... |

### `GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics`

Stores the metric values at specific top-k levels.

| Property | Type | Description |
|----------|------|-------------|
| `top1` | `number` | The top-1 value. |
| `top10` | `number` | The top-10 value. |
| `top3` | `number` | The top-3 value. |
| `top5` | `number` | The top-5 value. |

### `GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateMetadata`

Metadata related to the progress of the CrawlRateManagementService.RemoveDedicatedCrawlRate operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateResponse`

Response message for CrawlRateManagementService.RemoveDedicatedCrawlRate method. It simply returns the state of the response, and an error message if the state is FAILED.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` | Errors from service when handling the request. |
| `state` | `string` | Output only. The state of the response. |

### `GoogleCloudDiscoveryengineV1betaSchema`

Defines the structure and layout of a type of document data.

| Property | Type | Description |
|----------|------|-------------|
| `jsonSchema` | `string` | The JSON representation of the schema. |
| `name` | `string` | Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{... |
| `structSchema` | `object` | The structured representation of the schema. |

### `GoogleCloudDiscoveryengineV1betaSearchLinkPromotion`

Promotion proto includes uri and other helping information to display the promotion.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. The Promotion description. Maximum length: 200 characters. |
| `document` | `string` | Optional. The Document the user wants to promote. For site search, leave unset and only populate ... |
| `enabled` | `boolean` | Optional. The enabled promotion will be returned for any serving configs associated with the pare... |
| `imageUri` | `string` | Optional. The promotion thumbnail image url. |
| `title` | `string` | Required. The title of the promotion. Maximum length: 160 characters. |
| `uri` | `string` | Optional. The URL for the page the user wants to promote. Must be set for site search. For other ... |

### `GoogleCloudDiscoveryengineV1betaSearchRequest`

Request message for SearchService.Search method.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec` | Boost specification to boost certain documents. For more information on boosting, see [Boosting](... |
| `branch` | `string` | The branch resource name, such as `projects/*/locations/global/collections/default_collection/dat... |
| `canonicalFilter` | `string` | The default filter that is applied when a user performs a search without checking any filters on ... |
| `contentSearchSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec` | A specification for configuring the behavior of content search. |
| `crowdingSpecs` | `array<GoogleCloudDiscoveryengineV1betaSearchRequestCrowdingSpec>` | Optional. Crowding specifications for improving result diversity. If multiple CrowdingSpecs are s... |
| `dataStoreSpecs` | `array<GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec>` | Specifications that define the specific DataStores to be searched, along with configurations for ... |
| `displaySpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestDisplaySpec` | Optional. Config for display feature, like match highlighting on search results. |
| `embeddingSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec` | Uses the provided embedding to do additional semantic document retrieval. The retrieval is based ... |
| `facetSpecs` | `array<GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec>` | Facet specifications for faceted search. If empty, no facets are returned. A maximum of 100 value... |
| `filter` | `string` | The filter syntax consists of an expression language for constructing a predicate from one or mor... |
| `imageQuery` | `GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery` | Raw image query. |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see [Standard field... |
| `naturalLanguageQueryUnderstandingSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec` | Optional. Config for natural language query understanding capabilities, such as extracting struct... |
| `numResultsPerDataStore` | `integer` | Optional. The maximum number of results to retrieve from each data store. If not specified, it wi... |
| `offset` | `integer` | A 0-indexed integer that specifies the current offset (that is, starting result location, amongst... |
| `oneBoxPageSize` | `integer` | The maximum number of results to return for OneBox. This applies to each OneBox type individually... |
| `orderBy` | `string` | The order in which documents are returned. Documents can be ordered by a field in an Document obj... |
| `pageCategories` | `array<string>` | Optional. The categories associated with a category page. Must be set for category navigation que... |
| `pageSize` | `integer` | Maximum number of Documents to return. The maximum allowed value depends on the data type. Values... |
| `pageToken` | `string` | A page token received from a previous SearchService.Search call. Provide this to retrieve the sub... |
| `params` | `object` | Additional search parameters. For public website search only, supported values are: * `user_count... |
| `personalizationSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec` | The specification for personalization. Notice that if both ServingConfig.personalization_spec and... |
| `query` | `string` | Raw search query. |
| `queryExpansionSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec` | The query expansion specification that specifies the conditions under which query expansion occurs. |
| `rankingExpression` | `string` | Optional. The ranking expression controls the customized ranking on retrieval documents. This ove... |
| `rankingExpressionBackend` | `string` | Optional. The backend to use for the ranking expression evaluation. |
| `regionCode` | `string` | The Unicode country/region code (CLDR) of a location, such as "US" and "419". For more informatio... |
| `relevanceFilterSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpec` | Optional. The granular relevance filtering specification. If not specified, the global `relevance... |
| `relevanceScoreSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceScoreSpec` | Optional. The specification for returning the relevance score. |
| `relevanceThreshold` | `string` | The global relevance threshold of the search results. Defaults to Google defined threshold, lever... |
| `safeSearch` | `boolean` | Whether to turn on safe search. This is only supported for website search. |
| `searchAddonSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestSearchAddonSpec` | Optional. SearchAddonSpec is used to disable add-ons for search as per new repricing model. This ... |
| `searchAsYouTypeSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec` | Search as you type configuration. Only supported for the IndustryVertical.MEDIA vertical. |
| `servingConfig` | `string` | Required. The resource name of the Search serving config, such as `projects/*/locations/global/co... |
| `session` | `string` | The session resource name. Optional. Session allows users to do multi-turn /search API calls or c... |
| `sessionSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec` | Session specification. Can be used only when `session` is set. |
| `spellCorrectionSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec` | The spell correction specification that specifies the mode under which spell correction takes eff... |
| `userInfo` | `GoogleCloudDiscoveryengineV1betaUserInfo` | Information about the end user. Highly recommended for analytics and personalization. UserInfo.us... |
| `userLabels` | `object` | The user labels applied to a resource must meet the following requirements: * Each resource can h... |
| `userPseudoId` | `string` | Optional. A unique identifier for tracking visitors. For example, this could be implemented with ... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec`

Boost specification to boost certain documents.

| Property | Type | Description |
|----------|------|-------------|
| `conditionBoostSpecs` | `array<GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec>` | Condition boost specifications. If a document matches multiple conditions in the specifications, ... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec`

Boost applies to documents which match a condition.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Strength of the condition boost, which should be in [-1, 1]. Negative boost means demotion. Defau... |
| `boostControlSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec` | Complex specification for custom ranking based on customer defined attribute value. |
| `condition` | `string` | An expression which specifies a boost condition. The syntax and supported fields are the same as ... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec`

Specification for custom ranking based on customer specified attribute value. It provides more controls for customized ranking than the simple (condition, boost) combination above.

| Property | Type | Description |
|----------|------|-------------|
| `attributeType` | `string` | The attribute type to be used to determine the boost amount. The attribute value can be derived f... |
| `controlPoints` | `array<GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint>` | The control points used to define the curve. The monotonic function (defined through the interpol... |
| `fieldName` | `string` | The name of the field whose value will be used to determine the boost amount. |
| `interpolationType` | `string` | The interpolation type to be applied to connect the control points listed below. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint`

The control points used to define the curve. The curve defined through these control points can only be monotonically increasing or decreasing(constant values are acceptable).

| Property | Type | Description |
|----------|------|-------------|
| `attributeValue` | `string` | Can be one of: 1. The numerical field value. 2. The duration spec for freshness: The value must b... |
| `boostAmount` | `number` | The value between -1 to 1 by which to boost the score if the attribute_value evaluates to the val... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec`

A specification for configuring the behavior of content search.

| Property | Type | Description |
|----------|------|-------------|
| `chunkSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec` | Specifies the chunk spec to be returned from the search response. Only available if the SearchReq... |
| `extractiveContentSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec` | If there is no extractive_content_spec provided, there will be no extractive answer in the search... |
| `searchResultMode` | `string` | Specifies the search result mode. If unspecified, the search result mode defaults to `DOCUMENTS`. |
| `snippetSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec` | If `snippetSpec` is not specified, snippets are not included in the search response. |
| `summarySpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec` | If `summarySpec` is not specified, summaries are not included in the search response. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec`

Specifies the chunk spec to be returned from the search response. Only available if the SearchRequest.ContentSearchSpec.search_result_mode is set to CHUNKS

| Property | Type | Description |
|----------|------|-------------|
| `numNextChunks` | `integer` | The number of next chunks to be returned of the current chunk. The maximum allowed value is 3. If... |
| `numPreviousChunks` | `integer` | The number of previous chunks to be returned of the current chunk. The maximum allowed value is 3... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec`

A specification for configuring the extractive content in a search response.

| Property | Type | Description |
|----------|------|-------------|
| `maxExtractiveAnswerCount` | `integer` | The maximum number of extractive answers returned in each search result. An extractive answer is ... |
| `maxExtractiveSegmentCount` | `integer` | The max number of extractive segments returned in each search result. Only applied if the DataSto... |
| `numNextSegments` | `integer` | Return at most `num_next_segments` segments after each selected segments. |
| `numPreviousSegments` | `integer` | Specifies whether to also include the adjacent from each selected segments. Return at most `num_p... |
| `returnExtractiveSegmentScore` | `boolean` | Specifies whether to return the confidence score from the extractive segments in each search resu... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec`

A specification for configuring snippets in a search response.

| Property | Type | Description |
|----------|------|-------------|
| `maxSnippetCount` | `integer` | [DEPRECATED] This field is deprecated. To control snippet return, use `return_snippet` field. For... |
| `referenceOnly` | `boolean` | [DEPRECATED] This field is deprecated and will have no affect on the snippet. |
| `returnSnippet` | `boolean` | If `true`, then return snippet. If no snippet can be generated, we return "No snippet is availabl... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec`

A specification for configuring a summary returned in a search response.

| Property | Type | Description |
|----------|------|-------------|
| `ignoreAdversarialQuery` | `boolean` | Specifies whether to filter out adversarial queries. The default value is `false`. Google employs... |
| `ignoreJailBreakingQuery` | `boolean` | Optional. Specifies whether to filter out jail-breaking queries. The default value is `false`. Go... |
| `ignoreLowRelevantContent` | `boolean` | Specifies whether to filter out queries that have low relevance. The default value is `false`. If... |
| `ignoreNonSummarySeekingQuery` | `boolean` | Specifies whether to filter out queries that are not summary-seeking. The default value is `false... |
| `includeCitations` | `boolean` | Specifies whether to include citations in the summary. The default value is `false`. When this fi... |
| `languageCode` | `string` | Language code for Summary. Use language tags defined by [BCP47](https://www.rfc-editor.org/rfc/bc... |
| `modelPromptSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec` | If specified, the spec will be used to modify the prompt provided to the LLM. |
| `modelSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec` | If specified, the spec will be used to modify the model specification provided to the LLM. |
| `multimodalSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecMultiModalSpec` | Optional. Multimodal specification. |
| `summaryResultCount` | `integer` | The number of top results to generate the summary from. If the number of results returned is less... |
| `useSemanticChunks` | `boolean` | If true, answer will be generated from most relevant chunks from top search results. This feature... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec`

Specification of the prompt to use with the model.

| Property | Type | Description |
|----------|------|-------------|
| `preamble` | `string` | Text at the beginning of the prompt that instructs the assistant. Examples are available in the u... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec`

Specification of the model.

| Property | Type | Description |
|----------|------|-------------|
| `version` | `string` | The model version used to generate the summary. Supported values are: * `stable`: string. Default... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecMultiModalSpec`

Multimodal specification: Will return an image from specified source. If multiple sources are specified, the pick is a quality based decision.

| Property | Type | Description |
|----------|------|-------------|
| `imageSource` | `string` | Optional. Source of image returned in the answer. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestCrowdingSpec`

Specification for crowding. Crowding improves the diversity of search results by limiting the number of results that share the same field value. For example, crowding on the color field with a max_count of 3 and mode DROP_CROWDED_RESULTS will return at most 3 results with the same color across all pages.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | The field to use for crowding. Documents can be crowded by a field in the Document object. Crowdi... |
| `maxCount` | `integer` | The maximum number of documents to keep per value of the field. Once there are at least max_count... |
| `mode` | `string` | Mode to use for documents that are crowded away. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec`

A struct to define data stores to filter on in a search call and configurations for those data stores. Otherwise, an `INVALID_ARGUMENT` error is returned.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpec` | `GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec` | Optional. Boost specification to boost certain documents. For more information on boosting, see [... |
| `customSearchOperators` | `string` | Optional. Custom search operators which if specified will be used to filter results from workspac... |
| `dataStore` | `string` | Required. Full resource name of DataStore, such as `projects/{project}/locations/{location}/colle... |
| `filter` | `string` | Optional. Filter specification to filter documents in the data store specified by data_store fiel... |
| `numResults` | `integer` | Optional. The maximum number of results to retrieve from this data store. If not specified, it wi... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestDisplaySpec`

Specifies features for display, like match highlighting.

| Property | Type | Description |
|----------|------|-------------|
| `matchHighlightingCondition` | `string` | The condition under which match highlighting should occur. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec`

The specification that uses customized query embedding vector to do semantic document retrieval.

| Property | Type | Description |
|----------|------|-------------|
| `embeddingVectors` | `array<GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector>` | The embedding vector used for retrieval. Limit to 1. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector`

Embedding vector.

| Property | Type | Description |
|----------|------|-------------|
| `fieldPath` | `string` | Embedding field path in schema. |
| `vector` | `array<number>` | Query embedding vector. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec`

A facet specification to perform faceted search.

| Property | Type | Description |
|----------|------|-------------|
| `enableDynamicPosition` | `boolean` | Enables dynamic position for this facet. If set to true, the position of this facet among all fac... |
| `excludedFilterKeys` | `array<string>` | List of keys to exclude when faceting. By default, FacetKey.key is not excluded from the filter u... |
| `facetKey` | `GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey` | Required. The facet key specification. |
| `limit` | `integer` | Maximum facet values that are returned for this facet. If unspecified, defaults to 20. The maximu... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey`

Specifies how a facet is computed.

| Property | Type | Description |
|----------|------|-------------|
| `caseInsensitive` | `boolean` | True to make facet keys case insensitive when getting faceting values with prefixes or contains; ... |
| `contains` | `array<string>` | Only get facet values that contain the given strings. For example, suppose "category" has three v... |
| `intervals` | `array<GoogleCloudDiscoveryengineV1betaInterval>` | Set only if values should be bucketed into intervals. Must be set for facets with numerical value... |
| `key` | `string` | Required. Supported textual and numerical facet keys in Document object, over which the facet val... |
| `orderBy` | `string` | The order in which documents are returned. Allowed values are: * "count desc", which means order ... |
| `prefixes` | `array<string>` | Only get facet values that start with the given string prefix. For example, suppose "category" ha... |
| `restrictedValues` | `array<string>` | Only get facet for the given restricted values. Only supported on textual fields. For example, su... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery`

Specifies the image query input.

| Property | Type | Description |
|----------|------|-------------|
| `imageBytes` | `string` | Base64 encoded image bytes. Supported image formats: JPEG, PNG, and BMP. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec`

Specification to enable natural language understanding capabilities for search requests.

| Property | Type | Description |
|----------|------|-------------|
| `allowedFieldNames` | `array<string>` | Optional. Allowlist of fields that can be used for natural language filter extraction. By default... |
| `extractedFilterBehavior` | `string` | Optional. Controls behavior of how extracted filters are applied to the search. The default behav... |
| `filterExtractionCondition` | `string` | The condition under which filter extraction should occur. Server behavior defaults to `DISABLED`. |
| `geoSearchQueryDetectionFieldNames` | `array<string>` | Field names used for location-based filtering, where geolocation filters are detected in natural ... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec`

The specification for personalization.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | The personalization mode of the search request. Defaults to Mode.AUTO. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec`

Specification to determine under which conditions query expansion should occur.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | The condition under which query expansion should occur. Default to Condition.DISABLED. |
| `pinUnexpandedResults` | `boolean` | Whether to pin unexpanded results. If this field is set to true, unexpanded products are always a... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpec`

Relevance filtering specification.

| Property | Type | Description |
|----------|------|-------------|
| `keywordSearchThreshold` | `GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec` | Optional. Relevance filtering threshold specification for keyword search. |
| `semanticSearchThreshold` | `GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec` | Optional. Relevance filtering threshold specification for semantic search. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceFilterSpecRelevanceThresholdSpec`

Specification for relevance filtering on a specific sub-search.

| Property | Type | Description |
|----------|------|-------------|
| `relevanceThreshold` | `string` | Pre-defined relevance threshold for the sub-search. |
| `semanticRelevanceThreshold` | `number` | Custom relevance threshold for the sub-search. The value must be in [0.0, 1.0]. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceScoreSpec`

The specification for returning the document relevance score.

| Property | Type | Description |
|----------|------|-------------|
| `returnRelevanceScore` | `boolean` | Optional. Whether to return the relevance score for search results. The higher the score, the mor... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestSearchAddonSpec`

SearchAddonSpec is used to disable add-ons for search as per new repricing model. By default if the SearchAddonSpec is not specified, we consider that the customer wants to enable them wherever applicable.

| Property | Type | Description |
|----------|------|-------------|
| `disableGenerativeAnswerAddOn` | `boolean` | Optional. If true, generative answer add-on is disabled. Generative answer add-on includes natura... |
| `disableKpiPersonalizationAddOn` | `boolean` | Optional. If true, disables event re-ranking and personalization to optimize KPIs & personalize r... |
| `disableSemanticAddOn` | `boolean` | Optional. If true, semantic add-on is disabled. Semantic add-on includes embeddings and jetstream. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec`

Specification for search as you type in search requests.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | The condition under which search as you type should occur. Default to Condition.DISABLED. |

### `GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec`

Session specification. Multi-turn Search feature is currently at private GA stage. Please use v1alpha or v1beta version instead before we launch this feature to public GA. Or ask for allowlisting through Google Support team.

| Property | Type | Description |
|----------|------|-------------|
| `queryId` | `string` | If set, the search result gets stored to the "turn" specified by this query ID. Example: Let's sa... |
| `searchResultPersistenceCount` | `integer` | The number of top search results to persist. The persisted search results can be used for the sub... |

### `GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec`

The specification for query spell correction.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | The mode under which spell correction replaces the original search query. Defaults to Mode.AUTO. |

### `GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateMetadata`

Metadata related to the progress of the CrawlRateManagementService.SetDedicatedCrawlRate operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateResponse`

Response message for CrawlRateManagementService.SetDedicatedCrawlRate method. It simply returns the state of the response, and an error message if the state is FAILED.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `GoogleRpcStatus` | Errors from service when handling the request. |
| `state` | `string` | Output only. The state of the response. |

### `GoogleCloudDiscoveryengineV1betaSingleRegionKey`

Metadata for single-regional CMEKs.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Required. Single-regional kms key resource name which will be used to encrypt resources `projects... |

### `GoogleCloudDiscoveryengineV1betaSiteVerificationInfo`

Verification information for target sites in advanced site search.

| Property | Type | Description |
|----------|------|-------------|
| `siteVerificationState` | `string` | Site verification state indicating the ownership and validity. |
| `verifyTime` | `string` | Latest site verification time. |

### `GoogleCloudDiscoveryengineV1betaSitemap`

A sitemap for the SiteSearchEngine.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The sitemap's creation time. |
| `name` | `string` | Output only. The fully qualified resource name of the sitemap. `projects/*/locations/*/collection... |
| `uri` | `string` | Public URI for the sitemap, e.g. `www.example.com/sitemap.xml`. |

### `GoogleCloudDiscoveryengineV1betaTargetSite`

A target site for the SiteSearchEngine.

| Property | Type | Description |
|----------|------|-------------|
| `exactMatch` | `boolean` | Immutable. If set to false, a uri_pattern is generated to include all pages whose address contain... |
| `failureReason` | `GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason` | Output only. Failure reason. |
| `generatedUriPattern` | `string` | Output only. This is system-generated based on the provided_uri_pattern. |
| `indexingStatus` | `string` | Output only. Indexing status. |
| `name` | `string` | Output only. The fully qualified resource name of the target site. `projects/{project}/locations/... |
| `providedUriPattern` | `string` | Required. Input only. The user provided URI pattern from which the `generated_uri_pattern` is gen... |
| `rootDomainUri` | `string` | Output only. Root domain of the provided_uri_pattern. |
| `siteVerificationInfo` | `GoogleCloudDiscoveryengineV1betaSiteVerificationInfo` | Output only. Site ownership and validity verification status. |
| `type` | `string` | The type of the target site, e.g., whether the site is to be included or excluded. |
| `updateTime` | `string` | Output only. The target site's last updated time. |

### `GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason`

Site search indexing failure reasons.

| Property | Type | Description |
|----------|------|-------------|
| `quotaFailure` | `GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure` | Failed due to insufficient quota. |

### `GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure`

Failed due to insufficient quota.

| Property | Type | Description |
|----------|------|-------------|
| `totalRequiredQuota` | `string` | This number is an estimation on how much total quota this project needs to successfully complete ... |

### `GoogleCloudDiscoveryengineV1betaTrainCustomModelMetadata`

Metadata related to the progress of the TrainCustomModel operation. This is returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaTrainCustomModelResponse`

Response of the TrainCustomModelRequest. This message is returned by the google.longrunning.Operations.response field.

| Property | Type | Description |
|----------|------|-------------|
| `errorConfig` | `GoogleCloudDiscoveryengineV1betaImportErrorConfig` | Echoes the destination for the complete errors in the request if set. |
| `errorSamples` | `array<GoogleRpcStatus>` | A sample of errors encountered while processing the data. |
| `metrics` | `object` | The metrics of the trained model. |
| `modelName` | `string` | Fully qualified name of the CustomTuningModel. |
| `modelStatus` | `string` | The trained model status. Possible values are: * **bad-data**: The training data quality is bad. ... |

### `GoogleCloudDiscoveryengineV1betaTuneEngineMetadata`

Metadata associated with a tune operation.

| Property | Type | Description |
|----------|------|-------------|
| `engine` | `string` | Required. The resource name of the engine that this tune applies to. Format: `projects/{project}/... |

### `GoogleCloudDiscoveryengineV1betaTuneEngineResponse`

Response associated with a tune operation.

### `GoogleCloudDiscoveryengineV1betaUpdateSchemaMetadata`

Metadata for UpdateSchema LRO.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaUpdateTargetSiteMetadata`

Metadata related to the progress of the SiteSearchEngineService.UpdateTargetSite operation. This will be returned by the google.longrunning.Operation.metadata field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Operation create time. |
| `updateTime` | `string` | Operation last update time. If the operation is done, this is also the finish time. |

### `GoogleCloudDiscoveryengineV1betaUserInfo`

Information of an end user.

| Property | Type | Description |
|----------|------|-------------|
| `timeZone` | `string` | Optional. IANA time zone, e.g. Europe/Budapest. |
| `userAgent` | `string` | User agent as included in the HTTP header. The field must be a UTF-8 encoded string with a length... |
| `userId` | `string` | Highly recommended for logged-in users. Unique identifier for logged-in user, such as a user name... |

### `GoogleCloudDiscoveryengineV1betaUserLicense`

User License information assigned by the admin.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. User created timestamp. |
| `lastLoginTime` | `string` | Output only. User last logged in time. If the user has not logged in yet, this field will be empty. |
| `licenseAssignmentState` | `string` | Output only. License assignment state of the user. If the user is assigned with a license config,... |
| `licenseConfig` | `string` | Optional. The full resource name of the Subscription(LicenseConfig) assigned to the user. |
| `updateTime` | `string` | Output only. User update timestamp. |
| `userPrincipal` | `string` | Required. Immutable. The user principal of the User, could be email address or other prinical ide... |
| `userProfile` | `string` | Optional. The user profile. We user user full name(First name + Last name) as user profile. |

### `GoogleCloudDiscoveryengineV1betaUserStore`

Configures metadata that is used for End User entities.

| Property | Type | Description |
|----------|------|-------------|
| `defaultLicenseConfig` | `string` | Optional. The default subscription LicenseConfig for the UserStore, if UserStore.enable_license_a... |
| `displayName` | `string` | The display name of the User Store. |
| `enableExpiredLicenseAutoUpdate` | `boolean` | Optional. Whether to enable license auto update for users in this User Store. If true, users with... |
| `enableLicenseAutoRegister` | `boolean` | Optional. Whether to enable license auto register for users in this User Store. If true, new user... |
| `name` | `string` | Immutable. The full resource name of the User Store, in the format of `projects/{project}/locatio... |

### `GoogleCloudDiscoveryengineV1betaWorkspaceConfig`

Config to store data store type configuration for workspace data

| Property | Type | Description |
|----------|------|-------------|
| `dasherCustomerId` | `string` | Obfuscated Dasher customer ID. |
| `superAdminEmailAddress` | `string` | Optional. The super admin email address for the workspace that will be used for access token gene... |
| `superAdminServiceAccount` | `string` | Optional. The super admin service account for the workspace that will be used for access token ge... |
| `type` | `string` | The Google Workspace data source. |

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
| `bindings` | `array<GoogleIamV1Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `GoogleIamV1SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleIamV1Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `GoogleLongrunningCancelOperationRequest`

The request message for Operations.CancelOperation.

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

### `GoogleMonitoringV3Point`

A single data point in a time series.

| Property | Type | Description |
|----------|------|-------------|
| `interval` | `GoogleMonitoringV3TimeInterval` | The time interval to which the data point applies. For `GAUGE` metrics, the start time is optiona... |
| `value` | `GoogleMonitoringV3TypedValue` | The value of the data point. |

### `GoogleMonitoringV3TimeInterval`

A time interval extending just after a start time through an end time. If the start time is the same as the end time, then the interval represents a single point in time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Required. The end of the time interval. |
| `startTime` | `string` | Optional. The beginning of the time interval. The default value for the start time is the end tim... |

### `GoogleMonitoringV3TimeSeries`

A collection of data points that describes the time-varying values of a metric. A time series is identified by a combination of a fully-specified monitored resource and a fully-specified metric. This type is used for both listing and creating time series.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Input only. A detailed description of the time series that will be associated with the google.api... |
| `metadata` | `GoogleApiMonitoredResourceMetadata` | Output only. The associated monitored resource metadata. When reading a time series, this field w... |
| `metric` | `GoogleApiMetric` | The associated metric. A fully-specified metric used to identify the time series. |
| `metricKind` | `string` | The metric kind of the time series. When listing time series, this metric kind might be different... |
| `points` | `array<GoogleMonitoringV3Point>` | The data points of this time series. When listing time series, points are returned in reverse tim... |
| `resource` | `GoogleApiMonitoredResource` | The associated monitored resource. Custom metrics can use only certain monitored resource types i... |
| `unit` | `string` | The units in which the metric value is reported. It is only applicable if the `value_type` is `IN... |
| `valueType` | `string` | The value type of the time series. When listing time series, this value type might be different f... |

### `GoogleMonitoringV3TypedValue`

A single strongly-typed value.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | A Boolean value: `true` or `false`. |
| `distributionValue` | `GoogleApiDistribution` | A distribution value. |
| `doubleValue` | `number` | A 64-bit double-precision floating-point number. Its magnitude is approximately ±10±300 and it ha... |
| `int64Value` | `string` | A 64-bit integer. Its range is approximately ±9.2x1018. |
| `stringValue` | `string` | A variable-length string value. |

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

### `GoogleTypeDateTime`

Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying... |
| `hours` | `integer` | Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An AP... |
| `minutes` | `integer` | Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0. |
| `month` | `integer` | Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month. |
| `nanos` | `integer` | Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0. |
| `seconds` | `integer` | Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API ma... |
| `timeZone` | `GoogleTypeTimeZone` | Time zone. |
| `utcOffset` | `string` | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of ... |
| `year` | `integer` | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year. |

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GoogleTypeTimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

