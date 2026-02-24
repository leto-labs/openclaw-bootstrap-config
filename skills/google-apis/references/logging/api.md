# Cloud Logging API - API Reference

**Version**: `v2` | **Methods**: 254 | **Schemas**: 93

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `logging.entries.list` | POST | `v2/entries:list` | Lists log entries. Use this method to retrieve log entries that originated from a project/folder/... |
| `logging.entries.copy` | POST | `v2/entries:copy` | Copies a set of log entries from a log bucket to a Cloud Storage bucket. |
| `logging.entries.write` | POST | `v2/entries:write` | Writes log entries to Logging. This API method is the only way to send log entries to Logging. Th... |
| `logging.entries.tail` | POST | `v2/entries:tail` | Streaming read of log entries as they are received. Until the stream is terminated, it will conti... |
| `logging.projects.getCmekSettings` | GET | `v2/{+name}/cmekSettings` | Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be config... |
| `logging.projects.getSettings` | GET | `v2/{+name}/settings` | Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud project... |
| `logging.projects.sinks.get` | GET | `v2/{+sinkName}` | Gets a sink. |
| `logging.projects.sinks.create` | POST | `v2/{+parent}/sinks` | Creates a sink that exports specified log entries to a destination. The export begins upon ingres... |
| `logging.projects.sinks.update` | PUT | `v2/{+sinkName}` | Updates a sink. This method replaces the values of the destination and filter fields of the exist... |
| `logging.projects.sinks.list` | GET | `v2/{+parent}/sinks` | Lists sinks. |
| `logging.projects.sinks.patch` | PATCH | `v2/{+sinkName}` | Updates a sink. This method replaces the values of the destination and filter fields of the exist... |
| `logging.projects.sinks.delete` | DELETE | `v2/{+sinkName}` | Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted. |
| `logging.projects.metrics.delete` | DELETE | `v2/{+metricName}` | Deletes a logs-based metric. |
| `logging.projects.metrics.create` | POST | `v2/{+parent}/metrics` | Creates a logs-based metric. |
| `logging.projects.metrics.get` | GET | `v2/{+metricName}` | Gets a logs-based metric. |
| `logging.projects.metrics.update` | PUT | `v2/{+metricName}` | Creates or updates a logs-based metric. |
| `logging.projects.metrics.list` | GET | `v2/{+parent}/metrics` | Lists logs-based metrics. |
| `logging.projects.exclusions.patch` | PATCH | `v2/{+name}` | Changes one or more properties of an existing exclusion in the _Default sink. |
| `logging.projects.exclusions.delete` | DELETE | `v2/{+name}` | Deletes an exclusion in the _Default sink. |
| `logging.projects.exclusions.create` | POST | `v2/{+parent}/exclusions` | Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries bel... |
| `logging.projects.exclusions.list` | GET | `v2/{+parent}/exclusions` | Lists all the exclusions on the _Default sink in a parent resource. |
| `logging.projects.exclusions.get` | GET | `v2/{+name}` | Gets the description of an exclusion in the _Default sink. |
| `logging.projects.logs.delete` | DELETE | `v2/{+logName}` | Deletes all the log entries in a log for the global _Default Log Bucket. The log reappears if it ... |
| `logging.projects.logs.list` | GET | `v2/{+parent}/logs` | Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entr... |
| `logging.projects.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `logging.projects.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `logging.projects.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `logging.projects.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `logging.projects.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `logging.projects.locations.recentQueries.list` | GET | `v2/{+parent}/recentQueries` | Lists the RecentQueries that were created by the user making the request. |
| `logging.projects.locations.logScopes.get` | GET | `v2/{+name}` | Gets a log scope. |
| `logging.projects.locations.logScopes.delete` | DELETE | `v2/{+name}` | Deletes a log scope. |
| `logging.projects.locations.logScopes.create` | POST | `v2/{+parent}/logScopes` | Creates a log scope. |
| `logging.projects.locations.logScopes.patch` | PATCH | `v2/{+name}` | Updates a log scope. |
| `logging.projects.locations.logScopes.list` | GET | `v2/{+parent}/logScopes` | Lists log scopes. |
| `logging.projects.locations.savedQueries.create` | POST | `v2/{+parent}/savedQueries` | Creates a new SavedQuery for the user making the request. |
| `logging.projects.locations.savedQueries.patch` | PATCH | `v2/{+name}` | Updates an existing SavedQuery. |
| `logging.projects.locations.savedQueries.delete` | DELETE | `v2/{+name}` | Deletes an existing SavedQuery that was created by the user making the request. |
| `logging.projects.locations.savedQueries.get` | GET | `v2/{+name}` | Returns all data associated with the requested query. |
| `logging.projects.locations.savedQueries.list` | GET | `v2/{+parent}/savedQueries` | Lists the SavedQueries that were created by the user making the request. |
| `logging.projects.locations.buckets.undelete` | POST | `v2/{+name}:undelete` | Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period o... |
| `logging.projects.locations.buckets.createAsync` | POST | `v2/{+parent}/buckets:createAsync` | Creates a log bucket asynchronously that can be used to store log entries.After a bucket has been... |
| `logging.projects.locations.buckets.create` | POST | `v2/{+parent}/buckets` | Creates a log bucket that can be used to store log entries. After a bucket has been created, the ... |
| `logging.projects.locations.buckets.delete` | DELETE | `v2/{+name}` | Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 ... |
| `logging.projects.locations.buckets.patch` | PATCH | `v2/{+name}` | Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECOND... |
| `logging.projects.locations.buckets.list` | GET | `v2/{+parent}/buckets` | Lists log buckets. |
| `logging.projects.locations.buckets.updateAsync` | POST | `v2/{+name}:updateAsync` | Updates a log bucket asynchronously.If the bucket has a lifecycle_state of DELETE_REQUESTED, then... |
| `logging.projects.locations.buckets.get` | GET | `v2/{+name}` | Gets a log bucket. |
| `logging.projects.locations.buckets.links.delete` | DELETE | `v2/{+name}` | Deletes a link. This will also delete the corresponding BigQuery linked dataset. |
| `logging.projects.locations.buckets.links.get` | GET | `v2/{+name}` | Gets a link. |
| `logging.projects.locations.buckets.links.list` | GET | `v2/{+parent}/links` | Lists links. |
| `logging.projects.locations.buckets.links.create` | POST | `v2/{+parent}/links` | Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to re... |
| `logging.projects.locations.buckets.views.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `logging.projects.locations.buckets.views.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `logging.projects.locations.buckets.views.delete` | DELETE | `v2/{+name}` | Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system i... |
| `logging.projects.locations.buckets.views.patch` | PATCH | `v2/{+name}` | Updates a view on a log bucket. This method replaces the value of the filter field from the exist... |
| `logging.projects.locations.buckets.views.list` | GET | `v2/{+parent}/views` | Lists views on a log bucket. |
| `logging.projects.locations.buckets.views.get` | GET | `v2/{+name}` | Gets a view on a log bucket. |
| `logging.projects.locations.buckets.views.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `logging.projects.locations.buckets.views.create` | POST | `v2/{+parent}/views` | Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views. |
| `logging.projects.locations.buckets.views.logs.list` | GET | `v2/{+parent}/logs` | Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entr... |
| `logging.sinks.update` | PUT | `v2/{+sinkName}` | Updates a sink. This method replaces the values of the destination and filter fields of the exist... |
| `logging.sinks.delete` | DELETE | `v2/{+sinkName}` | Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted. |
| `logging.sinks.list` | GET | `v2/{+parent}/sinks` | Lists sinks. |
| `logging.sinks.get` | GET | `v2/{+sinkName}` | Gets a sink. |
| `logging.sinks.create` | POST | `v2/{+parent}/sinks` | Creates a sink that exports specified log entries to a destination. The export begins upon ingres... |
| `logging.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `logging.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `logging.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `logging.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `logging.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `logging.locations.buckets.delete` | DELETE | `v2/{+name}` | Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 ... |
| `logging.locations.buckets.create` | POST | `v2/{+parent}/buckets` | Creates a log bucket that can be used to store log entries. After a bucket has been created, the ... |
| `logging.locations.buckets.get` | GET | `v2/{+name}` | Gets a log bucket. |
| `logging.locations.buckets.undelete` | POST | `v2/{+name}:undelete` | Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period o... |
| `logging.locations.buckets.updateAsync` | POST | `v2/{+name}:updateAsync` | Updates a log bucket asynchronously.If the bucket has a lifecycle_state of DELETE_REQUESTED, then... |
| `logging.locations.buckets.list` | GET | `v2/{+parent}/buckets` | Lists log buckets. |
| `logging.locations.buckets.patch` | PATCH | `v2/{+name}` | Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECOND... |
| `logging.locations.buckets.createAsync` | POST | `v2/{+parent}/buckets:createAsync` | Creates a log bucket asynchronously that can be used to store log entries.After a bucket has been... |
| `logging.locations.buckets.views.list` | GET | `v2/{+parent}/views` | Lists views on a log bucket. |
| `logging.locations.buckets.views.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `logging.locations.buckets.views.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `logging.locations.buckets.views.delete` | DELETE | `v2/{+name}` | Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system i... |
| `logging.locations.buckets.views.get` | GET | `v2/{+name}` | Gets a view on a log bucket. |
| `logging.locations.buckets.views.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `logging.locations.buckets.views.create` | POST | `v2/{+parent}/views` | Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views. |
| `logging.locations.buckets.views.patch` | PATCH | `v2/{+name}` | Updates a view on a log bucket. This method replaces the value of the filter field from the exist... |
| `logging.locations.buckets.links.get` | GET | `v2/{+name}` | Gets a link. |
| `logging.locations.buckets.links.list` | GET | `v2/{+parent}/links` | Lists links. |
| `logging.locations.buckets.links.create` | POST | `v2/{+parent}/links` | Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to re... |
| `logging.locations.buckets.links.delete` | DELETE | `v2/{+name}` | Deletes a link. This will also delete the corresponding BigQuery linked dataset. |
| `logging.organizations.getCmekSettings` | GET | `v2/{+name}/cmekSettings` | Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be config... |
| `logging.organizations.updateCmekSettings` | PATCH | `v2/{+name}/cmekSettings` | Updates the Log Router CMEK settings for the given resource.Note: CMEK for the Log Router can cur... |
| `logging.organizations.getSettings` | GET | `v2/{+name}/settings` | Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud project... |
| `logging.organizations.updateSettings` | PATCH | `v2/{+name}/settings` | Updates the settings for the given resource. This method applies to all feature configurations fo... |
| `logging.organizations.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `logging.organizations.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `logging.organizations.locations.savedQueries.delete` | DELETE | `v2/{+name}` | Deletes an existing SavedQuery that was created by the user making the request. |
| `logging.organizations.locations.savedQueries.create` | POST | `v2/{+parent}/savedQueries` | Creates a new SavedQuery for the user making the request. |
| `logging.organizations.locations.savedQueries.patch` | PATCH | `v2/{+name}` | Updates an existing SavedQuery. |
| `logging.organizations.locations.savedQueries.get` | GET | `v2/{+name}` | Returns all data associated with the requested query. |
| `logging.organizations.locations.savedQueries.list` | GET | `v2/{+parent}/savedQueries` | Lists the SavedQueries that were created by the user making the request. |
| `logging.organizations.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `logging.organizations.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `logging.organizations.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `logging.organizations.locations.recentQueries.list` | GET | `v2/{+parent}/recentQueries` | Lists the RecentQueries that were created by the user making the request. |
| `logging.organizations.locations.buckets.undelete` | POST | `v2/{+name}:undelete` | Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period o... |
| `logging.organizations.locations.buckets.delete` | DELETE | `v2/{+name}` | Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 ... |
| `logging.organizations.locations.buckets.patch` | PATCH | `v2/{+name}` | Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECOND... |
| `logging.organizations.locations.buckets.create` | POST | `v2/{+parent}/buckets` | Creates a log bucket that can be used to store log entries. After a bucket has been created, the ... |
| `logging.organizations.locations.buckets.createAsync` | POST | `v2/{+parent}/buckets:createAsync` | Creates a log bucket asynchronously that can be used to store log entries.After a bucket has been... |
| `logging.organizations.locations.buckets.updateAsync` | POST | `v2/{+name}:updateAsync` | Updates a log bucket asynchronously.If the bucket has a lifecycle_state of DELETE_REQUESTED, then... |
| `logging.organizations.locations.buckets.get` | GET | `v2/{+name}` | Gets a log bucket. |
| `logging.organizations.locations.buckets.list` | GET | `v2/{+parent}/buckets` | Lists log buckets. |
| `logging.organizations.locations.buckets.links.get` | GET | `v2/{+name}` | Gets a link. |
| `logging.organizations.locations.buckets.links.delete` | DELETE | `v2/{+name}` | Deletes a link. This will also delete the corresponding BigQuery linked dataset. |
| `logging.organizations.locations.buckets.links.create` | POST | `v2/{+parent}/links` | Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to re... |
| `logging.organizations.locations.buckets.links.list` | GET | `v2/{+parent}/links` | Lists links. |
| `logging.organizations.locations.buckets.views.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `logging.organizations.locations.buckets.views.list` | GET | `v2/{+parent}/views` | Lists views on a log bucket. |
| `logging.organizations.locations.buckets.views.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `logging.organizations.locations.buckets.views.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `logging.organizations.locations.buckets.views.patch` | PATCH | `v2/{+name}` | Updates a view on a log bucket. This method replaces the value of the filter field from the exist... |
| `logging.organizations.locations.buckets.views.delete` | DELETE | `v2/{+name}` | Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system i... |
| `logging.organizations.locations.buckets.views.get` | GET | `v2/{+name}` | Gets a view on a log bucket. |
| `logging.organizations.locations.buckets.views.create` | POST | `v2/{+parent}/views` | Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views. |
| `logging.organizations.locations.buckets.views.logs.list` | GET | `v2/{+parent}/logs` | Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entr... |
| `logging.organizations.locations.logScopes.delete` | DELETE | `v2/{+name}` | Deletes a log scope. |
| `logging.organizations.locations.logScopes.patch` | PATCH | `v2/{+name}` | Updates a log scope. |
| `logging.organizations.locations.logScopes.get` | GET | `v2/{+name}` | Gets a log scope. |
| `logging.organizations.locations.logScopes.list` | GET | `v2/{+parent}/logScopes` | Lists log scopes. |
| `logging.organizations.locations.logScopes.create` | POST | `v2/{+parent}/logScopes` | Creates a log scope. |
| `logging.organizations.sinks.get` | GET | `v2/{+sinkName}` | Gets a sink. |
| `logging.organizations.sinks.create` | POST | `v2/{+parent}/sinks` | Creates a sink that exports specified log entries to a destination. The export begins upon ingres... |
| `logging.organizations.sinks.update` | PUT | `v2/{+sinkName}` | Updates a sink. This method replaces the values of the destination and filter fields of the exist... |
| `logging.organizations.sinks.list` | GET | `v2/{+parent}/sinks` | Lists sinks. |
| `logging.organizations.sinks.delete` | DELETE | `v2/{+sinkName}` | Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted. |
| `logging.organizations.sinks.patch` | PATCH | `v2/{+sinkName}` | Updates a sink. This method replaces the values of the destination and filter fields of the exist... |
| `logging.organizations.logs.list` | GET | `v2/{+parent}/logs` | Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entr... |
| `logging.organizations.logs.delete` | DELETE | `v2/{+logName}` | Deletes all the log entries in a log for the global _Default Log Bucket. The log reappears if it ... |
| `logging.organizations.exclusions.create` | POST | `v2/{+parent}/exclusions` | Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries bel... |
| `logging.organizations.exclusions.patch` | PATCH | `v2/{+name}` | Changes one or more properties of an existing exclusion in the _Default sink. |
| `logging.organizations.exclusions.list` | GET | `v2/{+parent}/exclusions` | Lists all the exclusions on the _Default sink in a parent resource. |
| `logging.organizations.exclusions.get` | GET | `v2/{+name}` | Gets the description of an exclusion in the _Default sink. |
| `logging.organizations.exclusions.delete` | DELETE | `v2/{+name}` | Deletes an exclusion in the _Default sink. |
| `logging.folders.getCmekSettings` | GET | `v2/{+name}/cmekSettings` | Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be config... |
| `logging.folders.updateSettings` | PATCH | `v2/{+name}/settings` | Updates the settings for the given resource. This method applies to all feature configurations fo... |
| `logging.folders.getSettings` | GET | `v2/{+name}/settings` | Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud project... |
| `logging.folders.logs.list` | GET | `v2/{+parent}/logs` | Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entr... |
| `logging.folders.logs.delete` | DELETE | `v2/{+logName}` | Deletes all the log entries in a log for the global _Default Log Bucket. The log reappears if it ... |
| `logging.folders.exclusions.get` | GET | `v2/{+name}` | Gets the description of an exclusion in the _Default sink. |
| `logging.folders.exclusions.patch` | PATCH | `v2/{+name}` | Changes one or more properties of an existing exclusion in the _Default sink. |
| `logging.folders.exclusions.list` | GET | `v2/{+parent}/exclusions` | Lists all the exclusions on the _Default sink in a parent resource. |
| `logging.folders.exclusions.delete` | DELETE | `v2/{+name}` | Deletes an exclusion in the _Default sink. |
| `logging.folders.exclusions.create` | POST | `v2/{+parent}/exclusions` | Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries bel... |
| `logging.folders.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `logging.folders.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `logging.folders.locations.recentQueries.list` | GET | `v2/{+parent}/recentQueries` | Lists the RecentQueries that were created by the user making the request. |
| `logging.folders.locations.buckets.get` | GET | `v2/{+name}` | Gets a log bucket. |
| `logging.folders.locations.buckets.delete` | DELETE | `v2/{+name}` | Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 ... |
| `logging.folders.locations.buckets.list` | GET | `v2/{+parent}/buckets` | Lists log buckets. |
| `logging.folders.locations.buckets.createAsync` | POST | `v2/{+parent}/buckets:createAsync` | Creates a log bucket asynchronously that can be used to store log entries.After a bucket has been... |
| `logging.folders.locations.buckets.updateAsync` | POST | `v2/{+name}:updateAsync` | Updates a log bucket asynchronously.If the bucket has a lifecycle_state of DELETE_REQUESTED, then... |
| `logging.folders.locations.buckets.patch` | PATCH | `v2/{+name}` | Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECOND... |
| `logging.folders.locations.buckets.undelete` | POST | `v2/{+name}:undelete` | Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period o... |
| `logging.folders.locations.buckets.create` | POST | `v2/{+parent}/buckets` | Creates a log bucket that can be used to store log entries. After a bucket has been created, the ... |
| `logging.folders.locations.buckets.links.list` | GET | `v2/{+parent}/links` | Lists links. |
| `logging.folders.locations.buckets.links.delete` | DELETE | `v2/{+name}` | Deletes a link. This will also delete the corresponding BigQuery linked dataset. |
| `logging.folders.locations.buckets.links.create` | POST | `v2/{+parent}/links` | Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to re... |
| `logging.folders.locations.buckets.links.get` | GET | `v2/{+name}` | Gets a link. |
| `logging.folders.locations.buckets.views.delete` | DELETE | `v2/{+name}` | Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system i... |
| `logging.folders.locations.buckets.views.list` | GET | `v2/{+parent}/views` | Lists views on a log bucket. |
| `logging.folders.locations.buckets.views.create` | POST | `v2/{+parent}/views` | Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views. |
| `logging.folders.locations.buckets.views.patch` | PATCH | `v2/{+name}` | Updates a view on a log bucket. This method replaces the value of the filter field from the exist... |
| `logging.folders.locations.buckets.views.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `logging.folders.locations.buckets.views.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `logging.folders.locations.buckets.views.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `logging.folders.locations.buckets.views.get` | GET | `v2/{+name}` | Gets a view on a log bucket. |
| `logging.folders.locations.buckets.views.logs.list` | GET | `v2/{+parent}/logs` | Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entr... |
| `logging.folders.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `logging.folders.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `logging.folders.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `logging.folders.locations.logScopes.create` | POST | `v2/{+parent}/logScopes` | Creates a log scope. |
| `logging.folders.locations.logScopes.delete` | DELETE | `v2/{+name}` | Deletes a log scope. |
| `logging.folders.locations.logScopes.list` | GET | `v2/{+parent}/logScopes` | Lists log scopes. |
| `logging.folders.locations.logScopes.get` | GET | `v2/{+name}` | Gets a log scope. |
| `logging.folders.locations.logScopes.patch` | PATCH | `v2/{+name}` | Updates a log scope. |
| `logging.folders.locations.savedQueries.patch` | PATCH | `v2/{+name}` | Updates an existing SavedQuery. |
| `logging.folders.locations.savedQueries.create` | POST | `v2/{+parent}/savedQueries` | Creates a new SavedQuery for the user making the request. |
| `logging.folders.locations.savedQueries.list` | GET | `v2/{+parent}/savedQueries` | Lists the SavedQueries that were created by the user making the request. |
| `logging.folders.locations.savedQueries.get` | GET | `v2/{+name}` | Returns all data associated with the requested query. |
| `logging.folders.locations.savedQueries.delete` | DELETE | `v2/{+name}` | Deletes an existing SavedQuery that was created by the user making the request. |
| `logging.folders.sinks.delete` | DELETE | `v2/{+sinkName}` | Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted. |
| `logging.folders.sinks.patch` | PATCH | `v2/{+sinkName}` | Updates a sink. This method replaces the values of the destination and filter fields of the exist... |
| `logging.folders.sinks.list` | GET | `v2/{+parent}/sinks` | Lists sinks. |
| `logging.folders.sinks.create` | POST | `v2/{+parent}/sinks` | Creates a sink that exports specified log entries to a destination. The export begins upon ingres... |
| `logging.folders.sinks.update` | PUT | `v2/{+sinkName}` | Updates a sink. This method replaces the values of the destination and filter fields of the exist... |
| `logging.folders.sinks.get` | GET | `v2/{+sinkName}` | Gets a sink. |
| `logging.billingAccounts.getSettings` | GET | `v2/{+name}/settings` | Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud project... |
| `logging.billingAccounts.getCmekSettings` | GET | `v2/{+name}/cmekSettings` | Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be config... |
| `logging.billingAccounts.logs.delete` | DELETE | `v2/{+logName}` | Deletes all the log entries in a log for the global _Default Log Bucket. The log reappears if it ... |
| `logging.billingAccounts.logs.list` | GET | `v2/{+parent}/logs` | Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entr... |
| `logging.billingAccounts.exclusions.patch` | PATCH | `v2/{+name}` | Changes one or more properties of an existing exclusion in the _Default sink. |
| `logging.billingAccounts.exclusions.get` | GET | `v2/{+name}` | Gets the description of an exclusion in the _Default sink. |
| `logging.billingAccounts.exclusions.list` | GET | `v2/{+parent}/exclusions` | Lists all the exclusions on the _Default sink in a parent resource. |
| `logging.billingAccounts.exclusions.create` | POST | `v2/{+parent}/exclusions` | Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries bel... |
| `logging.billingAccounts.exclusions.delete` | DELETE | `v2/{+name}` | Deletes an exclusion in the _Default sink. |
| `logging.billingAccounts.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `logging.billingAccounts.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `logging.billingAccounts.locations.buckets.patch` | PATCH | `v2/{+name}` | Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECOND... |
| `logging.billingAccounts.locations.buckets.list` | GET | `v2/{+parent}/buckets` | Lists log buckets. |
| `logging.billingAccounts.locations.buckets.updateAsync` | POST | `v2/{+name}:updateAsync` | Updates a log bucket asynchronously.If the bucket has a lifecycle_state of DELETE_REQUESTED, then... |
| `logging.billingAccounts.locations.buckets.get` | GET | `v2/{+name}` | Gets a log bucket. |
| `logging.billingAccounts.locations.buckets.create` | POST | `v2/{+parent}/buckets` | Creates a log bucket that can be used to store log entries. After a bucket has been created, the ... |
| `logging.billingAccounts.locations.buckets.createAsync` | POST | `v2/{+parent}/buckets:createAsync` | Creates a log bucket asynchronously that can be used to store log entries.After a bucket has been... |
| `logging.billingAccounts.locations.buckets.undelete` | POST | `v2/{+name}:undelete` | Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period o... |
| `logging.billingAccounts.locations.buckets.delete` | DELETE | `v2/{+name}` | Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 ... |
| `logging.billingAccounts.locations.buckets.views.patch` | PATCH | `v2/{+name}` | Updates a view on a log bucket. This method replaces the value of the filter field from the exist... |
| `logging.billingAccounts.locations.buckets.views.delete` | DELETE | `v2/{+name}` | Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system i... |
| `logging.billingAccounts.locations.buckets.views.list` | GET | `v2/{+parent}/views` | Lists views on a log bucket. |
| `logging.billingAccounts.locations.buckets.views.get` | GET | `v2/{+name}` | Gets a view on a log bucket. |
| `logging.billingAccounts.locations.buckets.views.create` | POST | `v2/{+parent}/views` | Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views. |
| `logging.billingAccounts.locations.buckets.views.logs.list` | GET | `v2/{+parent}/logs` | Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entr... |
| `logging.billingAccounts.locations.buckets.links.create` | POST | `v2/{+parent}/links` | Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to re... |
| `logging.billingAccounts.locations.buckets.links.delete` | DELETE | `v2/{+name}` | Deletes a link. This will also delete the corresponding BigQuery linked dataset. |
| `logging.billingAccounts.locations.buckets.links.list` | GET | `v2/{+parent}/links` | Lists links. |
| `logging.billingAccounts.locations.buckets.links.get` | GET | `v2/{+name}` | Gets a link. |
| `logging.billingAccounts.locations.recentQueries.list` | GET | `v2/{+parent}/recentQueries` | Lists the RecentQueries that were created by the user making the request. |
| `logging.billingAccounts.locations.savedQueries.list` | GET | `v2/{+parent}/savedQueries` | Lists the SavedQueries that were created by the user making the request. |
| `logging.billingAccounts.locations.savedQueries.delete` | DELETE | `v2/{+name}` | Deletes an existing SavedQuery that was created by the user making the request. |
| `logging.billingAccounts.locations.savedQueries.patch` | PATCH | `v2/{+name}` | Updates an existing SavedQuery. |
| `logging.billingAccounts.locations.savedQueries.create` | POST | `v2/{+parent}/savedQueries` | Creates a new SavedQuery for the user making the request. |
| `logging.billingAccounts.locations.savedQueries.get` | GET | `v2/{+name}` | Returns all data associated with the requested query. |
| `logging.billingAccounts.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `logging.billingAccounts.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `logging.billingAccounts.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `logging.billingAccounts.sinks.get` | GET | `v2/{+sinkName}` | Gets a sink. |
| `logging.billingAccounts.sinks.create` | POST | `v2/{+parent}/sinks` | Creates a sink that exports specified log entries to a destination. The export begins upon ingres... |
| `logging.billingAccounts.sinks.list` | GET | `v2/{+parent}/sinks` | Lists sinks. |
| `logging.billingAccounts.sinks.patch` | PATCH | `v2/{+sinkName}` | Updates a sink. This method replaces the values of the destination and filter fields of the exist... |
| `logging.billingAccounts.sinks.delete` | DELETE | `v2/{+sinkName}` | Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted. |
| `logging.billingAccounts.sinks.update` | PUT | `v2/{+sinkName}` | Updates a sink. This method replaces the values of the destination and filter fields of the exist... |
| `logging.updateSettings` | PATCH | `v2/{+name}/settings` | Updates the settings for the given resource. This method applies to all feature configurations fo... |
| `logging.getCmekSettings` | GET | `v2/{+name}/cmekSettings` | Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be config... |
| `logging.getSettings` | GET | `v2/{+name}/settings` | Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud project... |
| `logging.updateCmekSettings` | PATCH | `v2/{+name}/cmekSettings` | Updates the Log Router CMEK settings for the given resource.Note: CMEK for the Log Router can cur... |
| `logging.logs.delete` | DELETE | `v2/{+logName}` | Deletes all the log entries in a log for the global _Default Log Bucket. The log reappears if it ... |
| `logging.logs.list` | GET | `v2/{+parent}/logs` | Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entr... |
| `logging.monitoredResourceDescriptors.list` | GET | `v2/monitoredResourceDescriptors` | Lists the descriptors for monitored resource types used by Logging. |
| `logging.exclusions.get` | GET | `v2/{+name}` | Gets the description of an exclusion in the _Default sink. |
| `logging.exclusions.create` | POST | `v2/{+parent}/exclusions` | Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries bel... |
| `logging.exclusions.patch` | PATCH | `v2/{+name}` | Changes one or more properties of an existing exclusion in the _Default sink. |
| `logging.exclusions.list` | GET | `v2/{+parent}/exclusions` | Lists all the exclusions on the _Default sink in a parent resource. |
| `logging.exclusions.delete` | DELETE | `v2/{+name}` | Deletes an exclusion in the _Default sink. |

### `logging.entries.list`

**POST** `v2/entries:list`

Lists log entries. Use this method to retrieve log entries that originated from a project/folder/organization/billing account. For ways to export log entries, see Exporting Logs (https://cloud.google.com/logging/docs/export).

**Request body**: `ListLogEntriesRequest`

**Response**: `ListLogEntriesResponse`

```typescript
const res = await logging.entries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.entries.copy`

**POST** `v2/entries:copy`

Copies a set of log entries from a log bucket to a Cloud Storage bucket.

**Request body**: `CopyLogEntriesRequest`

**Response**: `Operation`

```typescript
const res = await logging.entries.copy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.entries.write`

**POST** `v2/entries:write`

Writes log entries to Logging. This API method is the only way to send log entries to Logging. This method is used, directly or indirectly, by the Logging agent (fluentd) and all logging libraries configured to use Logging. A single request may contain log entries for a maximum of 1000 different resource names (projects, organizations, billing accounts or folders), where the resource name for a log entry is determined from its logName field.

**Request body**: `WriteLogEntriesRequest`

**Response**: `WriteLogEntriesResponse`

```typescript
const res = await logging.entries.write({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.write`

---

### `logging.entries.tail`

**POST** `v2/entries:tail`

Streaming read of log entries as they are received. Until the stream is terminated, it will continue reading logs.

**Request body**: `TailLogEntriesRequest`

**Response**: `TailLogEntriesResponse`

```typescript
const res = await logging.entries.tail({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.getCmekSettings`

**GET** `v2/{+name}/cmekSettings`

Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations, and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Configure CMEK for Cloud Logging (https://docs.cloud.google.com/logging/docs/routing/managed-encryption) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource for which to retrieve CMEK settings. "projects/[PROJECT_ID]/cmekSettings" "organizations/[ORGA... |

**Response**: `CmekSettings`

```typescript
const res = await logging.projects.getCmekSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.getSettings`

**GET** `v2/{+name}/settings`

Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts.See View default resource settings for Logging (https://docs.cloud.google.com/logging/docs/default-settings#view-org-settings) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource for which to retrieve settings. "projects/[PROJECT_ID]/settings" "organizations/[ORGANIZATION_... |

**Response**: `Settings`

```typescript
const res = await logging.projects.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.sinks.get`

**GET** `v2/{+sinkName}`

Gets a sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The resource name of the sink: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "organizations/[ORGANIZATION_ID]/sin... |

**Response**: `LogSink`

```typescript
const res = await logging.sinks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.sinks.create`

**POST** `v2/{+parent}/sinks`

Creates a sink that exports specified log entries to a destination. The export begins upon ingress, unless the sink's writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the sink: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billin... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted o... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.sinks.update`

**PUT** `v2/{+sinkName}`

Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer_identity; see the unique_writer_identity field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to update, including the parent resource and the sink identifier: "proje... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the val... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and ... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.sinks.list`

**GET** `v2/{+parent}/sinks`

Lists sinks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose sinks are to be listed: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"... |
| `filter` | `string` | query | No | Optional. A filter expression to constrain the sinks returned. Today, this only supports the following strings: '' 'i... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListSinksResponse`

```typescript
const res = await logging.sinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.sinks.patch`

**PATCH** `v2/{+sinkName}`

Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer_identity; see the unique_writer_identity field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to update, including the parent resource and the sink identifier: "proje... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the val... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and ... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.sinks.delete`

**DELETE** `v2/{+sinkName}`

Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: "proje... |

**Response**: `Empty`

```typescript
const res = await logging.sinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.metrics.delete`

**DELETE** `v2/{+metricName}`

Deletes a logs-based metric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `metricName` | `string` | path | Yes | Required. The resource name of the metric to delete: "projects/[PROJECT_ID]/metrics/[METRIC_ID]" |

**Response**: `Empty`

```typescript
const res = await logging.metrics.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.write`

---

### `logging.projects.metrics.create`

**POST** `v2/{+parent}/metrics`

Creates a logs-based metric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the project in which to create the metric: "projects/[PROJECT_ID]" The new metric must... |

**Request body**: `LogMetric`

**Response**: `LogMetric`

```typescript
const res = await logging.metrics.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.write`

---

### `logging.projects.metrics.get`

**GET** `v2/{+metricName}`

Gets a logs-based metric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `metricName` | `string` | path | Yes | Required. The resource name of the desired metric: "projects/[PROJECT_ID]/metrics/[METRIC_ID]" |

**Response**: `LogMetric`

```typescript
const res = await logging.metrics.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.metrics.update`

**PUT** `v2/{+metricName}`

Creates or updates a logs-based metric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `metricName` | `string` | path | Yes | Required. The resource name of the metric to update: "projects/[PROJECT_ID]/metrics/[METRIC_ID]" The updated metric m... |

**Request body**: `LogMetric`

**Response**: `LogMetric`

```typescript
const res = await logging.metrics.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.write`

---

### `logging.projects.metrics.list`

**GET** `v2/{+parent}/metrics`

Lists logs-based metrics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project containing the metrics: "projects/[PROJECT_ID]" |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListLogMetricsResponse`

```typescript
const res = await logging.metrics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.exclusions.patch`

**PATCH** `v2/{+name}`

Changes one or more properties of an existing exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the exclusion to update: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organizati... |
| `updateMask` | `string` | query | No | Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from th... |

**Request body**: `LogExclusion`

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.exclusions.delete`

**DELETE** `v2/{+name}`

Deletes an exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of an existing exclusion to delete: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "or... |

**Response**: `Empty`

```typescript
const res = await logging.exclusions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.exclusions.create`

**POST** `v2/{+parent}/exclusions`

Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the exclusion: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_... |

**Request body**: `LogExclusion`

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.exclusions.list`

**GET** `v2/{+parent}/exclusions`

Lists all the exclusions on the _Default sink in a parent resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose exclusions are to be listed. "projects/[PROJECT_ID]" "organizations/[ORGANIZATION... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListExclusionsResponse`

```typescript
const res = await logging.exclusions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.exclusions.get`

**GET** `v2/{+name}`

Gets the description of an exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of an existing exclusion: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organization... |

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.logs.delete`

**DELETE** `v2/{+logName}`

Deletes all the log entries in a log for the global _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `logName` | `string` | path | Yes | Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]... |

**Response**: `Empty`

```typescript
const res = await logging.logs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.logs.list`

**GET** `v2/{+parent}/logs`

Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name to list logs for: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |
| `resourceNames` | `string` | query | No | Optional. List of resource names to list logs for: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/... |

**Response**: `ListLogsResponse`

```typescript
const res = await logging.logs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.list`

**GET** `v2/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: List all public locations: Use the path GET /v1/locations. List project-visible locations: Use the path GET /v1/projects/{project_id}/locations. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like "displayName=tokyo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the next_page_token field in the response. Send that page token to receive the subsequent ... |

**Response**: `ListLocationsResponse`

```typescript
const res = await logging.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await logging.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await logging.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.operations.list`

**GET** `v2/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `ListOperationsResponse`

```typescript
const res = await logging.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await logging.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.recentQueries.list`

**GET** `v2/{+parent}/recentQueries`

Lists the RecentQueries that were created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to which the listed queries belong. "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizat... |
| `filter` | `string` | query | No | Optional. Specifies the type ("Logging" or "OpsAnalytics") of the recent queries to list. The only valid value for th... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListRecentQueriesResponse`

```typescript
const res = await logging.recentQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.logScopes.get`

**GET** `v2/{+name}`

Gets a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the log scope: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZ... |

**Response**: `LogScope`

```typescript
const res = await logging.logScopes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.logScopes.delete`

**DELETE** `v2/{+name}`

Deletes a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the log scope to delete: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organization... |

**Response**: `Empty`

```typescript
const res = await logging.logScopes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.logScopes.create`

**POST** `v2/{+parent}/logScopes`

Creates a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the log scope: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "orga... |
| `logScopeId` | `string` | query | No | Required. A client-assigned identifier such as "log-scope". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogScope`

**Response**: `LogScope`

```typescript
const res = await logging.logScopes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.logScopes.patch`

**PATCH** `v2/{+name}`

Updates a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the log scope.Log scopes are only available in the global location. For example:pro... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in log_scope that need an update. A field will be overwritten if, and ... |

**Request body**: `LogScope`

**Response**: `LogScope`

```typescript
const res = await logging.logScopes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.logScopes.list`

**GET** `v2/{+parent}/logScopes`

Lists log scopes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose log scopes are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListLogScopesResponse`

```typescript
const res = await logging.logScopes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.savedQueries.create`

**POST** `v2/{+parent}/savedQueries`

Creates a new SavedQuery for the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the saved query: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "or... |
| `savedQueryId` | `string` | query | No | Optional. The ID to use for the saved query, which will become the final component of the saved query's resource name... |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.savedQueries.patch`

**PATCH** `v2/{+name}`

Updates an existing SavedQuery.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the saved query.In the format: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQuer... |
| `updateMask` | `string` | query | No | Required. A non-empty list of fields to change in the existing saved query. Fields are relative to the saved_query an... |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.savedQueries.delete`

**DELETE** `v2/{+name}`

Deletes an existing SavedQuery that was created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the saved query to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQu... |

**Response**: `Empty`

```typescript
const res = await logging.savedQueries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.savedQueries.get`

**GET** `v2/{+name}`

Returns all data associated with the requested query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the saved query. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID... |

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.savedQueries.list`

**GET** `v2/{+parent}/savedQueries`

Lists the SavedQueries that were created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to which the listed queries belong. "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizat... |
| `filter` | `string` | query | No | Optional. Specifies the type ("Logging" or "OpsAnalytics") and the visibility (PRIVATE or SHARED) of the saved querie... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListSavedQueriesResponse`

```typescript
const res = await logging.savedQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.buckets.undelete`

**POST** `v2/{+name}:undelete`

Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to undelete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[B... |

**Request body**: `UndeleteBucketRequest`

**Response**: `Empty`

```typescript
const res = await logging.buckets.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.createAsync`

**POST** `v2/{+parent}/buckets:createAsync`

Creates a log bucket asynchronously that can be used to store log entries.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example... |
| `bucketId` | `string` | query | No | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogBucket`

**Response**: `Operation`

```typescript
const res = await logging.buckets.createAsync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.create`

**POST** `v2/{+parent}/buckets`

Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example... |
| `bucketId` | `string` | query | No | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogBucket`

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.delete`

**DELETE** `v2/{+name}`

Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |

**Response**: `Empty`

```typescript
const res = await logging.buckets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.patch`

**PATCH** `v2/{+name}`

Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |
| `updateMask` | `string` | query | No | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, ... |

**Request body**: `LogBucket`

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.list`

**GET** `v2/{+parent}/buckets`

Lists log buckets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose buckets are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organi... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListBucketsResponse`

```typescript
const res = await logging.buckets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.buckets.updateAsync`

**POST** `v2/{+name}:updateAsync`

Updates a log bucket asynchronously.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |
| `updateMask` | `string` | query | No | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, ... |

**Request body**: `LogBucket`

**Response**: `Operation`

```typescript
const res = await logging.buckets.updateAsync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.get`

**GET** `v2/{+name}`

Gets a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organ... |

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.buckets.links.delete`

**DELETE** `v2/{+name}`

Deletes a link. This will also delete the corresponding BigQuery linked dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKE... |

**Response**: `Operation`

```typescript
const res = await logging.links.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.links.get`

**GET** `v2/{+name}`

Gets a link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the link: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LI... |

**Response**: `Link`

```typescript
const res = await logging.links.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.buckets.links.list`

**GET** `v2/{+parent}/links`

Lists links.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose links are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[B... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListLinksResponse`

```typescript
const res = await logging.links.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.buckets.links.create`

**POST** `v2/{+parent}/links`

Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to read the logs stored in the log bucket. A log bucket may currently only contain one link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The full resource name of the bucket to create a link for. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/b... |
| `linkId` | `string` | query | No | Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alpha... |

**Request body**: `Link`

**Response**: `Operation`

```typescript
const res = await logging.links.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.views.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await logging.views.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.buckets.views.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await logging.views.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.buckets.views.delete`

**DELETE** `v2/{+name}`

Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the view to delete: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKE... |

**Response**: `Empty`

```typescript
const res = await logging.views.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.views.patch`

**PATCH** `v2/{+name}`

Updates a view on a log bucket. This method replaces the value of the filter field from the existing view with the corresponding value from the new view. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the view to update "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only ... |

**Request body**: `LogView`

**Response**: `LogView`

```typescript
const res = await logging.views.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.views.list`

**GET** `v2/{+parent}/views`

Lists views on a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bucket whose views are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListViewsResponse`

```typescript
const res = await logging.views.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.buckets.views.get`

**GET** `v2/{+name}`

Gets a view on a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the policy: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[... |

**Response**: `LogView`

```typescript
const res = await logging.views.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.projects.locations.buckets.views.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await logging.views.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.views.create`

**POST** `v2/{+parent}/views`

Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bucket in which to create the view `"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"... |
| `viewId` | `string` | query | No | Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include o... |

**Request body**: `LogView`

**Response**: `LogView`

```typescript
const res = await logging.views.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.projects.locations.buckets.views.logs.list`

**GET** `v2/{+parent}/logs`

Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name to list logs for: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |
| `resourceNames` | `string` | query | No | Optional. List of resource names to list logs for: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/... |

**Response**: `ListLogsResponse`

```typescript
const res = await logging.logs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.sinks.update`

**PUT** `v2/{+sinkName}`

Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer_identity; see the unique_writer_identity field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to update, including the parent resource and the sink identifier: "proje... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the val... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and ... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.sinks.delete`

**DELETE** `v2/{+sinkName}`

Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: "proje... |

**Response**: `Empty`

```typescript
const res = await logging.sinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.sinks.list`

**GET** `v2/{+parent}/sinks`

Lists sinks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose sinks are to be listed: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"... |
| `filter` | `string` | query | No | Optional. A filter expression to constrain the sinks returned. Today, this only supports the following strings: '' 'i... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListSinksResponse`

```typescript
const res = await logging.sinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.sinks.get`

**GET** `v2/{+sinkName}`

Gets a sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The resource name of the sink: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "organizations/[ORGANIZATION_ID]/sin... |

**Response**: `LogSink`

```typescript
const res = await logging.sinks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.sinks.create`

**POST** `v2/{+parent}/sinks`

Creates a sink that exports specified log entries to a destination. The export begins upon ingress, unless the sink's writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the sink: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billin... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted o... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await logging.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.list`

**GET** `v2/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: List all public locations: Use the path GET /v1/locations. List project-visible locations: Use the path GET /v1/projects/{project_id}/locations. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like "displayName=tokyo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the next_page_token field in the response. Send that page token to receive the subsequent ... |

**Response**: `ListLocationsResponse`

```typescript
const res = await logging.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.operations.list`

**GET** `v2/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `ListOperationsResponse`

```typescript
const res = await logging.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await logging.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await logging.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.buckets.delete`

**DELETE** `v2/{+name}`

Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |

**Response**: `Empty`

```typescript
const res = await logging.buckets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.create`

**POST** `v2/{+parent}/buckets`

Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example... |
| `bucketId` | `string` | query | No | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogBucket`

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.get`

**GET** `v2/{+name}`

Gets a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organ... |

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.buckets.undelete`

**POST** `v2/{+name}:undelete`

Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to undelete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[B... |

**Request body**: `UndeleteBucketRequest`

**Response**: `Empty`

```typescript
const res = await logging.buckets.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.updateAsync`

**POST** `v2/{+name}:updateAsync`

Updates a log bucket asynchronously.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |
| `updateMask` | `string` | query | No | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, ... |

**Request body**: `LogBucket`

**Response**: `Operation`

```typescript
const res = await logging.buckets.updateAsync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.list`

**GET** `v2/{+parent}/buckets`

Lists log buckets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose buckets are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organi... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListBucketsResponse`

```typescript
const res = await logging.buckets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.buckets.patch`

**PATCH** `v2/{+name}`

Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |
| `updateMask` | `string` | query | No | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, ... |

**Request body**: `LogBucket`

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.createAsync`

**POST** `v2/{+parent}/buckets:createAsync`

Creates a log bucket asynchronously that can be used to store log entries.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example... |
| `bucketId` | `string` | query | No | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogBucket`

**Response**: `Operation`

```typescript
const res = await logging.buckets.createAsync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.views.list`

**GET** `v2/{+parent}/views`

Lists views on a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bucket whose views are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListViewsResponse`

```typescript
const res = await logging.views.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.buckets.views.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await logging.views.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.views.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await logging.views.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.buckets.views.delete`

**DELETE** `v2/{+name}`

Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the view to delete: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKE... |

**Response**: `Empty`

```typescript
const res = await logging.views.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.views.get`

**GET** `v2/{+name}`

Gets a view on a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the policy: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[... |

**Response**: `LogView`

```typescript
const res = await logging.views.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.buckets.views.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await logging.views.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.buckets.views.create`

**POST** `v2/{+parent}/views`

Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bucket in which to create the view `"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"... |
| `viewId` | `string` | query | No | Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include o... |

**Request body**: `LogView`

**Response**: `LogView`

```typescript
const res = await logging.views.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.views.patch`

**PATCH** `v2/{+name}`

Updates a view on a log bucket. This method replaces the value of the filter field from the existing view with the corresponding value from the new view. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the view to update "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only ... |

**Request body**: `LogView`

**Response**: `LogView`

```typescript
const res = await logging.views.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.links.get`

**GET** `v2/{+name}`

Gets a link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the link: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LI... |

**Response**: `Link`

```typescript
const res = await logging.links.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.buckets.links.list`

**GET** `v2/{+parent}/links`

Lists links.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose links are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[B... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListLinksResponse`

```typescript
const res = await logging.links.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.locations.buckets.links.create`

**POST** `v2/{+parent}/links`

Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to read the logs stored in the log bucket. A log bucket may currently only contain one link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The full resource name of the bucket to create a link for. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/b... |
| `linkId` | `string` | query | No | Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alpha... |

**Request body**: `Link`

**Response**: `Operation`

```typescript
const res = await logging.links.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.locations.buckets.links.delete`

**DELETE** `v2/{+name}`

Deletes a link. This will also delete the corresponding BigQuery linked dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKE... |

**Response**: `Operation`

```typescript
const res = await logging.links.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.getCmekSettings`

**GET** `v2/{+name}/cmekSettings`

Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations, and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Configure CMEK for Cloud Logging (https://docs.cloud.google.com/logging/docs/routing/managed-encryption) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource for which to retrieve CMEK settings. "projects/[PROJECT_ID]/cmekSettings" "organizations/[ORGA... |

**Response**: `CmekSettings`

```typescript
const res = await logging.organizations.getCmekSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.updateCmekSettings`

**PATCH** `v2/{+name}/cmekSettings`

Updates the Log Router CMEK settings for the given resource.Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.UpdateCmekSettings fails when any of the following are true: The value of kms_key_name is invalid. The associated service account doesn't have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key. Access to the key is disabled.See Configure CMEK for Cloud Logging (https://docs.cloud.google.com/logging/docs/routing/managed-encryption) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the CMEK settings to update. "projects/[PROJECT_ID]/cmekSettings" "organizations/[ORG... |
| `updateMask` | `string` | query | No | Optional. Field mask identifying which fields from cmek_settings should be updated. A field will be overwritten if an... |

**Request body**: `CmekSettings`

**Response**: `CmekSettings`

```typescript
const res = await logging.organizations.updateCmekSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.getSettings`

**GET** `v2/{+name}/settings`

Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts.See View default resource settings for Logging (https://docs.cloud.google.com/logging/docs/default-settings#view-org-settings) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource for which to retrieve settings. "projects/[PROJECT_ID]/settings" "organizations/[ORGANIZATION_... |

**Response**: `Settings`

```typescript
const res = await logging.organizations.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.updateSettings`

**PATCH** `v2/{+name}/settings`

Updates the settings for the given resource. This method applies to all feature configurations for organization and folders.UpdateSettings fails when any of the following are true: The value of storage_location either isn't supported by Logging or violates the location OrgPolicy. The default_sink_config field is set, but it has an unspecified filter write mode. The value of kms_key_name is invalid. The associated service account doesn't have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key. Access to the key is disabled.See Configure default settings for organizations and folders (https://docs.cloud.google.com/logging/docs/default-settings) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the settings to update. "organizations/[ORGANIZATION_ID]/settings" "folders/[FOLDER_I... |
| `updateMask` | `string` | query | No | Optional. Field mask identifying which fields from settings should be updated. A field will be overwritten if and onl... |

**Request body**: `Settings`

**Response**: `Settings`

```typescript
const res = await logging.organizations.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await logging.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.list`

**GET** `v2/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: List all public locations: Use the path GET /v1/locations. List project-visible locations: Use the path GET /v1/projects/{project_id}/locations. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like "displayName=tokyo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the next_page_token field in the response. Send that page token to receive the subsequent ... |

**Response**: `ListLocationsResponse`

```typescript
const res = await logging.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.savedQueries.delete`

**DELETE** `v2/{+name}`

Deletes an existing SavedQuery that was created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the saved query to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQu... |

**Response**: `Empty`

```typescript
const res = await logging.savedQueries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.savedQueries.create`

**POST** `v2/{+parent}/savedQueries`

Creates a new SavedQuery for the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the saved query: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "or... |
| `savedQueryId` | `string` | query | No | Optional. The ID to use for the saved query, which will become the final component of the saved query's resource name... |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.savedQueries.patch`

**PATCH** `v2/{+name}`

Updates an existing SavedQuery.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the saved query.In the format: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQuer... |
| `updateMask` | `string` | query | No | Required. A non-empty list of fields to change in the existing saved query. Fields are relative to the saved_query an... |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.savedQueries.get`

**GET** `v2/{+name}`

Returns all data associated with the requested query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the saved query. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID... |

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.savedQueries.list`

**GET** `v2/{+parent}/savedQueries`

Lists the SavedQueries that were created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to which the listed queries belong. "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizat... |
| `filter` | `string` | query | No | Optional. Specifies the type ("Logging" or "OpsAnalytics") and the visibility (PRIVATE or SHARED) of the saved querie... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListSavedQueriesResponse`

```typescript
const res = await logging.savedQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await logging.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await logging.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.operations.list`

**GET** `v2/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `ListOperationsResponse`

```typescript
const res = await logging.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.recentQueries.list`

**GET** `v2/{+parent}/recentQueries`

Lists the RecentQueries that were created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to which the listed queries belong. "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizat... |
| `filter` | `string` | query | No | Optional. Specifies the type ("Logging" or "OpsAnalytics") of the recent queries to list. The only valid value for th... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListRecentQueriesResponse`

```typescript
const res = await logging.recentQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.buckets.undelete`

**POST** `v2/{+name}:undelete`

Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to undelete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[B... |

**Request body**: `UndeleteBucketRequest`

**Response**: `Empty`

```typescript
const res = await logging.buckets.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.delete`

**DELETE** `v2/{+name}`

Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |

**Response**: `Empty`

```typescript
const res = await logging.buckets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.patch`

**PATCH** `v2/{+name}`

Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |
| `updateMask` | `string` | query | No | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, ... |

**Request body**: `LogBucket`

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.create`

**POST** `v2/{+parent}/buckets`

Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example... |
| `bucketId` | `string` | query | No | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogBucket`

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.createAsync`

**POST** `v2/{+parent}/buckets:createAsync`

Creates a log bucket asynchronously that can be used to store log entries.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example... |
| `bucketId` | `string` | query | No | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogBucket`

**Response**: `Operation`

```typescript
const res = await logging.buckets.createAsync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.updateAsync`

**POST** `v2/{+name}:updateAsync`

Updates a log bucket asynchronously.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |
| `updateMask` | `string` | query | No | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, ... |

**Request body**: `LogBucket`

**Response**: `Operation`

```typescript
const res = await logging.buckets.updateAsync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.get`

**GET** `v2/{+name}`

Gets a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organ... |

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.buckets.list`

**GET** `v2/{+parent}/buckets`

Lists log buckets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose buckets are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organi... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListBucketsResponse`

```typescript
const res = await logging.buckets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.buckets.links.get`

**GET** `v2/{+name}`

Gets a link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the link: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LI... |

**Response**: `Link`

```typescript
const res = await logging.links.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.buckets.links.delete`

**DELETE** `v2/{+name}`

Deletes a link. This will also delete the corresponding BigQuery linked dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKE... |

**Response**: `Operation`

```typescript
const res = await logging.links.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.links.create`

**POST** `v2/{+parent}/links`

Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to read the logs stored in the log bucket. A log bucket may currently only contain one link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The full resource name of the bucket to create a link for. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/b... |
| `linkId` | `string` | query | No | Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alpha... |

**Request body**: `Link`

**Response**: `Operation`

```typescript
const res = await logging.links.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.links.list`

**GET** `v2/{+parent}/links`

Lists links.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose links are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[B... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListLinksResponse`

```typescript
const res = await logging.links.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.buckets.views.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await logging.views.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.buckets.views.list`

**GET** `v2/{+parent}/views`

Lists views on a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bucket whose views are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListViewsResponse`

```typescript
const res = await logging.views.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.buckets.views.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await logging.views.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.buckets.views.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await logging.views.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.views.patch`

**PATCH** `v2/{+name}`

Updates a view on a log bucket. This method replaces the value of the filter field from the existing view with the corresponding value from the new view. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the view to update "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only ... |

**Request body**: `LogView`

**Response**: `LogView`

```typescript
const res = await logging.views.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.views.delete`

**DELETE** `v2/{+name}`

Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the view to delete: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKE... |

**Response**: `Empty`

```typescript
const res = await logging.views.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.views.get`

**GET** `v2/{+name}`

Gets a view on a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the policy: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[... |

**Response**: `LogView`

```typescript
const res = await logging.views.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.buckets.views.create`

**POST** `v2/{+parent}/views`

Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bucket in which to create the view `"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"... |
| `viewId` | `string` | query | No | Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include o... |

**Request body**: `LogView`

**Response**: `LogView`

```typescript
const res = await logging.views.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.buckets.views.logs.list`

**GET** `v2/{+parent}/logs`

Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name to list logs for: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |
| `resourceNames` | `string` | query | No | Optional. List of resource names to list logs for: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/... |

**Response**: `ListLogsResponse`

```typescript
const res = await logging.logs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.logScopes.delete`

**DELETE** `v2/{+name}`

Deletes a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the log scope to delete: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organization... |

**Response**: `Empty`

```typescript
const res = await logging.logScopes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.logScopes.patch`

**PATCH** `v2/{+name}`

Updates a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the log scope.Log scopes are only available in the global location. For example:pro... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in log_scope that need an update. A field will be overwritten if, and ... |

**Request body**: `LogScope`

**Response**: `LogScope`

```typescript
const res = await logging.logScopes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.locations.logScopes.get`

**GET** `v2/{+name}`

Gets a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the log scope: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZ... |

**Response**: `LogScope`

```typescript
const res = await logging.logScopes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.logScopes.list`

**GET** `v2/{+parent}/logScopes`

Lists log scopes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose log scopes are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListLogScopesResponse`

```typescript
const res = await logging.logScopes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.locations.logScopes.create`

**POST** `v2/{+parent}/logScopes`

Creates a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the log scope: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "orga... |
| `logScopeId` | `string` | query | No | Required. A client-assigned identifier such as "log-scope". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogScope`

**Response**: `LogScope`

```typescript
const res = await logging.logScopes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.sinks.get`

**GET** `v2/{+sinkName}`

Gets a sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The resource name of the sink: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "organizations/[ORGANIZATION_ID]/sin... |

**Response**: `LogSink`

```typescript
const res = await logging.sinks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.sinks.create`

**POST** `v2/{+parent}/sinks`

Creates a sink that exports specified log entries to a destination. The export begins upon ingress, unless the sink's writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the sink: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billin... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted o... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.sinks.update`

**PUT** `v2/{+sinkName}`

Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer_identity; see the unique_writer_identity field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to update, including the parent resource and the sink identifier: "proje... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the val... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and ... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.sinks.list`

**GET** `v2/{+parent}/sinks`

Lists sinks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose sinks are to be listed: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"... |
| `filter` | `string` | query | No | Optional. A filter expression to constrain the sinks returned. Today, this only supports the following strings: '' 'i... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListSinksResponse`

```typescript
const res = await logging.sinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.sinks.delete`

**DELETE** `v2/{+sinkName}`

Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: "proje... |

**Response**: `Empty`

```typescript
const res = await logging.sinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.sinks.patch`

**PATCH** `v2/{+sinkName}`

Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer_identity; see the unique_writer_identity field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to update, including the parent resource and the sink identifier: "proje... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the val... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and ... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.logs.list`

**GET** `v2/{+parent}/logs`

Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name to list logs for: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |
| `resourceNames` | `string` | query | No | Optional. List of resource names to list logs for: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/... |

**Response**: `ListLogsResponse`

```typescript
const res = await logging.logs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.logs.delete`

**DELETE** `v2/{+logName}`

Deletes all the log entries in a log for the global _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `logName` | `string` | path | Yes | Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]... |

**Response**: `Empty`

```typescript
const res = await logging.logs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.exclusions.create`

**POST** `v2/{+parent}/exclusions`

Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the exclusion: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_... |

**Request body**: `LogExclusion`

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.exclusions.patch`

**PATCH** `v2/{+name}`

Changes one or more properties of an existing exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the exclusion to update: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organizati... |
| `updateMask` | `string` | query | No | Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from th... |

**Request body**: `LogExclusion`

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.organizations.exclusions.list`

**GET** `v2/{+parent}/exclusions`

Lists all the exclusions on the _Default sink in a parent resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose exclusions are to be listed. "projects/[PROJECT_ID]" "organizations/[ORGANIZATION... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListExclusionsResponse`

```typescript
const res = await logging.exclusions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.exclusions.get`

**GET** `v2/{+name}`

Gets the description of an exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of an existing exclusion: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organization... |

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.organizations.exclusions.delete`

**DELETE** `v2/{+name}`

Deletes an exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of an existing exclusion to delete: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "or... |

**Response**: `Empty`

```typescript
const res = await logging.exclusions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.getCmekSettings`

**GET** `v2/{+name}/cmekSettings`

Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations, and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Configure CMEK for Cloud Logging (https://docs.cloud.google.com/logging/docs/routing/managed-encryption) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource for which to retrieve CMEK settings. "projects/[PROJECT_ID]/cmekSettings" "organizations/[ORGA... |

**Response**: `CmekSettings`

```typescript
const res = await logging.folders.getCmekSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.updateSettings`

**PATCH** `v2/{+name}/settings`

Updates the settings for the given resource. This method applies to all feature configurations for organization and folders.UpdateSettings fails when any of the following are true: The value of storage_location either isn't supported by Logging or violates the location OrgPolicy. The default_sink_config field is set, but it has an unspecified filter write mode. The value of kms_key_name is invalid. The associated service account doesn't have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key. Access to the key is disabled.See Configure default settings for organizations and folders (https://docs.cloud.google.com/logging/docs/default-settings) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the settings to update. "organizations/[ORGANIZATION_ID]/settings" "folders/[FOLDER_I... |
| `updateMask` | `string` | query | No | Optional. Field mask identifying which fields from settings should be updated. A field will be overwritten if and onl... |

**Request body**: `Settings`

**Response**: `Settings`

```typescript
const res = await logging.folders.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.getSettings`

**GET** `v2/{+name}/settings`

Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts.See View default resource settings for Logging (https://docs.cloud.google.com/logging/docs/default-settings#view-org-settings) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource for which to retrieve settings. "projects/[PROJECT_ID]/settings" "organizations/[ORGANIZATION_... |

**Response**: `Settings`

```typescript
const res = await logging.folders.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.logs.list`

**GET** `v2/{+parent}/logs`

Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name to list logs for: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |
| `resourceNames` | `string` | query | No | Optional. List of resource names to list logs for: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/... |

**Response**: `ListLogsResponse`

```typescript
const res = await logging.logs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.logs.delete`

**DELETE** `v2/{+logName}`

Deletes all the log entries in a log for the global _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `logName` | `string` | path | Yes | Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]... |

**Response**: `Empty`

```typescript
const res = await logging.logs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.exclusions.get`

**GET** `v2/{+name}`

Gets the description of an exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of an existing exclusion: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organization... |

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.exclusions.patch`

**PATCH** `v2/{+name}`

Changes one or more properties of an existing exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the exclusion to update: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organizati... |
| `updateMask` | `string` | query | No | Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from th... |

**Request body**: `LogExclusion`

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.exclusions.list`

**GET** `v2/{+parent}/exclusions`

Lists all the exclusions on the _Default sink in a parent resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose exclusions are to be listed. "projects/[PROJECT_ID]" "organizations/[ORGANIZATION... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListExclusionsResponse`

```typescript
const res = await logging.exclusions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.exclusions.delete`

**DELETE** `v2/{+name}`

Deletes an exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of an existing exclusion to delete: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "or... |

**Response**: `Empty`

```typescript
const res = await logging.exclusions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.exclusions.create`

**POST** `v2/{+parent}/exclusions`

Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the exclusion: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_... |

**Request body**: `LogExclusion`

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.list`

**GET** `v2/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: List all public locations: Use the path GET /v1/locations. List project-visible locations: Use the path GET /v1/projects/{project_id}/locations. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like "displayName=tokyo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the next_page_token field in the response. Send that page token to receive the subsequent ... |

**Response**: `ListLocationsResponse`

```typescript
const res = await logging.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await logging.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.recentQueries.list`

**GET** `v2/{+parent}/recentQueries`

Lists the RecentQueries that were created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to which the listed queries belong. "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizat... |
| `filter` | `string` | query | No | Optional. Specifies the type ("Logging" or "OpsAnalytics") of the recent queries to list. The only valid value for th... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListRecentQueriesResponse`

```typescript
const res = await logging.recentQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.buckets.get`

**GET** `v2/{+name}`

Gets a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organ... |

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.buckets.delete`

**DELETE** `v2/{+name}`

Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |

**Response**: `Empty`

```typescript
const res = await logging.buckets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.list`

**GET** `v2/{+parent}/buckets`

Lists log buckets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose buckets are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organi... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListBucketsResponse`

```typescript
const res = await logging.buckets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.buckets.createAsync`

**POST** `v2/{+parent}/buckets:createAsync`

Creates a log bucket asynchronously that can be used to store log entries.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example... |
| `bucketId` | `string` | query | No | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogBucket`

**Response**: `Operation`

```typescript
const res = await logging.buckets.createAsync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.updateAsync`

**POST** `v2/{+name}:updateAsync`

Updates a log bucket asynchronously.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |
| `updateMask` | `string` | query | No | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, ... |

**Request body**: `LogBucket`

**Response**: `Operation`

```typescript
const res = await logging.buckets.updateAsync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.patch`

**PATCH** `v2/{+name}`

Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |
| `updateMask` | `string` | query | No | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, ... |

**Request body**: `LogBucket`

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.undelete`

**POST** `v2/{+name}:undelete`

Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to undelete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[B... |

**Request body**: `UndeleteBucketRequest`

**Response**: `Empty`

```typescript
const res = await logging.buckets.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.create`

**POST** `v2/{+parent}/buckets`

Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example... |
| `bucketId` | `string` | query | No | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogBucket`

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.links.list`

**GET** `v2/{+parent}/links`

Lists links.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose links are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[B... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListLinksResponse`

```typescript
const res = await logging.links.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.buckets.links.delete`

**DELETE** `v2/{+name}`

Deletes a link. This will also delete the corresponding BigQuery linked dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKE... |

**Response**: `Operation`

```typescript
const res = await logging.links.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.links.create`

**POST** `v2/{+parent}/links`

Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to read the logs stored in the log bucket. A log bucket may currently only contain one link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The full resource name of the bucket to create a link for. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/b... |
| `linkId` | `string` | query | No | Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alpha... |

**Request body**: `Link`

**Response**: `Operation`

```typescript
const res = await logging.links.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.links.get`

**GET** `v2/{+name}`

Gets a link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the link: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LI... |

**Response**: `Link`

```typescript
const res = await logging.links.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.buckets.views.delete`

**DELETE** `v2/{+name}`

Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the view to delete: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKE... |

**Response**: `Empty`

```typescript
const res = await logging.views.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.views.list`

**GET** `v2/{+parent}/views`

Lists views on a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bucket whose views are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListViewsResponse`

```typescript
const res = await logging.views.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.buckets.views.create`

**POST** `v2/{+parent}/views`

Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bucket in which to create the view `"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"... |
| `viewId` | `string` | query | No | Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include o... |

**Request body**: `LogView`

**Response**: `LogView`

```typescript
const res = await logging.views.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.views.patch`

**PATCH** `v2/{+name}`

Updates a view on a log bucket. This method replaces the value of the filter field from the existing view with the corresponding value from the new view. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the view to update "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only ... |

**Request body**: `LogView`

**Response**: `LogView`

```typescript
const res = await logging.views.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.views.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await logging.views.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.buckets.views.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await logging.views.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.buckets.views.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await logging.views.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.buckets.views.get`

**GET** `v2/{+name}`

Gets a view on a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the policy: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[... |

**Response**: `LogView`

```typescript
const res = await logging.views.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.buckets.views.logs.list`

**GET** `v2/{+parent}/logs`

Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name to list logs for: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |
| `resourceNames` | `string` | query | No | Optional. List of resource names to list logs for: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/... |

**Response**: `ListLogsResponse`

```typescript
const res = await logging.logs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await logging.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await logging.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.operations.list`

**GET** `v2/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `ListOperationsResponse`

```typescript
const res = await logging.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.logScopes.create`

**POST** `v2/{+parent}/logScopes`

Creates a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the log scope: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "orga... |
| `logScopeId` | `string` | query | No | Required. A client-assigned identifier such as "log-scope". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogScope`

**Response**: `LogScope`

```typescript
const res = await logging.logScopes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.logScopes.delete`

**DELETE** `v2/{+name}`

Deletes a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the log scope to delete: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organization... |

**Response**: `Empty`

```typescript
const res = await logging.logScopes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.logScopes.list`

**GET** `v2/{+parent}/logScopes`

Lists log scopes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose log scopes are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListLogScopesResponse`

```typescript
const res = await logging.logScopes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.logScopes.get`

**GET** `v2/{+name}`

Gets a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the log scope: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizations/[ORGANIZ... |

**Response**: `LogScope`

```typescript
const res = await logging.logScopes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.logScopes.patch`

**PATCH** `v2/{+name}`

Updates a log scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the log scope.Log scopes are only available in the global location. For example:pro... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in log_scope that need an update. A field will be overwritten if, and ... |

**Request body**: `LogScope`

**Response**: `LogScope`

```typescript
const res = await logging.logScopes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.savedQueries.patch`

**PATCH** `v2/{+name}`

Updates an existing SavedQuery.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the saved query.In the format: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQuer... |
| `updateMask` | `string` | query | No | Required. A non-empty list of fields to change in the existing saved query. Fields are relative to the saved_query an... |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.savedQueries.create`

**POST** `v2/{+parent}/savedQueries`

Creates a new SavedQuery for the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the saved query: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "or... |
| `savedQueryId` | `string` | query | No | Optional. The ID to use for the saved query, which will become the final component of the saved query's resource name... |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.locations.savedQueries.list`

**GET** `v2/{+parent}/savedQueries`

Lists the SavedQueries that were created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to which the listed queries belong. "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizat... |
| `filter` | `string` | query | No | Optional. Specifies the type ("Logging" or "OpsAnalytics") and the visibility (PRIVATE or SHARED) of the saved querie... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListSavedQueriesResponse`

```typescript
const res = await logging.savedQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.savedQueries.get`

**GET** `v2/{+name}`

Returns all data associated with the requested query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the saved query. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID... |

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.locations.savedQueries.delete`

**DELETE** `v2/{+name}`

Deletes an existing SavedQuery that was created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the saved query to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQu... |

**Response**: `Empty`

```typescript
const res = await logging.savedQueries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.sinks.delete`

**DELETE** `v2/{+sinkName}`

Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: "proje... |

**Response**: `Empty`

```typescript
const res = await logging.sinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.sinks.patch`

**PATCH** `v2/{+sinkName}`

Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer_identity; see the unique_writer_identity field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to update, including the parent resource and the sink identifier: "proje... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the val... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and ... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.sinks.list`

**GET** `v2/{+parent}/sinks`

Lists sinks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose sinks are to be listed: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"... |
| `filter` | `string` | query | No | Optional. A filter expression to constrain the sinks returned. Today, this only supports the following strings: '' 'i... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListSinksResponse`

```typescript
const res = await logging.sinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.folders.sinks.create`

**POST** `v2/{+parent}/sinks`

Creates a sink that exports specified log entries to a destination. The export begins upon ingress, unless the sink's writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the sink: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billin... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted o... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.sinks.update`

**PUT** `v2/{+sinkName}`

Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer_identity; see the unique_writer_identity field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to update, including the parent resource and the sink identifier: "proje... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the val... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and ... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.folders.sinks.get`

**GET** `v2/{+sinkName}`

Gets a sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The resource name of the sink: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "organizations/[ORGANIZATION_ID]/sin... |

**Response**: `LogSink`

```typescript
const res = await logging.sinks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.getSettings`

**GET** `v2/{+name}/settings`

Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts.See View default resource settings for Logging (https://docs.cloud.google.com/logging/docs/default-settings#view-org-settings) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource for which to retrieve settings. "projects/[PROJECT_ID]/settings" "organizations/[ORGANIZATION_... |

**Response**: `Settings`

```typescript
const res = await logging.billingAccounts.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.getCmekSettings`

**GET** `v2/{+name}/cmekSettings`

Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations, and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Configure CMEK for Cloud Logging (https://docs.cloud.google.com/logging/docs/routing/managed-encryption) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource for which to retrieve CMEK settings. "projects/[PROJECT_ID]/cmekSettings" "organizations/[ORGA... |

**Response**: `CmekSettings`

```typescript
const res = await logging.billingAccounts.getCmekSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.logs.delete`

**DELETE** `v2/{+logName}`

Deletes all the log entries in a log for the global _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `logName` | `string` | path | Yes | Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]... |

**Response**: `Empty`

```typescript
const res = await logging.logs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.logs.list`

**GET** `v2/{+parent}/logs`

Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name to list logs for: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |
| `resourceNames` | `string` | query | No | Optional. List of resource names to list logs for: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/... |

**Response**: `ListLogsResponse`

```typescript
const res = await logging.logs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.exclusions.patch`

**PATCH** `v2/{+name}`

Changes one or more properties of an existing exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the exclusion to update: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organizati... |
| `updateMask` | `string` | query | No | Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from th... |

**Request body**: `LogExclusion`

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.exclusions.get`

**GET** `v2/{+name}`

Gets the description of an exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of an existing exclusion: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organization... |

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.exclusions.list`

**GET** `v2/{+parent}/exclusions`

Lists all the exclusions on the _Default sink in a parent resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose exclusions are to be listed. "projects/[PROJECT_ID]" "organizations/[ORGANIZATION... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListExclusionsResponse`

```typescript
const res = await logging.exclusions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.exclusions.create`

**POST** `v2/{+parent}/exclusions`

Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the exclusion: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_... |

**Request body**: `LogExclusion`

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.exclusions.delete`

**DELETE** `v2/{+name}`

Deletes an exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of an existing exclusion to delete: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "or... |

**Response**: `Empty`

```typescript
const res = await logging.exclusions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.list`

**GET** `v2/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: List all public locations: Use the path GET /v1/locations. List project-visible locations: Use the path GET /v1/projects/{project_id}/locations. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like "displayName=tokyo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the next_page_token field in the response. Send that page token to receive the subsequent ... |

**Response**: `ListLocationsResponse`

```typescript
const res = await logging.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await logging.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.buckets.patch`

**PATCH** `v2/{+name}`

Updates a log bucket.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |
| `updateMask` | `string` | query | No | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, ... |

**Request body**: `LogBucket`

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.list`

**GET** `v2/{+parent}/buckets`

Lists log buckets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose buckets are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organi... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListBucketsResponse`

```typescript
const res = await logging.buckets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.buckets.updateAsync`

**POST** `v2/{+name}:updateAsync`

Updates a log bucket asynchronously.If the bucket has a lifecycle_state of DELETE_REQUESTED, then FAILED_PRECONDITION will be returned.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |
| `updateMask` | `string` | query | No | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will be overwritten if, ... |

**Request body**: `LogBucket`

**Response**: `Operation`

```typescript
const res = await logging.buckets.updateAsync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.get`

**GET** `v2/{+name}`

Gets a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organ... |

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.buckets.create`

**POST** `v2/{+parent}/buckets`

Creates a log bucket that can be used to store log entries. After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example... |
| `bucketId` | `string` | query | No | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogBucket`

**Response**: `LogBucket`

```typescript
const res = await logging.buckets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.createAsync`

**POST** `v2/{+parent}/buckets:createAsync`

Creates a log bucket asynchronously that can be used to store log entries.After a bucket has been created, the bucket's location cannot be changed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example... |
| `bucketId` | `string` | query | No | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include... |

**Request body**: `LogBucket`

**Response**: `Operation`

```typescript
const res = await logging.buckets.createAsync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.undelete`

**POST** `v2/{+name}:undelete`

Undeletes a log bucket. A bucket that has been deleted can be undeleted within the grace period of 7 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to undelete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[B... |

**Request body**: `UndeleteBucketRequest`

**Response**: `Empty`

```typescript
const res = await logging.buckets.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.delete`

**DELETE** `v2/{+name}`

Deletes a log bucket.Changes the bucket's lifecycle_state to the DELETE_REQUESTED state. After 7 days, the bucket will be purged and all log entries in the bucket will be permanently deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the bucket to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUC... |

**Response**: `Empty`

```typescript
const res = await logging.buckets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.views.patch`

**PATCH** `v2/{+name}`

Updates a view on a log bucket. This method replaces the value of the filter field from the existing view with the corresponding value from the new view. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can update the view. If this occurs, please try again in a few minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the view to update "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in view that need an update. A field will be overwritten if, and only ... |

**Request body**: `LogView`

**Response**: `LogView`

```typescript
const res = await logging.views.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.views.delete`

**DELETE** `v2/{+name}`

Deletes a view on a log bucket. If an UNAVAILABLE error is returned, this indicates that system is not in a state where it can delete the view. If this occurs, please try again in a few minutes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the view to delete: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKE... |

**Response**: `Empty`

```typescript
const res = await logging.views.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.views.list`

**GET** `v2/{+parent}/views`

Lists views on a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bucket whose views are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListViewsResponse`

```typescript
const res = await logging.views.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.buckets.views.get`

**GET** `v2/{+name}`

Gets a view on a log bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the policy: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[... |

**Response**: `LogView`

```typescript
const res = await logging.views.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.buckets.views.create`

**POST** `v2/{+parent}/views`

Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The bucket in which to create the view `"projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"... |
| `viewId` | `string` | query | No | Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include o... |

**Request body**: `LogView`

**Response**: `LogView`

```typescript
const res = await logging.views.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.views.logs.list`

**GET** `v2/{+parent}/logs`

Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name to list logs for: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |
| `resourceNames` | `string` | query | No | Optional. List of resource names to list logs for: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/... |

**Response**: `ListLogsResponse`

```typescript
const res = await logging.logs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.buckets.links.create`

**POST** `v2/{+parent}/links`

Asynchronously creates a linked dataset in BigQuery which makes it possible to use BigQuery to read the logs stored in the log bucket. A log bucket may currently only contain one link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The full resource name of the bucket to create a link for. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/b... |
| `linkId` | `string` | query | No | Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id must only have alpha... |

**Request body**: `Link`

**Response**: `Operation`

```typescript
const res = await logging.links.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.links.delete`

**DELETE** `v2/{+name}`

Deletes a link. This will also delete the corresponding BigQuery linked dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKE... |

**Response**: `Operation`

```typescript
const res = await logging.links.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.buckets.links.list`

**GET** `v2/{+parent}/links`

Lists links.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose links are to be listed: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[B... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListLinksResponse`

```typescript
const res = await logging.links.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.buckets.links.get`

**GET** `v2/{+name}`

Gets a link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the link: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LI... |

**Response**: `Link`

```typescript
const res = await logging.links.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.recentQueries.list`

**GET** `v2/{+parent}/recentQueries`

Lists the RecentQueries that were created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to which the listed queries belong. "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizat... |
| `filter` | `string` | query | No | Optional. Specifies the type ("Logging" or "OpsAnalytics") of the recent queries to list. The only valid value for th... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListRecentQueriesResponse`

```typescript
const res = await logging.recentQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.savedQueries.list`

**GET** `v2/{+parent}/savedQueries`

Lists the SavedQueries that were created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource to which the listed queries belong. "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "organizat... |
| `filter` | `string` | query | No | Optional. Specifies the type ("Logging" or "OpsAnalytics") and the visibility (PRIVATE or SHARED) of the saved querie... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request.Non-positive values are ignored. The presence of ... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListSavedQueriesResponse`

```typescript
const res = await logging.savedQueries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.savedQueries.delete`

**DELETE** `v2/{+name}`

Deletes an existing SavedQuery that was created by the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the saved query to delete. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQu... |

**Response**: `Empty`

```typescript
const res = await logging.savedQueries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.savedQueries.patch`

**PATCH** `v2/{+name}`

Updates an existing SavedQuery.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the saved query.In the format: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQuer... |
| `updateMask` | `string` | query | No | Required. A non-empty list of fields to change in the existing saved query. Fields are relative to the saved_query an... |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.savedQueries.create`

**POST** `v2/{+parent}/savedQueries`

Creates a new SavedQuery for the user making the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the saved query: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" "or... |
| `savedQueryId` | `string` | query | No | Optional. The ID to use for the saved query, which will become the final component of the saved query's resource name... |

**Request body**: `SavedQuery`

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.savedQueries.get`

**GET** `v2/{+name}`

Returns all data associated with the requested query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the saved query. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID... |

**Response**: `SavedQuery`

```typescript
const res = await logging.savedQueries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await logging.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await logging.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.locations.operations.list`

**GET** `v2/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `ListOperationsResponse`

```typescript
const res = await logging.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.sinks.get`

**GET** `v2/{+sinkName}`

Gets a sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The resource name of the sink: "projects/[PROJECT_ID]/sinks/[SINK_ID]" "organizations/[ORGANIZATION_ID]/sin... |

**Response**: `LogSink`

```typescript
const res = await logging.sinks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.sinks.create`

**POST** `v2/{+parent}/sinks`

Creates a sink that exports specified log entries to a destination. The export begins upon ingress, unless the sink's writer_identity is not permitted to write to the destination. A sink can export log entries only from the resource owning the sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource in which to create the sink: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]" "billin... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted o... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.sinks.list`

**GET** `v2/{+parent}/sinks`

Lists sinks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose sinks are to be listed: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_ID]"... |
| `filter` | `string` | query | No | Optional. A filter expression to constrain the sinks returned. Today, this only supports the following strings: '' 'i... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListSinksResponse`

```typescript
const res = await logging.sinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.billingAccounts.sinks.patch`

**PATCH** `v2/{+sinkName}`

Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer_identity; see the unique_writer_identity field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to update, including the parent resource and the sink identifier: "proje... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the val... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and ... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.sinks.delete`

**DELETE** `v2/{+sinkName}`

Deletes a sink. If the sink has a unique writer_identity, then that service account is also deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to delete, including the parent resource and the sink identifier: "proje... |

**Response**: `Empty`

```typescript
const res = await logging.sinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.billingAccounts.sinks.update`

**PUT** `v2/{+sinkName}`

Updates a sink. This method replaces the values of the destination and filter fields of the existing sink with the corresponding values from the new sink.The updated sink might also have a new writer_identity; see the unique_writer_identity field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `sinkName` | `string` | path | Yes | Required. The full resource name of the sink to update, including the parent resource and the sink identifier: "proje... |
| `customWriterIdentity` | `string` | query | No | Optional. The service account provided by the caller that will be used to write the log entries. The format must be s... |
| `uniqueWriterIdentity` | `boolean` | query | No | Optional. See sinks.create for a description of this field. When updating a sink, the effect of this field on the val... |
| `updateMask` | `string` | query | No | Optional. Field mask that specifies the fields in sink that need an update. A sink field will be overwritten if, and ... |

**Request body**: `LogSink`

**Response**: `LogSink`

```typescript
const res = await logging.sinks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.updateSettings`

**PATCH** `v2/{+name}/settings`

Updates the settings for the given resource. This method applies to all feature configurations for organization and folders.UpdateSettings fails when any of the following are true: The value of storage_location either isn't supported by Logging or violates the location OrgPolicy. The default_sink_config field is set, but it has an unspecified filter write mode. The value of kms_key_name is invalid. The associated service account doesn't have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key. Access to the key is disabled.See Configure default settings for organizations and folders (https://docs.cloud.google.com/logging/docs/default-settings) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the settings to update. "organizations/[ORGANIZATION_ID]/settings" "folders/[FOLDER_I... |
| `updateMask` | `string` | query | No | Optional. Field mask identifying which fields from settings should be updated. A field will be overwritten if and onl... |

**Request body**: `Settings`

**Response**: `Settings`

```typescript
const res = await logging.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.getCmekSettings`

**GET** `v2/{+name}/cmekSettings`

Gets the Logging CMEK settings for the given resource.Note: CMEK for the Log Router can be configured for Google Cloud projects, folders, organizations, and billing accounts. Once configured for an organization, it applies to all projects and folders in the Google Cloud organization.See Configure CMEK for Cloud Logging (https://docs.cloud.google.com/logging/docs/routing/managed-encryption) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource for which to retrieve CMEK settings. "projects/[PROJECT_ID]/cmekSettings" "organizations/[ORGA... |

**Response**: `CmekSettings`

```typescript
const res = await logging.getCmekSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.getSettings`

**GET** `v2/{+name}/settings`

Gets the settings for the given resource.Note: Settings can be retrieved for Google Cloud projects, folders, organizations, and billing accounts.See View default resource settings for Logging (https://docs.cloud.google.com/logging/docs/default-settings#view-org-settings) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource for which to retrieve settings. "projects/[PROJECT_ID]/settings" "organizations/[ORGANIZATION_... |

**Response**: `Settings`

```typescript
const res = await logging.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.updateCmekSettings`

**PATCH** `v2/{+name}/cmekSettings`

Updates the Log Router CMEK settings for the given resource.Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.UpdateCmekSettings fails when any of the following are true: The value of kms_key_name is invalid. The associated service account doesn't have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key. Access to the key is disabled.See Configure CMEK for Cloud Logging (https://docs.cloud.google.com/logging/docs/routing/managed-encryption) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the CMEK settings to update. "projects/[PROJECT_ID]/cmekSettings" "organizations/[ORG... |
| `updateMask` | `string` | query | No | Optional. Field mask identifying which fields from cmek_settings should be updated. A field will be overwritten if an... |

**Request body**: `CmekSettings`

**Response**: `CmekSettings`

```typescript
const res = await logging.updateCmekSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.logs.delete`

**DELETE** `v2/{+logName}`

Deletes all the log entries in a log for the global _Default Log Bucket. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `logName` | `string` | path | Yes | Required. The resource name of the log to delete: projects/[PROJECT_ID]/logs/[LOG_ID] organizations/[ORGANIZATION_ID]... |

**Response**: `Empty`

```typescript
const res = await logging.logs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.logs.list`

**GET** `v2/{+parent}/logs`

Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name to list logs for: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |
| `resourceNames` | `string` | query | No | Optional. List of resource names to list logs for: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/... |

**Response**: `ListLogsResponse`

```typescript
const res = await logging.logs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.monitoredResourceDescriptors.list`

**GET** `v2/monitoredResourceDescriptors`

Lists the descriptors for monitored resource types used by Logging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListMonitoredResourceDescriptorsResponse`

```typescript
const res = await logging.monitoredResourceDescriptors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.exclusions.get`

**GET** `v2/{+name}`

Gets the description of an exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of an existing exclusion: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organization... |

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.exclusions.create`

**POST** `v2/{+parent}/exclusions`

Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource in which to create the exclusion: "projects/[PROJECT_ID]" "organizations/[ORGANIZATION_... |

**Request body**: `LogExclusion`

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.exclusions.patch`

**PATCH** `v2/{+name}`

Changes one or more properties of an existing exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the exclusion to update: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "organizati... |
| `updateMask` | `string` | query | No | Required. A non-empty list of fields to change in the existing exclusion. New values for the fields are taken from th... |

**Request body**: `LogExclusion`

**Response**: `LogExclusion`

```typescript
const res = await logging.exclusions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

### `logging.exclusions.list`

**GET** `v2/{+parent}/exclusions`

Lists all the exclusions on the _Default sink in a parent resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource whose exclusions are to be listed. "projects/[PROJECT_ID]" "organizations/[ORGANIZATION... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must ... |

**Response**: `ListExclusionsResponse`

```typescript
const res = await logging.exclusions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/logging.admin`
- `https://www.googleapis.com/auth/logging.read`

---

### `logging.exclusions.delete`

**DELETE** `v2/{+name}`

Deletes an exclusion in the _Default sink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of an existing exclusion to delete: "projects/[PROJECT_ID]/exclusions/[EXCLUSION_ID]" "or... |

**Response**: `Empty`

```typescript
const res = await logging.exclusions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/logging.admin`

---

## Schemas

### `AppHub`

Metadata associated with App Hub.

| Property | Type | Description |
|----------|------|-------------|
| `application` | `AppHubApplication` | Metadata associated with the application. |
| `service` | `AppHubService` | Metadata associated with the service. |
| `workload` | `AppHubWorkload` | Metadata associated with the workload. |

### `AppHubApplication`

Resource identifiers associated with an AppHub application AppHub resources are of the form projects//locations//applications/ projects//locations//applications//services/ projects//locations//applications//workloads/ These resources can be reconstructed from the components below.

| Property | Type | Description |
|----------|------|-------------|
| `container` | `string` | Resource container that owns the application. Example: "projects/management_project" |
| `id` | `string` | Application Id. Example: "my-app" |
| `location` | `string` | Location associated with the Application. Example: "us-east1" |

### `AppHubService`

Metadata associated with an App Hub service.

| Property | Type | Description |
|----------|------|-------------|
| `criticalityType` | `string` | Service criticality type Example: "CRITICAL" |
| `environmentType` | `string` | Service environment type Example: "DEV" |
| `id` | `string` | Service Id. Example: "my-service" |

### `AppHubWorkload`

Metadata associated with an App Hub workload.

| Property | Type | Description |
|----------|------|-------------|
| `criticalityType` | `string` | Workload criticality type Example: "CRITICAL" |
| `environmentType` | `string` | Workload environment type Example: "DEV" |
| `id` | `string` | Workload Id. Example: "my-workload" |

### `BigQueryDataset`

Describes a BigQuery dataset that was created by a link.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | Output only. The full resource name of the BigQuery dataset. The DATASET_ID will match the ID of ... |

### `BigQueryOptions`

Options that change functionality of a sink exporting data to BigQuery.

| Property | Type | Description |
|----------|------|-------------|
| `usePartitionedTables` | `boolean` | Optional. Whether to use BigQuery's partition tables (https://docs.cloud.google.com/bigquery/docs... |
| `usesTimestampColumnPartitioning` | `boolean` | Output only. True if new timestamp column based partitioning is in use, false if legacy ingress-t... |

### `Binding`

Associates members, or principals, with a role.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding.If the condition evaluates to true, then this ... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. members can have the foll... |
| `role` | `string` | Role that is assigned to the list of members, or principals. For example, roles/viewer, roles/edi... |

### `BucketMetadata`

Metadata for LongRunningUpdateBucket Operations.

| Property | Type | Description |
|----------|------|-------------|
| `createBucketRequest` | `CreateBucketRequest` | LongRunningCreateBucket RPC request. |
| `endTime` | `string` | The end time of an operation. |
| `startTime` | `string` | The create time of an operation. |
| `state` | `string` | Output only. State of an operation. |
| `updateBucketRequest` | `UpdateBucketRequest` | LongRunningUpdateBucket RPC request. |

### `BucketOptions`

BucketOptions describes the bucket boundaries used to create a histogram for the distribution. The buckets can be in a linear sequence, an exponential sequence, or each bucket can be specified explicitly. BucketOptions does not include the number of values in each bucket.A bucket has an inclusive lower bound and exclusive upper bound for the values that are counted for that bucket. The upper bound of a bucket must be strictly greater than the lower bound. The sequence of N buckets for a distribution consists of an underflow bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an overflow bucket (number N - 1). The buckets are contiguous: the lower bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets span the whole range of finite values: lower bound of the underflow bucket is -infinity and the upper bound of the overflow bucket is +infinity. The finite buckets are so-called because both bounds are finite.

| Property | Type | Description |
|----------|------|-------------|
| `explicitBuckets` | `Explicit` | The explicit buckets. |
| `exponentialBuckets` | `Exponential` | The exponential buckets. |
| `linearBuckets` | `Linear` | The linear bucket. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CmekSettings`

Describes the customer-managed encryption key (CMEK) settings associated with a project, folder, organization, billing account, or flexible resource.Note: CMEK for the Log Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.See Configure CMEK for Cloud Logging (https://docs.cloud.google.com/logging/docs/routing/managed-encryption) for more information.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Optional. The resource name for the configured Cloud KMS key.KMS key name format: "projects/[PROJ... |
| `kmsKeyVersionName` | `string` | Output only. The CryptoKeyVersion resource name for the configured Cloud KMS key.KMS key name for... |
| `name` | `string` | Output only. The resource name of the CMEK settings. |
| `serviceAccountId` | `string` | Output only. The service account that will be used by the Log Router to access your Cloud KMS key... |

### `CopyLogEntriesMetadata`

Metadata for CopyLogEntries long running operations.

| Property | Type | Description |
|----------|------|-------------|
| `cancellationRequested` | `boolean` | Identifies whether the user has requested cancellation of the operation. |
| `destination` | `string` | Destination to which to copy log entries.For example, a Cloud Storage bucket:"storage.googleapis.... |
| `endTime` | `string` | The end time of an operation. |
| `progress` | `integer` | Estimated progress of the operation (0 - 100%). |
| `request` | `CopyLogEntriesRequest` | CopyLogEntries RPC request. This field is deprecated and not used. |
| `source` | `string` | Source from which to copy log entries.For example, a log bucket:"projects/my-project/locations/gl... |
| `startTime` | `string` | The create time of an operation. |
| `state` | `string` | Output only. State of an operation. |
| `verb` | `string` | Name of the verb executed by the operation.For example,"copy" |
| `writerIdentity` | `string` | The IAM identity of a service account that must be granted access to the destination.If the servi... |

### `CopyLogEntriesRequest`

The parameters to CopyLogEntries.

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `string` | Required. Destination to which to copy log entries. For example: "storage.googleapis.com/GCS_BUCKET" |
| `filter` | `string` | Optional. A filter specifying which log entries to copy. The filter must be no more than 20k char... |
| `name` | `string` | Required. Log bucket from which to copy log entries.For example:"projects/my-project/locations/gl... |

### `CopyLogEntriesResponse`

Response type for CopyLogEntries long running operations.

| Property | Type | Description |
|----------|------|-------------|
| `logEntriesCopiedCount` | `string` | Number of log entries copied. |

### `CreateBucketRequest`

The parameters to CreateBucket.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `LogBucket` | Required. The new bucket. The region specified in the new bucket must be compliant with any Locat... |
| `bucketId` | `string` | Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 charac... |
| `parent` | `string` | Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCAT... |

### `CreateLinkRequest`

The parameters to CreateLink.

| Property | Type | Description |
|----------|------|-------------|
| `link` | `Link` | Required. The new link. |
| `linkId` | `string` | Required. The ID to use for the link. The link_id can have up to 100 characters. A valid link_id ... |
| `parent` | `string` | Required. The full resource name of the bucket to create a link for. "projects/[PROJECT_ID]/locat... |

### `DefaultSinkConfig`

Describes the custom _Default sink configuration that is used to override the built-in _Default sink configuration in newly created resource containers, such as projects or folders.

| Property | Type | Description |
|----------|------|-------------|
| `exclusions` | `array<LogExclusion>` | Optional. Specifies the set of exclusions to be added to the _Default sink in newly created resou... |
| `filter` | `string` | Optional. An advanced logs filter (https://docs.cloud.google.com/logging/docs/view/building-queri... |
| `mode` | `string` | Required. Determines the behavior to apply to the built-in _Default sink inclusion filter.Exclusi... |

### `DeleteLinkRequest`

The parameters to DeleteLink.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/locations/[LOCATIO... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Explicit`

Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): boundsi Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at least one element. If bounds has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.

| Property | Type | Description |
|----------|------|-------------|
| `bounds` | `array<number>` | The values must be monotonically increasing. |

### `Exponential`

Specifies an exponential sequence of buckets that have a width that is proportional to the value of the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).Lower bound (1 <= i < N): scale * (growth_factor ^ (i - 1)).

| Property | Type | Description |
|----------|------|-------------|
| `growthFactor` | `number` | Must be greater than 1. |
| `numFiniteBuckets` | `integer` | Must be greater than 0. |
| `scale` | `number` | Must be greater than 0. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec.Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FieldSource`

A source that can be used to represent a field within various parts of a structured query, such as in SELECT, WHERE, or ORDER BY clauses.

| Property | Type | Description |
|----------|------|-------------|
| `aliasRef` | `string` | The alias name for a field that has already been aliased within a different ProjectedField type e... |
| `columnType` | `string` | The type of the selected field. This comes from the schema. Can be one of the BigQuery data types... |
| `field` | `string` | The fully qualified, dot-delimited path to the selected atomic field (the leaf value). This path ... |
| `isJson` | `boolean` | Whether the field is a JSON field, or has a parent that is a JSON field. This value is used to de... |
| `parentPath` | `string` | The dot-delimited path of the parent container that holds the target field.This path defines the ... |
| `projectedField` | `ProjectedField` | A projected field option for when a user wants to use a field with some additional transformation... |

### `FilterExpression`

This is a leaf of the FilterPredicate. Ex: { field: json_payload.message.error_code, filter_value: {numeric_value: 400}, comparator: EQUAL_TO} The field will be schema field that is selected using the . annotation to display the drill down value. The value will be the user inputted text that the filter is comparing against.

| Property | Type | Description |
|----------|------|-------------|
| `comparator` | `string` | The comparison type to use for the filter. |
| `fieldSource` | `FieldSource` | Can be one of the FieldSource types: field name, alias ref, variable ref, or a literal value. |
| `fieldSourceValue` | `FieldSource` | The field. This will be the field that is set as the Right Hand Side of the filter. |
| `isNegation` | `boolean` | Determines if the NOT flag should be added to the comparator. |
| `literalValue` | `any` | The Value will be used to hold user defined constants set as the Right Hand Side of the filter. |

### `FilterPredicate`

A filter for a query. This equates to the WHERE clause in SQL.

| Property | Type | Description |
|----------|------|-------------|
| `childPredicates` | `array<FilterPredicate>` | The children of the filter predicate. This equates to the branches of the filter predicate that c... |
| `leafPredicate` | `FilterExpression` | The leaves of the filter predicate. This equates to the last leaves of the filter predicate assoc... |
| `operatorType` | `string` | The operator type for the filter. Currently there is no support for multiple levels of nesting, s... |

### `FunctionApplication`

Defines the aggregation function to apply to this field. This message is used only when operation is set to AGGREGATE.

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `array<any>` | Optional. Parameters to be applied to the aggregation. Aggregations that support or require param... |
| `type` | `string` | Required. Specifies the aggregation function. Use one of the following string identifiers: "avera... |

### `GetIamPolicyRequest`

Request message for GetIamPolicy method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GetPolicyOptions` | OPTIONAL: A GetPolicyOptions object for specifying options to GetIamPolicy. |

### `GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1... |

### `HttpRequest`

A common proto for logging HTTP requests. Only contains semantics defined by the HTTP specification. Product-specific logging information MUST be defined in a separate message.

| Property | Type | Description |
|----------|------|-------------|
| `cacheFillBytes` | `string` | The number of HTTP response bytes inserted into cache. Set only when a cache fill was attempted. |
| `cacheHit` | `boolean` | Whether or not an entity was served from cache (with or without validation). |
| `cacheLookup` | `boolean` | Whether or not a cache lookup was attempted. |
| `cacheValidatedWithOriginServer` | `boolean` | Whether or not the response was validated with the origin server before being served from cache. ... |
| `latency` | `string` | The request processing latency on the server, from the time the request was received until the re... |
| `protocol` | `string` | Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2" |
| `referer` | `string` | The referer URL of the request, as defined in HTTP/1.1 Header Field Definitions (https://datatrac... |
| `remoteIp` | `string` | The IP address (IPv4 or IPv6) of the client that issued the HTTP request. This field can include ... |
| `requestMethod` | `string` | The request method. Examples: "GET", "HEAD", "PUT", "POST". |
| `requestSize` | `string` | The size of the HTTP request message in bytes, including the request headers and the request body. |
| `requestUrl` | `string` | The scheme (http, https), the host name, the path and the query portion of the URL that was reque... |
| `responseSize` | `string` | The size of the HTTP response message sent back to the client, in bytes, including the response h... |
| `serverIp` | `string` | The IP address (IPv4 or IPv6) of the origin server that the request was sent to. This field can i... |
| `status` | `integer` | The response code indicating the status of response. Examples: 200, 404. |
| `userAgent` | `string` | The user agent sent by the client. Example: "Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Q3124... |

### `IndexConfig`

Configuration for an indexed field.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the index was last modified.This is used to return the timestamp,... |
| `fieldPath` | `string` | Required. The LogEntry field path to index.Note that some paths are automatically indexed, and ot... |
| `type` | `string` | Required. The type of data in this index. |

### `LabelDescriptor`

A description of a label.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A human-readable description for the label. |
| `key` | `string` | The label key. |
| `valueType` | `string` | The type of data that can be assigned to the label. |

### `Linear`

Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): offset + (width * i).Lower bound (1 <= i < N): offset + (width * (i - 1)).

| Property | Type | Description |
|----------|------|-------------|
| `numFiniteBuckets` | `integer` | Must be greater than 0. |
| `offset` | `number` | Lower bound of the first bucket. |
| `width` | `number` | Must be greater than 0. |

### `Link`

Describes a link connected to an analytics enabled bucket.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDataset` | `BigQueryDataset` | Optional. The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is cr... |
| `createTime` | `string` | Output only. The creation timestamp of the link. |
| `description` | `string` | Optional. Describes this link.The maximum length of the description is 8000 characters. |
| `lifecycleState` | `string` | Output only. The resource lifecycle state. |
| `name` | `string` | Output only. The resource name of the link. The name can have up to 100 characters. A valid link ... |

### `LinkMetadata`

Metadata for long running Link operations.

| Property | Type | Description |
|----------|------|-------------|
| `createLinkRequest` | `CreateLinkRequest` | CreateLink RPC request. |
| `deleteLinkRequest` | `DeleteLinkRequest` | DeleteLink RPC request. |
| `endTime` | `string` | The end time of an operation. |
| `startTime` | `string` | The start time of an operation. |
| `state` | `string` | Output only. State of an operation. |

### `ListBucketsResponse`

The response from ListBuckets.

| Property | Type | Description |
|----------|------|-------------|
| `buckets` | `array<LogBucket>` | A list of buckets. |
| `nextPageToken` | `string` | If there might be more results than appear in this response, then nextPageToken is included. To g... |

### `ListExclusionsResponse`

Result returned from ListExclusions.

| Property | Type | Description |
|----------|------|-------------|
| `exclusions` | `array<LogExclusion>` | A list of exclusions. |
| `nextPageToken` | `string` | If there might be more results than appear in this response, then nextPageToken is included. To g... |

### `ListLinksResponse`

The response from ListLinks.

| Property | Type | Description |
|----------|------|-------------|
| `links` | `array<Link>` | A list of links. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then nextPageToken is inclu... |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListLogEntriesRequest`

The parameters to ListLogEntries.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Optional. A filter that chooses which log entries to return. For more information, see Logging qu... |
| `orderBy` | `string` | Optional. How the results should be sorted. Presently, the only permitted values are "timestamp a... |
| `pageSize` | `integer` | Optional. The maximum number of results to return from this request. Default is 50. If the value ... |
| `pageToken` | `string` | Optional. If present, then retrieve the next batch of results from the preceding call to this met... |
| `projectIds` | `array<string>` | Optional. Deprecated. Use resource_names instead. One or more project identifiers or project numb... |
| `resourceNames` | `array<string>` | Required. Names of one or more parent resources from which to retrieve log entries. Resources may... |

### `ListLogEntriesResponse`

Result returned from ListLogEntries.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<LogEntry>` | A list of log entries. If entries is empty, nextPageToken may still be returned, indicating that ... |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then nextPageToken is inclu... |

### `ListLogMetricsResponse`

Result returned from ListLogMetrics.

| Property | Type | Description |
|----------|------|-------------|
| `metrics` | `array<LogMetric>` | A list of logs-based metrics. |
| `nextPageToken` | `string` | If there might be more results than appear in this response, then nextPageToken is included. To g... |

### `ListLogScopesResponse`

The response from ListLogScopes. Every project has a _Default log scope that cannot be modified or deleted.

| Property | Type | Description |
|----------|------|-------------|
| `logScopes` | `array<LogScope>` | A list of log scopes. |
| `nextPageToken` | `string` | If there might be more results than appear in this response, then nextPageToken is included. To g... |

### `ListLogsResponse`

Result returned from ListLogs.

| Property | Type | Description |
|----------|------|-------------|
| `logNames` | `array<string>` | A list of log names. For example, "projects/my-project/logs/syslog" or "organizations/123/logs/cl... |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then nextPageToken is inclu... |

### `ListMonitoredResourceDescriptorsResponse`

Result returned from ListMonitoredResourceDescriptors.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then nextPageToken is inclu... |
| `resourceDescriptors` | `array<MonitoredResourceDescriptor>` | A list of resource descriptors. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets ListOperationsRequest.retu... |

### `ListRecentQueriesResponse`

The response from ListRecentQueries.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than appear in this response, then nextPageToken is included. To g... |
| `recentQueries` | `array<RecentQuery>` | A list of recent queries. |
| `unreachable` | `array<string>` | The unreachable resources. Each resource can be either 1) a saved query if a specific query is un... |

### `ListSavedQueriesResponse`

The response from ListSavedQueries.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than appear in this response, then nextPageToken is included. To g... |
| `savedQueries` | `array<SavedQuery>` | A list of saved queries. |
| `unreachable` | `array<string>` | The unreachable resources. It can be either 1) a saved query if a specific query is unreachable o... |

### `ListSinksResponse`

Result returned from ListSinks.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than appear in this response, then nextPageToken is included. To g... |
| `sinks` | `array<LogSink>` | A list of sinks. |

### `ListViewsResponse`

The response from ListViews.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than appear in this response, then nextPageToken is included. To g... |
| `views` | `array<LogView>` | A list of views. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: "us-east1". |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: "projects/ex... |

### `LocationMetadata`

Cloud Logging specific location metadata.

| Property | Type | Description |
|----------|------|-------------|
| `logAnalyticsEnabled` | `boolean` | Indicates whether or not Log Analytics features are supported in the given location. |

### `LogBucket`

Describes a repository in which log entries are stored.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsEnabled` | `boolean` | Optional. Whether log analytics is enabled for this bucket.Once enabled, log analytics features c... |
| `cmekSettings` | `CmekSettings` | Optional. The CMEK settings of the log bucket. If present, new log entries written to this log bu... |
| `createTime` | `string` | Output only. The creation timestamp of the bucket. This is not set for any of the default buckets. |
| `description` | `string` | Optional. Describes this bucket. |
| `indexConfigs` | `array<IndexConfig>` | Optional. A list of indexed fields and related configuration data. |
| `lifecycleState` | `string` | Output only. The bucket lifecycle state. |
| `locked` | `boolean` | Optional. Whether the bucket is locked.The retention period on a locked bucket cannot be changed.... |
| `name` | `string` | Output only. The resource name of the bucket.For example:projects/my-project/locations/global/buc... |
| `restrictedFields` | `array<string>` | Optional. Log entry field paths that are denied access in this bucket.The following fields and th... |
| `retentionDays` | `integer` | Optional. Logs will be retained by default for this amount of time, after which they will automat... |
| `updateTime` | `string` | Output only. The last update timestamp of the bucket. |

### `LogEntry`

An individual entry in a log.

| Property | Type | Description |
|----------|------|-------------|
| `apphub` | `AppHub` | Output only. AppHub application metadata associated with this LogEntry. May be empty if there is ... |
| `apphubDestination` | `AppHub` | Output only. AppHub application metadata associated with the destination application. This is onl... |
| `apphubSource` | `AppHub` | Output only. AppHub application metadata associated with the source application. This is only pop... |
| `errorGroups` | `array<LogErrorGroup>` | Output only. The Error Reporting (https://cloud.google.com/error-reporting) error groups associat... |
| `httpRequest` | `HttpRequest` | Optional. Information about the HTTP request associated with this log entry, if applicable. |
| `insertId` | `string` | Optional. A unique identifier for the log entry. If you provide a value, then Logging considers o... |
| `jsonPayload` | `object` | The log entry payload, represented as a structure that is expressed as a JSON object. |
| `labels` | `object` | Optional. A map of key, value pairs that provides additional information about the log entry. The... |
| `logName` | `string` | Required. The resource name of the log to which this log entry belongs: "projects/[PROJECT_ID]/lo... |
| `metadata` | `MonitoredResourceMetadata` | Output only. Deprecated. This field is not used by Logging. Any value written to it is cleared. |
| `operation` | `LogEntryOperation` | Optional. Information about an operation associated with the log entry, if applicable. |
| `protoPayload` | `object` | The log entry payload, represented as a protocol buffer. Some Google Cloud Platform services use ... |
| `receiveTimestamp` | `string` | Output only. The time the log entry was received by Logging. |
| `resource` | `MonitoredResource` | Required. The monitored resource that produced this log entry.Example: a log entry that reports a... |
| `severity` | `string` | Optional. The severity of the log entry. The default value is LogSeverity.DEFAULT. |
| `sourceLocation` | `LogEntrySourceLocation` | Optional. Source code location information associated with the log entry, if any. |
| `spanId` | `string` | Optional. The ID of the Cloud Trace (https://docs.cloud.google.com/trace/docs) span associated wi... |
| `split` | `LogSplit` | Optional. Information indicating this LogEntry is part of a sequence of multiple log entries spli... |
| `textPayload` | `string` | The log entry payload, represented as a Unicode string (UTF-8). |
| `timestamp` | `string` | Optional. The time the event described by the log entry occurred. This time is used to compute th... |
| `trace` | `string` | Optional. The trace ID being written to Cloud Trace (https://docs.cloud.google.com/trace/docs) in... |
| `traceSampled` | `boolean` | Optional. The sampling decision of the span associated with the log entry at the time the log ent... |

### `LogEntryOperation`

Additional information about a potentially long-running operation with which a log entry is associated.

| Property | Type | Description |
|----------|------|-------------|
| `first` | `boolean` | Optional. Set this to True if this is the first log entry in the operation. |
| `id` | `string` | Optional. An arbitrary operation identifier. Log entries with the same identifier are assumed to ... |
| `last` | `boolean` | Optional. Set this to True if this is the last log entry in the operation. |
| `producer` | `string` | Optional. An arbitrary producer identifier. The combination of id and producer must be globally u... |

### `LogEntrySourceLocation`

Additional information about the source code location that produced the log entry.

| Property | Type | Description |
|----------|------|-------------|
| `file` | `string` | Optional. Source file name. Depending on the runtime environment, this might be a simple name or ... |
| `function` | `string` | Optional. Human-readable name of the function or method being invoked, with optional context such... |
| `line` | `string` | Optional. Line within the source file. 1-based; 0 indicates no line number available. |

### `LogErrorGroup`

Contains metadata that associates the LogEntry to Error Reporting error groups.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The id is a unique identifier for a particular error group; it is the last part of the error grou... |

### `LogExclusion`

Specifies a set of log entries that are filtered out by a sink. If your Google Cloud resource receives a large volume of log entries, you can use exclusions to reduce your chargeable logs. Note that exclusions on organization-level and folder-level sinks don't apply to child resources. Note also that you cannot modify the _Required sink or exclude logs from it.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation timestamp of the exclusion.This field may not be present for older excl... |
| `description` | `string` | Optional. A description of this exclusion. |
| `disabled` | `boolean` | Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries... |
| `filter` | `string` | Required. An advanced logs filter (https://docs.cloud.google.com/logging/docs/view/building-queri... |
| `name` | `string` | Optional. A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limite... |
| `updateTime` | `string` | Output only. The last update timestamp of the exclusion.This field may not be present for older e... |

### `LogLine`

Application log line emitted while processing a request.

| Property | Type | Description |
|----------|------|-------------|
| `logMessage` | `string` | App-provided log message. |
| `severity` | `string` | Severity of this log entry. |
| `sourceLocation` | `SourceLocation` | Where in the source code this log message was written. |
| `time` | `string` | Approximate time when this log entry was made. |

### `LogMetric`

Describes a logs-based metric. The value of the metric is the number of log entries that match a logs filter in a given time interval.Logs-based metrics can also be used to extract values from logs and create a distribution of the values. The distribution records the statistics of the extracted values along with an optional histogram of the values as specified by the bucket options.

| Property | Type | Description |
|----------|------|-------------|
| `bucketName` | `string` | Optional. The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in proje... |
| `bucketOptions` | `BucketOptions` | Optional. The bucket_options are required when the logs-based metric is using a DISTRIBUTION valu... |
| `createTime` | `string` | Output only. The creation timestamp of the metric.This field may not be present for older metrics. |
| `description` | `string` | Optional. A description of this metric, which is used in documentation. The maximum length of the... |
| `disabled` | `boolean` | Optional. If set to True, then this metric is disabled and it does not generate any points. |
| `filter` | `string` | Required. An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced_filters) w... |
| `labelExtractors` | `object` | Optional. A map from a label key string to an extractor expression which is used to extract data ... |
| `metricDescriptor` | `MetricDescriptor` | Optional. The metric descriptor associated with the logs-based metric. If unspecified, it uses a ... |
| `name` | `string` | Required. The client-assigned metric identifier. Examples: "error_count", "nginx/requests".Metric... |
| `resourceName` | `string` | Output only. The resource name of the metric: "projects/[PROJECT_ID]/metrics/[METRIC_ID]" |
| `updateTime` | `string` | Output only. The last update timestamp of the metric.This field may not be present for older metr... |
| `valueExtractor` | `string` | Optional. A value_extractor is required when using a distribution logs-based metric to extract th... |
| `version` | `string` | Deprecated. The API version that created or updated this metric. The v2 format is used by default... |

### `LogScope`

Describes a group of resources to read log entries from.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation timestamp of the log scope. |
| `description` | `string` | Optional. Describes this log scope.The maximum length of the description is 8000 characters. |
| `name` | `string` | Output only. The resource name of the log scope.Log scopes are only available in the global locat... |
| `resourceNames` | `array<string>` | Required. Names of one or more parent resources (organizations and folders are not supported.): p... |
| `updateTime` | `string` | Output only. The last update timestamp of the log scope. |

### `LogSink`

Describes a sink used to export log entries to one of the following destinations: a Cloud Logging log bucket, a Cloud Storage bucket, a BigQuery dataset, a Pub/Sub topic, a Cloud project.A logs filter controls which log entries are exported. The sink must be created within a project, organization, billing account, or folder.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryOptions` | `BigQueryOptions` | Optional. Options that affect sinks exporting data to BigQuery. |
| `createTime` | `string` | Output only. The creation timestamp of the sink.This field may not be present for older sinks. |
| `description` | `string` | Optional. A description of this sink.The maximum length of the description is 8000 characters. |
| `destination` | `string` | Required. The export destination: "storage.googleapis.com/[GCS_BUCKET]" "bigquery.googleapis.com/... |
| `disabled` | `boolean` | Optional. If set to true, then this sink is disabled and it does not export any log entries. |
| `exclusions` | `array<LogExclusion>` | Optional. Log entries that match any of these exclusion filters will not be exported.If a log ent... |
| `filter` | `string` | Optional. An advanced logs filter (https://docs.cloud.google.com/logging/docs/view/building-queri... |
| `includeChildren` | `boolean` | Optional. This field applies only to sinks owned by organizations and folders. If the field is fa... |
| `interceptChildren` | `boolean` | Optional. This field applies only to sinks owned by organizations and folders.When the value of '... |
| `name` | `string` | Optional. The client-assigned sink identifier, unique within the project.For example: "my-syslog-... |
| `outputVersionFormat` | `string` | Deprecated. This field is unused. |
| `resourceName` | `string` | Output only. The resource name of the sink. "projects/[PROJECT_ID]/sinks/[SINK_NAME] "organizatio... |
| `updateTime` | `string` | Output only. The last update timestamp of the sink.This field may not be present for older sinks. |
| `writerIdentity` | `string` | Output only. An IAM identity—a service account or group—under which Cloud Logging writes the expo... |

### `LogSplit`

Additional information used to correlate multiple log entries. Used when a single LogEntry would exceed the Google Cloud Logging size limit and is split across multiple log entries.

| Property | Type | Description |
|----------|------|-------------|
| `index` | `integer` | The index of this LogEntry in the sequence of split log entries. Log entries are given |index| va... |
| `totalSplits` | `integer` | The total number of log entries that the original LogEntry was split into. |
| `uid` | `string` | A globally unique identifier for all log entries in a sequence of split log entries. All log entr... |

### `LogView`

Describes a view over log entries in a bucket.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation timestamp of the view. |
| `description` | `string` | Optional. Describes this view. |
| `filter` | `string` | Optional. Filter that restricts which log entries in a bucket are visible in this view.Filters mu... |
| `name` | `string` | Output only. The resource name of the view.For example:projects/my-project/locations/global/bucke... |
| `updateTime` | `string` | Output only. The last update timestamp of the view. |

### `LoggingQuery`

Describes a Cloud Logging query that can be run in Logs Explorer UI or via the logging API.In addition to the query itself, additional information may be stored to capture the display configuration and other UI state used in association with analysis of query results.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Required. An advanced query using the Logging Query Language (https://docs.cloud.google.com/loggi... |
| `summaryFieldEnd` | `integer` | Characters will be counted from the end of the string. |
| `summaryFieldStart` | `integer` | Characters will be counted from the start of the string. |
| `summaryFields` | `array<SummaryField>` | Optional. The set of summary fields to display for this saved query. |

### `MetricDescriptor`

Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type's existing data unusable.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A detailed description of the metric, which can be used in documentation. |
| `displayName` | `string` | A concise name for the metric, which can be displayed in user interfaces. Use sentence case witho... |
| `labels` | `array<LabelDescriptor>` | The set of labels that can be used to describe a specific instance of this metric type. For examp... |
| `launchStage` | `string` | Optional. The launch stage of the metric definition. |
| `metadata` | `MetricDescriptorMetadata` | Optional. Metadata which can be used to guide usage of the metric. |
| `metricKind` | `string` | Whether the metric records instantaneous values, changes to a value, etc. Some combinations of me... |
| `monitoredResourceTypes` | `array<string>` | Read-only. If present, then a time series, which is identified partially by a metric type and a M... |
| `name` | `string` | The resource name of the metric descriptor. |
| `type` | `string` | The metric type, including its DNS name prefix. The type is not URL-encoded. All user-defined met... |
| `unit` | `string` | The units in which the metric value is reported. It is only applicable if the value_type is INT64... |
| `valueType` | `string` | Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric_... |

### `MetricDescriptorMetadata`

Additional annotations that can be used to guide the usage of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `ingestDelay` | `string` | The delay of data points caused by ingestion. Data points older than this age are guaranteed to b... |
| `launchStage` | `string` | Deprecated. Must use the MetricDescriptor.launch_stage instead. |
| `samplePeriod` | `string` | The sampling period of metric data points. For metrics which are written periodically, consecutiv... |
| `timeSeriesResourceHierarchyLevel` | `array<string>` | The scope of the timeseries data of the metric. |

### `MonitoredResource`

An object representing a resource that can be used for monitoring, logging, billing, or other purposes. Examples include virtual machine instances, databases, and storage devices such as disks. The type field identifies a MonitoredResourceDescriptor object that describes the resource's schema. Information in the labels field identifies the actual resource and its attributes according to the schema. For example, a particular Compute Engine VM instance could be represented by the following object, because the MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "instance_id" and "zone": { "type": "gce_instance", "labels": { "project_id": "my-project", "instance_id": "12345678901234", "zone": "us-central1-a" }}

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Required. Values for all of the labels listed in the associated monitored resource descriptor. Fo... |
| `type` | `string` | Required. The monitored resource type. This field must match the type field of a MonitoredResourc... |

### `MonitoredResourceDescriptor`

An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of "gce_instance" and specifies the use of the labels "instance_id" and "zone" to identify particular VM instances.Different APIs can support different monitored resource types. APIs generally provide a list method that returns the monitored resource descriptors used by the API.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. A detailed description of the monitored resource type that might be used in documentation. |
| `displayName` | `string` | Optional. A concise name for the monitored resource type that might be displayed in user interfac... |
| `labels` | `array<LabelDescriptor>` | Required. A set of labels used to describe instances of this monitored resource type. For example... |
| `launchStage` | `string` | Optional. The launch stage of the monitored resource definition. |
| `name` | `string` | Optional. The resource name of the monitored resource descriptor: "projects/{project_id}/monitore... |
| `type` | `string` | Required. The monitored resource type. For example, the type "cloudsql_database" represents datab... |

### `MonitoredResourceMetadata`

Auxiliary metadata for a MonitoredResource object. MonitoredResource objects contain the minimum set of information to uniquely identify a monitored resource instance. There is some other useful auxiliary metadata. Monitoring and Logging use an ingestion pipeline to extract metadata for cloud resources of all types, and store the metadata in this message.

| Property | Type | Description |
|----------|------|-------------|
| `systemLabels` | `object` | Output only. Values for predefined system metadata labels. System labels are a kind of metadata e... |
| `userLabels` | `object` | Output only. A map of user-defined metadata labels. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is false, it means the operation is still in progress. If true, the operation is com... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OpsAnalyticsQuery`

Describes a query that can be run in Log Analytics.

| Property | Type | Description |
|----------|------|-------------|
| `queryBuilder` | `QueryBuilderConfig` | Optional. A query builder configuration used in Log Analytics.If both query_builder and sql_query... |
| `sqlQueryText` | `string` | Optional. A Log Analytics SQL query in text format.If both sql_query_text and query_builder field... |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources.A Policy is a collection of bindings. A binding binds one or more members, or principals, to a single role. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A role is a named list of permissions; each role can be an IAM predefined role or a user-created custom role.For some types of Google Cloud resources, a binding can also specify a condition, which is a logical expression that allows access to a resource only if the expression evaluates to true. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).JSON example: { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } YAML example: bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the IAM documentation (https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of members, or principals, with a role. Optionally, may specify a condition tha... |
| `etag` | `string` | etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of ... |
| `version` | `integer` | Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid... |

### `ProjectedField`

Represents a field selected in the query, analogous to an item in a SQL SELECT clause. It specifies the source field and optionally applies transformations like aggregation, casting, regex extraction, or assigns an alias. Use ProjectedField when you need more than just the raw source field name (for which you might use FieldSource directly in QueryBuilderConfig's field_sources list if no transformations or specific operation type are needed).

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | The alias name for the field. Valid alias examples are: - single word alias: TestAlias - numbers ... |
| `cast` | `string` | The cast for the field. This can any SQL cast type. Examples: - STRING - CHAR - DATE - TIMESTAMP ... |
| `field` | `string` | The field name. This will be the field that is selected using the dot notation to display the dri... |
| `operation` | `string` | Specifies the role of this field (direct selection, grouping, or aggregation). |
| `regexExtraction` | `string` | The re2 extraction for the field. This will be used to extract the value from the field using REG... |
| `sqlAggregationFunction` | `FunctionApplication` | The function to apply to the field. |
| `truncationGranularity` | `string` | The truncation granularity when grouping by a time/date field. This will be used to truncate the ... |

### `QueryBuilderConfig`

Defines a structured query configuration that can be used instead of writing raw SQL. This configuration represents the components of a SQL query (FROM, SELECT, WHERE, ORDER BY, LIMIT) and is typically converted into an executable query (e.g., BigQuery SQL) by the backend service to retrieve data for analysis or visualization.

| Property | Type | Description |
|----------|------|-------------|
| `fieldSources` | `array<FieldSource>` | Defines the items to include in the query result, analogous to a SQL SELECT clause. |
| `filter` | `FilterPredicate` | The filter to use for the query. This equates to the WHERE clause in SQL. |
| `limit` | `string` | The limit to use for the query. This equates to the LIMIT clause in SQL. A limit of 0 will be tre... |
| `orderBys` | `array<SortOrderParameter>` | The sort orders to use for the query. This equates to the ORDER BY clause in SQL. |
| `resourceNames` | `array<string>` | Required. The view/resource to query. For now only a single view/resource will be sent, but there... |
| `searchTerm` | `string` | The plain text search to use for the query. There is no support for multiple search terms. This u... |

### `RecentQuery`

Describes a recent query executed on the Logs Explorer or Log Analytics page within the last ~ 30 days.

| Property | Type | Description |
|----------|------|-------------|
| `lastRunTime` | `string` | Output only. The timestamp when this query was last run. |
| `loggingQuery` | `LoggingQuery` | Logging query that can be executed in Logs Explorer or via Logging API. |
| `name` | `string` | Output only. Resource name of the recent query.In the format: "projects/[PROJECT_ID]/locations/[L... |
| `opsAnalyticsQuery` | `OpsAnalyticsQuery` | Analytics query that can be executed in Log Analytics. |

### `RequestLog`

Complete log information about a single HTTP request to an App Engine application.

| Property | Type | Description |
|----------|------|-------------|
| `appEngineRelease` | `string` | App Engine release version. |
| `appId` | `string` | Application that handled this request. |
| `cost` | `number` | An indication of the relative cost of serving this request. |
| `endTime` | `string` | Time when the request finished. |
| `finished` | `boolean` | Whether this request is finished or active. |
| `first` | `boolean` | Whether this is the first RequestLog entry for this request. If an active request has several Req... |
| `host` | `string` | Internet host and port number of the resource being requested. |
| `httpVersion` | `string` | HTTP version of request. Example: "HTTP/1.1". |
| `instanceId` | `string` | An identifier for the instance that handled the request. |
| `instanceIndex` | `integer` | If the instance processing this request belongs to a manually scaled module, then this is the 0-b... |
| `ip` | `string` | Origin IP address. |
| `latency` | `string` | Latency of the request. |
| `line` | `array<LogLine>` | A list of log lines emitted by the application while serving this request. |
| `megaCycles` | `string` | Number of CPU megacycles used to process request. |
| `method` | `string` | Request method. Example: "GET", "HEAD", "PUT", "POST", "DELETE". |
| `moduleId` | `string` | Module of the application that handled this request. |
| `nickname` | `string` | The logged-in user who made the request.Most likely, this is the part of the user's email before ... |
| `pendingTime` | `string` | Time this request spent in the pending request queue. |
| `referrer` | `string` | Referrer URL of request. |
| `requestId` | `string` | Globally unique identifier for a request, which is based on the request start time. Request IDs f... |
| `resource` | `string` | Contains the path and query portion of the URL that was requested. For example, if the URL was "h... |
| `responseSize` | `string` | Size in bytes sent back to client by request. |
| `sourceReference` | `array<SourceReference>` | Source code for the application that handled this request. There can be more than one source refe... |
| `spanId` | `string` | Stackdriver Trace span identifier for this request. |
| `startTime` | `string` | Time when the request started. |
| `status` | `integer` | HTTP response status code. Example: 200, 404. |
| `taskName` | `string` | Task name of the request, in the case of an offline request. |
| `taskQueueName` | `string` | Queue name of the request, in the case of an offline request. |
| `traceId` | `string` | Stackdriver Trace identifier for this request. |
| `traceSampled` | `boolean` | If true, the value in the 'trace_id' field was sampled for storage in a trace backend. |
| `urlMapEntry` | `string` | File or class that handled the request. |
| `userAgent` | `string` | User agent that made the request. |
| `versionId` | `string` | Version of the application that handled this request. |
| `wasLoadingRequest` | `boolean` | Whether this was a loading request for the instance. |

### `SavedQuery`

Describes a query that has been saved by a user.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the saved query was created. |
| `description` | `string` | Optional. A human readable description of the saved query. |
| `displayName` | `string` | Required. The user specified title for the SavedQuery. |
| `loggingQuery` | `LoggingQuery` | Logging query that can be executed in Logs Explorer or via Logging API. |
| `name` | `string` | Output only. Resource name of the saved query.In the format: "projects/[PROJECT_ID]/locations/[LO... |
| `opsAnalyticsQuery` | `OpsAnalyticsQuery` | Analytics query that can be executed in Log Analytics. |
| `updateTime` | `string` | Output only. The timestamp when the saved query was last updated. |
| `visibility` | `string` | Required. The visibility status of this query, which determines its ownership. |

### `SetIamPolicyRequest`

Request message for SetIamPolicy method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the resource. The size of the policy is limited to... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `Settings`

Describes the settings associated with a project, folder, organization, or billing account.

| Property | Type | Description |
|----------|------|-------------|
| `defaultSinkConfig` | `DefaultSinkConfig` | Optional. Overrides the built-in configuration for _Default sink. |
| `disableDefaultSink` | `boolean` | Optional. If set to true, the _Default sink in newly created projects and folders will created in... |
| `kmsKeyName` | `string` | Optional. The resource name for the configured Cloud KMS key.KMS key name format: "projects/[PROJ... |
| `kmsServiceAccountId` | `string` | Output only. The service account that will be used by the Log Router to access your Cloud KMS key... |
| `loggingServiceAccountId` | `string` | Output only. The service account for the given resource container, such as project or folder. Log... |
| `name` | `string` | Output only. The resource name of the settings. |
| `storageLocation` | `string` | Optional. The storage location for the _Default and _Required log buckets of newly created projec... |

### `SortOrderParameter`

A sort order for a query based on a column.

| Property | Type | Description |
|----------|------|-------------|
| `fieldSource` | `FieldSource` | The field to sort on. Can be one of the FieldSource types: field name, alias ref, variable ref, o... |
| `sortOrderDirection` | `string` | The sort order to use for the query. |

### `SourceLocation`

Specifies a location in a source code file.

| Property | Type | Description |
|----------|------|-------------|
| `file` | `string` | Source file name. Depending on the runtime environment, this might be a simple name or a fully-qu... |
| `functionName` | `string` | Human-readable name of the function or method being invoked, with optional context such as the cl... |
| `line` | `string` | Line within the source file. |

### `SourceReference`

A reference to a particular snapshot of the source tree used to build and deploy an application.

| Property | Type | Description |
|----------|------|-------------|
| `repository` | `string` | Optional. A URI string identifying the repository. Example: "https://github.com/GoogleCloudPlatfo... |
| `revisionId` | `string` | The canonical and persistent identifier of the deployed revision. Example (git): "0035781c50ec7aa... |

### `Status`

The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SummaryField`

A field from the LogEntry that is added to the summary line (https://docs.cloud.google.com/logging/docs/view/logs-explorer-interface#preferences) for a query in the Logs Explorer.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | Optional. The field from the LogEntry to include in the summary line, for example resource.type o... |

### `SuppressionInfo`

Information about entries that were omitted from the session.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | The reason that entries were omitted from the session. |
| `suppressedCount` | `integer` | A lower bound on the count of entries omitted due to reason. |

### `TailLogEntriesRequest`

The parameters to TailLogEntries.

| Property | Type | Description |
|----------|------|-------------|
| `bufferWindow` | `string` | Optional. The amount of time to buffer log entries at the server before being returned to prevent... |
| `filter` | `string` | Optional. A filter that chooses which log entries to return. For more information, see Logging qu... |
| `resourceNames` | `array<string>` | Required. Name of a parent resource from which to retrieve log entries: projects/[PROJECT_ID] org... |

### `TailLogEntriesResponse`

Result returned from TailLogEntries.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<LogEntry>` | A list of log entries. Each response in the stream will order entries with increasing values of L... |
| `suppressionInfo` | `array<SuppressionInfo>` | If entries that otherwise would have been included in the session were not sent back to the clien... |

### `TestIamPermissionsRequest`

Request message for TestIamPermissions method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the resource. Permissions with wildcards (such as * or storag... |

### `TestIamPermissionsResponse`

Response message for TestIamPermissions method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of TestPermissionsRequest.permissions that the caller is allowed. |

### `UndeleteBucketRequest`

The parameters to UndeleteBucket.

### `UpdateBucketRequest`

The parameters to UpdateBucket.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `LogBucket` | Required. The updated bucket. |
| `name` | `string` | Required. The full resource name of the bucket to update. "projects/[PROJECT_ID]/locations/[LOCAT... |
| `updateMask` | `string` | Required. Field mask that specifies the fields in bucket that need an update. A bucket field will... |

### `WriteLogEntriesRequest`

The parameters to WriteLogEntries.

| Property | Type | Description |
|----------|------|-------------|
| `dryRun` | `boolean` | Optional. If true, the request should expect normal response, but the entries won't be persisted ... |
| `entries` | `array<LogEntry>` | Required. The log entries to send to Logging. The order of log entries in this list does not matt... |
| `labels` | `object` | Optional. Default labels that are added to the labels field of all log entries in entries. If a l... |
| `logName` | `string` | Optional. A default log resource name that is assigned to all log entries in entries that do not ... |
| `partialSuccess` | `boolean` | Optional. Whether a batch's valid entries should be written even if some other entry failed due t... |
| `resource` | `MonitoredResource` | Optional. A default monitored resource object that is assigned to all log entries in entries that... |

### `WriteLogEntriesResponse`

Result returned from WriteLogEntries.

