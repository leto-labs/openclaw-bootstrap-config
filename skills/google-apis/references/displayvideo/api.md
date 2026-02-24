# Display & Video 360 API - API Reference

**Version**: `v4` | **Methods**: 173 | **Schemas**: 379

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `displayvideo.customLists.list` | GET | `v4/customLists` | Lists custom lists. The order is defined by the order_by parameter. |
| `displayvideo.customLists.get` | GET | `v4/customLists/{+customListId}` | Gets a custom list. |
| `displayvideo.combinedAudiences.get` | GET | `v4/combinedAudiences/{+combinedAudienceId}` | Gets a combined audience. |
| `displayvideo.combinedAudiences.list` | GET | `v4/combinedAudiences` | Lists combined audiences. The order is defined by the order_by parameter. |
| `displayvideo.inventorySources.editInventorySourceReadWriteAccessors` | POST | `v4/inventorySources/{+inventorySourceId}:editInventorySourceReadWriteAccessors` | Edits read/write accessors of an inventory source. Returns the updated read_write_accessors for t... |
| `displayvideo.inventorySources.create` | POST | `v4/inventorySources` | Creates a new inventory source. Returns the newly created inventory source if successful. |
| `displayvideo.inventorySources.get` | GET | `v4/inventorySources/{+inventorySourceId}` | Gets an inventory source. |
| `displayvideo.inventorySources.patch` | PATCH | `v4/inventorySources/{+inventorySourceId}` | Updates an existing inventory source. Returns the updated inventory source if successful. |
| `displayvideo.inventorySources.list` | GET | `v4/inventorySources` | Lists inventory sources that are accessible to the current user. The order is defined by the orde... |
| `displayvideo.firstPartyAndPartnerAudiences.editCustomerMatchMembers` | POST | `v4/firstPartyAndPartnerAudiences/{+firstPartyAndPartnerAudienceId}:editCustomerMatchMembers` | Updates the member list of a Customer Match audience. Only supported for the following audience_t... |
| `displayvideo.firstPartyAndPartnerAudiences.get` | GET | `v4/firstPartyAndPartnerAudiences/{+firstPartyAndPartnerAudienceId}` | Gets a first party or partner audience. |
| `displayvideo.firstPartyAndPartnerAudiences.create` | POST | `v4/firstPartyAndPartnerAudiences` | Creates a FirstPartyAndPartnerAudience. Only supported for the following audience_type: * `CUSTOM... |
| `displayvideo.firstPartyAndPartnerAudiences.list` | GET | `v4/firstPartyAndPartnerAudiences` | Lists first party and partner audiences. The order is defined by the order_by parameter. |
| `displayvideo.firstPartyAndPartnerAudiences.patch` | PATCH | `v4/firstPartyAndPartnerAudiences/{+firstPartyAndPartnerAudienceId}` | Updates an existing FirstPartyAndPartnerAudience. Only supported for the following audience_type:... |
| `displayvideo.guaranteedOrders.patch` | PATCH | `v4/guaranteedOrders/{+guaranteedOrderId}` | Updates an existing guaranteed order. Returns the updated guaranteed order if successful. |
| `displayvideo.guaranteedOrders.get` | GET | `v4/guaranteedOrders/{+guaranteedOrderId}` | Gets a guaranteed order. |
| `displayvideo.guaranteedOrders.list` | GET | `v4/guaranteedOrders` | Lists guaranteed orders that are accessible to the current user. The order is defined by the orde... |
| `displayvideo.guaranteedOrders.create` | POST | `v4/guaranteedOrders` | Creates a new guaranteed order. Returns the newly created guaranteed order if successful. |
| `displayvideo.guaranteedOrders.editGuaranteedOrderReadAccessors` | POST | `v4/guaranteedOrders/{+guaranteedOrderId}:editGuaranteedOrderReadAccessors` | Edits read advertisers of a guaranteed order. |
| `displayvideo.googleAudiences.get` | GET | `v4/googleAudiences/{+googleAudienceId}` | Gets a Google audience. |
| `displayvideo.googleAudiences.list` | GET | `v4/googleAudiences` | Lists Google audiences. The order is defined by the order_by parameter. |
| `displayvideo.partners.get` | GET | `v4/partners/{+partnerId}` | Gets a partner. |
| `displayvideo.partners.list` | GET | `v4/partners` | Lists partners that are accessible to the current user. The order is defined by the order_by para... |
| `displayvideo.partners.editAssignedTargetingOptions` | POST | `v4/partners/{+partnerId}:editAssignedTargetingOptions` | Edits targeting options under a single partner. The operation will delete the assigned targeting ... |
| `displayvideo.partners.channels.get` | GET | `v4/partners/{+partnerId}/channels/{+channelId}` | Gets a channel for a partner or advertiser. |
| `displayvideo.partners.channels.patch` | PATCH | `v4/partners/{+partnerId}/channels/{channelId}` | Updates a channel. Returns the updated channel if successful. |
| `displayvideo.partners.channels.create` | POST | `v4/partners/{+partnerId}/channels` | Creates a new channel. Returns the newly created channel if successful. |
| `displayvideo.partners.channels.list` | GET | `v4/partners/{+partnerId}/channels` | Lists channels for a partner or advertiser. |
| `displayvideo.partners.channels.sites.create` | POST | `v4/partners/{partnerId}/channels/{+channelId}/sites` | Creates a site in a channel. |
| `displayvideo.partners.channels.sites.delete` | DELETE | `v4/partners/{partnerId}/channels/{+channelId}/sites/{+urlOrAppId}` | Deletes a site from a channel. |
| `displayvideo.partners.channels.sites.list` | GET | `v4/partners/{+partnerId}/channels/{+channelId}/sites` | Lists sites in a channel. |
| `displayvideo.partners.channels.sites.bulkEdit` | POST | `v4/partners/{partnerId}/channels/{+channelId}/sites:bulkEdit` | Bulk edits sites under a single channel. The operation will delete the sites provided in BulkEdit... |
| `displayvideo.partners.channels.sites.replace` | POST | `v4/partners/{partnerId}/channels/{+channelId}/sites:replace` | Replaces all of the sites under a single channel. The operation will replace the sites under a ch... |
| `displayvideo.partners.targetingTypes.assignedTargetingOptions.get` | GET | `v4/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}` | Gets a single targeting option assigned to a partner. |
| `displayvideo.partners.targetingTypes.assignedTargetingOptions.list` | GET | `v4/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions` | Lists the targeting options assigned to a partner. |
| `displayvideo.partners.targetingTypes.assignedTargetingOptions.create` | POST | `v4/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions` | Assigns a targeting option to a partner. Returns the assigned targeting option if successful. |
| `displayvideo.partners.targetingTypes.assignedTargetingOptions.delete` | DELETE | `v4/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}` | Deletes an assigned targeting option from a partner. |
| `displayvideo.media.download` | GET | `download/{+resourceName}` | Downloads media. Download is supported on the URI `/download/{resource_name=**}?alt=media.` **Not... |
| `displayvideo.media.upload` | POST | `media/{+resourceName}` | Uploads media. Upload is supported on the URI `/upload/media/{resource_name=**}?upload_type=media... |
| `displayvideo.inventorySourceGroups.create` | POST | `v4/inventorySourceGroups` | Creates a new inventory source group. Returns the newly created inventory source group if success... |
| `displayvideo.inventorySourceGroups.get` | GET | `v4/inventorySourceGroups/{+inventorySourceGroupId}` | Gets an inventory source group. |
| `displayvideo.inventorySourceGroups.delete` | DELETE | `v4/inventorySourceGroups/{+inventorySourceGroupId}` | Deletes an inventory source group. |
| `displayvideo.inventorySourceGroups.list` | GET | `v4/inventorySourceGroups` | Lists inventory source groups that are accessible to the current user. The order is defined by th... |
| `displayvideo.inventorySourceGroups.patch` | PATCH | `v4/inventorySourceGroups/{inventorySourceGroupId}` | Updates an inventory source group. Returns the updated inventory source group if successful. |
| `displayvideo.inventorySourceGroups.assignedInventorySources.list` | GET | `v4/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources` | Lists inventory sources assigned to an inventory source group. |
| `displayvideo.inventorySourceGroups.assignedInventorySources.create` | POST | `v4/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources` | Creates an assignment between an inventory source and an inventory source group. |
| `displayvideo.inventorySourceGroups.assignedInventorySources.bulkEdit` | POST | `v4/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources:bulkEdit` | Bulk edits multiple assignments between inventory sources and a single inventory source group. Th... |
| `displayvideo.inventorySourceGroups.assignedInventorySources.delete` | DELETE | `v4/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources/{+assignedInventorySourceId}` | Deletes the assignment between an inventory source and an inventory source group. |
| `displayvideo.users.bulkEditAssignedUserRoles` | POST | `v4/users/{+userId}:bulkEditAssignedUserRoles` | Bulk edits user roles for a user. The operation will delete the assigned user roles provided in B... |
| `displayvideo.users.get` | GET | `v4/users/{+userId}` | Gets a user. This method has unique authentication requirements. Read the prerequisites in our [M... |
| `displayvideo.users.list` | GET | `v4/users` | Lists users that are accessible to the current user. If two users have user roles on the same par... |
| `displayvideo.users.delete` | DELETE | `v4/users/{+userId}` | Deletes a user. This method has unique authentication requirements. Read the prerequisites in our... |
| `displayvideo.users.patch` | PATCH | `v4/users/{+userId}` | Updates an existing user. Returns the updated user if successful. This method has unique authenti... |
| `displayvideo.users.create` | POST | `v4/users` | Creates a new user. Returns the newly created user if successful. This method has unique authenti... |
| `displayvideo.floodlightGroups.get` | GET | `v4/floodlightGroups/{+floodlightGroupId}` | Gets a Floodlight group. |
| `displayvideo.floodlightGroups.patch` | PATCH | `v4/floodlightGroups/{floodlightGroupId}` | Updates an existing Floodlight group. Returns the updated Floodlight group if successful. |
| `displayvideo.floodlightGroups.floodlightActivities.list` | GET | `v4/floodlightGroups/{+floodlightGroupId}/floodlightActivities` | Lists Floodlight activities in a Floodlight group. |
| `displayvideo.floodlightGroups.floodlightActivities.get` | GET | `v4/floodlightGroups/{+floodlightGroupId}/floodlightActivities/{+floodlightActivityId}` | Gets a Floodlight activity. |
| `displayvideo.sdfuploadtasks.operations.get` | GET | `v4/{+name}` | Gets the latest state of an asynchronous SDF download task operation. Clients should poll this me... |
| `displayvideo.advertisers.editAssignedTargetingOptions` | POST | `v4/advertisers/{+advertiserId}:editAssignedTargetingOptions` | Edits targeting options under a single advertiser. The operation will delete the assigned targeti... |
| `displayvideo.advertisers.patch` | PATCH | `v4/advertisers/{+advertiserId}` | Updates an existing advertiser. Returns the updated advertiser if successful. |
| `displayvideo.advertisers.audit` | GET | `v4/advertisers/{+advertiserId}:audit` | Audits an advertiser. Returns the counts of used entities per resource type under the advertiser ... |
| `displayvideo.advertisers.create` | POST | `v4/advertisers` | Creates a new advertiser. Returns the newly created advertiser if successful. **This method regul... |
| `displayvideo.advertisers.list` | GET | `v4/advertisers` | Lists advertisers that are accessible to the current user. The order is defined by the order_by p... |
| `displayvideo.advertisers.delete` | DELETE | `v4/advertisers/{+advertiserId}` | Deletes an advertiser. Deleting an advertiser will delete all of its child resources, for example... |
| `displayvideo.advertisers.listAssignedTargetingOptions` | GET | `v4/advertisers/{+advertiserId}:listAssignedTargetingOptions` | Lists assigned targeting options of an advertiser across targeting types. |
| `displayvideo.advertisers.get` | GET | `v4/advertisers/{+advertiserId}` | Gets an advertiser. |
| `displayvideo.advertisers.adGroupAds.list` | GET | `v4/advertisers/{+advertiserId}/adGroupAds` | Lists ad group ads. |
| `displayvideo.advertisers.adGroupAds.get` | GET | `v4/advertisers/{+advertiserId}/adGroupAds/{+adGroupAdId}` | Gets an ad group ad. |
| `displayvideo.advertisers.locationLists.create` | POST | `v4/advertisers/{+advertiserId}/locationLists` | Creates a new location list. Returns the newly created location list if successful. |
| `displayvideo.advertisers.locationLists.list` | GET | `v4/advertisers/{+advertiserId}/locationLists` | Lists location lists based on a given advertiser id. |
| `displayvideo.advertisers.locationLists.patch` | PATCH | `v4/advertisers/{+advertiserId}/locationLists/{locationListId}` | Updates a location list. Returns the updated location list if successful. |
| `displayvideo.advertisers.locationLists.get` | GET | `v4/advertisers/{+advertiserId}/locationLists/{+locationListId}` | Gets a location list. |
| `displayvideo.advertisers.locationLists.assignedLocations.delete` | DELETE | `v4/advertisers/{advertiserId}/locationLists/{locationListId}/assignedLocations/{+assignedLocationId}` | Deletes the assignment between a location and a location list. |
| `displayvideo.advertisers.locationLists.assignedLocations.create` | POST | `v4/advertisers/{advertiserId}/locationLists/{locationListId}/assignedLocations` | Creates an assignment between a location and a location list. |
| `displayvideo.advertisers.locationLists.assignedLocations.list` | GET | `v4/advertisers/{advertiserId}/locationLists/{locationListId}/assignedLocations` | Lists locations assigned to a location list. |
| `displayvideo.advertisers.locationLists.assignedLocations.bulkEdit` | POST | `v4/advertisers/{advertiserId}/locationLists/{+locationListId}/assignedLocations:bulkEdit` | Bulk edits multiple assignments between locations and a single location list. The operation will ... |
| `displayvideo.advertisers.adAssets.upload` | POST | `v4/advertisers/{+advertiserId}/adAssets:uploadAdAsset` | Uploads and creates an ad asset. Returns the ID of the newly-created ad asset if successful. Only... |
| `displayvideo.advertisers.adAssets.create` | POST | `v4/advertisers/{+advertiserId}/adAssets` | Creates an ad asset. Returns the newly-created ad asset if successful. Only supports the creation... |
| `displayvideo.advertisers.adAssets.bulkCreate` | POST | `v4/advertisers/{+advertiserId}/adAssets:bulkCreate` | Creates multiple ad assets in a single request. Returns the newly-created ad assets if successful... |
| `displayvideo.advertisers.adAssets.list` | GET | `v4/advertisers/{+advertiserId}/adAssets` | Lists ad assets under an advertiser ID. Only supports the retrieval of assets of AdAssetType `AD_... |
| `displayvideo.advertisers.adAssets.get` | GET | `v4/advertisers/{+advertiserId}/adAssets/{+adAssetId}` | Gets an ad asset. Only supports the retrieval of assets of AdAssetType `AD_ASSET_TYPE_YOUTUBE_VID... |
| `displayvideo.advertisers.lineItems.bulkListAssignedTargetingOptions` | GET | `v4/advertisers/{+advertiserId}/lineItems:bulkListAssignedTargetingOptions` | Lists assigned targeting options for multiple line items across targeting types. |
| `displayvideo.advertisers.lineItems.generateDefault` | POST | `v4/advertisers/{+advertiserId}/lineItems:generateDefault` | Creates a new line item with settings (including targeting) inherited from the insertion order an... |
| `displayvideo.advertisers.lineItems.duplicate` | POST | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}:duplicate` | Duplicates a line item. Returns the ID of the created line item if successful. YouTube & Partners... |
| `displayvideo.advertisers.lineItems.create` | POST | `v4/advertisers/{+advertiserId}/lineItems` | Creates a new line item. Returns the newly created line item if successful. YouTube & Partners li... |
| `displayvideo.advertisers.lineItems.get` | GET | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}` | Gets a line item. |
| `displayvideo.advertisers.lineItems.bulkUpdate` | POST | `v4/advertisers/{+advertiserId}/lineItems:bulkUpdate` | Updates multiple line items. Requests to this endpoint cannot be made concurrently with the follo... |
| `displayvideo.advertisers.lineItems.delete` | DELETE | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}` | Deletes a line item. Returns error code `NOT_FOUND` if the line item does not exist. The line ite... |
| `displayvideo.advertisers.lineItems.bulkEditAssignedTargetingOptions` | POST | `v4/advertisers/{+advertiserId}/lineItems:bulkEditAssignedTargetingOptions` | Bulk edits targeting options under multiple line items. The operation will delete the assigned ta... |
| `displayvideo.advertisers.lineItems.list` | GET | `v4/advertisers/{+advertiserId}/lineItems` | Lists line items in an advertiser. The order is defined by the order_by parameter. If a filter by... |
| `displayvideo.advertisers.lineItems.patch` | PATCH | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}` | Updates an existing line item. Returns the updated line item if successful. Requests to this endp... |
| `displayvideo.advertisers.lineItems.youtubeAssetTypes.youtubeAssetAssociations.delete` | DELETE | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations/{+youtubeAssetAssociationId}` | Deletes an existing association between the identified resource and a YouTube asset. *Warning:* T... |
| `displayvideo.advertisers.lineItems.youtubeAssetTypes.youtubeAssetAssociations.create` | POST | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations` | Creates a new association between the identified resource and a YouTube asset. Returns the newly-... |
| `displayvideo.advertisers.lineItems.youtubeAssetTypes.youtubeAssetAssociations.list` | GET | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations` | Lists the YouTube asset associations linked to the given resource. |
| `displayvideo.advertisers.lineItems.targetingTypes.assignedTargetingOptions.delete` | DELETE | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}` | Deletes an assigned targeting option from a line item. Requests to this endpoint cannot be made c... |
| `displayvideo.advertisers.lineItems.targetingTypes.assignedTargetingOptions.get` | GET | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}` | Gets a single targeting option assigned to a line item. |
| `displayvideo.advertisers.lineItems.targetingTypes.assignedTargetingOptions.create` | POST | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions` | Assigns a targeting option to a line item. Returns the assigned targeting option if successful. R... |
| `displayvideo.advertisers.lineItems.targetingTypes.assignedTargetingOptions.list` | GET | `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions` | Lists the targeting options assigned to a line item. |
| `displayvideo.advertisers.targetingTypes.assignedTargetingOptions.get` | GET | `v4/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}` | Gets a single targeting option assigned to an advertiser. |
| `displayvideo.advertisers.targetingTypes.assignedTargetingOptions.create` | POST | `v4/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions` | Assigns a targeting option to an advertiser. Returns the assigned targeting option if successful. |
| `displayvideo.advertisers.targetingTypes.assignedTargetingOptions.list` | GET | `v4/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions` | Lists the targeting options assigned to an advertiser. |
| `displayvideo.advertisers.targetingTypes.assignedTargetingOptions.delete` | DELETE | `v4/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}` | Deletes an assigned targeting option from an advertiser. |
| `displayvideo.advertisers.invoices.lookupInvoiceCurrency` | GET | `v4/advertisers/{+advertiserId}/invoices:lookupInvoiceCurrency` | Retrieves the invoice currency used by an advertiser in a given month. |
| `displayvideo.advertisers.invoices.list` | GET | `v4/advertisers/{+advertiserId}/invoices` | Lists invoices posted for an advertiser in a given month. Invoices generated by billing profiles ... |
| `displayvideo.advertisers.assets.upload` | POST | `v4/advertisers/{+advertiserId}/assets` | Uploads an asset. Returns the ID of the newly uploaded asset if successful. The asset file size s... |
| `displayvideo.advertisers.channels.create` | POST | `v4/advertisers/{+advertiserId}/channels` | Creates a new channel. Returns the newly created channel if successful. |
| `displayvideo.advertisers.channels.list` | GET | `v4/advertisers/{+advertiserId}/channels` | Lists channels for a partner or advertiser. |
| `displayvideo.advertisers.channels.patch` | PATCH | `v4/advertisers/{+advertiserId}/channels/{channelId}` | Updates a channel. Returns the updated channel if successful. |
| `displayvideo.advertisers.channels.get` | GET | `v4/advertisers/{+advertiserId}/channels/{+channelId}` | Gets a channel for a partner or advertiser. |
| `displayvideo.advertisers.channels.sites.create` | POST | `v4/advertisers/{advertiserId}/channels/{+channelId}/sites` | Creates a site in a channel. |
| `displayvideo.advertisers.channels.sites.bulkEdit` | POST | `v4/advertisers/{advertiserId}/channels/{+channelId}/sites:bulkEdit` | Bulk edits sites under a single channel. The operation will delete the sites provided in BulkEdit... |
| `displayvideo.advertisers.channels.sites.delete` | DELETE | `v4/advertisers/{advertiserId}/channels/{+channelId}/sites/{+urlOrAppId}` | Deletes a site from a channel. |
| `displayvideo.advertisers.channels.sites.replace` | POST | `v4/advertisers/{advertiserId}/channels/{+channelId}/sites:replace` | Replaces all of the sites under a single channel. The operation will replace the sites under a ch... |
| `displayvideo.advertisers.channels.sites.list` | GET | `v4/advertisers/{+advertiserId}/channels/{+channelId}/sites` | Lists sites in a channel. |
| `displayvideo.advertisers.insertionOrders.get` | GET | `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}` | Gets an insertion order. Returns error code `NOT_FOUND` if the insertion order does not exist. |
| `displayvideo.advertisers.insertionOrders.create` | POST | `v4/advertisers/{+advertiserId}/insertionOrders` | Creates a new insertion order. Returns the newly created insertion order if successful. |
| `displayvideo.advertisers.insertionOrders.delete` | DELETE | `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}` | Deletes an insertion order. Returns error code `NOT_FOUND` if the insertion order does not exist.... |
| `displayvideo.advertisers.insertionOrders.listAssignedTargetingOptions` | GET | `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}:listAssignedTargetingOptions` | Lists assigned targeting options of an insertion order across targeting types. |
| `displayvideo.advertisers.insertionOrders.list` | GET | `v4/advertisers/{+advertiserId}/insertionOrders` | Lists insertion orders in an advertiser. The order is defined by the order_by parameter. If a fil... |
| `displayvideo.advertisers.insertionOrders.patch` | PATCH | `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}` | Updates an existing insertion order. Returns the updated insertion order if successful. |
| `displayvideo.advertisers.insertionOrders.targetingTypes.assignedTargetingOptions.get` | GET | `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}` | Gets a single targeting option assigned to an insertion order. |
| `displayvideo.advertisers.insertionOrders.targetingTypes.assignedTargetingOptions.list` | GET | `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}/targetingTypes/{+targetingType}/assignedTargetingOptions` | Lists the targeting options assigned to an insertion order. |
| `displayvideo.advertisers.insertionOrders.targetingTypes.assignedTargetingOptions.create` | POST | `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}/targetingTypes/{+targetingType}/assignedTargetingOptions` | Assigns a targeting option to an insertion order. Returns the assigned targeting option if succes... |
| `displayvideo.advertisers.insertionOrders.targetingTypes.assignedTargetingOptions.delete` | DELETE | `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}` | Deletes an assigned targeting option from an insertion order. Supported targeting types: * `TARGE... |
| `displayvideo.advertisers.campaigns.list` | GET | `v4/advertisers/{+advertiserId}/campaigns` | Lists campaigns in an advertiser. The order is defined by the order_by parameter. If a filter by ... |
| `displayvideo.advertisers.campaigns.get` | GET | `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}` | Gets a campaign. |
| `displayvideo.advertisers.campaigns.patch` | PATCH | `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}` | Updates an existing campaign. Returns the updated campaign if successful. |
| `displayvideo.advertisers.campaigns.delete` | DELETE | `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}` | Permanently deletes a campaign. A deleted campaign cannot be recovered. The campaign should be ar... |
| `displayvideo.advertisers.campaigns.listAssignedTargetingOptions` | GET | `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}:listAssignedTargetingOptions` | Lists assigned targeting options of a campaign across targeting types. |
| `displayvideo.advertisers.campaigns.create` | POST | `v4/advertisers/{+advertiserId}/campaigns` | Creates a new campaign. Returns the newly created campaign if successful. |
| `displayvideo.advertisers.campaigns.targetingTypes.assignedTargetingOptions.list` | GET | `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}/targetingTypes/{+targetingType}/assignedTargetingOptions` | Lists the targeting options assigned to a campaign for a specified targeting type. |
| `displayvideo.advertisers.campaigns.targetingTypes.assignedTargetingOptions.get` | GET | `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}` | Gets a single targeting option assigned to a campaign. |
| `displayvideo.advertisers.negativeKeywordLists.delete` | DELETE | `v4/advertisers/{+advertiserId}/negativeKeywordLists/{+negativeKeywordListId}` | Deletes a negative keyword list given an advertiser ID and a negative keyword list ID. |
| `displayvideo.advertisers.negativeKeywordLists.list` | GET | `v4/advertisers/{+advertiserId}/negativeKeywordLists` | Lists negative keyword lists based on a given advertiser id. |
| `displayvideo.advertisers.negativeKeywordLists.get` | GET | `v4/advertisers/{+advertiserId}/negativeKeywordLists/{+negativeKeywordListId}` | Gets a negative keyword list given an advertiser ID and a negative keyword list ID. |
| `displayvideo.advertisers.negativeKeywordLists.patch` | PATCH | `v4/advertisers/{+advertiserId}/negativeKeywordLists/{negativeKeywordListId}` | Updates a negative keyword list. Returns the updated negative keyword list if successful. |
| `displayvideo.advertisers.negativeKeywordLists.create` | POST | `v4/advertisers/{+advertiserId}/negativeKeywordLists` | Creates a new negative keyword list. Returns the newly created negative keyword list if successful. |
| `displayvideo.advertisers.negativeKeywordLists.negativeKeywords.replace` | POST | `v4/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords:replace` | Replaces all negative keywords in a single negative keyword list. The operation will replace the ... |
| `displayvideo.advertisers.negativeKeywordLists.negativeKeywords.bulkEdit` | POST | `v4/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords:bulkEdit` | Bulk edits negative keywords in a single negative keyword list. The operation will delete the neg... |
| `displayvideo.advertisers.negativeKeywordLists.negativeKeywords.create` | POST | `v4/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords` | Creates a negative keyword in a negative keyword list. |
| `displayvideo.advertisers.negativeKeywordLists.negativeKeywords.delete` | DELETE | `v4/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords/{+keywordValue}` | Deletes a negative keyword from a negative keyword list. |
| `displayvideo.advertisers.negativeKeywordLists.negativeKeywords.list` | GET | `v4/advertisers/{+advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords` | Lists negative keywords in a negative keyword list. |
| `displayvideo.advertisers.creatives.get` | GET | `v4/advertisers/{+advertiserId}/creatives/{+creativeId}` | Gets a creative. |
| `displayvideo.advertisers.creatives.create` | POST | `v4/advertisers/{+advertiserId}/creatives` | Creates a new creative. Returns the newly created creative if successful. A ["Standard" user role... |
| `displayvideo.advertisers.creatives.patch` | PATCH | `v4/advertisers/{+advertiserId}/creatives/{+creativeId}` | Updates an existing creative. Returns the updated creative if successful. A ["Standard" user role... |
| `displayvideo.advertisers.creatives.delete` | DELETE | `v4/advertisers/{+advertiserId}/creatives/{+creativeId}` | Deletes a creative. Returns error code `NOT_FOUND` if the creative does not exist. The creative s... |
| `displayvideo.advertisers.creatives.list` | GET | `v4/advertisers/{+advertiserId}/creatives` | Lists creatives in an advertiser. The order is defined by the order_by parameter. If a filter by ... |
| `displayvideo.advertisers.adGroups.get` | GET | `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}` | Gets an ad group. |
| `displayvideo.advertisers.adGroups.bulkListAssignedTargetingOptions` | GET | `v4/advertisers/{+advertiserId}/adGroups:bulkListAssignedTargetingOptions` | Lists assigned targeting options for multiple ad groups across targeting types. Inherited assigne... |
| `displayvideo.advertisers.adGroups.list` | GET | `v4/advertisers/{+advertiserId}/adGroups` | Lists ad groups. |
| `displayvideo.advertisers.adGroups.youtubeAssetTypes.youtubeAssetAssociations.list` | GET | `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations` | Lists the YouTube asset associations linked to the given resource. |
| `displayvideo.advertisers.adGroups.youtubeAssetTypes.youtubeAssetAssociations.delete` | DELETE | `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations/{+youtubeAssetAssociationId}` | Deletes an existing association between the identified resource and a YouTube asset. *Warning:* T... |
| `displayvideo.advertisers.adGroups.youtubeAssetTypes.youtubeAssetAssociations.create` | POST | `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations` | Creates a new association between the identified resource and a YouTube asset. Returns the newly-... |
| `displayvideo.advertisers.adGroups.targetingTypes.assignedTargetingOptions.list` | GET | `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}/targetingTypes/{+targetingType}/assignedTargetingOptions` | Lists the targeting options assigned to an ad group. Inherited assigned targeting options are not... |
| `displayvideo.advertisers.adGroups.targetingTypes.assignedTargetingOptions.get` | GET | `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}` | Gets a single targeting option assigned to an ad group. Inherited assigned targeting options are ... |
| `displayvideo.customBiddingAlgorithms.list` | GET | `v4/customBiddingAlgorithms` | Lists custom bidding algorithms that are accessible to the current user and can be used in biddin... |
| `displayvideo.customBiddingAlgorithms.uploadRules` | GET | `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}:uploadRules` | Creates a rules reference object for an AlgorithmRules file. The resulting reference object provi... |
| `displayvideo.customBiddingAlgorithms.create` | POST | `v4/customBiddingAlgorithms` | Creates a new custom bidding algorithm. Returns the newly created custom bidding algorithm if suc... |
| `displayvideo.customBiddingAlgorithms.patch` | PATCH | `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}` | Updates an existing custom bidding algorithm. Returns the updated custom bidding algorithm if suc... |
| `displayvideo.customBiddingAlgorithms.get` | GET | `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}` | Gets a custom bidding algorithm. |
| `displayvideo.customBiddingAlgorithms.uploadScript` | GET | `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}:uploadScript` | Creates a custom bidding script reference object for a script file. The resulting reference objec... |
| `displayvideo.customBiddingAlgorithms.scripts.list` | GET | `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/scripts` | Lists custom bidding scripts that belong to the given algorithm. The order is defined by the orde... |
| `displayvideo.customBiddingAlgorithms.scripts.get` | GET | `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/scripts/{+customBiddingScriptId}` | Gets a custom bidding script. |
| `displayvideo.customBiddingAlgorithms.scripts.create` | POST | `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/scripts` | Creates a new custom bidding script. Returns the newly created script if successful. Requests cre... |
| `displayvideo.customBiddingAlgorithms.rules.create` | POST | `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/rules` | Creates a new rules resource. Returns the newly created rules resource if successful. Requests cr... |
| `displayvideo.customBiddingAlgorithms.rules.list` | GET | `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/rules` | Lists rules resources that belong to the given algorithm. The order is defined by the order_by pa... |
| `displayvideo.customBiddingAlgorithms.rules.get` | GET | `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/rules/{+customBiddingAlgorithmRulesId}` | Retrieves a rules resource. |
| `displayvideo.sdfdownloadtasks.create` | POST | `v4/sdfdownloadtasks` | Creates an SDF Download Task. Returns an Operation. An SDF Download Task is a long-running, async... |
| `displayvideo.sdfdownloadtasks.operations.get` | GET | `v4/{+name}` | Gets the latest state of an asynchronous SDF download task operation. Clients should poll this me... |
| `displayvideo.targetingTypes.targetingOptions.search` | POST | `v4/targetingTypes/{+targetingType}/targetingOptions:search` | Searches for targeting options of a given type based on the given search terms. |
| `displayvideo.targetingTypes.targetingOptions.get` | GET | `v4/targetingTypes/{+targetingType}/targetingOptions/{+targetingOptionId}` | Gets a single targeting option. |
| `displayvideo.targetingTypes.targetingOptions.list` | GET | `v4/targetingTypes/{+targetingType}/targetingOptions` | Lists targeting options of a given type. |

### `displayvideo.customLists.list`

**GET** `v4/customLists`

Lists custom lists. The order is defined by the order_by parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the DV360 advertiser that has access to the fetched custom lists. |
| `filter` | `string` | query | No | Allows filtering by custom list fields. Supported syntax: * Filter expressions for custom lists can only contain at m... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `customListId` (default) * `displayName` The default sortin... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListCustomListsResponse`

```typescript
const res = await displayvideo.customLists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customLists.get`

**GET** `v4/customLists/{+customListId}`

Gets a custom list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customListId` | `string` | path | Yes | Required. The ID of the custom list to fetch. |
| `advertiserId` | `string` | query | No | The ID of the DV360 advertiser that has access to the fetched custom lists. |

**Response**: `CustomList`

```typescript
const res = await displayvideo.customLists.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.combinedAudiences.get`

**GET** `v4/combinedAudiences/{+combinedAudienceId}`

Gets a combined audience.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `combinedAudienceId` | `string` | path | Yes | Required. The ID of the combined audience to fetch. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the fetched combined audience. |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the fetched combined audience. |

**Response**: `CombinedAudience`

```typescript
const res = await displayvideo.combinedAudiences.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.combinedAudiences.list`

**GET** `v4/combinedAudiences`

Lists combined audiences. The order is defined by the order_by parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the fetched combined audiences. |
| `filter` | `string` | query | No | Allows filtering by combined audience fields. Supported syntax: * Filter expressions for combined audiences can only ... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `combinedAudienceId` (default) * `displayName` The default ... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the fetched combined audiences. |

**Response**: `ListCombinedAudiencesResponse`

```typescript
const res = await displayvideo.combinedAudiences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySources.editInventorySourceReadWriteAccessors`

**POST** `v4/inventorySources/{+inventorySourceId}:editInventorySourceReadWriteAccessors`

Edits read/write accessors of an inventory source. Returns the updated read_write_accessors for the inventory source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inventorySourceId` | `string` | path | Yes | Required. The ID of inventory source to update. |

**Request body**: `EditInventorySourceReadWriteAccessorsRequest`

**Response**: `InventorySourceAccessors`

```typescript
const res = await displayvideo.inventorySources.editInventorySourceReadWriteAccessors({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySources.create`

**POST** `v4/inventorySources`

Creates a new inventory source. Returns the newly created inventory source if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the advertiser that the request is being made within. |
| `partnerId` | `string` | query | No | The ID of the partner that the request is being made within. |

**Request body**: `InventorySource`

**Response**: `InventorySource`

```typescript
const res = await displayvideo.inventorySources.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySources.get`

**GET** `v4/inventorySources/{+inventorySourceId}`

Gets an inventory source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inventorySourceId` | `string` | path | Yes | Required. The ID of the inventory source to fetch. |
| `advertiserId` | `string` | query | No | Optional. The ID of the DV360 advertiser to which the fetched inventory source is permissioned. If the user only has ... |
| `partnerId` | `string` | query | No | Required. The ID of the DV360 partner to which the fetched inventory source is permissioned. |

**Response**: `InventorySource`

```typescript
const res = await displayvideo.inventorySources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySources.patch`

**PATCH** `v4/inventorySources/{+inventorySourceId}`

Updates an existing inventory source. Returns the updated inventory source if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inventorySourceId` | `string` | path | Yes | Output only. The unique ID of the inventory source. Assigned by the system. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that the request is being made within. |
| `partnerId` | `string` | query | No | The ID of the partner that the request is being made within. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `InventorySource`

**Response**: `InventorySource`

```typescript
const res = await displayvideo.inventorySources.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySources.list`

**GET** `v4/inventorySources`

Lists inventory sources that are accessible to the current user. The order is defined by the order_by parameter. If a filter by entity_status is not specified, inventory sources with entity status `ENTITY_STATUS_ARCHIVED` will not be included in the results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the inventory source. |
| `filter` | `string` | query | No | Allows filtering by inventory source fields. Supported syntax: * Filter expressions are made up of one or more restri... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `displayName` (default) The default sorting order is ascend... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the inventory source. |

**Response**: `ListInventorySourcesResponse`

```typescript
const res = await displayvideo.inventorySources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.firstPartyAndPartnerAudiences.editCustomerMatchMembers`

**POST** `v4/firstPartyAndPartnerAudiences/{+firstPartyAndPartnerAudienceId}:editCustomerMatchMembers`

Updates the member list of a Customer Match audience. Only supported for the following audience_type: * `CUSTOMER_MATCH_CONTACT_INFO` * `CUSTOMER_MATCH_DEVICE_ID`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `firstPartyAndPartnerAudienceId` | `string` | path | Yes | Required. The ID of the Customer Match FirstPartyAndPartnerAudience whose members will be edited. |

**Request body**: `EditCustomerMatchMembersRequest`

**Response**: `EditCustomerMatchMembersResponse`

```typescript
const res = await displayvideo.firstPartyAndPartnerAudiences.editCustomerMatchMembers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.firstPartyAndPartnerAudiences.get`

**GET** `v4/firstPartyAndPartnerAudiences/{+firstPartyAndPartnerAudienceId}`

Gets a first party or partner audience.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `firstPartyAndPartnerAudienceId` | `string` | path | Yes | Required. The ID of the first party and partner audience to fetch. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the fetched first party and partner audience. |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the fetched first party and partner audience. |

**Response**: `FirstPartyAndPartnerAudience`

```typescript
const res = await displayvideo.firstPartyAndPartnerAudiences.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.firstPartyAndPartnerAudiences.create`

**POST** `v4/firstPartyAndPartnerAudiences`

Creates a FirstPartyAndPartnerAudience. Only supported for the following audience_type: * `CUSTOMER_MATCH_CONTACT_INFO` * `CUSTOMER_MATCH_DEVICE_ID`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | Required. The ID of the advertiser under whom the FirstPartyAndPartnerAudience will be created. |

**Request body**: `FirstPartyAndPartnerAudience`

**Response**: `FirstPartyAndPartnerAudience`

```typescript
const res = await displayvideo.firstPartyAndPartnerAudiences.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.firstPartyAndPartnerAudiences.list`

**GET** `v4/firstPartyAndPartnerAudiences`

Lists first party and partner audiences. The order is defined by the order_by parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the fetched first party and partner audiences. |
| `filter` | `string` | query | No | Optional. Allows filtering by first party and partner audience fields. Supported syntax: * Filter expressions for fir... |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the list. Acceptable values are: * `FirstPartyAndPartnerAudienceId` (default) * `dis... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Must be between `1` and `5000`. If unspecified, this value defaults to `5000`. Returns... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of next_page_t... |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the fetched first party and partner audiences. |

**Response**: `ListFirstPartyAndPartnerAudiencesResponse`

```typescript
const res = await displayvideo.firstPartyAndPartnerAudiences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.firstPartyAndPartnerAudiences.patch`

**PATCH** `v4/firstPartyAndPartnerAudiences/{+firstPartyAndPartnerAudienceId}`

Updates an existing FirstPartyAndPartnerAudience. Only supported for the following audience_type: * `CUSTOMER_MATCH_CONTACT_INFO` * `CUSTOMER_MATCH_DEVICE_ID`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `firstPartyAndPartnerAudienceId` | `string` | path | Yes | Identifier. The unique ID of the first party and partner audience. Assigned by the system. |
| `advertiserId` | `string` | query | No | Required. The ID of the owner advertiser of the updated FirstPartyAndPartnerAudience. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. Updates are only supported for the following fields: * `display... |

**Request body**: `FirstPartyAndPartnerAudience`

**Response**: `FirstPartyAndPartnerAudience`

```typescript
const res = await displayvideo.firstPartyAndPartnerAudiences.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.guaranteedOrders.patch`

**PATCH** `v4/guaranteedOrders/{+guaranteedOrderId}`

Updates an existing guaranteed order. Returns the updated guaranteed order if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `guaranteedOrderId` | `string` | path | Yes | Output only. The unique identifier of the guaranteed order. The guaranteed order IDs have the format `{exchange}-{leg... |
| `advertiserId` | `string` | query | No | The ID of the advertiser that the request is being made within. |
| `partnerId` | `string` | query | No | The ID of the partner that the request is being made within. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `GuaranteedOrder`

**Response**: `GuaranteedOrder`

```typescript
const res = await displayvideo.guaranteedOrders.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.guaranteedOrders.get`

**GET** `v4/guaranteedOrders/{+guaranteedOrderId}`

Gets a guaranteed order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `guaranteedOrderId` | `string` | path | Yes | Required. The ID of the guaranteed order to fetch. The ID is of the format `{exchange}-{legacy_guaranteed_order_id}` |
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the guaranteed order. |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the guaranteed order. |

**Response**: `GuaranteedOrder`

```typescript
const res = await displayvideo.guaranteedOrders.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.guaranteedOrders.list`

**GET** `v4/guaranteedOrders`

Lists guaranteed orders that are accessible to the current user. The order is defined by the order_by parameter. If a filter by entity_status is not specified, guaranteed orders with entity status `ENTITY_STATUS_ARCHIVED` will not be included in the results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the guaranteed order. |
| `filter` | `string` | query | No | Allows filtering by guaranteed order fields. * Filter expressions are made up of one or more restrictions. * Restrict... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `displayName` (default) The default sorting order is ascend... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the guaranteed order. |

**Response**: `ListGuaranteedOrdersResponse`

```typescript
const res = await displayvideo.guaranteedOrders.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.guaranteedOrders.create`

**POST** `v4/guaranteedOrders`

Creates a new guaranteed order. Returns the newly created guaranteed order if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the advertiser that the request is being made within. |
| `partnerId` | `string` | query | No | The ID of the partner that the request is being made within. |

**Request body**: `GuaranteedOrder`

**Response**: `GuaranteedOrder`

```typescript
const res = await displayvideo.guaranteedOrders.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.guaranteedOrders.editGuaranteedOrderReadAccessors`

**POST** `v4/guaranteedOrders/{+guaranteedOrderId}:editGuaranteedOrderReadAccessors`

Edits read advertisers of a guaranteed order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `guaranteedOrderId` | `string` | path | Yes | Required. The ID of the guaranteed order to edit. The ID is of the format `{exchange}-{legacy_guaranteed_order_id}` |

**Request body**: `EditGuaranteedOrderReadAccessorsRequest`

**Response**: `EditGuaranteedOrderReadAccessorsResponse`

```typescript
const res = await displayvideo.guaranteedOrders.editGuaranteedOrderReadAccessors({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.googleAudiences.get`

**GET** `v4/googleAudiences/{+googleAudienceId}`

Gets a Google audience.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `googleAudienceId` | `string` | path | Yes | Required. The ID of the Google audience to fetch. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the fetched Google audience. |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the fetched Google audience. |

**Response**: `GoogleAudience`

```typescript
const res = await displayvideo.googleAudiences.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.googleAudiences.list`

**GET** `v4/googleAudiences`

Lists Google audiences. The order is defined by the order_by parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the fetched Google audiences. |
| `filter` | `string` | query | No | Allows filtering by Google audience fields. Supported syntax: * Filter expressions for Google audiences can only cont... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `googleAudienceId` (default) * `displayName` The default so... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the fetched Google audiences. |

**Response**: `ListGoogleAudiencesResponse`

```typescript
const res = await displayvideo.googleAudiences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.get`

**GET** `v4/partners/{+partnerId}`

Gets a partner.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the partner to fetch. |

**Response**: `Partner`

```typescript
const res = await displayvideo.partners.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.list`

**GET** `v4/partners`

Lists partners that are accessible to the current user. The order is defined by the order_by parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Allows filtering by partner fields. Supported syntax: * Filter expressions are made up of one or more restrictions. *... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `displayName` The default sorting order is ascending. To sp... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListPartnersResponse`

```typescript
const res = await displayvideo.partners.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.editAssignedTargetingOptions`

**POST** `v4/partners/{+partnerId}:editAssignedTargetingOptions`

Edits targeting options under a single partner. The operation will delete the assigned targeting options provided in BulkEditPartnerAssignedTargetingOptionsRequest.deleteRequests and then create the assigned targeting options provided in BulkEditPartnerAssignedTargetingOptionsRequest.createRequests .

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the partner. |

**Request body**: `BulkEditPartnerAssignedTargetingOptionsRequest`

**Response**: `BulkEditPartnerAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.partners.editAssignedTargetingOptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.channels.get`

**GET** `v4/partners/{+partnerId}/channels/{+channelId}`

Gets a channel for a partner or advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | The ID of the partner that owns the fetched channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the channel to fetch. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the fetched channel. |

**Response**: `Channel`

```typescript
const res = await displayvideo.channels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.channels.patch`

**PATCH** `v4/partners/{+partnerId}/channels/{channelId}`

Updates a channel. Returns the updated channel if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | The ID of the partner that owns the created channel. |
| `channelId` | `string` | path | Yes | Output only. The unique ID of the channel. Assigned by the system. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the created channel. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await displayvideo.channels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.channels.create`

**POST** `v4/partners/{+partnerId}/channels`

Creates a new channel. Returns the newly created channel if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | The ID of the partner that owns the created channel. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the created channel. |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await displayvideo.channels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.channels.list`

**GET** `v4/partners/{+partnerId}/channels`

Lists channels for a partner or advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | The ID of the partner that owns the channels. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the channels. |
| `filter` | `string` | query | No | Allows filtering by channel fields. Supported syntax: * Filter expressions for channel can only contain at most one r... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `displayName` (default) * `channelId` The default sorting o... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListChannelsResponse`

```typescript
const res = await displayvideo.channels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.channels.sites.create`

**POST** `v4/partners/{partnerId}/channels/{+channelId}/sites`

Creates a site in a channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | The ID of the partner that owns the parent channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the parent channel in which the site will be created. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent channel. |

**Request body**: `Site`

**Response**: `Site`

```typescript
const res = await displayvideo.sites.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.channels.sites.delete`

**DELETE** `v4/partners/{partnerId}/channels/{+channelId}/sites/{+urlOrAppId}`

Deletes a site from a channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | The ID of the partner that owns the parent channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the parent channel to which the site belongs. |
| `urlOrAppId` | `string` | path | Yes | Required. The URL or app ID of the site to delete. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent channel. |

**Response**: `Empty`

```typescript
const res = await displayvideo.sites.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.channels.sites.list`

**GET** `v4/partners/{+partnerId}/channels/{+channelId}/sites`

Lists sites in a channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | The ID of the partner that owns the parent channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the parent channel to which the requested sites belong. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent channel. |
| `filter` | `string` | query | No | Allows filtering by site fields. Supported syntax: * Filter expressions for site retrieval can only contain at most o... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `urlOrAppId` (default) The default sorting order is ascendi... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `10000`. If unspecified will default to `100`. Returns error code `INVAL... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListSitesResponse`

```typescript
const res = await displayvideo.sites.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.channels.sites.bulkEdit`

**POST** `v4/partners/{partnerId}/channels/{+channelId}/sites:bulkEdit`

Bulk edits sites under a single channel. The operation will delete the sites provided in BulkEditSitesRequest.deleted_sites and then create the sites provided in BulkEditSitesRequest.created_sites.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | The ID of the partner that owns the parent channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the parent channel to which the sites belong. |

**Request body**: `BulkEditSitesRequest`

**Response**: `BulkEditSitesResponse`

```typescript
const res = await displayvideo.sites.bulkEdit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.channels.sites.replace`

**POST** `v4/partners/{partnerId}/channels/{+channelId}/sites:replace`

Replaces all of the sites under a single channel. The operation will replace the sites under a channel with the sites provided in ReplaceSitesRequest.new_sites. **This method regularly experiences high latency.** We recommend [increasing your default timeout](/display-video/api/guides/best-practices/timeouts#client_library_timeout) to avoid errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | The ID of the partner that owns the parent channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the parent channel whose sites will be replaced. |

**Request body**: `ReplaceSitesRequest`

**Response**: `ReplaceSitesResponse`

```typescript
const res = await displayvideo.sites.replace({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.targetingTypes.assignedTargetingOptions.get`

**GET** `v4/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}`

Gets a single targeting option assigned to a partner.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the partner. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types: * `TARGETING_TYPE_CHANNEL` |
| `assignedTargetingOptionId` | `string` | path | Yes | Required. An identifier unique to the targeting type in this partner that identifies the assigned targeting option be... |

**Response**: `AssignedTargetingOption`

```typescript
const res = await displayvideo.assignedTargetingOptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.targetingTypes.assignedTargetingOptions.list`

**GET** `v4/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions`

Lists the targeting options assigned to a partner.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the partner. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of assigned targeting options to list. Supported targeting types: * `TARGETING_TYPE_CHA... |
| `filter` | `string` | query | No | Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `assignedTargetingOptionId` (default) The default sorting o... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListPartnerAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.assignedTargetingOptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.targetingTypes.assignedTargetingOptions.create`

**POST** `v4/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions`

Assigns a targeting option to a partner. Returns the assigned targeting option if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the partner. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types: * `TARGETING_TYPE_CHANNEL` |

**Request body**: `AssignedTargetingOption`

**Response**: `AssignedTargetingOption`

```typescript
const res = await displayvideo.assignedTargetingOptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.partners.targetingTypes.assignedTargetingOptions.delete`

**DELETE** `v4/partners/{+partnerId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}`

Deletes an assigned targeting option from a partner.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `partnerId` | `string` | path | Yes | Required. The ID of the partner. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types: * `TARGETING_TYPE_CHANNEL` |
| `assignedTargetingOptionId` | `string` | path | Yes | Required. The ID of the assigned targeting option to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.assignedTargetingOptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.media.download`

**GET** `download/{+resourceName}`

Downloads media. Download is supported on the URI `/download/{resource_name=**}?alt=media.` **Note**: Download requests will not be successful without including `alt=media` query string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Name of the media that is being downloaded. See ReadRequest.resource_name. |

**Response**: `GoogleBytestreamMedia`

```typescript
const res = await displayvideo.media.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/doubleclickbidmanager`

---

### `displayvideo.media.upload`

**POST** `media/{+resourceName}`

Uploads media. Upload is supported on the URI `/upload/media/{resource_name=**}?upload_type=media.` **Note**: Upload requests will not be successful without including `upload_type=media` query string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Name of the media that is being downloaded. See ReadRequest.resource_name. |

**Request body**: `GoogleBytestreamMedia`

**Response**: `GoogleBytestreamMedia`

```typescript
const res = await displayvideo.media.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/doubleclickbidmanager`

---

### `displayvideo.inventorySourceGroups.create`

**POST** `v4/inventorySourceGroups`

Creates a new inventory source group. Returns the newly created inventory source group if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the inventory source group. The parent partner will not have access to this group. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the inventory source group. Only this partner will have write access to this group. O... |

**Request body**: `InventorySourceGroup`

**Response**: `InventorySourceGroup`

```typescript
const res = await displayvideo.inventorySourceGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySourceGroups.get`

**GET** `v4/inventorySourceGroups/{+inventorySourceGroupId}`

Gets an inventory source group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inventorySourceGroupId` | `string` | path | Yes | Required. The ID of the inventory source group to fetch. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the inventory source group. If an inventory source group is partner-owned... |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the inventory source group. A partner cannot access an advertiser-owned inve... |

**Response**: `InventorySourceGroup`

```typescript
const res = await displayvideo.inventorySourceGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySourceGroups.delete`

**DELETE** `v4/inventorySourceGroups/{+inventorySourceGroupId}`

Deletes an inventory source group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inventorySourceGroupId` | `string` | path | Yes | Required. The ID of the inventory source group to delete. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the inventory source group. The parent partner does not have access to this group. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the inventory source group. Only this partner has write access to this group. |

**Response**: `Empty`

```typescript
const res = await displayvideo.inventorySourceGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySourceGroups.list`

**GET** `v4/inventorySourceGroups`

Lists inventory source groups that are accessible to the current user. The order is defined by the order_by parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the inventory source group. If an inventory source group is partner-owned... |
| `filter` | `string` | query | No | Allows filtering by inventory source group fields. Supported syntax: * Filter expressions are made up of one or more ... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `displayName` (default) * `inventorySourceGroupId` The defa... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the inventory source group. A partner cannot access advertiser-owned invento... |

**Response**: `ListInventorySourceGroupsResponse`

```typescript
const res = await displayvideo.inventorySourceGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySourceGroups.patch`

**PATCH** `v4/inventorySourceGroups/{inventorySourceGroupId}`

Updates an inventory source group. Returns the updated inventory source group if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inventorySourceGroupId` | `string` | path | Yes | Output only. The unique ID of the inventory source group. Assigned by the system. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the inventory source group. The parent partner does not have access to this group. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the inventory source group. Only this partner has write access to this group. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `InventorySourceGroup`

**Response**: `InventorySourceGroup`

```typescript
const res = await displayvideo.inventorySourceGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySourceGroups.assignedInventorySources.list`

**GET** `v4/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources`

Lists inventory sources assigned to an inventory source group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inventorySourceGroupId` | `string` | path | Yes | Required. The ID of the inventory source group to which these assignments are assigned. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that has access to the assignment. If the parent inventory source group is partner-owned, on... |
| `filter` | `string` | query | No | Allows filtering by assigned inventory source fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `assignedInventorySourceId` (default) The default sorting o... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `100`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the partner that has access to the assignment. If the parent inventory source group is advertiser-owned, th... |

**Response**: `ListAssignedInventorySourcesResponse`

```typescript
const res = await displayvideo.assignedInventorySources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySourceGroups.assignedInventorySources.create`

**POST** `v4/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources`

Creates an assignment between an inventory source and an inventory source group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inventorySourceGroupId` | `string` | path | Yes | Required. The ID of the inventory source group to which the assignment will be assigned. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent inventory source group. The parent partner will not have access to this... |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent inventory source group. Only this partner will have write access to this a... |

**Request body**: `AssignedInventorySource`

**Response**: `AssignedInventorySource`

```typescript
const res = await displayvideo.assignedInventorySources.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySourceGroups.assignedInventorySources.bulkEdit`

**POST** `v4/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources:bulkEdit`

Bulk edits multiple assignments between inventory sources and a single inventory source group. The operation will delete the assigned inventory sources provided in BulkEditAssignedInventorySourcesRequest.deleted_assigned_inventory_sources and then create the assigned inventory sources provided in BulkEditAssignedInventorySourcesRequest.created_assigned_inventory_sources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inventorySourceGroupId` | `string` | path | Yes | Required. The ID of the inventory source group to which the assignments are assigned. |

**Request body**: `BulkEditAssignedInventorySourcesRequest`

**Response**: `BulkEditAssignedInventorySourcesResponse`

```typescript
const res = await displayvideo.assignedInventorySources.bulkEdit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.inventorySourceGroups.assignedInventorySources.delete`

**DELETE** `v4/inventorySourceGroups/{+inventorySourceGroupId}/assignedInventorySources/{+assignedInventorySourceId}`

Deletes the assignment between an inventory source and an inventory source group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `inventorySourceGroupId` | `string` | path | Yes | Required. The ID of the inventory source group to which this assignment is assigned. |
| `assignedInventorySourceId` | `string` | path | Yes | Required. The ID of the assigned inventory source to delete. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent inventory source group. The parent partner does not have access to this... |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent inventory source group. Only this partner has write access to this assigne... |

**Response**: `Empty`

```typescript
const res = await displayvideo.assignedInventorySources.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.users.bulkEditAssignedUserRoles`

**POST** `v4/users/{+userId}:bulkEditAssignedUserRoles`

Bulk edits user roles for a user. The operation will delete the assigned user roles provided in BulkEditAssignedUserRolesRequest.deletedAssignedUserRoles and then assign the user roles provided in BulkEditAssignedUserRolesRequest.createdAssignedUserRoles. This method has unique authentication requirements. Read the prerequisites in our [Managing Users guide](/display-video/api/guides/users/overview#prerequisites) before using this method. The "Try this method" feature does not work for this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | Required. The ID of the user to which the assigned user roles belong. |

**Request body**: `BulkEditAssignedUserRolesRequest`

**Response**: `BulkEditAssignedUserRolesResponse`

```typescript
const res = await displayvideo.users.bulkEditAssignedUserRoles({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video-user-management`

---

### `displayvideo.users.get`

**GET** `v4/users/{+userId}`

Gets a user. This method has unique authentication requirements. Read the prerequisites in our [Managing Users guide](/display-video/api/guides/users/overview#prerequisites) before using this method. The "Try this method" feature does not work for this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | Required. The ID of the user to fetch. |

**Response**: `User`

```typescript
const res = await displayvideo.users.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video-user-management`

---

### `displayvideo.users.list`

**GET** `v4/users`

Lists users that are accessible to the current user. If two users have user roles on the same partner or advertiser, they can access each other. This method has unique authentication requirements. Read the prerequisites in our [Managing Users guide](/display-video/api/guides/users/overview#prerequisites) before using this method. The "Try this method" feature does not work for this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Allows filtering by user fields. Supported syntax: * Filter expressions are made up of one or more restrictions. * Re... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `displayName` (default) The default sorting order is ascend... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListUsersResponse`

```typescript
const res = await displayvideo.users.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video-user-management`

---

### `displayvideo.users.delete`

**DELETE** `v4/users/{+userId}`

Deletes a user. This method has unique authentication requirements. Read the prerequisites in our [Managing Users guide](/display-video/api/guides/users/overview#prerequisites) before using this method. The "Try this method" feature does not work for this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | Required. The ID of the user to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.users.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video-user-management`

---

### `displayvideo.users.patch`

**PATCH** `v4/users/{+userId}`

Updates an existing user. Returns the updated user if successful. This method has unique authentication requirements. Read the prerequisites in our [Managing Users guide](/display-video/api/guides/users/overview#prerequisites) before using this method. The "Try this method" feature does not work for this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | Output only. The unique ID of the user. Assigned by the system. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `User`

**Response**: `User`

```typescript
const res = await displayvideo.users.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video-user-management`

---

### `displayvideo.users.create`

**POST** `v4/users`

Creates a new user. Returns the newly created user if successful. This method has unique authentication requirements. Read the prerequisites in our [Managing Users guide](/display-video/api/guides/users/overview#prerequisites) before using this method. The "Try this method" feature does not work for this method.

**Request body**: `User`

**Response**: `User`

```typescript
const res = await displayvideo.users.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video-user-management`

---

### `displayvideo.floodlightGroups.get`

**GET** `v4/floodlightGroups/{+floodlightGroupId}`

Gets a Floodlight group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `floodlightGroupId` | `string` | path | Yes | Required. The ID of the Floodlight group to fetch. |
| `partnerId` | `string` | query | No | Required. The partner context by which the Floodlight group is being accessed. |

**Response**: `FloodlightGroup`

```typescript
const res = await displayvideo.floodlightGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.floodlightGroups.patch`

**PATCH** `v4/floodlightGroups/{floodlightGroupId}`

Updates an existing Floodlight group. Returns the updated Floodlight group if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `floodlightGroupId` | `string` | path | Yes | Output only. The unique ID of the Floodlight group. Assigned by the system. |
| `partnerId` | `string` | query | No | Required. The partner context by which the Floodlight group is being accessed. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `FloodlightGroup`

**Response**: `FloodlightGroup`

```typescript
const res = await displayvideo.floodlightGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.floodlightGroups.floodlightActivities.list`

**GET** `v4/floodlightGroups/{+floodlightGroupId}/floodlightActivities`

Lists Floodlight activities in a Floodlight group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `floodlightGroupId` | `string` | path | Yes | Required. The ID of the parent Floodlight group to which the requested Floodlight activities belong. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the list. Acceptable values are: * `displayName` (default) * `floodlightActivityId` ... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error cod... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of next_page_t... |
| `partnerId` | `string` | query | No | Required. The ID of the partner through which the Floodlight activities are being accessed. |

**Response**: `ListFloodlightActivitiesResponse`

```typescript
const res = await displayvideo.floodlightActivities.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.floodlightGroups.floodlightActivities.get`

**GET** `v4/floodlightGroups/{+floodlightGroupId}/floodlightActivities/{+floodlightActivityId}`

Gets a Floodlight activity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `floodlightGroupId` | `string` | path | Yes | Required. The ID of the parent Floodlight group to which the requested Floodlight activity belongs. |
| `floodlightActivityId` | `string` | path | Yes | Required. The ID of the Floodlight activity to fetch. |
| `partnerId` | `string` | query | No | Required. The ID of the partner through which the Floodlight activity is being accessed. |

**Response**: `FloodlightActivity`

```typescript
const res = await displayvideo.floodlightActivities.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.sdfuploadtasks.operations.get`

**GET** `v4/{+name}`

Gets the latest state of an asynchronous SDF download task operation. Clients should poll this method at intervals of 30 seconds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await displayvideo.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/doubleclickbidmanager`

---

### `displayvideo.advertisers.editAssignedTargetingOptions`

**POST** `v4/advertisers/{+advertiserId}:editAssignedTargetingOptions`

Edits targeting options under a single advertiser. The operation will delete the assigned targeting options provided in BulkEditAdvertiserAssignedTargetingOptionsRequest.delete_requests and then create the assigned targeting options provided in BulkEditAdvertiserAssignedTargetingOptionsRequest.create_requests .

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser. |

**Request body**: `BulkEditAdvertiserAssignedTargetingOptionsRequest`

**Response**: `BulkEditAdvertiserAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.advertisers.editAssignedTargetingOptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.patch`

**PATCH** `v4/advertisers/{+advertiserId}`

Updates an existing advertiser. Returns the updated advertiser if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Output only. The unique ID of the advertiser. Assigned by the system. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `Advertiser`

**Response**: `Advertiser`

```typescript
const res = await displayvideo.advertisers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.audit`

**GET** `v4/advertisers/{+advertiserId}:audit`

Audits an advertiser. Returns the counts of used entities per resource type under the advertiser provided. Used entities count towards their respective resource limit. See https://support.google.com/displayvideo/answer/6071450.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser to audit. |
| `readMask` | `string` | query | No | Optional. The specific fields to return. If no mask is specified, all fields in the response proto will be filled. Va... |

**Response**: `AuditAdvertiserResponse`

```typescript
const res = await displayvideo.advertisers.audit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.create`

**POST** `v4/advertisers`

Creates a new advertiser. Returns the newly created advertiser if successful. **This method regularly experiences high latency.** We recommend [increasing your default timeout](/display-video/api/guides/best-practices/timeouts#client_library_timeout) to avoid errors.

**Request body**: `Advertiser`

**Response**: `Advertiser`

```typescript
const res = await displayvideo.advertisers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.list`

**GET** `v4/advertisers`

Lists advertisers that are accessible to the current user. The order is defined by the order_by parameter. A single partner_id is required. Cross-partner listing is not supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Allows filtering by advertiser fields. Supported syntax: * Filter expressions are made up of one or more restrictions... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `advertiserId` (default) * `displayName` * `entityStatus` *... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | Required. The ID of the partner that the fetched advertisers should all belong to. The system only supports listing a... |

**Response**: `ListAdvertisersResponse`

```typescript
const res = await displayvideo.advertisers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.delete`

**DELETE** `v4/advertisers/{+advertiserId}`

Deletes an advertiser. Deleting an advertiser will delete all of its child resources, for example, campaigns, insertion orders and line items. A deleted advertiser cannot be recovered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser we need to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.advertisers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.listAssignedTargetingOptions`

**GET** `v4/advertisers/{+advertiserId}:listAssignedTargetingOptions`

Lists assigned targeting options of an advertiser across targeting types.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the line item belongs to. |
| `filter` | `string` | query | No | Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `targetingType` (default) The default sorting order is asce... |
| `pageSize` | `integer` | query | No | Requested page size. The size must be an integer between `1` and `5000`. If unspecified, the default is '5000'. Retur... |
| `pageToken` | `string` | query | No | A token that lets the client fetch the next page of results. Typically, this is the value of next_page_token returned... |

**Response**: `BulkListAdvertiserAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.advertisers.listAssignedTargetingOptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.get`

**GET** `v4/advertisers/{+advertiserId}`

Gets an advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser to fetch. |

**Response**: `Advertiser`

```typescript
const res = await displayvideo.advertisers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adGroupAds.list`

**GET** `v4/advertisers/{+advertiserId}/adGroupAds`

Lists ad group ads.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the ads belong to. |
| `filter` | `string` | query | No | Optional. Allows filtering by ad group ad fields. Supported syntax: * Filter expressions are made up of one or more r... |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the list. Acceptable values are: * `displayName` (default) * `entityStatus` The defa... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Must be between `1` and `100`. If unspecified will default to `100`. Returns error cod... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of next_page_t... |

**Response**: `ListAdGroupAdsResponse`

```typescript
const res = await displayvideo.adGroupAds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adGroupAds.get`

**GET** `v4/advertisers/{+advertiserId}/adGroupAds/{+adGroupAdId}`

Gets an ad group ad.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this ad group ad belongs to. |
| `adGroupAdId` | `string` | path | Yes | Required. The ID of the ad to fetch. |

**Response**: `AdGroupAd`

```typescript
const res = await displayvideo.adGroupAds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.locationLists.create`

**POST** `v4/advertisers/{+advertiserId}/locationLists`

Creates a new location list. Returns the newly created location list if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the location list belongs. |

**Request body**: `LocationList`

**Response**: `LocationList`

```typescript
const res = await displayvideo.locationLists.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.locationLists.list`

**GET** `v4/advertisers/{+advertiserId}/locationLists`

Lists location lists based on a given advertiser id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the fetched location lists belong. |
| `filter` | `string` | query | No | Allows filtering by location list fields. Supported syntax: * Filter expressions are made up of one or more restricti... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `locationListId` (default) * `displayName` The default sort... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. Defaults to `100` if not set. Returns error code `INVALID_ARGUMEN... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListLocationListsResponse`

```typescript
const res = await displayvideo.locationLists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.locationLists.patch`

**PATCH** `v4/advertisers/{+advertiserId}/locationLists/{locationListId}`

Updates a location list. Returns the updated location list if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the location lists belongs. |
| `locationListId` | `string` | path | Yes | Output only. The unique ID of the location list. Assigned by the system. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `LocationList`

**Response**: `LocationList`

```typescript
const res = await displayvideo.locationLists.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.locationLists.get`

**GET** `v4/advertisers/{+advertiserId}/locationLists/{+locationListId}`

Gets a location list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the fetched location list belongs. |
| `locationListId` | `string` | path | Yes | Required. The ID of the location list to fetch. |

**Response**: `LocationList`

```typescript
const res = await displayvideo.locationLists.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.locationLists.assignedLocations.delete`

**DELETE** `v4/advertisers/{advertiserId}/locationLists/{locationListId}/assignedLocations/{+assignedLocationId}`

Deletes the assignment between a location and a location list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the location list belongs. |
| `locationListId` | `string` | path | Yes | Required. The ID of the location list to which this assignment is assigned. |
| `assignedLocationId` | `string` | path | Yes | Required. The ID of the assigned location to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.assignedLocations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.locationLists.assignedLocations.create`

**POST** `v4/advertisers/{advertiserId}/locationLists/{locationListId}/assignedLocations`

Creates an assignment between a location and a location list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the location list belongs. |
| `locationListId` | `string` | path | Yes | Required. The ID of the location list for which the assignment will be created. |

**Request body**: `AssignedLocation`

**Response**: `AssignedLocation`

```typescript
const res = await displayvideo.assignedLocations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.locationLists.assignedLocations.list`

**GET** `v4/advertisers/{advertiserId}/locationLists/{locationListId}/assignedLocations`

Lists locations assigned to a location list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the location list belongs. |
| `locationListId` | `string` | path | Yes | Required. The ID of the location list to which these assignments are assigned. |
| `filter` | `string` | query | No | Allows filtering by location list assignment fields. Supported syntax: * Filter expressions are made up of one or mor... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `assignedLocationId` (default) The default sorting order is... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListAssignedLocationsResponse`

```typescript
const res = await displayvideo.assignedLocations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.locationLists.assignedLocations.bulkEdit`

**POST** `v4/advertisers/{advertiserId}/locationLists/{+locationListId}/assignedLocations:bulkEdit`

Bulk edits multiple assignments between locations and a single location list. The operation will delete the assigned locations provided in deletedAssignedLocations and then create the assigned locations provided in createdAssignedLocations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the location list belongs. |
| `locationListId` | `string` | path | Yes | Required. The ID of the location list to which these assignments are assigned. |

**Request body**: `BulkEditAssignedLocationsRequest`

**Response**: `BulkEditAssignedLocationsResponse`

```typescript
const res = await displayvideo.assignedLocations.bulkEdit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adAssets.upload`

**POST** `v4/advertisers/{+advertiserId}/adAssets:uploadAdAsset`

Uploads and creates an ad asset. Returns the ID of the newly-created ad asset if successful. Only supports the uploading of assets with the AdAssetType `AD_ASSET_TYPE_IMAGE`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this ad asset belongs to. |

**Request body**: `UploadAdAssetRequest`

**Response**: `UploadAdAssetResponse`

```typescript
const res = await displayvideo.adAssets.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adAssets.create`

**POST** `v4/advertisers/{+advertiserId}/adAssets`

Creates an ad asset. Returns the newly-created ad asset if successful. Only supports the creation of assets of AdAssetType `AD_ASSET_TYPE_YOUTUBE_VIDEO`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this ad asset belongs to. |

**Request body**: `CreateAdAssetRequest`

**Response**: `AdAsset`

```typescript
const res = await displayvideo.adAssets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adAssets.bulkCreate`

**POST** `v4/advertisers/{+advertiserId}/adAssets:bulkCreate`

Creates multiple ad assets in a single request. Returns the newly-created ad assets if successful. Only supports the creation of assets of AdAssetType `AD_ASSET_TYPE_YOUTUBE_VIDEO`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser these ad assets belong to. |

**Request body**: `BulkCreateAdAssetsRequest`

**Response**: `BulkCreateAdAssetsResponse`

```typescript
const res = await displayvideo.adAssets.bulkCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adAssets.list`

**GET** `v4/advertisers/{+advertiserId}/adAssets`

Lists ad assets under an advertiser ID. Only supports the retrieval of assets of AdAssetType `AD_ASSET_TYPE_YOUTUBE_VIDEO`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the ad assets belong to. |
| `filter` | `string` | query | No | Optional. Allows filtering of the results by ad asset fields. Supported syntax: * A restriction has the form of `{fie... |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the list. Acceptable values are: * `entityStatus` * `youtubeVideoAsset.youtubeVideoI... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Must be between `1` and `5000`. If unspecified will default to `5000`. Returns error c... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of next_page_t... |

**Response**: `ListAdAssetsResponse`

```typescript
const res = await displayvideo.adAssets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adAssets.get`

**GET** `v4/advertisers/{+advertiserId}/adAssets/{+adAssetId}`

Gets an ad asset. Only supports the retrieval of assets of AdAssetType `AD_ASSET_TYPE_YOUTUBE_VIDEO`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this ad asset belongs to. |
| `adAssetId` | `string` | path | Yes | Required. The ID of the ad asset to fetch. Only supports assets of AdAssetType `AD_ASSET_TYPE_YOUTUBE_VIDEO` |

**Response**: `AdAsset`

```typescript
const res = await displayvideo.adAssets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.bulkListAssignedTargetingOptions`

**GET** `v4/advertisers/{+advertiserId}/lineItems:bulkListAssignedTargetingOptions`

Lists assigned targeting options for multiple line items across targeting types.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the line items belongs to. |
| `filter` | `string` | query | No | Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `lineItemIds` | `string` | query | No | Required. The IDs of the line items to list assigned targeting options for. |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `lineItemId` (default) * `assignedTargetingOption.targeting... |
| `pageSize` | `integer` | query | No | Requested page size. The size must be an integer between `1` and `5000`. If unspecified, the default is `5000`. Retur... |
| `pageToken` | `string` | query | No | A token that lets the client fetch the next page of results. Typically, this is the value of next_page_token returned... |

**Response**: `BulkListAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.lineItems.bulkListAssignedTargetingOptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.generateDefault`

**POST** `v4/advertisers/{+advertiserId}/lineItems:generateDefault`

Creates a new line item with settings (including targeting) inherited from the insertion order and an `ENTITY_STATUS_DRAFT` entity_status. Returns the newly created line item if successful. There are default values based on the three fields: * The insertion order's insertion_order_type * The insertion order's automation_type * The given line_item_type YouTube & Partners line items cannot be created or updated using the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this line item belongs to. |

**Request body**: `GenerateDefaultLineItemRequest`

**Response**: `LineItem`

```typescript
const res = await displayvideo.lineItems.generateDefault({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.duplicate`

**POST** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}:duplicate`

Duplicates a line item. Returns the ID of the created line item if successful. YouTube & Partners line items cannot be created or updated using the API. **This method regularly experiences high latency.** We recommend [increasing your default timeout](/display-video/api/guides/best-practices/timeouts#client_library_timeout) to avoid errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this line item belongs to. |
| `lineItemId` | `string` | path | Yes | Required. The ID of the line item to duplicate. |

**Request body**: `DuplicateLineItemRequest`

**Response**: `DuplicateLineItemResponse`

```typescript
const res = await displayvideo.lineItems.duplicate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.create`

**POST** `v4/advertisers/{+advertiserId}/lineItems`

Creates a new line item. Returns the newly created line item if successful. YouTube & Partners line items cannot be created or updated using the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Output only. The unique ID of the advertiser the line item belongs to. |

**Request body**: `LineItem`

**Response**: `LineItem`

```typescript
const res = await displayvideo.lineItems.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.get`

**GET** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}`

Gets a line item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this line item belongs to. |
| `lineItemId` | `string` | path | Yes | Required. The ID of the line item to fetch. |

**Response**: `LineItem`

```typescript
const res = await displayvideo.lineItems.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.bulkUpdate`

**POST** `v4/advertisers/{+advertiserId}/lineItems:bulkUpdate`

Updates multiple line items. Requests to this endpoint cannot be made concurrently with the following requests updating the same line item: * BulkEditAssignedTargetingOptions * UpdateLineItem * assignedTargetingOptions.create * assignedTargetingOptions.delete YouTube & Partners line items cannot be created or updated using the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this line item belongs to. |

**Request body**: `BulkUpdateLineItemsRequest`

**Response**: `BulkUpdateLineItemsResponse`

```typescript
const res = await displayvideo.lineItems.bulkUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.delete`

**DELETE** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}`

Deletes a line item. Returns error code `NOT_FOUND` if the line item does not exist. The line item should be archived first, i.e. set entity_status to `ENTITY_STATUS_ARCHIVED`, to be able to delete it. YouTube & Partners line items cannot be created or updated using the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser this line item belongs to. |
| `lineItemId` | `string` | path | Yes | The ID of the line item to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.lineItems.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.bulkEditAssignedTargetingOptions`

**POST** `v4/advertisers/{+advertiserId}/lineItems:bulkEditAssignedTargetingOptions`

Bulk edits targeting options under multiple line items. The operation will delete the assigned targeting options provided in BulkEditAssignedTargetingOptionsRequest.delete_requests and then create the assigned targeting options provided in BulkEditAssignedTargetingOptionsRequest.create_requests. Requests to this endpoint cannot be made concurrently with the following requests updating the same line item: * lineItems.bulkUpdate * lineItems.patch * assignedTargetingOptions.create * assignedTargetingOptions.delete YouTube & Partners line items cannot be created or updated using the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the line items belong to. |

**Request body**: `BulkEditAssignedTargetingOptionsRequest`

**Response**: `BulkEditAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.lineItems.bulkEditAssignedTargetingOptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.list`

**GET** `v4/advertisers/{+advertiserId}/lineItems`

Lists line items in an advertiser. The order is defined by the order_by parameter. If a filter by entity_status is not specified, line items with `ENTITY_STATUS_ARCHIVED` will not be included in the results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser to list line items for. |
| `filter` | `string` | query | No | Allows filtering by line item fields. Supported syntax: * Filter expressions are made up of one or more restrictions.... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `displayName` (default) * `entityStatus` * `updateTime` The... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListLineItemsResponse`

```typescript
const res = await displayvideo.lineItems.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.patch`

**PATCH** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}`

Updates an existing line item. Returns the updated line item if successful. Requests to this endpoint cannot be made concurrently with the following requests updating the same line item: * BulkEditAssignedTargetingOptions * BulkUpdateLineItems * assignedTargetingOptions.create * assignedTargetingOptions.delete YouTube & Partners line items cannot be created or updated using the API. **This method regularly experiences high latency.** We recommend [increasing your default timeout](/display-video/api/guides/best-practices/timeouts#client_library_timeout) to avoid errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Output only. The unique ID of the advertiser the line item belongs to. |
| `lineItemId` | `string` | path | Yes | Output only. The unique ID of the line item. Assigned by the system. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `LineItem`

**Response**: `LineItem`

```typescript
const res = await displayvideo.lineItems.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.youtubeAssetTypes.youtubeAssetAssociations.delete`

**DELETE** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations/{+youtubeAssetAssociationId}`

Deletes an existing association between the identified resource and a YouTube asset. *Warning:* This method is only available to an informed subset of users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser that the linked entity belongs to. |
| `lineItemId` | `string` | path | Yes | The ID of a line item. |
| `youtubeAssetType` | `string` | path | Yes | Required. The type of YouTube asset associated with the resource. |
| `youtubeAssetAssociationId` | `string` | path | Yes | Required. The ID of the YouTube asset in the association. For `YOUTUBE_ASSET_TYPE_LOCATION` and `YOUTUBE_ASSET_TYPE_A... |
| `linkedEntity.adGroupId` | `string` | query | No | The ID of an ad group. |

**Response**: `Empty`

```typescript
const res = await displayvideo.youtubeAssetAssociations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.youtubeAssetTypes.youtubeAssetAssociations.create`

**POST** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations`

Creates a new association between the identified resource and a YouTube asset. Returns the newly-created association. *Warning:* This method is only available to an informed subset of users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser that the linked entity belongs to. |
| `lineItemId` | `string` | path | Yes | The ID of a line item. |
| `youtubeAssetType` | `string` | path | Yes | Required. The type of YouTube asset associated with the resource. |
| `linkedEntity.adGroupId` | `string` | query | No | The ID of an ad group. |

**Request body**: `YoutubeAssetAssociation`

**Response**: `YoutubeAssetAssociation`

```typescript
const res = await displayvideo.youtubeAssetAssociations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.youtubeAssetTypes.youtubeAssetAssociations.list`

**GET** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations`

Lists the YouTube asset associations linked to the given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser that the linked entity belongs to. |
| `lineItemId` | `string` | path | Yes | The ID of a line item. |
| `youtubeAssetType` | `string` | path | Yes | Required. The type of YouTube asset being associated with the resource. |
| `linkedEntity.adGroupId` | `string` | query | No | The ID of an ad group. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the list. The only acceptable values are: * `linkedYoutubeAsset.locationAssetFilter.... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Must be between `1` and `10000`. If unspecified will default to `100`. Returns error c... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of next_page_t... |

**Response**: `ListYoutubeAssetAssociationsResponse`

```typescript
const res = await displayvideo.youtubeAssetAssociations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.targetingTypes.assignedTargetingOptions.delete`

**DELETE** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}`

Deletes an assigned targeting option from a line item. Requests to this endpoint cannot be made concurrently with the following requests updating the same line item: * lineItems.bulkEditAssignedTargetingOptions * lineItems.bulkUpdate * lineItems.patch * CreateLineItemAssignedTargetingOption YouTube & Partners line items cannot be created or updated using the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the line item belongs to. |
| `lineItemId` | `string` | path | Yes | Required. The ID of the line item the assigned targeting option belongs to. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types include: * `TARGETING_TYPE... |
| `assignedTargetingOptionId` | `string` | path | Yes | Required. The ID of the assigned targeting option to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.assignedTargetingOptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.targetingTypes.assignedTargetingOptions.get`

**GET** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}`

Gets a single targeting option assigned to a line item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the line item belongs to. |
| `lineItemId` | `string` | path | Yes | Required. The ID of the line item the assigned targeting option belongs to. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types include: * `TARGETING_TYPE... |
| `assignedTargetingOptionId` | `string` | path | Yes | Required. An identifier unique to the targeting type in this line item that identifies the assigned targeting option ... |

**Response**: `AssignedTargetingOption`

```typescript
const res = await displayvideo.assignedTargetingOptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.targetingTypes.assignedTargetingOptions.create`

**POST** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions`

Assigns a targeting option to a line item. Returns the assigned targeting option if successful. Requests to this endpoint cannot be made concurrently with the following requests updating the same line item: * lineItems.bulkEditAssignedTargetingOptions * lineItems.bulkUpdate * lineItems.patch * DeleteLineItemAssignedTargetingOption YouTube & Partners line items cannot be created or updated using the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the line item belongs to. |
| `lineItemId` | `string` | path | Yes | Required. The ID of the line item the assigned targeting option will belong to. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types include: * `TARGETING_TYPE... |

**Request body**: `AssignedTargetingOption`

**Response**: `AssignedTargetingOption`

```typescript
const res = await displayvideo.assignedTargetingOptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.lineItems.targetingTypes.assignedTargetingOptions.list`

**GET** `v4/advertisers/{+advertiserId}/lineItems/{+lineItemId}/targetingTypes/{+targetingType}/assignedTargetingOptions`

Lists the targeting options assigned to a line item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the line item belongs to. |
| `lineItemId` | `string` | path | Yes | Required. The ID of the line item to list assigned targeting options for. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of assigned targeting options to list. Supported targeting types include: * `TARGETING_... |
| `filter` | `string` | query | No | Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `assignedTargetingOptionId` (default) The default sorting o... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `5000`. If unspecified will default to `100`. Returns error code `INVALI... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListLineItemAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.assignedTargetingOptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.targetingTypes.assignedTargetingOptions.get`

**GET** `v4/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}`

Gets a single targeting option assigned to an advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types: * `TARGETING_TYPE_CHANNEL... |
| `assignedTargetingOptionId` | `string` | path | Yes | Required. An identifier unique to the targeting type in this advertiser that identifies the assigned targeting option... |

**Response**: `AssignedTargetingOption`

```typescript
const res = await displayvideo.assignedTargetingOptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.targetingTypes.assignedTargetingOptions.create`

**POST** `v4/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions`

Assigns a targeting option to an advertiser. Returns the assigned targeting option if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types: * `TARGETING_TYPE_CHANNEL... |

**Request body**: `AssignedTargetingOption`

**Response**: `AssignedTargetingOption`

```typescript
const res = await displayvideo.assignedTargetingOptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.targetingTypes.assignedTargetingOptions.list`

**GET** `v4/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions`

Lists the targeting options assigned to an advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of assigned targeting options to list. Supported targeting types: * `TARGETING_TYPE_CHA... |
| `filter` | `string` | query | No | Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `assignedTargetingOptionId` (default) The default sorting o... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `5000`. If unspecified will default to `100`. Returns error code `INVALI... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListAdvertiserAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.assignedTargetingOptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.targetingTypes.assignedTargetingOptions.delete`

**DELETE** `v4/advertisers/{+advertiserId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}`

Deletes an assigned targeting option from an advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types: * `TARGETING_TYPE_CHANNEL... |
| `assignedTargetingOptionId` | `string` | path | Yes | Required. The ID of the assigned targeting option to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.assignedTargetingOptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.invoices.lookupInvoiceCurrency`

**GET** `v4/advertisers/{+advertiserId}/invoices:lookupInvoiceCurrency`

Retrieves the invoice currency used by an advertiser in a given month.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser to lookup currency for. |
| `invoiceMonth` | `string` | query | No | Month for which the currency is needed. If not set, the request will return existing currency settings for the advert... |

**Response**: `LookupInvoiceCurrencyResponse`

```typescript
const res = await displayvideo.invoices.lookupInvoiceCurrency({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/display-video-mediaplanning`

---

### `displayvideo.advertisers.invoices.list`

**GET** `v4/advertisers/{+advertiserId}/invoices`

Lists invoices posted for an advertiser in a given month. Invoices generated by billing profiles with a "Partner" invoice level are not retrievable through this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser to list invoices for. |
| `issueMonth` | `string` | query | No | The month to list the invoices for. If not set, the request will retrieve invoices for the previous month. Must be in... |
| `loiSapinInvoiceType` | `string` | query | No | Select type of invoice to retrieve for Loi Sapin advertisers. Only applicable to Loi Sapin advertisers. Will be ignor... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListInvoicesResponse`

```typescript
const res = await displayvideo.invoices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/display-video-mediaplanning`

---

### `displayvideo.advertisers.assets.upload`

**POST** `v4/advertisers/{+advertiserId}/assets`

Uploads an asset. Returns the ID of the newly uploaded asset if successful. The asset file size should be no more than 10 MB for images, 200 MB for ZIP files, and 1 GB for videos. Must be used within the [multipart media upload process](/display-video/api/guides/how-tos/upload#multipart). Examples using provided client libraries can be found in our [Creating Creatives guide](/display-video/api/guides/creating-creatives/overview#upload_an_asset).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this asset belongs to. |

**Request body**: `CreateAssetRequest`

**Response**: `CreateAssetResponse`

```typescript
const res = await displayvideo.assets.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.channels.create`

**POST** `v4/advertisers/{+advertiserId}/channels`

Creates a new channel. Returns the newly created channel if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser that owns the created channel. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the created channel. |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await displayvideo.channels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.channels.list`

**GET** `v4/advertisers/{+advertiserId}/channels`

Lists channels for a partner or advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser that owns the channels. |
| `filter` | `string` | query | No | Allows filtering by channel fields. Supported syntax: * Filter expressions for channel can only contain at most one r... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `displayName` (default) * `channelId` The default sorting o... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the partner that owns the channels. |

**Response**: `ListChannelsResponse`

```typescript
const res = await displayvideo.channels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.channels.patch`

**PATCH** `v4/advertisers/{+advertiserId}/channels/{channelId}`

Updates a channel. Returns the updated channel if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser that owns the created channel. |
| `channelId` | `string` | path | Yes | Output only. The unique ID of the channel. Assigned by the system. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the created channel. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `Channel`

**Response**: `Channel`

```typescript
const res = await displayvideo.channels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.channels.get`

**GET** `v4/advertisers/{+advertiserId}/channels/{+channelId}`

Gets a channel for a partner or advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser that owns the fetched channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the channel to fetch. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the fetched channel. |

**Response**: `Channel`

```typescript
const res = await displayvideo.channels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.channels.sites.create`

**POST** `v4/advertisers/{advertiserId}/channels/{+channelId}/sites`

Creates a site in a channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser that owns the parent channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the parent channel in which the site will be created. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent channel. |

**Request body**: `Site`

**Response**: `Site`

```typescript
const res = await displayvideo.sites.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.channels.sites.bulkEdit`

**POST** `v4/advertisers/{advertiserId}/channels/{+channelId}/sites:bulkEdit`

Bulk edits sites under a single channel. The operation will delete the sites provided in BulkEditSitesRequest.deleted_sites and then create the sites provided in BulkEditSitesRequest.created_sites.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser that owns the parent channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the parent channel to which the sites belong. |

**Request body**: `BulkEditSitesRequest`

**Response**: `BulkEditSitesResponse`

```typescript
const res = await displayvideo.sites.bulkEdit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.channels.sites.delete`

**DELETE** `v4/advertisers/{advertiserId}/channels/{+channelId}/sites/{+urlOrAppId}`

Deletes a site from a channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser that owns the parent channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the parent channel to which the site belongs. |
| `urlOrAppId` | `string` | path | Yes | Required. The URL or app ID of the site to delete. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent channel. |

**Response**: `Empty`

```typescript
const res = await displayvideo.sites.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.channels.sites.replace`

**POST** `v4/advertisers/{advertiserId}/channels/{+channelId}/sites:replace`

Replaces all of the sites under a single channel. The operation will replace the sites under a channel with the sites provided in ReplaceSitesRequest.new_sites. **This method regularly experiences high latency.** We recommend [increasing your default timeout](/display-video/api/guides/best-practices/timeouts#client_library_timeout) to avoid errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser that owns the parent channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the parent channel whose sites will be replaced. |

**Request body**: `ReplaceSitesRequest`

**Response**: `ReplaceSitesResponse`

```typescript
const res = await displayvideo.sites.replace({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.channels.sites.list`

**GET** `v4/advertisers/{+advertiserId}/channels/{+channelId}/sites`

Lists sites in a channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser that owns the parent channel. |
| `channelId` | `string` | path | Yes | Required. The ID of the parent channel to which the requested sites belong. |
| `filter` | `string` | query | No | Allows filtering by site fields. Supported syntax: * Filter expressions for site retrieval can only contain at most o... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `urlOrAppId` (default) The default sorting order is ascendi... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `10000`. If unspecified will default to `100`. Returns error code `INVAL... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent channel. |

**Response**: `ListSitesResponse`

```typescript
const res = await displayvideo.sites.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.insertionOrders.get`

**GET** `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}`

Gets an insertion order. Returns error code `NOT_FOUND` if the insertion order does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this insertion order belongs to. |
| `insertionOrderId` | `string` | path | Yes | Required. The ID of the insertion order to fetch. |

**Response**: `InsertionOrder`

```typescript
const res = await displayvideo.insertionOrders.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.insertionOrders.create`

**POST** `v4/advertisers/{+advertiserId}/insertionOrders`

Creates a new insertion order. Returns the newly created insertion order if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Output only. The unique ID of the advertiser the insertion order belongs to. |

**Request body**: `InsertionOrder`

**Response**: `InsertionOrder`

```typescript
const res = await displayvideo.insertionOrders.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.insertionOrders.delete`

**DELETE** `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}`

Deletes an insertion order. Returns error code `NOT_FOUND` if the insertion order does not exist. The insertion order should be archived first, i.e. set entity_status to `ENTITY_STATUS_ARCHIVED`, to be able to delete it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser this insertion order belongs to. |
| `insertionOrderId` | `string` | path | Yes | The ID of the insertion order to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.insertionOrders.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.insertionOrders.listAssignedTargetingOptions`

**GET** `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}:listAssignedTargetingOptions`

Lists assigned targeting options of an insertion order across targeting types.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the insertion order belongs to. |
| `insertionOrderId` | `string` | path | Yes | Required. The ID of the insertion order to list assigned targeting options for. |
| `filter` | `string` | query | No | Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `targetingType` (default) The default sorting order is asce... |
| `pageSize` | `integer` | query | No | Requested page size. The size must be an integer between `1` and `5000`. If unspecified, the default is `5000`. Retur... |
| `pageToken` | `string` | query | No | A token that lets the client fetch the next page of results. Typically, this is the value of next_page_token returned... |

**Response**: `BulkListInsertionOrderAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.insertionOrders.listAssignedTargetingOptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.insertionOrders.list`

**GET** `v4/advertisers/{+advertiserId}/insertionOrders`

Lists insertion orders in an advertiser. The order is defined by the order_by parameter. If a filter by entity_status is not specified, insertion orders with `ENTITY_STATUS_ARCHIVED` will not be included in the results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser to list insertion orders for. |
| `filter` | `string` | query | No | Allows filtering by insertion order fields. Supported syntax: * Filter expressions are made up of one or more restric... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * "displayName" (default) * "entityStatus" * "updateTime" The... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `100`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListInsertionOrdersResponse`

```typescript
const res = await displayvideo.insertionOrders.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.insertionOrders.patch`

**PATCH** `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}`

Updates an existing insertion order. Returns the updated insertion order if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Output only. The unique ID of the advertiser the insertion order belongs to. |
| `insertionOrderId` | `string` | path | Yes | Output only. The unique ID of the insertion order. Assigned by the system. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `InsertionOrder`

**Response**: `InsertionOrder`

```typescript
const res = await displayvideo.insertionOrders.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.insertionOrders.targetingTypes.assignedTargetingOptions.get`

**GET** `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}`

Gets a single targeting option assigned to an insertion order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the insertion order belongs to. |
| `insertionOrderId` | `string` | path | Yes | Required. The ID of the insertion order the assigned targeting option belongs to. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types include: * `TARGETING_TYPE... |
| `assignedTargetingOptionId` | `string` | path | Yes | Required. An identifier unique to the targeting type in this insertion order that identifies the assigned targeting o... |

**Response**: `AssignedTargetingOption`

```typescript
const res = await displayvideo.assignedTargetingOptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.insertionOrders.targetingTypes.assignedTargetingOptions.list`

**GET** `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}/targetingTypes/{+targetingType}/assignedTargetingOptions`

Lists the targeting options assigned to an insertion order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the insertion order belongs to. |
| `insertionOrderId` | `string` | path | Yes | Required. The ID of the insertion order to list assigned targeting options for. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of assigned targeting options to list. Supported targeting types include: * `TARGETING_... |
| `filter` | `string` | query | No | Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `assignedTargetingOptionId` (default) The default sorting o... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `5000`. If unspecified will default to `100`. Returns error code `INVALI... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListInsertionOrderAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.assignedTargetingOptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.insertionOrders.targetingTypes.assignedTargetingOptions.create`

**POST** `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}/targetingTypes/{+targetingType}/assignedTargetingOptions`

Assigns a targeting option to an insertion order. Returns the assigned targeting option if successful. Supported targeting types: * `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_CATEGORY` * `TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_DEVICE_MAKE_MODEL` * `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_GENDER` * `TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` * `TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OPERATING_SYSTEM` * `TARGETING_TYPE_PARENTAL_STATUS` * `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_VIEWABILITY`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the insertion order belongs to. |
| `insertionOrderId` | `string` | path | Yes | Required. The ID of the insertion order the assigned targeting option will belong to. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types: * `TARGETING_TYPE_AGE_RAN... |

**Request body**: `AssignedTargetingOption`

**Response**: `AssignedTargetingOption`

```typescript
const res = await displayvideo.assignedTargetingOptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.insertionOrders.targetingTypes.assignedTargetingOptions.delete`

**DELETE** `v4/advertisers/{+advertiserId}/insertionOrders/{+insertionOrderId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}`

Deletes an assigned targeting option from an insertion order. Supported targeting types: * `TARGETING_TYPE_AGE_RANGE` * `TARGETING_TYPE_BROWSER` * `TARGETING_TYPE_CATEGORY` * `TARGETING_TYPE_CHANNEL` * `TARGETING_TYPE_DEVICE_MAKE_MODEL` * `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION` * `TARGETING_TYPE_ENVIRONMENT` * `TARGETING_TYPE_GENDER` * `TARGETING_TYPE_KEYWORD` * `TARGETING_TYPE_LANGUAGE` * `TARGETING_TYPE_NEGATIVE_KEYWORD_LIST` * `TARGETING_TYPE_OPERATING_SYSTEM` * `TARGETING_TYPE_PARENTAL_STATUS` * `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION` * `TARGETING_TYPE_VIEWABILITY`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the insertion order belongs to. |
| `insertionOrderId` | `string` | path | Yes | Required. The ID of the insertion order the assigned targeting option belongs to. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types: * `TARGETING_TYPE_AGE_RAN... |
| `assignedTargetingOptionId` | `string` | path | Yes | Required. The ID of the assigned targeting option to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.assignedTargetingOptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.campaigns.list`

**GET** `v4/advertisers/{+advertiserId}/campaigns`

Lists campaigns in an advertiser. The order is defined by the order_by parameter. If a filter by entity_status is not specified, campaigns with `ENTITY_STATUS_ARCHIVED` will not be included in the results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser to list campaigns for. |
| `filter` | `string` | query | No | Allows filtering by campaign fields. Supported syntax: * Filter expressions are made up of one or more restrictions. ... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `displayName` (default) * `entityStatus` * `updateTime` The... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListCampaignsResponse`

```typescript
const res = await displayvideo.campaigns.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/display-video-mediaplanning`

---

### `displayvideo.advertisers.campaigns.get`

**GET** `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}`

Gets a campaign.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this campaign belongs to. |
| `campaignId` | `string` | path | Yes | Required. The ID of the campaign to fetch. |

**Response**: `Campaign`

```typescript
const res = await displayvideo.campaigns.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/display-video-mediaplanning`

---

### `displayvideo.advertisers.campaigns.patch`

**PATCH** `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}`

Updates an existing campaign. Returns the updated campaign if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Output only. The unique ID of the advertiser the campaign belongs to. |
| `campaignId` | `string` | path | Yes | Output only. The unique ID of the campaign. Assigned by the system. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `Campaign`

**Response**: `Campaign`

```typescript
const res = await displayvideo.campaigns.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/display-video-mediaplanning`

---

### `displayvideo.advertisers.campaigns.delete`

**DELETE** `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}`

Permanently deletes a campaign. A deleted campaign cannot be recovered. The campaign should be archived first, i.e. set entity_status to `ENTITY_STATUS_ARCHIVED`, to be able to delete it. **This method regularly experiences high latency.** We recommend [increasing your default timeout](/display-video/api/guides/best-practices/timeouts#client_library_timeout) to avoid errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser this campaign belongs to. |
| `campaignId` | `string` | path | Yes | The ID of the campaign we need to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.campaigns.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/display-video-mediaplanning`

---

### `displayvideo.advertisers.campaigns.listAssignedTargetingOptions`

**GET** `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}:listAssignedTargetingOptions`

Lists assigned targeting options of a campaign across targeting types.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the campaign belongs to. |
| `campaignId` | `string` | path | Yes | Required. The ID of the campaign to list assigned targeting options for. |
| `filter` | `string` | query | No | Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `targetingType` (default) The default sorting order is asce... |
| `pageSize` | `integer` | query | No | Requested page size. The size must be an integer between `1` and `5000`. If unspecified, the default is `5000`. Retur... |
| `pageToken` | `string` | query | No | A token that lets the client fetch the next page of results. Typically, this is the value of next_page_token returned... |

**Response**: `BulkListCampaignAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.campaigns.listAssignedTargetingOptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.campaigns.create`

**POST** `v4/advertisers/{+advertiserId}/campaigns`

Creates a new campaign. Returns the newly created campaign if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Output only. The unique ID of the advertiser the campaign belongs to. |

**Request body**: `Campaign`

**Response**: `Campaign`

```typescript
const res = await displayvideo.campaigns.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/display-video-mediaplanning`

---

### `displayvideo.advertisers.campaigns.targetingTypes.assignedTargetingOptions.list`

**GET** `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}/targetingTypes/{+targetingType}/assignedTargetingOptions`

Lists the targeting options assigned to a campaign for a specified targeting type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the campaign belongs to. |
| `campaignId` | `string` | path | Yes | Required. The ID of the campaign to list assigned targeting options for. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of assigned targeting options to list. Supported targeting types: * `TARGETING_TYPE_AGE... |
| `filter` | `string` | query | No | Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `assignedTargetingOptionId` (default) The default sorting o... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `5000`. If unspecified will default to `100`. Returns error code `INVALI... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListCampaignAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.assignedTargetingOptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.campaigns.targetingTypes.assignedTargetingOptions.get`

**GET** `v4/advertisers/{+advertiserId}/campaigns/{+campaignId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}`

Gets a single targeting option assigned to a campaign.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the campaign belongs to. |
| `campaignId` | `string` | path | Yes | Required. The ID of the campaign the assigned targeting option belongs to. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types: * `TARGETING_TYPE_AGE_RAN... |
| `assignedTargetingOptionId` | `string` | path | Yes | Required. An identifier unique to the targeting type in this campaign that identifies the assigned targeting option b... |

**Response**: `AssignedTargetingOption`

```typescript
const res = await displayvideo.assignedTargetingOptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.negativeKeywordLists.delete`

**DELETE** `v4/advertisers/{+advertiserId}/negativeKeywordLists/{+negativeKeywordListId}`

Deletes a negative keyword list given an advertiser ID and a negative keyword list ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the negative keyword list belongs. |
| `negativeKeywordListId` | `string` | path | Yes | Required. The ID of the negative keyword list to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.negativeKeywordLists.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.negativeKeywordLists.list`

**GET** `v4/advertisers/{+advertiserId}/negativeKeywordLists`

Lists negative keyword lists based on a given advertiser id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the fetched negative keyword lists belong. |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. Defaults to `100` if not set. Returns error code `INVALID_ARGUMEN... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListNegativeKeywordListsResponse`

```typescript
const res = await displayvideo.negativeKeywordLists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.negativeKeywordLists.get`

**GET** `v4/advertisers/{+advertiserId}/negativeKeywordLists/{+negativeKeywordListId}`

Gets a negative keyword list given an advertiser ID and a negative keyword list ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the fetched negative keyword list belongs. |
| `negativeKeywordListId` | `string` | path | Yes | Required. The ID of the negative keyword list to fetch. |

**Response**: `NegativeKeywordList`

```typescript
const res = await displayvideo.negativeKeywordLists.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.negativeKeywordLists.patch`

**PATCH** `v4/advertisers/{+advertiserId}/negativeKeywordLists/{negativeKeywordListId}`

Updates a negative keyword list. Returns the updated negative keyword list if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the negative keyword list belongs. |
| `negativeKeywordListId` | `string` | path | Yes | Output only. The unique ID of the negative keyword list. Assigned by the system. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `NegativeKeywordList`

**Response**: `NegativeKeywordList`

```typescript
const res = await displayvideo.negativeKeywordLists.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.negativeKeywordLists.create`

**POST** `v4/advertisers/{+advertiserId}/negativeKeywordLists`

Creates a new negative keyword list. Returns the newly created negative keyword list if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the negative keyword list will belong. |

**Request body**: `NegativeKeywordList`

**Response**: `NegativeKeywordList`

```typescript
const res = await displayvideo.negativeKeywordLists.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.negativeKeywordLists.negativeKeywords.replace`

**POST** `v4/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords:replace`

Replaces all negative keywords in a single negative keyword list. The operation will replace the keywords in a negative keyword list with keywords provided in ReplaceNegativeKeywordsRequest.new_negative_keywords.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the parent negative keyword list belongs. |
| `negativeKeywordListId` | `string` | path | Yes | Required. The ID of the parent negative keyword list to which the negative keywords belong. |

**Request body**: `ReplaceNegativeKeywordsRequest`

**Response**: `ReplaceNegativeKeywordsResponse`

```typescript
const res = await displayvideo.negativeKeywords.replace({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.negativeKeywordLists.negativeKeywords.bulkEdit`

**POST** `v4/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords:bulkEdit`

Bulk edits negative keywords in a single negative keyword list. The operation will delete the negative keywords provided in BulkEditNegativeKeywordsRequest.deleted_negative_keywords and then create the negative keywords provided in BulkEditNegativeKeywordsRequest.created_negative_keywords. This operation is guaranteed to be atomic and will never result in a partial success or partial failure.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the parent negative keyword list belongs. |
| `negativeKeywordListId` | `string` | path | Yes | Required. The ID of the parent negative keyword list to which the negative keywords belong. |

**Request body**: `BulkEditNegativeKeywordsRequest`

**Response**: `BulkEditNegativeKeywordsResponse`

```typescript
const res = await displayvideo.negativeKeywords.bulkEdit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.negativeKeywordLists.negativeKeywords.create`

**POST** `v4/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords`

Creates a negative keyword in a negative keyword list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the parent negative keyword list belongs. |
| `negativeKeywordListId` | `string` | path | Yes | Required. The ID of the parent negative keyword list in which the negative keyword will be created. |

**Request body**: `NegativeKeyword`

**Response**: `NegativeKeyword`

```typescript
const res = await displayvideo.negativeKeywords.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.negativeKeywordLists.negativeKeywords.delete`

**DELETE** `v4/advertisers/{advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords/{+keywordValue}`

Deletes a negative keyword from a negative keyword list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the parent negative keyword list belongs. |
| `negativeKeywordListId` | `string` | path | Yes | Required. The ID of the parent negative keyword list to which the negative keyword belongs. |
| `keywordValue` | `string` | path | Yes | Required. The keyword value of the negative keyword to delete. |

**Response**: `Empty`

```typescript
const res = await displayvideo.negativeKeywords.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.negativeKeywordLists.negativeKeywords.list`

**GET** `v4/advertisers/{+advertiserId}/negativeKeywordLists/{+negativeKeywordListId}/negativeKeywords`

Lists negative keywords in a negative keyword list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the DV360 advertiser to which the parent negative keyword list belongs. |
| `negativeKeywordListId` | `string` | path | Yes | Required. The ID of the parent negative keyword list to which the requested negative keywords belong. |
| `filter` | `string` | query | No | Allows filtering by negative keyword fields. Supported syntax: * Filter expressions for negative keywords can only co... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `keywordValue` (default) The default sorting order is ascen... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `1000`. If unspecified will default to `100`. Returns error code `INVALI... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListNegativeKeywordsResponse`

```typescript
const res = await displayvideo.negativeKeywords.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.creatives.get`

**GET** `v4/advertisers/{+advertiserId}/creatives/{+creativeId}`

Gets a creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this creative belongs to. |
| `creativeId` | `string` | path | Yes | Required. The ID of the creative to fetch. |

**Response**: `Creative`

```typescript
const res = await displayvideo.creatives.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.creatives.create`

**POST** `v4/advertisers/{+advertiserId}/creatives`

Creates a new creative. Returns the newly created creative if successful. A ["Standard" user role](//support.google.com/displayvideo/answer/2723011) or greater for the parent advertiser or partner is required to make this request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Output only. The unique ID of the advertiser the creative belongs to. |

**Request body**: `Creative`

**Response**: `Creative`

```typescript
const res = await displayvideo.creatives.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.creatives.patch`

**PATCH** `v4/advertisers/{+advertiserId}/creatives/{+creativeId}`

Updates an existing creative. Returns the updated creative if successful. A ["Standard" user role](//support.google.com/displayvideo/answer/2723011) or greater for the parent advertiser or partner is required to make this request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Output only. The unique ID of the advertiser the creative belongs to. |
| `creativeId` | `string` | path | Yes | Output only. The unique ID of the creative. Assigned by the system. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `Creative`

**Response**: `Creative`

```typescript
const res = await displayvideo.creatives.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.creatives.delete`

**DELETE** `v4/advertisers/{+advertiserId}/creatives/{+creativeId}`

Deletes a creative. Returns error code `NOT_FOUND` if the creative does not exist. The creative should be archived first, i.e. set entity_status to `ENTITY_STATUS_ARCHIVED`, before it can be deleted. A ["Standard" user role](//support.google.com/displayvideo/answer/2723011) or greater for the parent advertiser or partner is required to make this request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | The ID of the advertiser this creative belongs to. |
| `creativeId` | `string` | path | Yes | The ID of the creative to be deleted. |

**Response**: `Empty`

```typescript
const res = await displayvideo.creatives.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.creatives.list`

**GET** `v4/advertisers/{+advertiserId}/creatives`

Lists creatives in an advertiser. The order is defined by the order_by parameter. If a filter by entity_status is not specified, creatives with `ENTITY_STATUS_ARCHIVED` will not be included in the results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser to list creatives for. |
| `filter` | `string` | query | No | Allows filtering by creative fields. Supported syntax: * Filter expressions are made up of one or more restrictions. ... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `creativeId` (default) * `createTime` * `mediaDuration` * `... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListCreativesResponse`

```typescript
const res = await displayvideo.creatives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adGroups.get`

**GET** `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}`

Gets an ad group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser this ad group belongs to. |
| `adGroupId` | `string` | path | Yes | Required. The ID of the ad group to fetch. |

**Response**: `AdGroup`

```typescript
const res = await displayvideo.adGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adGroups.bulkListAssignedTargetingOptions`

**GET** `v4/advertisers/{+advertiserId}/adGroups:bulkListAssignedTargetingOptions`

Lists assigned targeting options for multiple ad groups across targeting types. Inherited assigned targeting options are not included.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the line items belongs to. |
| `adGroupIds` | `string` | query | No | Required. The IDs of the ad groups to list assigned targeting options for. |
| `filter` | `string` | query | No | Optional. Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of... |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the list. Acceptable values are: * `adGroupId` (default) * `assignedTargetingOption.... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The size must be an integer between `1` and `5000`. If unspecified, the default is `50... |
| `pageToken` | `string` | query | No | Optional. A token that lets the client fetch the next page of results. Typically, this is the value of next_page_toke... |

**Response**: `BulkListAdGroupAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.adGroups.bulkListAssignedTargetingOptions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adGroups.list`

**GET** `v4/advertisers/{+advertiserId}/adGroups`

Lists ad groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the ad groups belongs to. |
| `filter` | `string` | query | No | Optional. Allows filtering by custom ad group fields. Supported syntax: * Filter expressions are made up of one or mo... |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the list. Acceptable values are: * `displayName` (default) * `entityStatus` The defa... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error cod... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of next_page_t... |

**Response**: `ListAdGroupsResponse`

```typescript
const res = await displayvideo.adGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adGroups.youtubeAssetTypes.youtubeAssetAssociations.list`

**GET** `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations`

Lists the YouTube asset associations linked to the given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser that the linked entity belongs to. |
| `adGroupId` | `string` | path | Yes | The ID of an ad group. |
| `youtubeAssetType` | `string` | path | Yes | Required. The type of YouTube asset being associated with the resource. |
| `linkedEntity.lineItemId` | `string` | query | No | The ID of a line item. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the list. The only acceptable values are: * `linkedYoutubeAsset.locationAssetFilter.... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Must be between `1` and `10000`. If unspecified will default to `100`. Returns error c... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of next_page_t... |

**Response**: `ListYoutubeAssetAssociationsResponse`

```typescript
const res = await displayvideo.youtubeAssetAssociations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adGroups.youtubeAssetTypes.youtubeAssetAssociations.delete`

**DELETE** `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations/{+youtubeAssetAssociationId}`

Deletes an existing association between the identified resource and a YouTube asset. *Warning:* This method is only available to an informed subset of users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser that the linked entity belongs to. |
| `adGroupId` | `string` | path | Yes | The ID of an ad group. |
| `youtubeAssetType` | `string` | path | Yes | Required. The type of YouTube asset associated with the resource. |
| `youtubeAssetAssociationId` | `string` | path | Yes | Required. The ID of the YouTube asset in the association. For `YOUTUBE_ASSET_TYPE_LOCATION` and `YOUTUBE_ASSET_TYPE_A... |
| `linkedEntity.lineItemId` | `string` | query | No | The ID of a line item. |

**Response**: `Empty`

```typescript
const res = await displayvideo.youtubeAssetAssociations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adGroups.youtubeAssetTypes.youtubeAssetAssociations.create`

**POST** `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}/youtubeAssetTypes/{+youtubeAssetType}/youtubeAssetAssociations`

Creates a new association between the identified resource and a YouTube asset. Returns the newly-created association. *Warning:* This method is only available to an informed subset of users.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser that the linked entity belongs to. |
| `adGroupId` | `string` | path | Yes | The ID of an ad group. |
| `youtubeAssetType` | `string` | path | Yes | Required. The type of YouTube asset associated with the resource. |
| `linkedEntity.lineItemId` | `string` | query | No | The ID of a line item. |

**Request body**: `YoutubeAssetAssociation`

**Response**: `YoutubeAssetAssociation`

```typescript
const res = await displayvideo.youtubeAssetAssociations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adGroups.targetingTypes.assignedTargetingOptions.list`

**GET** `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}/targetingTypes/{+targetingType}/assignedTargetingOptions`

Lists the targeting options assigned to an ad group. Inherited assigned targeting options are not included.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the ad group belongs to. |
| `adGroupId` | `string` | path | Yes | Required. The ID of the ad group to list assigned targeting options for. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of assigned targeting options to list. Supported targeting types include: * `TARGETING_... |
| `filter` | `string` | query | No | Optional. Allows filtering by assigned targeting option fields. Supported syntax: * Filter expressions are made up of... |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the list. Acceptable values are: * `assignedTargetingOptionId` (default) The default... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Must be between `1` and `5000`. If unspecified will default to `100`. Returns error co... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. Typically, this is the value of next_page_t... |

**Response**: `ListAdGroupAssignedTargetingOptionsResponse`

```typescript
const res = await displayvideo.assignedTargetingOptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.advertisers.adGroups.targetingTypes.assignedTargetingOptions.get`

**GET** `v4/advertisers/{+advertiserId}/adGroups/{+adGroupId}/targetingTypes/{+targetingType}/assignedTargetingOptions/{+assignedTargetingOptionId}`

Gets a single targeting option assigned to an ad group. Inherited assigned targeting options are not included.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | path | Yes | Required. The ID of the advertiser the ad group belongs to. |
| `adGroupId` | `string` | path | Yes | Required. The ID of the ad group the assigned targeting option belongs to. |
| `targetingType` | `string` | path | Yes | Required. Identifies the type of this assigned targeting option. Supported targeting types include: * `TARGETING_TYPE... |
| `assignedTargetingOptionId` | `string` | path | Yes | Required. An identifier unique to the targeting type in this line item that identifies the assigned targeting option ... |

**Response**: `AssignedTargetingOption`

```typescript
const res = await displayvideo.assignedTargetingOptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.list`

**GET** `v4/customBiddingAlgorithms`

Lists custom bidding algorithms that are accessible to the current user and can be used in bidding stratgies. The order is defined by the order_by parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `advertiserId` | `string` | query | No | The ID of the DV360 advertiser that has access to the custom bidding algorithm. |
| `filter` | `string` | query | No | Allows filtering by custom bidding algorithm fields. Supported syntax: * Filter expressions are made up of one or mor... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `displayName` (default) The default sorting order is ascend... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the DV360 partner that has access to the custom bidding algorithm. |

**Response**: `ListCustomBiddingAlgorithmsResponse`

```typescript
const res = await displayvideo.customBiddingAlgorithms.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.uploadRules`

**GET** `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}:uploadRules`

Creates a rules reference object for an AlgorithmRules file. The resulting reference object provides a resource path where the AlgorithmRules file should be uploaded. This reference object should be included when creating a new CustomBiddingAlgorithmRules resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customBiddingAlgorithmId` | `string` | path | Yes | Required. The ID of the custom bidding algorithm that owns the rules resource. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent custom bidding algorithm. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent custom bidding algorithm. |

**Response**: `CustomBiddingAlgorithmRulesRef`

```typescript
const res = await displayvideo.customBiddingAlgorithms.uploadRules({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.create`

**POST** `v4/customBiddingAlgorithms`

Creates a new custom bidding algorithm. Returns the newly created custom bidding algorithm if successful.

**Request body**: `CustomBiddingAlgorithm`

**Response**: `CustomBiddingAlgorithm`

```typescript
const res = await displayvideo.customBiddingAlgorithms.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.patch`

**PATCH** `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}`

Updates an existing custom bidding algorithm. Returns the updated custom bidding algorithm if successful. Requests updating a custom bidding algorithm assigned to a line item will return an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customBiddingAlgorithmId` | `string` | path | Yes | Output only. The unique ID of the custom bidding algorithm. Assigned by the system. |
| `updateMask` | `string` | query | No | Required. The mask to control which fields to update. |

**Request body**: `CustomBiddingAlgorithm`

**Response**: `CustomBiddingAlgorithm`

```typescript
const res = await displayvideo.customBiddingAlgorithms.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.get`

**GET** `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}`

Gets a custom bidding algorithm.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customBiddingAlgorithmId` | `string` | path | Yes | Required. The ID of the custom bidding algorithm to fetch. |
| `advertiserId` | `string` | query | No | The ID of the DV360 partner that has access to the custom bidding algorithm. |
| `partnerId` | `string` | query | No | The ID of the DV360 partner that has access to the custom bidding algorithm. |

**Response**: `CustomBiddingAlgorithm`

```typescript
const res = await displayvideo.customBiddingAlgorithms.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.uploadScript`

**GET** `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}:uploadScript`

Creates a custom bidding script reference object for a script file. The resulting reference object provides a resource path to which the script file should be uploaded. This reference object should be included in when creating a new custom bidding script object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customBiddingAlgorithmId` | `string` | path | Yes | Required. The ID of the custom bidding algorithm owns the script. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent custom bidding algorithm. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent custom bidding algorithm. Only this partner will have write access to this... |

**Response**: `CustomBiddingScriptRef`

```typescript
const res = await displayvideo.customBiddingAlgorithms.uploadScript({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.scripts.list`

**GET** `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/scripts`

Lists custom bidding scripts that belong to the given algorithm. The order is defined by the order_by parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customBiddingAlgorithmId` | `string` | path | Yes | Required. The ID of the custom bidding algorithm owns the script. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent custom bidding algorithm. |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `createTime desc` (default) The default sorting order is de... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent custom bidding algorithm. Only this partner will have write access to this... |

**Response**: `ListCustomBiddingScriptsResponse`

```typescript
const res = await displayvideo.scripts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.scripts.get`

**GET** `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/scripts/{+customBiddingScriptId}`

Gets a custom bidding script.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customBiddingAlgorithmId` | `string` | path | Yes | Required. The ID of the custom bidding algorithm owns the script. |
| `customBiddingScriptId` | `string` | path | Yes | Required. The ID of the custom bidding script to fetch. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent custom bidding algorithm. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent custom bidding algorithm. Only this partner will have write access to this... |

**Response**: `CustomBiddingScript`

```typescript
const res = await displayvideo.scripts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.scripts.create`

**POST** `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/scripts`

Creates a new custom bidding script. Returns the newly created script if successful. Requests creating a custom bidding script under an algorithm assigned to a line item will return an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customBiddingAlgorithmId` | `string` | path | Yes | Required. The ID of the custom bidding algorithm that owns the script. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent custom bidding algorithm. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent custom bidding algorithm. Only this partner will have write access to this... |

**Request body**: `CustomBiddingScript`

**Response**: `CustomBiddingScript`

```typescript
const res = await displayvideo.scripts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.rules.create`

**POST** `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/rules`

Creates a new rules resource. Returns the newly created rules resource if successful. Requests creating a custom bidding rules resource under an algorithm assigned to a line item will return an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customBiddingAlgorithmId` | `string` | path | Yes | Required. The ID of the custom bidding algorithm that owns the rules resource. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent custom bidding algorithm. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent custom bidding algorithm. Only this partner will have write access to this... |

**Request body**: `CustomBiddingAlgorithmRules`

**Response**: `CustomBiddingAlgorithmRules`

```typescript
const res = await displayvideo.rules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.rules.list`

**GET** `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/rules`

Lists rules resources that belong to the given algorithm. The order is defined by the order_by parameter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customBiddingAlgorithmId` | `string` | path | Yes | Required. The ID of the custom bidding algorithm that owns the rules resource. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent custom bidding algorithm. |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `createTime desc` (default) The default sorting order is de... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent custom bidding algorithm. |

**Response**: `ListCustomBiddingAlgorithmRulesResponse`

```typescript
const res = await displayvideo.rules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.customBiddingAlgorithms.rules.get`

**GET** `v4/customBiddingAlgorithms/{+customBiddingAlgorithmId}/rules/{+customBiddingAlgorithmRulesId}`

Retrieves a rules resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customBiddingAlgorithmId` | `string` | path | Yes | Required. The ID of the custom bidding algorithm that owns the rules resource. |
| `customBiddingAlgorithmRulesId` | `string` | path | Yes | Required. The ID of the rules resource to fetch. |
| `advertiserId` | `string` | query | No | The ID of the advertiser that owns the parent custom bidding algorithm. |
| `partnerId` | `string` | query | No | The ID of the partner that owns the parent custom bidding algorithm. |

**Response**: `CustomBiddingAlgorithmRules`

```typescript
const res = await displayvideo.rules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.sdfdownloadtasks.create`

**POST** `v4/sdfdownloadtasks`

Creates an SDF Download Task. Returns an Operation. An SDF Download Task is a long-running, asynchronous operation. The metadata type of this operation is SdfDownloadTaskMetadata. If the request is successful, the response type of the operation is SdfDownloadTask. The response will not include the download files, which must be retrieved with media.download. The state of operation can be retrieved with `sdfdownloadtasks.operations.get`. Any errors can be found in the error.message. Note that error.details is expected to be empty.

**Request body**: `CreateSdfDownloadTaskRequest`

**Response**: `Operation`

```typescript
const res = await displayvideo.sdfdownloadtasks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.sdfdownloadtasks.operations.get`

**GET** `v4/{+name}`

Gets the latest state of an asynchronous SDF download task operation. Clients should poll this method at intervals of 30 seconds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await displayvideo.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`
- `https://www.googleapis.com/auth/doubleclickbidmanager`

---

### `displayvideo.targetingTypes.targetingOptions.search`

**POST** `v4/targetingTypes/{+targetingType}/targetingOptions:search`

Searches for targeting options of a given type based on the given search terms.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `targetingType` | `string` | path | Yes | Required. The type of targeting options to retrieve. Accepted values are: * `TARGETING_TYPE_GEO_REGION` * `TARGETING_... |

**Request body**: `SearchTargetingOptionsRequest`

**Response**: `SearchTargetingOptionsResponse`

```typescript
const res = await displayvideo.targetingOptions.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.targetingTypes.targetingOptions.get`

**GET** `v4/targetingTypes/{+targetingType}/targetingOptions/{+targetingOptionId}`

Gets a single targeting option.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `targetingType` | `string` | path | Yes | Required. The type of targeting option to retrieve. Accepted values are: * `TARGETING_TYPE_APP_CATEGORY` * `TARGETING... |
| `targetingOptionId` | `string` | path | Yes | Required. The ID of the of targeting option to retrieve. |
| `advertiserId` | `string` | query | No | Required. The Advertiser this request is being made in the context of. |

**Response**: `TargetingOption`

```typescript
const res = await displayvideo.targetingOptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

### `displayvideo.targetingTypes.targetingOptions.list`

**GET** `v4/targetingTypes/{+targetingType}/targetingOptions`

Lists targeting options of a given type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `targetingType` | `string` | path | Yes | Required. The type of targeting option to be listed. Accepted values are: * `TARGETING_TYPE_APP_CATEGORY` * `TARGETIN... |
| `advertiserId` | `string` | query | No | Required. The Advertiser this request is being made in the context of. |
| `filter` | `string` | query | No | Allows filtering by targeting option fields. Supported syntax: * Filter expressions are made up of one or more restri... |
| `orderBy` | `string` | query | No | Field by which to sort the list. Acceptable values are: * `targetingOptionId` (default) The default sorting order is ... |
| `pageSize` | `integer` | query | No | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns error code `INVALID... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of next_page_token retur... |

**Response**: `ListTargetingOptionsResponse`

```typescript
const res = await displayvideo.targetingOptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/display-video`

---

## Schemas

### `ActiveViewVideoViewabilityMetricConfig`

Configuration for custom Active View video viewability metrics.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. The display name of the custom metric. |
| `minimumDuration` | `string` | The minimum visible video duration required (in seconds) in order for an impression to be recorde... |
| `minimumQuartile` | `string` | The minimum visible video duration required, based on the video quartiles, in order for an impres... |
| `minimumViewability` | `string` | Required. The minimum percentage of the video ad's pixels visible on the screen in order for an i... |
| `minimumVolume` | `string` | Required. The minimum percentage of the video ad's volume required in order for an impression to ... |

### `AdAsset`

A single ad asset.

| Property | Type | Description |
|----------|------|-------------|
| `adAssetId` | `string` | Output only. The ID of the ad asset. Referred to as the asset ID when assigned to an ad. |
| `adAssetType` | `string` | Required. The type of the ad asset. |
| `entityStatus` | `string` | Output only. The entity status of the ad asset. |
| `name` | `string` | Identifier. The resource name of the ad asset. |
| `youtubeVideoAsset` | `YoutubeVideoAsset` | Youtube video asset data. |

### `AdGroup`

A single ad group associated with a line item.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupFormat` | `string` | Required. The format of the ads in the ad group. |
| `adGroupId` | `string` | Output only. The unique ID of the ad group. Assigned by the system. |
| `advertiserId` | `string` | Output only. The unique ID of the advertiser the ad group belongs to. |
| `bidStrategy` | `BiddingStrategy` | Optional. The bidding strategy used by the ad group. Only the youtubeAndPartnersBid and demandGen... |
| `displayName` | `string` | Required. The display name of the ad group. Must be UTF-8 encoded with a maximum size of 255 bytes. |
| `entityStatus` | `string` | Required. Controls whether or not the ad group can spend its budget and bid on inventory. If the ... |
| `lineItemId` | `string` | Required. The unique ID of the line item that the ad group belongs to. |
| `name` | `string` | Output only. Identifier. The resource name of the ad group. |
| `productFeedData` | `ProductFeedData` | Optional. The settings of the product feed in this ad group. |
| `targetingExpansion` | `TargetingExpansionConfig` | Optional. The [optimized targeting](//support.google.com/displayvideo/answer/12060859) settings o... |

### `AdGroupAd`

A single ad associated with an ad group.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupAdId` | `string` | Output only. The unique ID of the ad. Assigned by the system. |
| `adGroupId` | `string` | Required. The unique ID of the ad group that the ad belongs to. |
| `adPolicy` | `AdPolicy` | Output only. The policy approval status of the ad. |
| `adUrls` | `array<AdUrl>` | Output only. List of URLs used by the ad. |
| `advertiserId` | `string` | Output only. The unique ID of the advertiser the ad belongs to. |
| `audioAd` | `AudioAd` | Output only. Details of an [audio ad](//support.google.com/displayvideo/answer/6274216) used for ... |
| `bumperAd` | `BumperAd` | Output only. Details of a [non-skippable short video ad](//support.google.com/displayvideo/answer... |
| `displayName` | `string` | Required. The display name of the ad. Must be UTF-8 encoded with a maximum size of 255 bytes. |
| `displayVideoSourceAd` | `DisplayVideoSourceAd` | Output only. Details of an ad sourced from a Display & Video 360 creative. |
| `entityStatus` | `string` | Required. The entity status of the ad. |
| `inStreamAd` | `InStreamAd` | Output only. Details of an [in-stream ad skippable after 5 seconds](//support.google.com/displayv... |
| `mastheadAd` | `MastheadAd` | Output only. Details of an [ad served on the YouTube Home feed](//support.google.com/google-ads/a... |
| `name` | `string` | Output only. The resource name of the ad. |
| `nonSkippableAd` | `NonSkippableAd` | Output only. Details of a [non-skippable short in-stream video ad](//support.google.com/displayvi... |
| `videoDiscoverAd` | `VideoDiscoveryAd` | Output only. Details of an [ad promoting a video](//support.google.com/displayvideo/answer/627421... |
| `videoPerformanceAd` | `VideoPerformanceAd` | Output only. Details of an [ad used in a video action campaign](//support.google.com/google-ads/a... |

### `AdGroupAssignedTargetingOption`

Wrapper object associating an AssignedTargetingOption resource and the ad group it is assigned to.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupId` | `string` | The ID of the ad group the assigned targeting option is assigned to. |
| `assignedTargetingOption` | `AssignedTargetingOption` | The assigned targeting option resource. |

### `AdPolicy`

A single ad policy associated with an ad group ad.

| Property | Type | Description |
|----------|------|-------------|
| `adPolicyApprovalStatus` | `string` | The policy approval status of an ad, indicating the approval decision. |
| `adPolicyReviewStatus` | `string` | The policy review status of an ad, indicating where in the review process the ad is currently. |
| `adPolicyTopicEntry` | `array<AdPolicyTopicEntry>` | The entries for each policy topic identified as relating to the ad. Each entry includes the topic... |

### `AdPolicyCriterionRestriction`

Represents a country restriction.

| Property | Type | Description |
|----------|------|-------------|
| `countryCriterionId` | `string` | The country criterion id. |
| `countryLabel` | `string` | Localized name for the country. May be empty. |

### `AdPolicyTopicAppealInfo`

Information on how to appeal a policy decision.

| Property | Type | Description |
|----------|------|-------------|
| `appealFormLink` | `string` | Only available when appeal_type is `APPEAL_FORM`. |
| `appealType` | `string` | Whether the decision can be appealed through a self-service appeal or an appeal form. |

### `AdPolicyTopicConstraint`

Details on ad serving constraints.

| Property | Type | Description |
|----------|------|-------------|
| `certificateDomainMismatchCountryList` | `AdPolicyTopicConstraintAdPolicyCountryConstraintList` | Countries where the resource's domain is not covered by the certificates associated with it. |
| `certificateMissingCountryList` | `AdPolicyTopicConstraintAdPolicyCountryConstraintList` | Countries where a certificate is required for serving. |
| `countryConstraint` | `AdPolicyTopicConstraintAdPolicyCountryConstraintList` | Countries where the ad cannot serve. |
| `globalCertificateDomainMismatch` | `AdPolicyTopicConstraintAdPolicyGlobalCertificateDomainMismatchConstraint` | Certificate is required to serve in any country and the existing certificate does not cover the a... |
| `globalCertificateMissing` | `AdPolicyTopicConstraintAdPolicyGlobalCertificateMissingConstraint` | Certificate is required to serve in any country. |
| `requestCertificateFormLink` | `string` | Link to the form to request a certificate for the constraint. |
| `resellerConstraint` | `AdPolicyTopicConstraintAdPolicyResellerConstraint` | Reseller constraint. |

### `AdPolicyTopicConstraintAdPolicyCountryConstraintList`

A list of countries where the ad cannot serve due to policy constraints.

| Property | Type | Description |
|----------|------|-------------|
| `countries` | `array<AdPolicyCriterionRestriction>` | Countries where the ad cannot serve. |

### `AdPolicyTopicConstraintAdPolicyGlobalCertificateDomainMismatchConstraint`

Certificate is required to serve in any country and the existing certificate does not cover the ad's domain.

### `AdPolicyTopicConstraintAdPolicyGlobalCertificateMissingConstraint`

Certificate is required to serve in any country.

### `AdPolicyTopicConstraintAdPolicyResellerConstraint`

Policy topic was constrained due to disapproval of the website for reseller purposes.

### `AdPolicyTopicEntry`

An entry describing how an ad has been identified as relating to an ad policy.

| Property | Type | Description |
|----------|------|-------------|
| `appealInfo` | `AdPolicyTopicAppealInfo` | Information on how to appeal the policy decision. |
| `helpCenterLink` | `string` | Ad policy help center link for the policy topic. |
| `policyDecisionType` | `string` | The source of the policy decision. |
| `policyEnforcementMeans` | `string` | The policy enforcement means used in the policy review. |
| `policyLabel` | `string` | Localized label text for policy. Examples include "Trademarks in text", "Contains Alcohol", etc. |
| `policyTopic` | `string` | The policy topic. Examples include "TRADEMARKS", "ALCOHOL", etc. |
| `policyTopicConstraints` | `array<AdPolicyTopicConstraint>` | The serving constraints relevant to the policy decision. |
| `policyTopicDescription` | `string` | A short summary description of the policy topic. |
| `policyTopicEvidences` | `array<AdPolicyTopicEvidence>` | The evidence used in the policy decision. |
| `policyTopicType` | `string` | How ad serving will be affected due to the relation to the ad policy topic. |

### `AdPolicyTopicEvidence`

Evidence information used in the policy decision.

| Property | Type | Description |
|----------|------|-------------|
| `counterfeit` | `AdPolicyTopicEvidenceCounterfeit` | Counterfeit enforcement that caused a policy violation. |
| `destinationMismatch` | `AdPolicyTopicEvidenceDestinationMismatch` | A mismatch between the ad destination URLs. |
| `destinationNotWorking` | `AdPolicyTopicEvidenceDestinationNotWorking` | Information on HTTP or DNS errors related to the ad destination. |
| `destinationTextList` | `AdPolicyTopicEvidenceDestinationTextList` | The text in the destination of the ad that is causing a policy violation. |
| `httpCode` | `integer` | HTTP code returned when the final URL was crawled. |
| `languageCode` | `string` | The language the ad was detected to be written in. This field uses IETF language tags, such as "e... |
| `legalRemoval` | `AdPolicyTopicEvidenceLegalRemoval` | Legal related regulation enforcement that caused a policy violation. |
| `regionalRequirements` | `AdPolicyTopicEvidenceRegionalRequirements` | T&S proactive enforcement that caused a policy violation. |
| `textList` | `AdPolicyTopicEvidenceTextList` | List of evidence found in the text of the ad. |
| `trademark` | `AdPolicyTopicEvidenceTrademark` | Trademark terms that caused a policy violation. |
| `websiteList` | `AdPolicyTopicEvidenceWebsiteList` | List of websites linked with the ad. |

### `AdPolicyTopicEvidenceCounterfeit`

Details on the counterfeit enforcement that caused a policy violation.

| Property | Type | Description |
|----------|------|-------------|
| `owners` | `array<string>` | The content or product owners that made a complaint. |

### `AdPolicyTopicEvidenceDestinationMismatch`

Details on a mismatch between destination URL types.

| Property | Type | Description |
|----------|------|-------------|
| `uriTypes` | `array<string>` | The set of URLs that do not match. The list can include single or multiple uri types. Example 1: ... |

### `AdPolicyTopicEvidenceDestinationNotWorking`

Details for on HTTP or DNS errors related to the ad destination.

| Property | Type | Description |
|----------|------|-------------|
| `device` | `string` | The device where visiting the URL resulted in the error. |
| `dnsErrorType` | `string` | The type of DNS error. |
| `expandedUri` | `string` | The full URL that didn't work. |
| `httpErrorCode` | `string` | The HTTP error code. |
| `lastCheckedTime` | `string` | The last time the error was seen when navigating to URL. |

### `AdPolicyTopicEvidenceDestinationTextList`

A list of destination text that violated the policy.

| Property | Type | Description |
|----------|------|-------------|
| `destinationTexts` | `array<string>` | Destination text that caused the policy finding. |

### `AdPolicyTopicEvidenceLegalRemoval`

Legal related regulation enforcement, either from DMCA or local legal regulation.

| Property | Type | Description |
|----------|------|-------------|
| `complaintType` | `string` | The type of complaint causing the legal removal. |
| `countryRestrictions` | `array<AdPolicyCriterionRestriction>` | The countries restricted due to the legal removal. |
| `dmca` | `AdPolicyTopicEvidenceLegalRemovalDmca` | Details on the DMCA regulation legal removal. |
| `localLegal` | `AdPolicyTopicEvidenceLegalRemovalLocalLegal` | Details on the local legal regulation legal removal. |
| `restrictedUris` | `array<string>` | The urls restricted due to the legal removal. |

### `AdPolicyTopicEvidenceLegalRemovalDmca`

DMCA complaint details.

| Property | Type | Description |
|----------|------|-------------|
| `complainant` | `string` | The entity who made the legal complaint. |

### `AdPolicyTopicEvidenceLegalRemovalLocalLegal`

Local legal regulation details.

| Property | Type | Description |
|----------|------|-------------|
| `lawType` | `string` | Type of law for the legal notice. |

### `AdPolicyTopicEvidenceRegionalRequirements`

Trust & Safety (T&S) proactive enforcement for policies meant to address regional requirements. This is considered a Google-owned investigation instead of a regulation notice since it's proactive T&S enforcement.

| Property | Type | Description |
|----------|------|-------------|
| `regionalRequirementsEntries` | `array<AdPolicyTopicEvidenceRegionalRequirementsRegionalRequirementsEntry>` | List of regional requirements. |

### `AdPolicyTopicEvidenceRegionalRequirementsRegionalRequirementsEntry`

Policy level regional legal violation details.

| Property | Type | Description |
|----------|------|-------------|
| `countryRestrictions` | `array<AdPolicyCriterionRestriction>` | The countries restricted due to the legal policy. |
| `legalPolicy` | `string` | The legal policy that is being violated. |

### `AdPolicyTopicEvidenceTextList`

A list of fragments of text that violated the policy.

| Property | Type | Description |
|----------|------|-------------|
| `texts` | `array<string>` | The fragments of text from the resource that caused the policy finding. |

### `AdPolicyTopicEvidenceTrademark`

Trademark terms that caused a policy violation.

| Property | Type | Description |
|----------|------|-------------|
| `countryRestrictions` | `array<AdPolicyCriterionRestriction>` | Countries where the policy violation is relevant. |
| `owner` | `string` | The trademark content owner. |
| `term` | `string` | The trademark term. |

### `AdPolicyTopicEvidenceWebsiteList`

A list of websites that violated the policy.

| Property | Type | Description |
|----------|------|-------------|
| `websites` | `array<string>` | Websites that caused the policy finding. |

### `AdUrl`

Additional URLs related to the ad, including beacons.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of the Ad URL. |
| `url` | `string` | The URL string value. |

### `Adloox`

Details of Scope3 (previously known as Adloox) brand safety settings.

| Property | Type | Description |
|----------|------|-------------|
| `adultExplicitSexualContent` | `string` | Optional. Adult and Explicit Sexual Content [GARM](https://wfanet.org/leadership/garm/about-garm)... |
| `armsAmmunitionContent` | `string` | Optional. Arms and Ammunition Content [GARM](https://wfanet.org/leadership/garm/about-garm) risk ... |
| `crimeHarmfulActsIndividualsSocietyHumanRightsViolationsContent` | `string` | Optional. Crime and Harmful Acts Content [GARM](https://wfanet.org/leadership/garm/about-garm) ri... |
| `deathInjuryMilitaryConflictContent` | `string` | Optional. Death, Injury, or Military Conflict Content [GARM](https://wfanet.org/leadership/garm/a... |
| `debatedSensitiveSocialIssueContent` | `string` | Optional. Debated Sensitive Social Issue Content [GARM](https://wfanet.org/leadership/garm/about-... |
| `displayIabViewability` | `string` | Optional. IAB viewability threshold for display ads. |
| `excludedAdlooxCategories` | `array<string>` | Scope3 categories to exclude. |
| `excludedFraudIvtMfaCategories` | `array<string>` | Optional. Scope3's fraud IVT MFA categories to exclude. |
| `hateSpeechActsAggressionContent` | `string` | Optional. Hate Speech and Acts of Aggression Content [GARM](https://wfanet.org/leadership/garm/ab... |
| `illegalDrugsTobaccoEcigarettesVapingAlcoholContent` | `string` | Optional. Illegal Drugs/Alcohol Content [GARM](https://wfanet.org/leadership/garm/about-garm) ris... |
| `misinformationContent` | `string` | Optional. Misinformation Content [GARM](https://wfanet.org/leadership/garm/about-garm) risk range... |
| `obscenityProfanityContent` | `string` | Optional. Obscenity and Profanity Content [GARM](https://wfanet.org/leadership/garm/about-garm) r... |
| `onlinePiracyContent` | `string` | Optional. Online Piracy Content [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges... |
| `spamHarmfulContent` | `string` | Optional. Spam or Harmful Content [GARM](https://wfanet.org/leadership/garm/about-garm) risk rang... |
| `terrorismContent` | `string` | Optional. Terrorism Content [GARM](https://wfanet.org/leadership/garm/about-garm) risk ranges to ... |
| `videoIabViewability` | `string` | Optional. IAB viewability threshold for video ads. |

### `Advertiser`

A single advertiser in Display & Video 360 (DV360).

| Property | Type | Description |
|----------|------|-------------|
| `adServerConfig` | `AdvertiserAdServerConfig` | Required. Immutable. Ad server related settings of the advertiser. |
| `advertiserId` | `string` | Output only. The unique ID of the advertiser. Assigned by the system. |
| `billingConfig` | `AdvertiserBillingConfig` | Required. Billing related settings of the advertiser. |
| `containsEuPoliticalAds` | `string` | Optional. Whether this advertiser contains line items that serve European Union political ads. If... |
| `creativeConfig` | `AdvertiserCreativeConfig` | Required. Creative related settings of the advertiser. |
| `dataAccessConfig` | `AdvertiserDataAccessConfig` | Settings that control how advertiser data may be accessed. |
| `displayName` | `string` | Required. The display name of the advertiser. Must be UTF-8 encoded with a maximum size of 240 by... |
| `entityStatus` | `string` | Required. Controls whether or not insertion orders and line items of the advertiser can spend the... |
| `generalConfig` | `AdvertiserGeneralConfig` | Required. General settings of the advertiser. |
| `integrationDetails` | `IntegrationDetails` | Integration details of the advertiser. Only integrationCode is currently applicable to advertiser... |
| `name` | `string` | Output only. The resource name of the advertiser. |
| `partnerId` | `string` | Required. Immutable. The unique ID of the partner that the advertiser belongs to. |
| `prismaEnabled` | `boolean` | Whether integration with Mediaocean (Prisma) is enabled. By enabling this, you agree to the follo... |
| `servingConfig` | `AdvertiserTargetingConfig` | Targeting settings related to ad serving of the advertiser. |
| `updateTime` | `string` | Output only. The timestamp when the advertiser was last updated. Assigned by the system. |

### `AdvertiserAdServerConfig`

Ad server related settings of an advertiser.

| Property | Type | Description |
|----------|------|-------------|
| `cmHybridConfig` | `CmHybridConfig` | The configuration for advertisers that use both Campaign Manager 360 (CM360) and third-party ad s... |
| `thirdPartyOnlyConfig` | `ThirdPartyOnlyConfig` | The configuration for advertisers that use third-party ad servers only. |

### `AdvertiserBillingConfig`

Billing related settings of an advertiser.

| Property | Type | Description |
|----------|------|-------------|
| `billingProfileId` | `string` | Required. The ID of a billing profile assigned to the advertiser. |

### `AdvertiserCreativeConfig`

Creatives related settings of an advertiser.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicCreativeEnabled` | `boolean` | Whether or not the advertiser is enabled for dynamic creatives. |
| `iasClientId` | `string` | An ID for configuring campaign monitoring provided by Integral Ad Service (IAS). The DV360 system... |
| `obaComplianceDisabled` | `boolean` | Whether or not to disable Google's About this Ad feature that adds badging (to identify the conte... |
| `videoCreativeDataSharingAuthorized` | `boolean` | By setting this field to `true`, you, on behalf of your company, authorize Google to use video cr... |

### `AdvertiserDataAccessConfig`

Settings that control how advertiser related data may be accessed.

| Property | Type | Description |
|----------|------|-------------|
| `sdfConfig` | `AdvertiserSdfConfig` | Structured Data Files (SDF) settings for the advertiser. If not specified, the SDF settings of th... |

### `AdvertiserGeneralConfig`

General settings of an advertiser.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | Required. Immutable. Advertiser's currency in ISO 4217 format. Accepted codes and the currencies ... |
| `domainUrl` | `string` | Required. The domain URL of the advertiser's primary website. The system will send this informati... |
| `timeZone` | `string` | Output only. The standard TZ database name of the advertiser's time zone. For example, `America/N... |

### `AdvertiserSdfConfig`

Structured Data Files (SDF) settings of an advertiser.

| Property | Type | Description |
|----------|------|-------------|
| `overridePartnerSdfConfig` | `boolean` | Whether or not this advertiser overrides the SDF configuration of its parent partner. By default,... |
| `sdfConfig` | `SdfConfig` | The SDF configuration for the advertiser. * Required when overridePartnerSdfConfig is `true`. * O... |

### `AdvertiserTargetingConfig`

Targeting settings related to ad serving of an advertiser.

| Property | Type | Description |
|----------|------|-------------|
| `exemptTvFromViewabilityTargeting` | `boolean` | Whether or not connected TV devices are exempt from viewability targeting for all video line item... |

### `AgeRangeAssignedTargetingOptionDetails`

Represents a targetable age range. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_AGE_RANGE`.

| Property | Type | Description |
|----------|------|-------------|
| `ageRange` | `string` | Required. The age range of an audience. We only support targeting a continuous age range of an au... |

### `AgeRangeTargetingOptionDetails`

Represents a targetable age range. This will be populated in the age_range_details field when targeting_type is `TARGETING_TYPE_AGE_RANGE`.

| Property | Type | Description |
|----------|------|-------------|
| `ageRange` | `string` | Output only. The age range of an audience. |

### `AlgorithmRules`

Rule-based algorithm.

| Property | Type | Description |
|----------|------|-------------|
| `attributionModelId` | `string` | Attribution model for the algorithm. This field is only supported for allowlisted partners. |
| `impressionSignalRuleset` | `AlgorithmRulesRuleset` | Rules for the impression signals. |
| `postImpressionSignalRuleset` | `AlgorithmRulesRuleset` | Rules for the post-impression signals. This field is only supported for allowlisted partners. |

### `AlgorithmRulesComparisonValue`

A value to compare the signal to.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Boolean value. |
| `contentDurationValue` | `string` | Video content duration value. |
| `contentGenreIdValue` | `string` | Video genre id value. |
| `contentStreamTypeValue` | `string` | Video delivery type value. |
| `creativeDimensionValue` | `Dimensions` | Creative dimension value. |
| `dayAndTimeValue` | `DayAndTime` | Day and time value. Only `TIME_ZONE_RESOLUTION_END_USER` is supported. |
| `deviceTypeValue` | `string` | Device type value. |
| `doubleValue` | `number` | Double value. |
| `environmentValue` | `string` | Environment value. |
| `exchangeValue` | `string` | Exchange value. |
| `int64Value` | `string` | Integer value. |
| `onScreenPositionValue` | `string` | Ad position value. |
| `stringValue` | `string` | String value. |
| `videoPlayerSizeValue` | `string` | Video player size value. This field is only supported for allowlisted partners. |

### `AlgorithmRulesFloodlightActivityConversionSignal`

The rule to score impressions based on Floodlight conversion events.

| Property | Type | Description |
|----------|------|-------------|
| `conversionCounting` | `string` | Required. The type of conversions to be used in impression value computation, for example, post-c... |
| `countingMethod` | `string` | Required. The way to acquire value from the floodlight activity, for example, count of the conver... |
| `floodlightActivityId` | `string` | Required. Id of the floodlight activity. |

### `AlgorithmRulesRule`

Set of conditions. The return value of the rule is either: * The return value for single met condition or * The defined default return value if no conditions are met.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `array<AlgorithmRulesRuleCondition>` | List of conditions in this rule. The criteria among conditions should be mutually exclusive. |
| `defaultReturnValue` | `AlgorithmRulesSignalValue` | The default return value applied when none of the conditions are met. |

### `AlgorithmRulesRuleCondition`

Set of signal comparisons. Equivalent of an `if` statement.

| Property | Type | Description |
|----------|------|-------------|
| `returnValue` | `AlgorithmRulesSignalValue` | The value returned if the `signalComparisons` condition evaluates to `TRUE`. |
| `signalComparisons` | `array<AlgorithmRulesSignalComparison>` | List of comparisons that build `if` statement condition. The comparisons are combined into a sing... |

### `AlgorithmRulesRuleset`

A ruleset consisting of a list of rules and how to aggregate the resulting values.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationType` | `string` | How to aggregate values of evaluated rules. |
| `maxValue` | `number` | Maximum value the ruleset can evaluate to. |
| `rules` | `array<AlgorithmRulesRule>` | List of rules to generate the impression value. |

### `AlgorithmRulesSignal`

Signal used to evaluate rules.

| Property | Type | Description |
|----------|------|-------------|
| `activeViewSignal` | `string` | Signal based on active views. This field is only supported for allowlisted partners. |
| `clickSignal` | `string` | Signal based on clicks. This field is only supported for allowlisted partners. |
| `impressionSignal` | `string` | Signal based on impressions. |

### `AlgorithmRulesSignalComparison`

A single comparison. The comparison compares the `signal` to the `comparisonValue`. The comparison of `siteId==123` is represented with the following field values: * `signal` has an `impressionSignal` of `SITE_ID`. * `comparisonOperator` is set to `EQUAL`. * `comparisonValue` is set to 123.

| Property | Type | Description |
|----------|------|-------------|
| `comparisonOperator` | `string` | Operator used to compare the two values. In the resulting experession, the `signal` will be the f... |
| `comparisonValue` | `AlgorithmRulesComparisonValue` | Value to compare signal to. |
| `signal` | `AlgorithmRulesSignal` | Signal to compare. |

### `AlgorithmRulesSignalValue`

Adjusted value of the signal used for rule evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `activeViewSignal` | `string` | Signal based on active views. Only `TIME_ON_SCREEN` is supported. This field is only supported fo... |
| `floodlightActivityConversionSignal` | `AlgorithmRulesFloodlightActivityConversionSignal` | Signal based on floodlight conversion events. This field is only supported for allowlisted partners. |
| `number` | `number` | Value to use as result. |

### `AppAssignedTargetingOptionDetails`

Details for assigned app targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_APP`.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | Required. The ID of the app. Android's Play store app uses bundle ID, for example `com.google.and... |
| `appPlatform` | `string` | Indicates the platform of the targeted app. If this field is not specified, the app platform will... |
| `displayName` | `string` | Output only. The display name of the app. |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |

### `AppCategoryAssignedTargetingOptionDetails`

Details for assigned app category targeting option. This will be populated in the app_category_details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_APP_CATEGORY`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the app category. |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |
| `targetingOptionId` | `string` | Required. The targeting_option_id field when targeting_type is `TARGETING_TYPE_APP_CATEGORY`. |

### `AppCategoryTargetingOptionDetails`

Represents a targetable collection of apps. A collection lets you target dynamic groups of related apps that are maintained by the platform, for example `All Apps/Google Play/Games`. This will be populated in the app_category_details field when targeting_type is `TARGETING_TYPE_APP_CATEGORY`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The name of the app collection. |

### `Asset`

A single asset.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The asset content. For uploaded assets, the content is the serving path. |
| `mediaId` | `string` | Media ID of the uploaded asset. This is a unique identifier for the asset. This ID can be passed ... |

### `AssetAssociation`

Asset association for the creative.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `Asset` | Optional. The associated asset. |
| `role` | `string` | Optional. The role of this asset for the creative. |

### `AssignedInventorySource`

An assignment between a targetable inventory source and an inventory source group.

| Property | Type | Description |
|----------|------|-------------|
| `assignedInventorySourceId` | `string` | Output only. The unique ID of the assigned inventory source. The ID is only unique within a given... |
| `inventorySourceId` | `string` | Required. The ID of the inventory source entity being targeted. |
| `name` | `string` | Output only. The resource name of the assigned inventory source. |

### `AssignedLocation`

An assignment between a location list and a relevant targeting option.

| Property | Type | Description |
|----------|------|-------------|
| `assignedLocationId` | `string` | Output only. The unique ID of the assigned location. The ID is only unique within a location list... |
| `name` | `string` | Output only. The resource name of the assigned location. |
| `targetingOptionId` | `string` | Required. The ID of the targeting option assigned to the location list. |

### `AssignedTargetingOption`

A single assigned targeting option, which defines the state of a targeting option for an entity with targeting settings.

| Property | Type | Description |
|----------|------|-------------|
| `ageRangeDetails` | `AgeRangeAssignedTargetingOptionDetails` | Age range details. This field will be populated when the targeting_type is `TARGETING_TYPE_AGE_RA... |
| `appCategoryDetails` | `AppCategoryAssignedTargetingOptionDetails` | App category details. This field will be populated when the targeting_type is `TARGETING_TYPE_APP... |
| `appDetails` | `AppAssignedTargetingOptionDetails` | App details. This field will be populated when the targeting_type is `TARGETING_TYPE_APP`. |
| `assignedTargetingOptionId` | `string` | Output only. The unique ID of the assigned targeting option. The ID is only unique within a given... |
| `assignedTargetingOptionIdAlias` | `string` | Output only. An alias for the assigned_targeting_option_id. This value can be used in place of `a... |
| `audienceGroupDetails` | `AudienceGroupAssignedTargetingOptionDetails` | Audience targeting details. This field will be populated when the targeting_type is `TARGETING_TY... |
| `audioContentTypeDetails` | `AudioContentTypeAssignedTargetingOptionDetails` | Audio content type details. This field will be populated when the targeting_type is `TARGETING_TY... |
| `authorizedSellerStatusDetails` | `AuthorizedSellerStatusAssignedTargetingOptionDetails` | Authorized seller status details. This field will be populated when the targeting_type is `TARGET... |
| `browserDetails` | `BrowserAssignedTargetingOptionDetails` | Browser details. This field will be populated when the targeting_type is `TARGETING_TYPE_BROWSER`. |
| `businessChainDetails` | `BusinessChainAssignedTargetingOptionDetails` | Business chain details. This field will be populated when the targeting_type is `TARGETING_TYPE_B... |
| `carrierAndIspDetails` | `CarrierAndIspAssignedTargetingOptionDetails` | Carrier and ISP details. This field will be populated when the targeting_type is `TARGETING_TYPE_... |
| `categoryDetails` | `CategoryAssignedTargetingOptionDetails` | Category details. This field will be populated when the targeting_type is `TARGETING_TYPE_CATEGOR... |
| `channelDetails` | `ChannelAssignedTargetingOptionDetails` | Channel details. This field will be populated when the targeting_type is `TARGETING_TYPE_CHANNEL`. |
| `contentDurationDetails` | `ContentDurationAssignedTargetingOptionDetails` | Content duration details. This field will be populated when the targeting_type is `TARGETING_TYPE... |
| `contentGenreDetails` | `ContentGenreAssignedTargetingOptionDetails` | Content genre details. This field will be populated when the targeting_type is `TARGETING_TYPE_CO... |
| `contentInstreamPositionDetails` | `ContentInstreamPositionAssignedTargetingOptionDetails` | Content instream position details. This field will be populated when the targeting_type is `TARGE... |
| `contentOutstreamPositionDetails` | `ContentOutstreamPositionAssignedTargetingOptionDetails` | Content outstream position details. This field will be populated when the targeting_type is `TARG... |
| `contentStreamTypeDetails` | `ContentStreamTypeAssignedTargetingOptionDetails` | Content duration details. This field will be populated when the TargetingType is `TARGETING_TYPE_... |
| `contentThemeExclusionDetails` | `ContentThemeAssignedTargetingOptionDetails` | Content theme details. This field will be populated when the targeting_type is `TARGETING_TYPE_CO... |
| `dayAndTimeDetails` | `DayAndTimeAssignedTargetingOptionDetails` | Day and time details. This field will be populated when the targeting_type is `TARGETING_TYPE_DAY... |
| `deviceMakeModelDetails` | `DeviceMakeModelAssignedTargetingOptionDetails` | Device make and model details. This field will be populated when the targeting_type is `TARGETING... |
| `deviceTypeDetails` | `DeviceTypeAssignedTargetingOptionDetails` | Device Type details. This field will be populated when the targeting_type is `TARGETING_TYPE_DEVI... |
| `digitalContentLabelExclusionDetails` | `DigitalContentLabelAssignedTargetingOptionDetails` | Digital content label details. This field will be populated when the targeting_type is `TARGETING... |
| `environmentDetails` | `EnvironmentAssignedTargetingOptionDetails` | Environment details. This field will be populated when the targeting_type is `TARGETING_TYPE_ENVI... |
| `exchangeDetails` | `ExchangeAssignedTargetingOptionDetails` | Exchange details. This field will be populated when the targeting_type is `TARGETING_TYPE_EXCHANGE`. |
| `genderDetails` | `GenderAssignedTargetingOptionDetails` | Gender details. This field will be populated when the targeting_type is `TARGETING_TYPE_GENDER`. |
| `geoRegionDetails` | `GeoRegionAssignedTargetingOptionDetails` | Geographic region details. This field will be populated when the targeting_type is `TARGETING_TYP... |
| `householdIncomeDetails` | `HouseholdIncomeAssignedTargetingOptionDetails` | Household income details. This field will be populated when the targeting_type is `TARGETING_TYPE... |
| `inheritance` | `string` | Output only. The inheritance status of the assigned targeting option. |
| `inventorySourceDetails` | `InventorySourceAssignedTargetingOptionDetails` | Inventory source details. This field will be populated when the targeting_type is `TARGETING_TYPE... |
| `inventorySourceGroupDetails` | `InventorySourceGroupAssignedTargetingOptionDetails` | Inventory source group details. This field will be populated when the targeting_type is `TARGETIN... |
| `keywordDetails` | `KeywordAssignedTargetingOptionDetails` | Keyword details. This field will be populated when the targeting_type is `TARGETING_TYPE_KEYWORD`... |
| `languageDetails` | `LanguageAssignedTargetingOptionDetails` | Language details. This field will be populated when the targeting_type is `TARGETING_TYPE_LANGUAGE`. |
| `name` | `string` | Output only. The resource name for this assigned targeting option. |
| `nativeContentPositionDetails` | `NativeContentPositionAssignedTargetingOptionDetails` | Native content position details. This field will be populated when the targeting_type is `TARGETI... |
| `negativeKeywordListDetails` | `NegativeKeywordListAssignedTargetingOptionDetails` | Keyword details. This field will be populated when the targeting_type is `TARGETING_TYPE_NEGATIVE... |
| `omidDetails` | `OmidAssignedTargetingOptionDetails` | Open Measurement enabled inventory details. This field will be populated when the targeting_type ... |
| `onScreenPositionDetails` | `OnScreenPositionAssignedTargetingOptionDetails` | On screen position details. This field will be populated when the targeting_type is `TARGETING_TY... |
| `operatingSystemDetails` | `OperatingSystemAssignedTargetingOptionDetails` | Operating system details. This field will be populated when the targeting_type is `TARGETING_TYPE... |
| `parentalStatusDetails` | `ParentalStatusAssignedTargetingOptionDetails` | Parental status details. This field will be populated when the targeting_type is `TARGETING_TYPE_... |
| `poiDetails` | `PoiAssignedTargetingOptionDetails` | POI details. This field will be populated when the targeting_type is `TARGETING_TYPE_POI`. |
| `proximityLocationListDetails` | `ProximityLocationListAssignedTargetingOptionDetails` | Proximity location list details. This field will be populated when the targeting_type is `TARGETI... |
| `regionalLocationListDetails` | `RegionalLocationListAssignedTargetingOptionDetails` | Regional location list details. This field will be populated when the targeting_type is `TARGETIN... |
| `sensitiveCategoryExclusionDetails` | `SensitiveCategoryAssignedTargetingOptionDetails` | Sensitive category details. This field will be populated when the targeting_type is `TARGETING_TY... |
| `sessionPositionDetails` | `SessionPositionAssignedTargetingOptionDetails` | Session position details. This field will be populated when the targeting_type is `TARGETING_TYPE... |
| `subExchangeDetails` | `SubExchangeAssignedTargetingOptionDetails` | Sub-exchange details. This field will be populated when the targeting_type is `TARGETING_TYPE_SUB... |
| `targetingType` | `string` | Output only. Identifies the type of this assigned targeting option. |
| `thirdPartyVerifierDetails` | `ThirdPartyVerifierAssignedTargetingOptionDetails` | Third party verification details. This field will be populated when the targeting_type is `TARGET... |
| `urlDetails` | `UrlAssignedTargetingOptionDetails` | URL details. This field will be populated when the targeting_type is `TARGETING_TYPE_URL`. |
| `userRewardedContentDetails` | `UserRewardedContentAssignedTargetingOptionDetails` | User rewarded content details. This field will be populated when the targeting_type is `TARGETING... |
| `videoPlayerSizeDetails` | `VideoPlayerSizeAssignedTargetingOptionDetails` | Video player size details. This field will be populated when the targeting_type is `TARGETING_TYP... |
| `viewabilityDetails` | `ViewabilityAssignedTargetingOptionDetails` | Viewability details. This field will be populated when the targeting_type is `TARGETING_TYPE_VIEW... |
| `youtubeChannelDetails` | `YoutubeChannelAssignedTargetingOptionDetails` | YouTube channel details. This field will be populated when the targeting_type is `TARGETING_TYPE_... |
| `youtubeVideoDetails` | `YoutubeVideoAssignedTargetingOptionDetails` | YouTube video details. This field will be populated when the targeting_type is `TARGETING_TYPE_YO... |

### `AssignedUserRole`

A single assigned user role, which defines a user's authorized interaction with a specified partner or advertiser.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | The ID of the advertiser that the assigend user role applies to. |
| `assignedUserRoleId` | `string` | Output only. The ID of the assigned user role. |
| `partnerId` | `string` | The ID of the partner that the assigned user role applies to. |
| `userRole` | `string` | Required. The user role to assign to a user for the entity. |

### `AudienceGroupAssignedTargetingOptionDetails`

Assigned audience group targeting option details. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_AUDIENCE_GROUP`. The relation between each group is UNION, except for excluded_first_and_third_party_audience_group and excluded_google_audience_group, of which COMPLEMENT is used as an INTERSECTION with other groups.

| Property | Type | Description |
|----------|------|-------------|
| `excludedFirstPartyAndPartnerAudienceGroup` | `FirstPartyAndPartnerAudienceGroup` | Optional. The first party and partner audience ids and recencies of the excluded first party and ... |
| `excludedGoogleAudienceGroup` | `GoogleAudienceGroup` | Optional. The Google audience ids of the excluded Google audience group. Used for negative target... |
| `includedCombinedAudienceGroup` | `CombinedAudienceGroup` | Optional. The combined audience ids of the included combined audience group. Contains combined au... |
| `includedCustomListGroup` | `CustomListGroup` | Optional. The custom list ids of the included custom list group. Contains custom list ids only. |
| `includedFirstPartyAndPartnerAudienceGroups` | `array<FirstPartyAndPartnerAudienceGroup>` | Optional. The first party and partner audience ids and recencies of included first party and part... |
| `includedGoogleAudienceGroup` | `GoogleAudienceGroup` | Optional. The Google audience ids of the included Google audience group. Contains Google audience... |

### `AudioAd`

Details for an audio ad.

| Property | Type | Description |
|----------|------|-------------|
| `displayUrl` | `string` | The webpage address that appears with the ad. |
| `finalUrl` | `string` | The URL address of the webpage that people reach after they click the ad. |
| `trackingUrl` | `string` | The URL address loaded in the background for tracking purposes. |
| `video` | `YoutubeVideoDetails` | The YouTube video of the ad. |

### `AudioContentTypeAssignedTargetingOptionDetails`

Details for audio content type assigned targeting option. This will be populated in the audio_content_type_details field when targeting_type is `TARGETING_TYPE_AUDIO_CONTENT_TYPE`. Explicitly targeting all options is not supported. Remove all audio content type targeting options to achieve this effect.

| Property | Type | Description |
|----------|------|-------------|
| `audioContentType` | `string` | Required. The audio content type. |

### `AudioContentTypeTargetingOptionDetails`

Represents a targetable audio content type. This will be populated in the audio_content_type_details field when targeting_type is `TARGETING_TYPE_AUDIO_CONTENT_TYPE`.

| Property | Type | Description |
|----------|------|-------------|
| `audioContentType` | `string` | Output only. The audio content type. |

### `AudioVideoOffset`

The length an audio or a video has been played.

| Property | Type | Description |
|----------|------|-------------|
| `percentage` | `string` | Optional. The offset in percentage of the audio or video duration. |
| `seconds` | `string` | Optional. The offset in seconds from the start of the audio or video. |

### `AuditAdvertiserResponse`

Response message for AdvertiserService.AuditAdvertiser.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupCriteriaCount` | `string` | The number of individual targeting options from the following targeting types that are assigned t... |
| `campaignCriteriaCount` | `string` | The number of individual targeting options from the following targeting types that are assigned t... |
| `channelsCount` | `string` | The number of channels created under this advertiser. These channels count towards the limit of 1... |
| `negativeKeywordListsCount` | `string` | The number of negative keyword lists created under this advertiser. These negative keyword lists ... |
| `negativelyTargetedChannelsCount` | `string` | The number of negatively targeted channels created under this advertiser. These negatively target... |
| `usedCampaignsCount` | `string` | The number of ACTIVE and PAUSED campaigns under this advertiser. These campaigns count towards th... |
| `usedInsertionOrdersCount` | `string` | The number of ACTIVE, PAUSED and DRAFT insertion orders under this advertiser. These insertion or... |
| `usedLineItemsCount` | `string` | The number of ACTIVE, PAUSED, and DRAFT line items under this advertiser. These line items count ... |

### `AuthorizedSellerStatusAssignedTargetingOptionDetails`

Represents an assigned authorized seller status. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`. If a resource does not have an `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS` assigned targeting option, it is using the "Authorized Direct Sellers and Resellers" option.

| Property | Type | Description |
|----------|------|-------------|
| `authorizedSellerStatus` | `string` | Output only. The authorized seller status to target. |
| `targetingOptionId` | `string` | Required. The targeting_option_id of a TargetingOption of type `TARGETING_TYPE_AUTHORIZED_SELLER_... |

### `AuthorizedSellerStatusTargetingOptionDetails`

Represents a targetable authorized seller status. This will be populated in the authorized_seller_status_details field when targeting_type is `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`.

| Property | Type | Description |
|----------|------|-------------|
| `authorizedSellerStatus` | `string` | Output only. The authorized seller status. |

### `BiddingStrategy`

Settings that control the bid strategy. Bid strategy determines the bid price.

| Property | Type | Description |
|----------|------|-------------|
| `fixedBid` | `FixedBidStrategy` | A strategy that uses a fixed bid price. |
| `maximizeSpendAutoBid` | `MaximizeSpendBidStrategy` | * `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPA`, `BIDDING_STRATEGY_PERFORMANCE_GOAL_TYPE_CPC`, and... |
| `performanceGoalAutoBid` | `PerformanceGoalBidStrategy` | A strategy that automatically adjusts the bid to meet or beat a specified performance goal. It is... |
| `youtubeAndPartnersBid` | `YoutubeAndPartnersBiddingStrategy` | A bid strategy used by YouTube and Partners resources. It can only be used for a YouTube and Part... |

### `BrowserAssignedTargetingOptionDetails`

Details for assigned browser targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_BROWSER`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the browser. |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. All assigned browser targeting options on ... |
| `targetingOptionId` | `string` | Required. The targeting_option_id of a TargetingOption of type `TARGETING_TYPE_BROWSER`. |

### `BrowserTargetingOptionDetails`

Represents a targetable browser. This will be populated in the browser_details field when targeting_type is `TARGETING_TYPE_BROWSER`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the browser. |

### `BudgetSummary`

Summarized information of an individual campaign budget.

| Property | Type | Description |
|----------|------|-------------|
| `externalBudgetId` | `string` | Corresponds to the external_budget_id of a campaign budget. If the value is not set in the campai... |
| `preTaxAmountMicros` | `string` | The sum of charges made under this budget before taxes, in micros of the invoice's currency. For ... |
| `prismaCpeCode` | `PrismaCpeCode` | Relevant client, product, and estimate codes from the Mediaocean Prisma tool. Only applicable for... |
| `taxAmountMicros` | `string` | The amount of tax applied to charges under this budget, in micros of the invoice's currency. For ... |
| `totalAmountMicros` | `string` | The total sum of charges made under this budget, including tax, in micros of the invoice's curren... |

### `BulkCreateAdAssetsRequest`

A request message for BulkCreateAdAssets.

| Property | Type | Description |
|----------|------|-------------|
| `adAssets` | `array<AdAsset>` | Required. Ad assets to create. Only supports assets of AdAssetType `AD_ASSET_TYPE_YOUTUBE_VIDEO`. |

### `BulkCreateAdAssetsResponse`

A response message for BulkCreateAdAssets.

| Property | Type | Description |
|----------|------|-------------|
| `adAssets` | `array<AdAsset>` | The created ad assets. |

### `BulkEditAdvertiserAssignedTargetingOptionsRequest`

Request message for BulkEditAdvertiserAssignedTargetingOptions.

| Property | Type | Description |
|----------|------|-------------|
| `createRequests` | `array<CreateAssignedTargetingOptionsRequest>` | The assigned targeting options to create in batch, specified as a list of `CreateAssignedTargetin... |
| `deleteRequests` | `array<DeleteAssignedTargetingOptionsRequest>` | The assigned targeting options to delete in batch, specified as a list of `DeleteAssignedTargetin... |

### `BulkEditAdvertiserAssignedTargetingOptionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `createdAssignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options that have been successfully created. This list will be abs... |

### `BulkEditAssignedInventorySourcesRequest`

Request message for AssignedInventorySourceService.BulkEdit.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | The ID of the advertiser that owns the parent inventory source group. The parent partner does not... |
| `createdAssignedInventorySources` | `array<AssignedInventorySource>` | The assigned inventory sources to create in bulk, specified as a list of AssignedInventorySources. |
| `deletedAssignedInventorySources` | `array<string>` | The IDs of the assigned inventory sources to delete in bulk, specified as a list of assigned_inve... |
| `partnerId` | `string` | The ID of the partner that owns the inventory source group. Only this partner has write access to... |

### `BulkEditAssignedInventorySourcesResponse`

Response message for AssignedInventorySourceService.BulkEdit.

| Property | Type | Description |
|----------|------|-------------|
| `assignedInventorySources` | `array<AssignedInventorySource>` | The list of assigned inventory sources that have been successfully created. This list will be abs... |

### `BulkEditAssignedLocationsRequest`

Request message for AssignedLocationService.BulkEditAssignedLocations.

| Property | Type | Description |
|----------|------|-------------|
| `createdAssignedLocations` | `array<AssignedLocation>` | The assigned locations to create in bulk, specified as a list of AssignedLocation resources. |
| `deletedAssignedLocations` | `array<string>` | The IDs of the assigned locations to delete in bulk, specified as a list of assignedLocationId va... |

### `BulkEditAssignedLocationsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `assignedLocations` | `array<AssignedLocation>` | The list of assigned locations that have been successfully created. This list will be absent if e... |

### `BulkEditAssignedTargetingOptionsRequest`

Request message for BulkEditLineItemsAssignedTargetingOptions.

| Property | Type | Description |
|----------|------|-------------|
| `createRequests` | `array<CreateAssignedTargetingOptionsRequest>` | The assigned targeting options to create in batch, specified as a list of CreateAssignedTargeting... |
| `deleteRequests` | `array<DeleteAssignedTargetingOptionsRequest>` | The assigned targeting options to delete in batch, specified as a list of DeleteAssignedTargeting... |
| `lineItemIds` | `array<string>` | Required. The ID of the line items whose targeting is being updated. |

### `BulkEditAssignedTargetingOptionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<Status>` | The error information for each line item that failed to update. |
| `failedLineItemIds` | `array<string>` | Output only. The IDs of the line items which failed. |
| `updatedLineItemIds` | `array<string>` | Output only. The IDs of the line items which successfully updated. |

### `BulkEditAssignedUserRolesRequest`

Request message for BulkEditAssignedUserRoles.

| Property | Type | Description |
|----------|------|-------------|
| `createdAssignedUserRoles` | `array<AssignedUserRole>` | The assigned user roles to create in batch, specified as a list of AssignedUserRoles. |
| `deletedAssignedUserRoles` | `array<string>` | The assigned user roles to delete in batch, specified as a list of assigned_user_role_ids. The fo... |

### `BulkEditAssignedUserRolesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `createdAssignedUserRoles` | `array<AssignedUserRole>` | The list of assigned user roles that have been successfully created. This list will be absent if ... |

### `BulkEditNegativeKeywordsRequest`

Request message for NegativeKeywordService.BulkEditNegativeKeywords.

| Property | Type | Description |
|----------|------|-------------|
| `createdNegativeKeywords` | `array<NegativeKeyword>` | The negative keywords to create in batch, specified as a list of NegativeKeywords. |
| `deletedNegativeKeywords` | `array<string>` | The negative keywords to delete in batch, specified as a list of keyword_values. |

### `BulkEditNegativeKeywordsResponse`

Response message for NegativeKeywordService.BulkEditNegativeKeywords.

| Property | Type | Description |
|----------|------|-------------|
| `negativeKeywords` | `array<NegativeKeyword>` | The list of negative keywords that have been successfully created. This list will be absent if em... |

### `BulkEditPartnerAssignedTargetingOptionsRequest`

Request message for BulkEditPartnerAssignedTargetingOptions.

| Property | Type | Description |
|----------|------|-------------|
| `createRequests` | `array<CreateAssignedTargetingOptionsRequest>` | The assigned targeting options to create in batch, specified as a list of `CreateAssignedTargetin... |
| `deleteRequests` | `array<DeleteAssignedTargetingOptionsRequest>` | The assigned targeting options to delete in batch, specified as a list of `DeleteAssignedTargetin... |

### `BulkEditPartnerAssignedTargetingOptionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `createdAssignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options that have been successfully created. This list will be abs... |

### `BulkEditSitesRequest`

Request message for SiteService.BulkEditSites.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | The ID of the advertiser that owns the parent channel. |
| `createdSites` | `array<Site>` | The sites to create in batch, specified as a list of Sites. |
| `deletedSites` | `array<string>` | The sites to delete in batch, specified as a list of site url_or_app_ids. |
| `partnerId` | `string` | The ID of the partner that owns the parent channel. |

### `BulkEditSitesResponse`

Response message for SiteService.BulkEditSites.

| Property | Type | Description |
|----------|------|-------------|
| `sites` | `array<Site>` | The list of sites that have been successfully created. This list will be absent if empty. |

### `BulkListAdGroupAssignedTargetingOptionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `adGroupAssignedTargetingOptions` | `array<AdGroupAssignedTargetingOption>` | The list of wrapper objects, each providing an assigned targeting option and the ad group it is a... |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `BulkListAdvertiserAssignedTargetingOptionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options. This list will be absent if empty. |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `BulkListAssignedTargetingOptionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `lineItemAssignedTargetingOptions` | `array<LineItemAssignedTargetingOption>` | The list of wrapper objects, each providing an assigned targeting option and the line item it is ... |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `BulkListCampaignAssignedTargetingOptionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options. This list will be absent if empty. |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `BulkListInsertionOrderAssignedTargetingOptionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options. This list will be absent if empty. |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `BulkUpdateLineItemsRequest`

Request message for LineItemService.BulkUpdateLineItems.

| Property | Type | Description |
|----------|------|-------------|
| `lineItemIds` | `array<string>` | Required. IDs of line items to update. |
| `targetLineItem` | `LineItem` | Required. A line item object containing the fields to be updated and the new values to assign to ... |
| `updateMask` | `string` | Required. A field mask identifying which fields to update. Only the following fields are currentl... |

### `BulkUpdateLineItemsResponse`

Response message for LineItemService.BulkUpdateLineItems.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<Status>` | Errors returned by line items that failed to update. |
| `failedLineItemIds` | `array<string>` | The IDs of line items that failed to update. |
| `skippedLineItemIds` | `array<string>` | The IDs of line items that are skipped for updates. For example, unnecessary mutates that will re... |
| `updatedLineItemIds` | `array<string>` | The IDs of successfully updated line items. |

### `BumperAd`

Details for a bumper ad.

| Property | Type | Description |
|----------|------|-------------|
| `commonInStreamAttribute` | `CommonInStreamAttribute` | Common ad attributes. |

### `BusinessChainAssignedTargetingOptionDetails`

Details for assigned Business chain targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_BUSINESS_CHAIN`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of a business chain, e.g. "KFC", "Chase Bank". |
| `proximityRadiusAmount` | `number` | Required. The radius of the area around the business chain that will be targeted. The units of th... |
| `proximityRadiusUnit` | `string` | Required. The unit of distance by which the targeting radius is measured. |
| `targetingOptionId` | `string` | Required. The targeting_option_id of a TargetingOption of type `TARGETING_TYPE_BUSINESS_CHAIN`. A... |

### `BusinessChainSearchTerms`

Search terms for Business Chain targeting options. At least one of the field should be populated.

| Property | Type | Description |
|----------|------|-------------|
| `businessChainQuery` | `string` | The search query for the desired business chain. The query must be the full name of the business,... |
| `regionQuery` | `string` | The search query for the desired geo region, e.g. "Seattle", "United State". |

### `BusinessChainTargetingOptionDetails`

Represents a targetable business chain within a geo region. This will be populated in the business_chain_details field when targeting_type is `TARGETING_TYPE_BUSINESS_CHAIN`.

| Property | Type | Description |
|----------|------|-------------|
| `businessChain` | `string` | Output only. The display name of the business chain, e.g. "KFC", "Chase Bank". |
| `geoRegion` | `string` | Output only. The display name of the geographic region, e.g. "Ontario, Canada". |
| `geoRegionType` | `string` | Output only. The type of the geographic region. |

### `Campaign`

A single campaign.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | Output only. The unique ID of the advertiser the campaign belongs to. |
| `campaignBudgets` | `array<CampaignBudget>` | The list of budgets available to this campaign. If this field is not set, the campaign uses an un... |
| `campaignFlight` | `CampaignFlight` | Required. The planned spend and duration of the campaign. |
| `campaignGoal` | `CampaignGoal` | Required. The goal of the campaign. |
| `campaignId` | `string` | Output only. The unique ID of the campaign. Assigned by the system. |
| `displayName` | `string` | Required. The display name of the campaign. Must be UTF-8 encoded with a maximum size of 240 bytes. |
| `entityStatus` | `string` | Required. Controls whether or not the insertion orders under this campaign can spend their budget... |
| `frequencyCap` | `FrequencyCap` | Required. The frequency cap setting of the campaign. *Warning*: On **February 28, 2025**, frequen... |
| `name` | `string` | Output only. The resource name of the campaign. |
| `updateTime` | `string` | Output only. The timestamp when the campaign was last updated. Assigned by the system. |

### `CampaignBudget`

Settings that control how the campaign budget is allocated.

| Property | Type | Description |
|----------|------|-------------|
| `budgetAmountMicros` | `string` | Required. The total amount the linked insertion order segments can budget. The amount is in micro... |
| `budgetId` | `string` | The unique ID of the campaign budget. Assigned by the system. Do not set for new budgets. Must be... |
| `budgetUnit` | `string` | Required. Immutable. Specifies whether the budget is measured in currency or impressions. |
| `dateRange` | `DateRange` | Required. The date range for the campaign budget. Linked budget segments may have a different dat... |
| `displayName` | `string` | Required. The display name of the budget. Must be UTF-8 encoded with a maximum size of 240 bytes. |
| `externalBudgetId` | `string` | Immutable. The ID identifying this budget to the external source. If this field is set and the in... |
| `externalBudgetSource` | `string` | Required. The external source of the budget. |
| `invoiceGroupingId` | `string` | Immutable. The ID used to group budgets to be included the same invoice. If this field is set and... |
| `prismaConfig` | `PrismaConfig` | Additional metadata for use by the Mediaocean Prisma tool. Required for Mediaocean budgets. Only ... |

### `CampaignFlight`

Settings that track the planned spend and duration of a campaign.

| Property | Type | Description |
|----------|------|-------------|
| `plannedDates` | `DateRange` | Required. The dates that the campaign is expected to run. They are resolved relative to the paren... |
| `plannedSpendAmountMicros` | `string` | The amount the campaign is expected to spend for its given planned_dates. This will not limit ser... |

### `CampaignGoal`

Settings that control the goal of a campaign.

| Property | Type | Description |
|----------|------|-------------|
| `campaignGoalType` | `string` | Required. The type of the campaign goal. |
| `performanceGoal` | `PerformanceGoal` | Required. The performance goal of the campaign. Acceptable values for performance_goal_type are: ... |

### `CarrierAndIspAssignedTargetingOptionDetails`

Details for assigned carrier and ISP targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_CARRIER_AND_ISP`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the carrier or ISP. |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. All assigned carrier and ISP targeting opt... |
| `targetingOptionId` | `string` | Required. The targeting_option_id of a TargetingOption of type `TARGETING_TYPE_CARRIER_AND_ISP`. |

### `CarrierAndIspTargetingOptionDetails`

Represents a targetable carrier or ISP. This will be populated in the carrier_and_isp_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_CARRIER_AND_ISP`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the carrier or ISP. |
| `type` | `string` | Output only. The type indicating if it's carrier or ISP. |

### `CategoryAssignedTargetingOptionDetails`

Assigned category targeting option details. This will be populated in the category_details field when targeting_type is `TARGETING_TYPE_CATEGORY`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the category. |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |
| `targetingOptionId` | `string` | Required. The targeting_option_id field when targeting_type is `TARGETING_TYPE_CATEGORY`. |

### `CategoryTargetingOptionDetails`

Represents a targetable category. This will be populated in the category_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_CATEGORY`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the category. |

### `Channel`

A single channel. Channels are custom groups of related websites and apps.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | The ID of the advertiser that owns the channel. |
| `channelId` | `string` | Output only. The unique ID of the channel. Assigned by the system. |
| `displayName` | `string` | Required. The display name of the channel. Must be UTF-8 encoded with a maximum length of 240 bytes. |
| `name` | `string` | Output only. The resource name of the channel. |
| `negativelyTargetedLineItemCount` | `string` | Output only. Number of line items that are directly targeting this channel negatively. |
| `partnerId` | `string` | The ID of the partner that owns the channel. |
| `positivelyTargetedLineItemCount` | `string` | Output only. Number of line items that are directly targeting this channel positively. |

### `ChannelAssignedTargetingOptionDetails`

Details for assigned channel targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_CHANNEL`.

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | Required. ID of the channel. Should refer to the channel ID field on a [Partner-owned channel](pa... |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. For advertiser level assigned targeting op... |

### `CmHybridConfig`

Settings for advertisers that use both Campaign Manager 360 (CM360) and third-party ad servers.

| Property | Type | Description |
|----------|------|-------------|
| `cmAccountId` | `string` | Required. Immutable. Account ID of the CM360 Floodlight configuration linked with the DV360 adver... |
| `cmAdvertiserIds` | `array<string>` | Output only. The set of CM360 Advertiser IDs sharing the CM360 Floodlight configuration. |
| `cmFloodlightConfigId` | `string` | Required. Immutable. ID of the CM360 Floodlight configuration linked with the DV360 advertiser. |
| `cmFloodlightLinkingAuthorized` | `boolean` | Required. Immutable. By setting this field to `true`, you, on behalf of your company, authorize t... |
| `cmSyncableSiteIds` | `array<string>` | A list of CM360 sites whose placements will be synced to DV360 as creatives. If absent or empty i... |
| `dv360ToCmCostReportingEnabled` | `boolean` | Whether or not to report DV360 cost to CM360. |
| `dv360ToCmDataSharingEnabled` | `boolean` | Whether or not to include DV360 data in CM360 data transfer reports. |

### `CmTrackingAd`

A Campaign Manager 360 tracking ad.

| Property | Type | Description |
|----------|------|-------------|
| `cmAdId` | `string` | Optional. The ad ID of the campaign manager 360 tracking Ad. |
| `cmCreativeId` | `string` | Optional. The creative ID of the campaign manager 360 tracking Ad. |
| `cmPlacementId` | `string` | Optional. The placement ID of the campaign manager 360 tracking Ad. |

### `CombinedAudience`

Describes a combined audience resource.

| Property | Type | Description |
|----------|------|-------------|
| `combinedAudienceId` | `string` | Output only. The unique ID of the combined audience. Assigned by the system. |
| `displayName` | `string` | Output only. The display name of the combined audience. . |
| `name` | `string` | Output only. The resource name of the combined audience. |

### `CombinedAudienceGroup`

Details of combined audience group. All combined audience targeting settings are logically ‘OR’ of each other.

| Property | Type | Description |
|----------|------|-------------|
| `settings` | `array<CombinedAudienceTargetingSetting>` | Required. All combined audience targeting settings in combined audience group. Repeated settings ... |

### `CombinedAudienceTargetingSetting`

Details of combined audience targeting setting.

| Property | Type | Description |
|----------|------|-------------|
| `combinedAudienceId` | `string` | Required. Combined audience id of combined audience targeting setting. This id is combined_audien... |

### `CommonInStreamAttribute`

Common attributes for in-stream, non-skippable and bumper ads.

| Property | Type | Description |
|----------|------|-------------|
| `actionButtonLabel` | `string` | The text on the call-to-action button. |
| `actionHeadline` | `string` | The headline of the call-to-action banner. |
| `companionBanner` | `ImageAsset` | The image which shows next to the video ad. |
| `displayUrl` | `string` | The webpage address that appears with the ad. |
| `finalUrl` | `string` | The URL address of the webpage that people reach after they click the ad. |
| `trackingUrl` | `string` | The URL address loaded in the background for tracking purposes. |
| `video` | `YoutubeVideoDetails` | The YouTube video of the ad. |

### `Consent`

User consent status.

| Property | Type | Description |
|----------|------|-------------|
| `adPersonalization` | `string` | Represents consent for ad personalization. |
| `adUserData` | `string` | Represents consent for ad user data. |

### `ContactInfo`

Contact information defining a Customer Match audience member.

| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `string` | Country code of the member. Must also be set with the following fields: * hashed_first_name * has... |
| `hashedEmails` | `array<string>` | A list of SHA256 hashed email of the member. Before hashing, remove all whitespace and make sure ... |
| `hashedFirstName` | `string` | SHA256 hashed first name of the member. Before hashing, remove all whitespace and make sure the s... |
| `hashedLastName` | `string` | SHA256 hashed last name of the member. Before hashing, remove all whitespace and make sure the st... |
| `hashedPhoneNumbers` | `array<string>` | A list of SHA256 hashed phone numbers of the member. Before hashing, all phone numbers must be fo... |
| `zipCodes` | `array<string>` | A list of zip codes of the member. Must also be set with the following fields: * country_code * h... |

### `ContactInfoList`

Wrapper message for a list of contact information defining Customer Match audience members.

| Property | Type | Description |
|----------|------|-------------|
| `consent` | `Consent` | Input only. The consent setting for the users in contact_infos. Leaving this field unset indicate... |
| `contactInfos` | `array<ContactInfo>` | A list of ContactInfo objects defining Customer Match audience members. The size of members after... |

### `ContentDurationAssignedTargetingOptionDetails`

Details for content duration assigned targeting option. This will be populated in the content_duration_details field when targeting_type is `TARGETING_TYPE_CONTENT_DURATION`. Explicitly targeting all options is not supported. Remove all content duration targeting options to achieve this effect.

| Property | Type | Description |
|----------|------|-------------|
| `contentDuration` | `string` | Output only. The content duration. |
| `targetingOptionId` | `string` | Required. The targeting_option_id field when targeting_type is `TARGETING_TYPE_CONTENT_DURATION`. |

### `ContentDurationTargetingOptionDetails`

Represents a targetable content duration. This will be populated in the content_duration_details field when targeting_type is `TARGETING_TYPE_CONTENT_DURATION`.

| Property | Type | Description |
|----------|------|-------------|
| `contentDuration` | `string` | Output only. The content duration. |

### `ContentGenreAssignedTargetingOptionDetails`

Details for content genre assigned targeting option. This will be populated in the content_genre_details field when targeting_type is `TARGETING_TYPE_CONTENT_GENRE`. Explicitly targeting all options is not supported. Remove all content genre targeting options to achieve this effect.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the content genre. |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |
| `targetingOptionId` | `string` | Required. The targeting_option_id field when targeting_type is `TARGETING_TYPE_CONTENT_GENRE`. |

### `ContentGenreTargetingOptionDetails`

Represents a targetable content genre. This will be populated in the content_genre_details field when targeting_type is `TARGETING_TYPE_CONTENT_GENRE`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the content genre |

### `ContentInstreamPositionAssignedTargetingOptionDetails`

Assigned content instream position targeting option details. This will be populated in the content_instream_position_details field when targeting_type is `TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.

| Property | Type | Description |
|----------|------|-------------|
| `adType` | `string` | Output only. The ad type to target. Only applicable to insertion order targeting and new line ite... |
| `contentInstreamPosition` | `string` | Required. The content instream position for video or audio ads. |

### `ContentInstreamPositionTargetingOptionDetails`

Represents a targetable content instream position, which could be used by video and audio ads. This will be populated in the content_instream_position_details field when targeting_type is `TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.

| Property | Type | Description |
|----------|------|-------------|
| `contentInstreamPosition` | `string` | Output only. The content instream position. |

### `ContentOutstreamPositionAssignedTargetingOptionDetails`

Assigned content outstream position targeting option details. This will be populated in the content_outstream_position_details field when targeting_type is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.

| Property | Type | Description |
|----------|------|-------------|
| `adType` | `string` | Output only. The ad type to target. Only applicable to insertion order targeting and new line ite... |
| `contentOutstreamPosition` | `string` | Required. The content outstream position. |

### `ContentOutstreamPositionTargetingOptionDetails`

Represents a targetable content outstream position, which could be used by display and video ads. This will be populated in the content_outstream_position_details field when targeting_type is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.

| Property | Type | Description |
|----------|------|-------------|
| `contentOutstreamPosition` | `string` | Output only. The content outstream position. |

### `ContentStreamTypeAssignedTargetingOptionDetails`

Details for content stream type assigned targeting option. This will be populated in the content_stream_type_details field when targeting_type is `TARGETING_TYPE_CONTENT_STREAM_TYPE`. Explicitly targeting all options is not supported. Remove all content stream type targeting options to achieve this effect.

| Property | Type | Description |
|----------|------|-------------|
| `contentStreamType` | `string` | Output only. The content stream type. |
| `targetingOptionId` | `string` | Required. The targeting_option_id field when targeting_type is `TARGETING_TYPE_CONTENT_STREAM_TYPE`. |

### `ContentStreamTypeTargetingOptionDetails`

Represents a targetable content stream type. This will be populated in the content_stream_type_details field when targeting_type is `TARGETING_TYPE_CONTENT_STREAM_TYPE`.

| Property | Type | Description |
|----------|------|-------------|
| `contentStreamType` | `string` | Output only. The content stream type. |

### `ContentThemeAssignedTargetingOptionDetails`

Targeting details for content theme. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_CONTENT_THEME_EXCLUSION`.

| Property | Type | Description |
|----------|------|-------------|
| `contentTheme` | `string` | Output only. An enum for the DV360 content theme classifier. |
| `excludedContentTheme` | `string` | Required. An enum for the DV360 content theme classified to be EXCLUDED. |
| `excludedTargetingOptionId` | `string` | Required. ID of the content theme to be EXCLUDED. |

### `ContentThemeTargetingOptionDetails`

Represents a targetable content theme. This will be populated in the content_theme_details field of the TargetingOption when targeting_type is `TARGETING_TYPE_CONTENT_THEME_EXCLUSION`.

| Property | Type | Description |
|----------|------|-------------|
| `contentTheme` | `string` | Output only. An enum for the DV360 content theme content classifier. |

### `ConversionCountingConfig`

Settings that control how conversions are counted. All post-click conversions will be counted. A percentage value can be set for post-view conversions counting.

| Property | Type | Description |
|----------|------|-------------|
| `floodlightActivityConfigs` | `array<TrackingFloodlightActivityConfig>` | The Floodlight activity configs used to track conversions. The number of conversions counted is t... |
| `postViewCountPercentageMillis` | `string` | The percentage of post-view conversions to count, in millis (1/1000 of a percent). Must be betwee... |

### `CounterEvent`

Counter event of the creative.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the counter event. |
| `reportingName` | `string` | Required. The name used to identify this counter event in reports. |

### `CreateAdAssetRequest`

A request message for CreateAdAsset.

| Property | Type | Description |
|----------|------|-------------|
| `adAsset` | `AdAsset` | Required. The ad asset to create. Only supports assets of AdAssetType `AD_ASSET_TYPE_YOUTUBE_VIDEO`. |

### `CreateAssetRequest`

A request message for CreateAsset.

| Property | Type | Description |
|----------|------|-------------|
| `filename` | `string` | Required. The filename of the asset, including the file extension. The filename must be UTF-8 enc... |

### `CreateAssetResponse`

A response message for CreateAsset.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `Asset` | The uploaded asset, if successful. |

### `CreateAssignedTargetingOptionsRequest`

A request listing which assigned targeting options of a given targeting type should be created and added.

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptions` | `array<AssignedTargetingOption>` | Required. The assigned targeting options to create and add. |
| `targetingType` | `string` | Required. Identifies the type of this assigned targeting option. |

### `CreateSdfDownloadTaskRequest`

Request message for [SdfDownloadTaskService.CreateSdfDownloadTask].

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | The ID of the advertiser to download SDF for. |
| `idFilter` | `IdFilter` | Filters on entities by their entity IDs. |
| `inventorySourceFilter` | `InventorySourceFilter` | Filters on Inventory Sources by their IDs. |
| `parentEntityFilter` | `ParentEntityFilter` | Filters on selected file types. The entities in each file are filtered by a chosen set of filter ... |
| `partnerId` | `string` | The ID of the partner to download SDF for. |
| `version` | `string` | Required. The SDF version of the downloaded file. If set to `SDF_VERSION_UNSPECIFIED`, this will ... |

### `Creative`

A single Creative.

| Property | Type | Description |
|----------|------|-------------|
| `additionalDimensions` | `array<Dimensions>` | Optional. Additional dimensions. Applicable when creative_type is one of: * `CREATIVE_TYPE_STANDA... |
| `advertiserId` | `string` | Output only. The unique ID of the advertiser the creative belongs to. |
| `appendedTag` | `string` | Optional. Third-party HTML tracking tag to be appended to the creative tag. |
| `assets` | `array<AssetAssociation>` | Required. Assets associated to this creative. |
| `cmPlacementId` | `string` | Output only. The unique ID of the Campaign Manager 360 placement associated with the creative. Th... |
| `cmTrackingAd` | `CmTrackingAd` | Optional. The Campaign Manager 360 tracking ad associated with the creative. Optional for the fol... |
| `companionCreativeIds` | `array<string>` | Optional. The IDs of companion creatives for a video creative. You can assign existing display cr... |
| `counterEvents` | `array<CounterEvent>` | Optional. Counter events for a rich media creative. Counters track the number of times that a use... |
| `createTime` | `string` | Output only. The timestamp when the creative was created. Assigned by the system. |
| `creativeAttributes` | `array<string>` | Output only. A list of attributes of the creative that is generated by the system. |
| `creativeId` | `string` | Output only. The unique ID of the creative. Assigned by the system. |
| `creativeType` | `string` | Required. Immutable. The type of the creative. |
| `dimensions` | `Dimensions` | Required. Primary dimensions of the creative. Applicable to all creative types. The value of widt... |
| `displayName` | `string` | Required. The display name of the creative. Must be UTF-8 encoded with a maximum size of 240 bytes. |
| `dynamic` | `boolean` | Output only. Indicates whether the creative is dynamic. |
| `entityStatus` | `string` | Required. Controls whether or not the creative can serve. Accepted values are: * `ENTITY_STATUS_A... |
| `exitEvents` | `array<ExitEvent>` | Required. Exit events for this creative. An exit (also known as a click tag) is any area in your ... |
| `expandOnHover` | `boolean` | Optional. Indicates the creative will automatically expand on hover. Optional and only valid for ... |
| `expandingDirection` | `string` | Optional. Specifies the expanding direction of the creative. Required and only valid for third-pa... |
| `hostingSource` | `string` | Required. Indicates where the creative is hosted. |
| `html5Video` | `boolean` | Output only. Indicates the third-party VAST tag creative requires HTML5 Video support. Output onl... |
| `iasCampaignMonitoring` | `boolean` | Optional. Indicates whether Integral Ad Science (IAS) campaign monitoring is enabled. To enable t... |
| `integrationCode` | `string` | Optional. ID information used to link this creative to an external system. Must be UTF-8 encoded ... |
| `jsTrackerUrl` | `string` | Optional. JavaScript measurement URL from supported third-party verification providers (ComScore,... |
| `lineItemIds` | `array<string>` | Output only. The IDs of the line items this creative is associated with. To associate a creative ... |
| `mediaDuration` | `string` | Output only. Media duration of the creative. Applicable when creative_type is one of: * `CREATIVE... |
| `mp3Audio` | `boolean` | Output only. Indicates the third-party audio creative supports MP3. Output only and only valid fo... |
| `name` | `string` | Output only. The resource name of the creative. |
| `notes` | `string` | Optional. User notes for this creative. Must be UTF-8 encoded with a length of no more than 20,00... |
| `obaIcon` | `ObaIcon` | Optional. Specifies the OBA icon for a video creative. This field is only supported in the follow... |
| `oggAudio` | `boolean` | Output only. Indicates the third-party audio creative supports OGG. Output only and only valid fo... |
| `progressOffset` | `AudioVideoOffset` | Optional. Amount of time to play the video before counting a view. This field is required when sk... |
| `requireHtml5` | `boolean` | Optional. Indicates that the creative relies on HTML5 to render properly. Optional and only valid... |
| `requireMraid` | `boolean` | Optional. Indicates that the creative requires MRAID (Mobile Rich Media Ad Interface Definitions ... |
| `requirePingForAttribution` | `boolean` | Optional. Indicates that the creative will wait for a return ping for attribution. Only valid whe... |
| `reviewStatus` | `ReviewStatusInfo` | Output only. The current status of the creative review process. |
| `skipOffset` | `AudioVideoOffset` | Optional. Amount of time to play the video before the skip button appears. This field is required... |
| `skippable` | `boolean` | Optional. Whether the user can choose to skip a video creative. This field is only supported for ... |
| `thirdPartyTag` | `string` | Optional. The original third-party tag used for the creative. Required and only valid for third-p... |
| `thirdPartyUrls` | `array<ThirdPartyUrl>` | Optional. Tracking URLs from third parties to track interactions with a video creative. This fiel... |
| `timerEvents` | `array<TimerEvent>` | Optional. Timer custom events for a rich media creative. Timers track the time during which a use... |
| `trackerUrls` | `array<string>` | Optional. Tracking URLs for analytics providers or third-party ad technology vendors. The URLs mu... |
| `transcodes` | `array<Transcode>` | Output only. Audio/Video transcodes. Display & Video 360 transcodes the main asset into a number ... |
| `universalAdId` | `UniversalAdId` | Optional. An optional creative identifier provided by a registry that is unique across all platfo... |
| `updateTime` | `string` | Output only. The timestamp when the creative was last updated, either by the user or system (e.g.... |
| `vastTagUrl` | `string` | Optional. The URL of the VAST tag for a third-party VAST tag creative. Required and only valid fo... |
| `vpaid` | `boolean` | Output only. Indicates the third-party VAST tag creative requires VPAID (Digital Video Player-Ad ... |

### `CreativeConfig`

Creative requirements configuration for the inventory source.

| Property | Type | Description |
|----------|------|-------------|
| `creativeType` | `string` | The type of creative that can be assigned to the inventory source. Only the following types are s... |
| `displayCreativeConfig` | `InventorySourceDisplayCreativeConfig` | The configuration for display creatives. Applicable when creative_type is `CREATIVE_TYPE_STANDARD`. |
| `videoCreativeConfig` | `InventorySourceVideoCreativeConfig` | The configuration for video creatives. Applicable when creative_type is `CREATIVE_TYPE_VIDEO`. |

### `CustomBiddingAlgorithm`

A single custom bidding algorithm.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | Immutable. The unique ID of the advertiser that owns the custom bidding algorithm. |
| `customBiddingAlgorithmId` | `string` | Output only. The unique ID of the custom bidding algorithm. Assigned by the system. |
| `customBiddingAlgorithmType` | `string` | Required. Immutable. The type of custom bidding algorithm. |
| `displayName` | `string` | Required. The display name of the custom bidding algorithm. Must be UTF-8 encoded with a maximum ... |
| `entityStatus` | `string` | Controls whether or not the custom bidding algorithm can be used as a bidding strategy. Accepted ... |
| `modelDetails` | `array<CustomBiddingModelDetails>` | Output only. The details of custom bidding models for each advertiser who has access. This field ... |
| `name` | `string` | Output only. The resource name of the custom bidding algorithm. |
| `partnerId` | `string` | Immutable. The unique ID of the partner that owns the custom bidding algorithm. |
| `sharedAdvertiserIds` | `array<string>` | The IDs of the advertisers who have access to this algorithm. If advertiser_id is set, this field... |
| `thirdPartyOptimizationPartner` | `string` | Optional. Immutable. Designates the third party optimization partner that manages this algorithm. |

### `CustomBiddingAlgorithmRules`

A single custom bidding algorithm rules.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | Output only. Whether the rules resource is currently being used for scoring by the parent algorithm. |
| `createTime` | `string` | Output only. The time when the rules resource was created. |
| `customBiddingAlgorithmId` | `string` | Output only. The unique ID of the custom bidding algorithm that the rules resource belongs to. |
| `customBiddingAlgorithmRulesId` | `string` | Output only. The unique ID of the rules resource. |
| `error` | `CustomBiddingAlgorithmRulesError` | Output only. Error code of the rejected rules resource. This field will only be populated when th... |
| `name` | `string` | Output only. The resource name of the rules resource. |
| `rules` | `CustomBiddingAlgorithmRulesRef` | Required. Immutable. The reference to the uploaded AlgorithmRules file. |
| `state` | `string` | Output only. The state of the rules resource. |

### `CustomBiddingAlgorithmRulesError`

An error message for a CustomBiddingAlgorithmRules resource.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `string` | The type of error. |

### `CustomBiddingAlgorithmRulesRef`

The reference to the uploaded AlgorithmRules file. Retrieve the location to upload new AlgorithmRules file to using customBiddingAlgorithms.uploadRules.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | A resource name to be used in media.download to download the rules files. Or media.upload to uplo... |

### `CustomBiddingModelDetails`

The details of a custom bidding algorithm model for a single shared advertiser.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | The unique ID of the relevant advertiser. |
| `readinessState` | `string` | The readiness state of custom bidding model. |
| `suspensionState` | `string` | Output only. The suspension state of custom bidding model. |

### `CustomBiddingScript`

A single custom bidding script.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | Output only. Whether the script is currently being used for scoring by the parent algorithm. |
| `createTime` | `string` | Output only. The time when the script was created. |
| `customBiddingAlgorithmId` | `string` | Output only. The unique ID of the custom bidding algorithm the script belongs to. |
| `customBiddingScriptId` | `string` | Output only. The unique ID of the custom bidding script. |
| `errors` | `array<ScriptError>` | Output only. Error details of a rejected custom bidding script. This field will only be populated... |
| `name` | `string` | Output only. The resource name of the custom bidding script. |
| `script` | `CustomBiddingScriptRef` | The reference to the uploaded script file. |
| `state` | `string` | Output only. The state of the custom bidding script. |

### `CustomBiddingScriptRef`

The reference to the uploaded custom bidding script file.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | A resource name to be used in media.download to Download the script files. Or media.upload to Upl... |

### `CustomLabel`

The key and value of a custom label.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The key of the label. |
| `value` | `string` | The value of the label. |

### `CustomList`

Describes a custom list entity, such as a custom affinity or custom intent audience list.

| Property | Type | Description |
|----------|------|-------------|
| `customListId` | `string` | Output only. The unique ID of the custom list. Assigned by the system. |
| `displayName` | `string` | Output only. The display name of the custom list. . |
| `name` | `string` | Output only. The resource name of the custom list. |

### `CustomListGroup`

Details of custom list group. All custom list targeting settings are logically ‘OR’ of each other.

| Property | Type | Description |
|----------|------|-------------|
| `settings` | `array<CustomListTargetingSetting>` | Required. All custom list targeting settings in custom list group. Repeated settings with the sam... |

### `CustomListTargetingSetting`

Details of custom list targeting setting.

| Property | Type | Description |
|----------|------|-------------|
| `customListId` | `string` | Required. Custom id of custom list targeting setting. This id is custom_list_id. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DateRange`

A date range.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | The upper bound of the date range, inclusive. Must specify a positive value for `year`, `month`, ... |
| `startDate` | `Date` | The lower bound of the date range, inclusive. Must specify a positive value for `year`, `month`, ... |

### `DayAndTime`

Representation of time defined by day of the week and hour of the day.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | Required. Day of the week. |
| `hourOfDay` | `integer` | Required. Hour of the day. |
| `timeZoneResolution` | `string` | Required. The mechanism used to determine the relevant timezone. |

### `DayAndTimeAssignedTargetingOptionDetails`

Representation of a segment of time defined on a specific day of the week and with a start and end time. The time represented by `start_hour` must be before the time represented by `end_hour`.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | Required. The day of the week for this day and time targeting setting. |
| `endHour` | `integer` | Required. The end hour for day and time targeting. Must be between 1 (1 hour after start of day) ... |
| `startHour` | `integer` | Required. The start hour for day and time targeting. Must be between 0 (start of day) and 23 (1 h... |
| `timeZoneResolution` | `string` | Required. The mechanism used to determine which timezone to use for this day and time targeting s... |

### `DeleteAssignedTargetingOptionsRequest`

A request listing which assigned targeting options of a given targeting type should be deleted.

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptionIds` | `array<string>` | Required. The assigned targeting option IDs to delete. |
| `targetingType` | `string` | Required. Identifies the type of this assigned targeting option. |

### `DeviceMakeModelAssignedTargetingOptionDetails`

Assigned device make and model targeting option details. This will be populated in the device_make_model_details field when targeting_type is `TARGETING_TYPE_DEVICE_MAKE_MODEL`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the device make and model. |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |
| `targetingOptionId` | `string` | Required. The targeting_option_id field when targeting_type is `TARGETING_TYPE_DEVICE_MAKE_MODEL`. |

### `DeviceMakeModelTargetingOptionDetails`

Represents a targetable device make and model. This will be populated in the device_make_model_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_DEVICE_MAKE_MODEL`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the device make and model. |

### `DeviceTypeAssignedTargetingOptionDetails`

Targeting details for device type. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_DEVICE_TYPE`.

| Property | Type | Description |
|----------|------|-------------|
| `deviceType` | `string` | Required. The display name of the device type. |
| `youtubeAndPartnersBidMultiplier` | `number` | Output only. Bid multiplier allows you to show your ads more or less frequently based on the devi... |

### `DeviceTypeTargetingOptionDetails`

Represents a targetable device type. This will be populated in the device_type_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_DEVICE_TYPE`.

| Property | Type | Description |
|----------|------|-------------|
| `deviceType` | `string` | Output only. The device type that is used to be targeted. |

### `DigitalContentLabelAssignedTargetingOptionDetails`

Targeting details for digital content label. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.

| Property | Type | Description |
|----------|------|-------------|
| `excludedContentRatingTier` | `string` | Required. The display name of the digital content label rating tier to be EXCLUDED. |

### `DigitalContentLabelTargetingOptionDetails`

Represents a targetable digital content label rating tier. This will be populated in the digital_content_label_details field of the TargetingOption when targeting_type is `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.

| Property | Type | Description |
|----------|------|-------------|
| `contentRatingTier` | `string` | Output only. An enum for the content label brand safety tiers. |

### `Dimensions`

Dimensions.

| Property | Type | Description |
|----------|------|-------------|
| `heightPixels` | `integer` | The height in pixels. |
| `widthPixels` | `integer` | The width in pixels. |

### `DisplayVideoSourceAd`

The ad sourced from a DV360 creative.

| Property | Type | Description |
|----------|------|-------------|
| `creativeId` | `string` | The ID of the source creative. |

### `DoubleVerify`

Details of DoubleVerify settings.

| Property | Type | Description |
|----------|------|-------------|
| `appStarRating` | `DoubleVerifyAppStarRating` | Avoid bidding on apps with the star ratings. |
| `avoidedAgeRatings` | `array<string>` | Avoid bidding on apps with the age rating. |
| `brandSafetyCategories` | `DoubleVerifyBrandSafetyCategories` | DV Brand Safety Controls. |
| `customSegmentId` | `string` | The custom segment ID provided by DoubleVerify. The ID must start with "51" and consist of eight ... |
| `displayViewability` | `DoubleVerifyDisplayViewability` | Display viewability settings (applicable to display line items only). |
| `fraudInvalidTraffic` | `DoubleVerifyFraudInvalidTraffic` | Avoid Sites and Apps with historical Fraud & IVT Rates. |
| `videoViewability` | `DoubleVerifyVideoViewability` | Video viewability settings (applicable to video line items only). |

### `DoubleVerifyAppStarRating`

Details of DoubleVerify star ratings settings.

| Property | Type | Description |
|----------|------|-------------|
| `avoidInsufficientStarRating` | `boolean` | Avoid bidding on apps with insufficient star ratings. |
| `avoidedStarRating` | `string` | Avoid bidding on apps with the star ratings. |

### `DoubleVerifyBrandSafetyCategories`

Settings for brand safety controls.

| Property | Type | Description |
|----------|------|-------------|
| `avoidUnknownBrandSafetyCategory` | `boolean` | Unknown or unrateable. |
| `avoidedHighSeverityCategories` | `array<string>` | Brand safety high severity avoidance categories. |
| `avoidedMediumSeverityCategories` | `array<string>` | Brand safety medium severity avoidance categories. |

### `DoubleVerifyDisplayViewability`

Details of DoubleVerify display viewability settings.

| Property | Type | Description |
|----------|------|-------------|
| `iab` | `string` | Target web and app inventory to maximize IAB viewable rate. |
| `viewableDuring` | `string` | Target web and app inventory to maximize 100% viewable duration. |

### `DoubleVerifyFraudInvalidTraffic`

DoubleVerify Fraud & Invalid Traffic settings.

| Property | Type | Description |
|----------|------|-------------|
| `avoidInsufficientOption` | `boolean` | Insufficient Historical Fraud & IVT Stats. |
| `avoidedFraudOption` | `string` | Avoid Sites and Apps with historical Fraud & IVT. |

### `DoubleVerifyVideoViewability`

Details of DoubleVerify video viewability settings.

| Property | Type | Description |
|----------|------|-------------|
| `playerImpressionRate` | `string` | Target inventory to maximize impressions with 400x300 or greater player size. |
| `videoIab` | `string` | Target web inventory to maximize IAB viewable rate. |
| `videoViewableRate` | `string` | Target web inventory to maximize fully viewable rate. |

### `DuplicateLineItemRequest`

Request message for LineItemService.DuplicateLineItem.

| Property | Type | Description |
|----------|------|-------------|
| `containsEuPoliticalAds` | `string` | Whether this line item will serve European Union political ads. If contains_eu_political_ads has ... |
| `targetDisplayName` | `string` | The display name of the new line item. Must be UTF-8 encoded with a maximum size of 240 bytes. |

### `DuplicateLineItemResponse`

| Property | Type | Description |
|----------|------|-------------|
| `duplicateLineItemId` | `string` | The ID of the created line item. |

### `EditCustomerMatchMembersRequest`

Request message for FirstAndThirdPartyAudienceService.EditCustomerMatchMembers.

| Property | Type | Description |
|----------|------|-------------|
| `addedContactInfoList` | `ContactInfoList` | Input only. A list of contact information to define the members to be added. |
| `addedMobileDeviceIdList` | `MobileDeviceIdList` | Input only. A list of mobile device IDs to define the members to be added. |
| `advertiserId` | `string` | Required. The ID of the owner advertiser of the updated Customer Match FirstAndThirdPartyAudience. |
| `removedContactInfoList` | `ContactInfoList` | Input only. A list of contact information to define the members to be removed. |
| `removedMobileDeviceIdList` | `MobileDeviceIdList` | Input only. A list of mobile device IDs to define the members to be removed. |

### `EditCustomerMatchMembersResponse`

The response of FirstAndThirdPartyAudienceService.EditCustomerMatchMembers.

| Property | Type | Description |
|----------|------|-------------|
| `firstPartyAndPartnerAudienceId` | `string` | Required. The ID of the updated Customer Match FirstPartyAndPartnerAudience. |

### `EditGuaranteedOrderReadAccessorsRequest`

Request message for GuaranteedOrderService.EditGuaranteedOrderReadAccessors.

| Property | Type | Description |
|----------|------|-------------|
| `addedAdvertisers` | `array<string>` | The advertisers to add as read accessors to the guaranteed order. |
| `partnerId` | `string` | Required. The partner context in which the change is being made. |
| `readAccessInherited` | `boolean` | Whether to give all advertisers of the read/write accessor partner read access to the guaranteed ... |
| `removedAdvertisers` | `array<string>` | The advertisers to remove as read accessors to the guaranteed order. |

### `EditGuaranteedOrderReadAccessorsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `readAccessInherited` | `boolean` | Whether all advertisers of read_write_partner_id have read access to the guaranteed order. |
| `readAdvertiserIds` | `array<string>` | The IDs of advertisers with read access to the guaranteed order. |

### `EditInventorySourceReadWriteAccessorsRequest`

Request message for InventorySourceService.EditInventorySourceReadWriteAccessors.

| Property | Type | Description |
|----------|------|-------------|
| `advertisersUpdate` | `EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate` | The advertisers to add or remove from the list of advertisers that have read/write access to the ... |
| `assignPartner` | `boolean` | Set the partner context as read/write accessor of the inventory source. This will remove all othe... |
| `partnerId` | `string` | Required. The partner context by which the accessors change is being made. |

### `EditInventorySourceReadWriteAccessorsRequestAdvertisersUpdate`

Update to the list of advertisers with read/write access to the inventory source.

| Property | Type | Description |
|----------|------|-------------|
| `addedAdvertisers` | `array<string>` | The advertisers to add. |
| `removedAdvertisers` | `array<string>` | The advertisers to remove. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnvironmentAssignedTargetingOptionDetails`

Assigned environment targeting option details. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_ENVIRONMENT`.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `string` | Required. The serving environment. |

### `EnvironmentTargetingOptionDetails`

Represents a targetable environment. This will be populated in the environment_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_ENVIRONMENT`.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `string` | Output only. The serving environment. |

### `ExchangeAssignedTargetingOptionDetails`

Details for assigned exchange targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_EXCHANGE`.

| Property | Type | Description |
|----------|------|-------------|
| `exchange` | `string` | Required. The enum value for the exchange. |

### `ExchangeConfig`

Settings that control which exchanges are enabled for a partner.

| Property | Type | Description |
|----------|------|-------------|
| `enabledExchanges` | `array<ExchangeConfigEnabledExchange>` | All enabled exchanges in the partner. Duplicate enabled exchanges will be ignored. |

### `ExchangeConfigEnabledExchange`

An enabled exchange in the partner.

| Property | Type | Description |
|----------|------|-------------|
| `exchange` | `string` | The enabled exchange. |
| `googleAdManagerAgencyId` | `string` | Output only. Agency ID of Google Ad Manager. The field is only relevant when Google Ad Manager is... |
| `googleAdManagerBuyerNetworkId` | `string` | Output only. Network ID of Google Ad Manager. The field is only relevant when Google Ad Manager i... |
| `seatId` | `string` | Output only. Seat ID of the enabled exchange. |

### `ExchangeReviewStatus`

Exchange review status for the creative.

| Property | Type | Description |
|----------|------|-------------|
| `exchange` | `string` | The exchange reviewing the creative. |
| `status` | `string` | Status of the exchange review. |

### `ExchangeTargetingOptionDetails`

Represents a targetable exchange. This will be populated in the exchange_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_EXCHANGE`.

| Property | Type | Description |
|----------|------|-------------|
| `exchange` | `string` | Output only. The type of exchange. |

### `ExitEvent`

Exit event of the creative.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. The name of the click tag of the exit event. The name must be unique within one creativ... |
| `reportingName` | `string` | Optional. The name used to identify this event in reports. Leave it empty or unset for creatives ... |
| `type` | `string` | Required. The type of the exit event. |
| `url` | `string` | Required. The click through URL of the exit event. This is required when type is: * `EXIT_EVENT_T... |

### `FirstPartyAndPartnerAudience`

Describes a first or partner audience list used for targeting. First party audiences are created via usage of client data. Partner audiences are provided by Third Party data providers and can only be licensed to customers.

| Property | Type | Description |
|----------|------|-------------|
| `activeDisplayAudienceSize` | `string` | Output only. The estimated audience size for the Display network in the past month. If the size i... |
| `appId` | `string` | Optional. The app_id matches with the type of the mobile_device_ids being uploaded. Only applicab... |
| `audienceSource` | `string` | Output only. The source of the audience. |
| `audienceType` | `string` | Immutable. The type of the audience. |
| `contactInfoList` | `ContactInfoList` | Input only. A list of contact information to define the initial audience members. Only applicable... |
| `description` | `string` | Optional. The user-provided description of the audience. Only applicable to first party audiences. |
| `displayAudienceSize` | `string` | Output only. The estimated audience size for the Display network. If the size is less than 1000, ... |
| `displayDesktopAudienceSize` | `string` | Output only. The estimated desktop audience size in Display network. If the size is less than 100... |
| `displayMobileAppAudienceSize` | `string` | Output only. The estimated mobile app audience size in Display network. If the size is less than ... |
| `displayMobileWebAudienceSize` | `string` | Output only. The estimated mobile web audience size in Display network. If the size is less than ... |
| `displayName` | `string` | Optional. The display name of the first party and partner audience. |
| `firstPartyAndPartnerAudienceId` | `string` | Identifier. The unique ID of the first party and partner audience. Assigned by the system. |
| `firstPartyAndPartnerAudienceType` | `string` | Output only. Whether the audience is a first party and partner audience. |
| `gmailAudienceSize` | `string` | Output only. The estimated audience size for Gmail network. If the size is less than 1000, the nu... |
| `membershipDurationDays` | `string` | Optional. The duration in days that an entry remains in the audience after the qualifying event. ... |
| `mobileDeviceIdList` | `MobileDeviceIdList` | Input only. A list of mobile device IDs to define the initial audience members. Only applicable t... |
| `name` | `string` | Output only. The resource name of the first party and partner audience. |
| `youtubeAudienceSize` | `string` | Output only. The estimated audience size for YouTube network. If the size is less than 1000, the ... |

### `FirstPartyAndPartnerAudienceGroup`

Details of first party and partner audience group. All first party and partner audience targeting settings are logically ‘OR’ of each other.

| Property | Type | Description |
|----------|------|-------------|
| `settings` | `array<FirstPartyAndPartnerAudienceTargetingSetting>` | Required. All first party and partner audience targeting settings in first party and partner audi... |

### `FirstPartyAndPartnerAudienceTargetingSetting`

Details of first party and partner audience targeting setting.

| Property | Type | Description |
|----------|------|-------------|
| `firstPartyAndPartnerAudienceId` | `string` | Required. First party and partner audience id of the first party and partner audience targeting s... |
| `recency` | `string` | Required. The recency of the first party and partner audience targeting setting. Only applicable ... |

### `FixedBidStrategy`

A strategy that uses a fixed bidding price.

| Property | Type | Description |
|----------|------|-------------|
| `bidAmountMicros` | `string` | The fixed bid amount, in micros of the advertiser's currency. For insertion order entity, bid_amo... |

### `FloodlightActivity`

A single Floodlight activity.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserIds` | `array<string>` | Output only. IDs of the advertisers that have access to the parent Floodlight group. Only adverti... |
| `displayName` | `string` | Required. The display name of the Floodlight activity. |
| `floodlightActivityId` | `string` | Output only. The unique ID of the Floodlight activity. Assigned by the system. |
| `floodlightGroupId` | `string` | Required. Immutable. The ID of the parent Floodlight group. |
| `name` | `string` | Output only. The resource name of the Floodlight activity. |
| `remarketingConfigs` | `array<RemarketingConfig>` | Output only. A list of configuration objects designating whether remarketing for this Floodlight ... |
| `servingStatus` | `string` | Optional. Whether the Floodlight activity is served. |
| `sslRequired` | `boolean` | Output only. Whether tags are required to be compliant. |

### `FloodlightGroup`

A single Floodlight group.

| Property | Type | Description |
|----------|------|-------------|
| `activeViewConfig` | `ActiveViewVideoViewabilityMetricConfig` | The Active View video viewability metric configuration for the Floodlight group. |
| `customVariables` | `object` | User-defined custom variables owned by the Floodlight group. Use custom Floodlight variables to c... |
| `displayName` | `string` | Required. The display name of the Floodlight group. |
| `floodlightGroupId` | `string` | Output only. The unique ID of the Floodlight group. Assigned by the system. |
| `lookbackWindow` | `LookbackWindow` | Required. The lookback window for the Floodlight group. Both click_days and impression_days are r... |
| `name` | `string` | Output only. The resource name of the Floodlight group. |
| `webTagType` | `string` | Required. The web tag type enabled for the Floodlight group. |

### `FrequencyCap`

Settings that control the number of times a user may be shown with the same ad during a given time period.

| Property | Type | Description |
|----------|------|-------------|
| `maxImpressions` | `integer` | The maximum number of times a user may be shown the same ad during this period. Must be greater t... |
| `maxViews` | `integer` | Optional. The maximum number of times a user may click-through or fully view an ad during this pe... |
| `timeUnit` | `string` | The time unit in which the frequency cap will be applied. Required when unlimited is `false`. |
| `timeUnitCount` | `integer` | The number of time_unit the frequency cap will last. Required when unlimited is `false`. The foll... |
| `unlimited` | `boolean` | Whether unlimited frequency capping is applied. When this field is set to `true`, the remaining f... |

### `GenderAssignedTargetingOptionDetails`

Details for assigned gender targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_GENDER`.

| Property | Type | Description |
|----------|------|-------------|
| `gender` | `string` | Required. The gender of the audience. |

### `GenderTargetingOptionDetails`

Represents a targetable gender. This will be populated in the gender_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_GENDER`.

| Property | Type | Description |
|----------|------|-------------|
| `gender` | `string` | Output only. The gender of an audience. |

### `GenerateDefaultLineItemRequest`

Request message for LineItemService.GenerateDefaultLineItem.

| Property | Type | Description |
|----------|------|-------------|
| `containsEuPoliticalAds` | `string` | Whether this line item will serve European Union political ads. If contains_eu_political_ads has ... |
| `displayName` | `string` | Required. The display name of the line item. Must be UTF-8 encoded with a maximum size of 240 bytes. |
| `insertionOrderId` | `string` | Required. The unique ID of the insertion order that the line item belongs to. |
| `lineItemType` | `string` | Required. The type of the line item. |
| `mobileApp` | `MobileApp` | The mobile app promoted by the line item. This is applicable only when line_item_type is either `... |

### `GeoRegionAssignedTargetingOptionDetails`

Details for assigned geographic region targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_GEO_REGION`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the geographic region (e.g., "Ontario, Canada"). |
| `geoRegionType` | `string` | Output only. The type of geographic region targeting. |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |
| `targetingOptionId` | `string` | Required. The targeting_option_id of a TargetingOption of type `TARGETING_TYPE_GEO_REGION`. |

### `GeoRegionSearchTerms`

Search terms for geo region targeting options.

| Property | Type | Description |
|----------|------|-------------|
| `geoRegionQuery` | `string` | The search query for the desired geo region. The query can be a prefix, e.g. "New Yor", "Seattle"... |

### `GeoRegionTargetingOptionDetails`

Represents a targetable geographic region. This will be populated in the geo_region_details field when targeting_type is `TARGETING_TYPE_GEO_REGION`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the geographic region (e.g., "Ontario, Canada"). |
| `geoRegionType` | `string` | Output only. The type of geographic region targeting. |

### `GoogleAudience`

Describes a Google audience resource. Includes Google audience lists.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the Google audience. . |
| `googleAudienceId` | `string` | Output only. The unique ID of the Google audience. Assigned by the system. |
| `googleAudienceType` | `string` | Output only. The type of Google audience. . |
| `name` | `string` | Output only. The resource name of the google audience. |

### `GoogleAudienceGroup`

Details of Google audience group. All Google audience targeting settings are logically ‘OR’ of each other.

| Property | Type | Description |
|----------|------|-------------|
| `settings` | `array<GoogleAudienceTargetingSetting>` | Required. All Google audience targeting settings in Google audience group. Repeated settings with... |

### `GoogleAudienceTargetingSetting`

Details of Google audience targeting setting.

| Property | Type | Description |
|----------|------|-------------|
| `googleAudienceId` | `string` | Required. Google audience id of the Google audience targeting setting. This id is google_audience... |

### `GoogleBytestreamMedia`

Media resource.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Name of the media resource. |

### `GuaranteedOrder`

A guaranteed order. Guaranteed orders are parent entity of guaranteed inventory sources. When creating a guaranteed inventory source, a guaranteed order ID must be assigned to the inventory source.

| Property | Type | Description |
|----------|------|-------------|
| `defaultAdvertiserId` | `string` | Output only. The ID of default advertiser of the guaranteed order. The default advertiser is eith... |
| `defaultCampaignId` | `string` | The ID of the default campaign that is assigned to the guaranteed order. The default campaign mus... |
| `displayName` | `string` | Required. The display name of the guaranteed order. Must be UTF-8 encoded with a maximum size of ... |
| `exchange` | `string` | Required. Immutable. The exchange where the guaranteed order originated. |
| `guaranteedOrderId` | `string` | Output only. The unique identifier of the guaranteed order. The guaranteed order IDs have the for... |
| `legacyGuaranteedOrderId` | `string` | Output only. The legacy ID of the guaranteed order. Assigned by the original exchange. The legacy... |
| `name` | `string` | Output only. The resource name of the guaranteed order. |
| `publisherName` | `string` | Required. The publisher name of the guaranteed order. Must be UTF-8 encoded with a maximum size o... |
| `readAccessInherited` | `boolean` | Whether all advertisers of read_write_partner_id have read access to the guaranteed order. Only a... |
| `readAdvertiserIds` | `array<string>` | The IDs of advertisers with read access to the guaranteed order. This field must not include the ... |
| `readWriteAdvertiserId` | `string` | The advertiser with read/write access to the guaranteed order. This is also the default advertise... |
| `readWritePartnerId` | `string` | The partner with read/write access to the guaranteed order. |
| `status` | `GuaranteedOrderStatus` | The status settings of the guaranteed order. |
| `updateTime` | `string` | Output only. The timestamp when the guaranteed order was last updated. Assigned by the system. |

### `GuaranteedOrderStatus`

The status settings of the guaranteed order.

| Property | Type | Description |
|----------|------|-------------|
| `configStatus` | `string` | Output only. The configuration status of the guaranteed order. Acceptable values are `PENDING` an... |
| `entityPauseReason` | `string` | The user-provided reason for pausing this guaranteed order. Must be UTF-8 encoded with a maximum ... |
| `entityStatus` | `string` | Whether or not the guaranteed order is servable. Acceptable values are `ENTITY_STATUS_ACTIVE`, `E... |

### `HouseholdIncomeAssignedTargetingOptionDetails`

Details for assigned household income targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_HOUSEHOLD_INCOME`.

| Property | Type | Description |
|----------|------|-------------|
| `householdIncome` | `string` | Required. The household income of the audience. |

### `HouseholdIncomeTargetingOptionDetails`

Represents a targetable household income. This will be populated in the household_income_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_HOUSEHOLD_INCOME`.

| Property | Type | Description |
|----------|------|-------------|
| `householdIncome` | `string` | Output only. The household income of an audience. |

### `IdFilter`

A filtering option that filters entities by their entity IDs.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupAdIds` | `array<string>` | YouTube Ads to download by ID. All IDs must belong to the same Advertiser or Partner specified in... |
| `adGroupIds` | `array<string>` | YouTube Ad Groups to download by ID. All IDs must belong to the same Advertiser or Partner specif... |
| `adGroupQaIds` | `array<string>` | Optional. YouTube Ad Groups, by ID, to download in QA format. All IDs must belong to the same Adv... |
| `campaignIds` | `array<string>` | Campaigns to download by ID. All IDs must belong to the same Advertiser or Partner specified in C... |
| `insertionOrderIds` | `array<string>` | Insertion Orders to download by ID. All IDs must belong to the same Advertiser or Partner specifi... |
| `lineItemIds` | `array<string>` | Line Items to download by ID. All IDs must belong to the same Advertiser or Partner specified in ... |
| `lineItemQaIds` | `array<string>` | Optional. Line Items, by ID, to download in QA format. All IDs must belong to the same Advertiser... |
| `mediaProductIds` | `array<string>` | Media Products to download by ID. All IDs must belong to the same Advertiser or Partner specified... |

### `ImageAsset`

Meta data of an image asset.

| Property | Type | Description |
|----------|------|-------------|
| `fileSize` | `string` | Output only. File size of the image asset in bytes. |
| `fullSize` | `Dimensions` | Output only. Metadata for this image at its original size. |
| `mimeType` | `string` | Output only. MIME type of the image asset. |

### `InStreamAd`

Details for an in-stream ad.

| Property | Type | Description |
|----------|------|-------------|
| `commonInStreamAttribute` | `CommonInStreamAttribute` | Common ad attributes. |
| `customParameters` | `object` | The custom parameters to pass custom values to tracking URL template. |

### `InsertionOrder`

A single insertion order.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | Output only. The unique ID of the advertiser the insertion order belongs to. |
| `bidStrategy` | `BiddingStrategy` | Optional. The bidding strategy of the insertion order. By default, fixed_bid is set. |
| `budget` | `InsertionOrderBudget` | Required. The budget allocation settings of the insertion order. |
| `campaignId` | `string` | Required. Immutable. The unique ID of the campaign that the insertion order belongs to. |
| `displayName` | `string` | Required. The display name of the insertion order. Must be UTF-8 encoded with a maximum size of 2... |
| `entityStatus` | `string` | Required. Controls whether or not the insertion order can spend its budget and bid on inventory. ... |
| `frequencyCap` | `FrequencyCap` | Required. The frequency capping setting of the insertion order. |
| `insertionOrderId` | `string` | Output only. The unique ID of the insertion order. Assigned by the system. |
| `insertionOrderType` | `string` | Optional. The type of insertion order. If this field is unspecified in creation, the value defaul... |
| `integrationDetails` | `IntegrationDetails` | Optional. Additional integration details of the insertion order. |
| `kpi` | `Kpi` | Required. The key performance indicator (KPI) of the insertion order. This is represented as refe... |
| `name` | `string` | Output only. The resource name of the insertion order. |
| `optimizationObjective` | `string` | Optional. Required. The optimization objective of the insertion order. |
| `pacing` | `Pacing` | Required. The budget spending speed setting of the insertion order. pacing_type `PACING_TYPE_ASAP... |
| `partnerCosts` | `array<PartnerCost>` | Optional. The partner costs associated with the insertion order. If absent or empty in CreateInse... |
| `reservationType` | `string` | Output only. The reservation type of the insertion order. |
| `updateTime` | `string` | Output only. The timestamp when the insertion order was last updated. Assigned by the system. |

### `InsertionOrderBudget`

Settings that control how insertion order budget is allocated.

| Property | Type | Description |
|----------|------|-------------|
| `automationType` | `string` | Optional. The type of automation used to manage bid and budget for the insertion order. If this f... |
| `budgetSegments` | `array<InsertionOrderBudgetSegment>` | Required. The list of budget segments. Use a budget segment to specify a specific budget for a gi... |
| `budgetUnit` | `string` | Required. Immutable. The budget unit specifies whether the budget is currency based or impression... |

### `InsertionOrderBudgetSegment`

Settings that control the budget of a single budget segment.

| Property | Type | Description |
|----------|------|-------------|
| `budgetAmountMicros` | `string` | Required. The budget amount the insertion order will spend for the given date_range. The amount i... |
| `campaignBudgetId` | `string` | Optional. The budget_id of the campaign budget that this insertion order budget segment is a part... |
| `dateRange` | `DateRange` | Required. The start and end date settings of the budget segment. They are resolved relative to th... |
| `description` | `string` | Optional. The budget segment description. It can be used to enter Purchase Order information for ... |

### `IntegralAdScience`

Details of Integral Ad Science settings.

| Property | Type | Description |
|----------|------|-------------|
| `customSegmentId` | `array<string>` | The custom segment ID provided by Integral Ad Science. The ID must be between `1000001` and `1999... |
| `displayViewability` | `string` | Display Viewability section (applicable to display line items only). |
| `excludeUnrateable` | `boolean` | Brand Safety - **Unrateable**. |
| `excludedAdFraudRisk` | `string` | Ad Fraud settings. |
| `excludedAdultRisk` | `string` | Brand Safety - **Adult content**. |
| `excludedAlcoholRisk` | `string` | Brand Safety - **Alcohol**. |
| `excludedDrugsRisk` | `string` | Brand Safety - **Drugs**. |
| `excludedGamblingRisk` | `string` | Brand Safety - **Gambling**. |
| `excludedHateSpeechRisk` | `string` | Brand Safety - **Hate speech**. |
| `excludedIllegalDownloadsRisk` | `string` | Brand Safety - **Illegal downloads**. |
| `excludedOffensiveLanguageRisk` | `string` | Brand Safety - **Offensive language**. |
| `excludedViolenceRisk` | `string` | Brand Safety - **Violence**. |
| `qualitySyncCustomSegmentId` | `array<string>` | Optional. The quality sync custom segment ID provided by Integral Ad Science. The ID must be betw... |
| `traqScoreOption` | `string` | True advertising quality (applicable to Display line items only). |
| `videoViewability` | `string` | Video Viewability Section (applicable to video line items only). |

### `IntegrationDetails`

Integration details of an entry.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Additional details of the entry in string format. Must be UTF-8 encoded with a length of no more ... |
| `integrationCode` | `string` | An external identifier to be associated with the entry. The integration code will show up togethe... |

### `InventorySource`

An inventory source. Next ID: 22

| Property | Type | Description |
|----------|------|-------------|
| `commitment` | `string` | Whether the inventory source has a guaranteed or non-guaranteed delivery. |
| `creativeConfigs` | `array<CreativeConfig>` | The creative requirements of the inventory source. Not applicable for auction packages. |
| `dealId` | `string` | The ID in the exchange space that uniquely identifies the inventory source. Must be unique across... |
| `deliveryMethod` | `string` | The delivery method of the inventory source. * For non-guaranteed inventory sources, the only acc... |
| `displayName` | `string` | The display name of the inventory source. Must be UTF-8 encoded with a maximum size of 240 bytes. |
| `exchange` | `string` | The exchange to which the inventory source belongs. |
| `guaranteedOrderId` | `string` | Immutable. The ID of the guaranteed order that this inventory source belongs to. Only applicable ... |
| `inventorySourceId` | `string` | Output only. The unique ID of the inventory source. Assigned by the system. |
| `inventorySourceProductType` | `string` | Output only. The product type of the inventory source, denoting the way through which it sells in... |
| `inventorySourceType` | `string` | Denotes the type of the inventory source. |
| `name` | `string` | Output only. The resource name of the inventory source. |
| `publisherName` | `string` | The publisher/seller name of the inventory source. |
| `rateDetails` | `RateDetails` | Required. The rate details of the inventory source. |
| `readAdvertiserIds` | `array<string>` | Output only. The IDs of advertisers with read-only access to the inventory source. |
| `readPartnerIds` | `array<string>` | Output only. The IDs of partners with read-only access to the inventory source. All advertisers o... |
| `readWriteAccessors` | `InventorySourceAccessors` | The partner or advertisers that have read/write access to the inventory source. Output only when ... |
| `status` | `InventorySourceStatus` | The status settings of the inventory source. |
| `timeRange` | `TimeRange` | The time range when this inventory source starts and stops serving. |
| `updateTime` | `string` | Output only. The timestamp when the inventory source was last updated. Assigned by the system. |

### `InventorySourceAccessors`

The partner or advertisers with access to the inventory source.

| Property | Type | Description |
|----------|------|-------------|
| `advertisers` | `InventorySourceAccessorsAdvertiserAccessors` | The advertisers with access to the inventory source. All advertisers must belong to the same part... |
| `partner` | `InventorySourceAccessorsPartnerAccessor` | The partner with access to the inventory source. |

### `InventorySourceAccessorsAdvertiserAccessors`

The advertisers with access to the inventory source.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserIds` | `array<string>` | The IDs of the advertisers. |

### `InventorySourceAccessorsPartnerAccessor`

The partner with access to the inventory source.

| Property | Type | Description |
|----------|------|-------------|
| `partnerId` | `string` | The ID of the partner. |

### `InventorySourceAssignedTargetingOptionDetails`

Targeting details for inventory source. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_INVENTORY_SOURCE`.

| Property | Type | Description |
|----------|------|-------------|
| `inventorySourceId` | `string` | Required. ID of the inventory source. Should refer to the inventory_source_id field of an Invento... |

### `InventorySourceDisplayCreativeConfig`

The configuration for display creatives.

| Property | Type | Description |
|----------|------|-------------|
| `creativeSize` | `Dimensions` | The size requirements for display creatives that can be assigned to the inventory source. |

### `InventorySourceFilter`

A filtering option for filtering on Inventory Source entities.

| Property | Type | Description |
|----------|------|-------------|
| `inventorySourceIds` | `array<string>` | Inventory Sources to download by ID. All IDs must belong to the same Advertiser or Partner specif... |

### `InventorySourceGroup`

A collection of targetable inventory sources.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Required. The display name of the inventory source group. Must be UTF-8 encoded with a maximum si... |
| `inventorySourceGroupId` | `string` | Output only. The unique ID of the inventory source group. Assigned by the system. |
| `name` | `string` | Output only. The resource name of the inventory source group. |

### `InventorySourceGroupAssignedTargetingOptionDetails`

Targeting details for inventory source group. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_INVENTORY_SOURCE_GROUP`.

| Property | Type | Description |
|----------|------|-------------|
| `inventorySourceGroupId` | `string` | Required. ID of the inventory source group. Should refer to the inventory_source_group_id field o... |

### `InventorySourceStatus`

The status related settings of the inventory source.

| Property | Type | Description |
|----------|------|-------------|
| `configStatus` | `string` | Output only. The configuration status of the inventory source. Only applicable for guaranteed inv... |
| `entityPauseReason` | `string` | The user-provided reason for pausing this inventory source. Must not exceed 100 characters. Only ... |
| `entityStatus` | `string` | Whether or not the inventory source is servable. Acceptable values are `ENTITY_STATUS_ACTIVE`, `E... |
| `sellerPauseReason` | `string` | Output only. The seller-provided reason for pausing this inventory source. Only applicable for in... |
| `sellerStatus` | `string` | Output only. The status set by the seller for the inventory source. Only applicable for inventory... |

### `InventorySourceVideoCreativeConfig`

The configuration for video creatives.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | The duration requirements for the video creatives that can be assigned to the inventory source. |

### `Invoice`

A single invoice.

| Property | Type | Description |
|----------|------|-------------|
| `budgetInvoiceGroupingId` | `string` | The budget grouping ID for this invoice. This field will only be set if the invoice level of the ... |
| `budgetSummaries` | `array<BudgetSummary>` | The list of summarized information for each budget associated with this invoice. This field will ... |
| `correctedInvoiceId` | `string` | The ID of the original invoice being adjusted by this invoice, if applicable. May appear on the i... |
| `currencyCode` | `string` | The currency used in the invoice in ISO 4217 format. |
| `displayName` | `string` | The display name of the invoice. |
| `dueDate` | `Date` | The date when the invoice is due. |
| `invoiceId` | `string` | The unique ID of the invoice. |
| `invoiceType` | `string` | The type of invoice document. |
| `issueDate` | `Date` | The date when the invoice was issued. |
| `name` | `string` | The resource name of the invoice. |
| `nonBudgetMicros` | `string` | The total amount of costs or adjustments not tied to a particular budget, in micros of the invoic... |
| `paymentsAccountId` | `string` | The ID of the payments account the invoice belongs to. Appears on the invoice PDF as `Billing Acc... |
| `paymentsProfileId` | `string` | The ID of the payments profile the invoice belongs to. Appears on the invoice PDF as `Billing ID`. |
| `pdfUrl` | `string` | The URL to download a PDF copy of the invoice. This URL is user specific and requires a valid OAu... |
| `purchaseOrderNumber` | `string` | Purchase order number associated with the invoice. |
| `replacedInvoiceIds` | `array<string>` | The ID(s) of any originally issued invoice that is being cancelled by this invoice, if applicable... |
| `serviceDateRange` | `DateRange` | The service start and end dates which are covered by this invoice. |
| `subtotalAmountMicros` | `string` | The pre-tax subtotal amount, in micros of the invoice's currency. For example, if currency_code i... |
| `totalAmountMicros` | `string` | The invoice total amount, in micros of the invoice's currency. For example, if currency_code is `... |
| `totalTaxAmountMicros` | `string` | The sum of all taxes in invoice, in micros of the invoice's currency. For example, if currency_co... |

### `KeywordAssignedTargetingOptionDetails`

Details for assigned keyword targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_KEYWORD`.

| Property | Type | Description |
|----------|------|-------------|
| `keyword` | `string` | Required. The keyword, for example `car insurance`. Positive keyword cannot be offensive word. Mu... |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |

### `Kpi`

Settings that control the key performance indicator, or KPI, of an insertion order.

| Property | Type | Description |
|----------|------|-------------|
| `kpiAlgorithmId` | `string` | Optional. Custom Bidding Algorithm ID associated with KPI_CUSTOM_IMPRESSION_VALUE_OVER_COST. This... |
| `kpiAmountMicros` | `string` | The goal amount, in micros of the advertiser's currency. Applicable when kpi_type is one of: * `K... |
| `kpiPercentageMicros` | `string` | The decimal representation of the goal percentage in micros. Applicable when kpi_type is one of: ... |
| `kpiString` | `string` | A KPI string, which can be empty. Must be UTF-8 encoded with a length of no more than 100 charact... |
| `kpiType` | `string` | Required. The type of KPI. |

### `LanguageAssignedTargetingOptionDetails`

Details for assigned language targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_LANGUAGE`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the language (e.g., "French"). |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. All assigned language targeting options on... |
| `targetingOptionId` | `string` | Required. The targeting_option_id of a TargetingOption of type `TARGETING_TYPE_LANGUAGE`. |

### `LanguageTargetingOptionDetails`

Represents a targetable language. This will be populated in the language_details field when targeting_type is `TARGETING_TYPE_LANGUAGE`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the language (e.g., "French"). |

### `LineItem`

A single line item.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | Output only. The unique ID of the advertiser the line item belongs to. |
| `bidStrategy` | `BiddingStrategy` | Required. The bidding strategy of the line item. |
| `budget` | `LineItemBudget` | Required. The budget allocation setting of the line item. |
| `campaignId` | `string` | Output only. The unique ID of the campaign that the line item belongs to. |
| `containsEuPoliticalAds` | `string` | Whether this line item will serve European Union political ads. If contains_eu_political_ads has ... |
| `conversionCounting` | `ConversionCountingConfig` | The conversion tracking setting of the line item. |
| `creativeIds` | `array<string>` | The IDs of the creatives associated with the line item. |
| `displayName` | `string` | Required. The display name of the line item. Must be UTF-8 encoded with a maximum size of 240 bytes. |
| `entityStatus` | `string` | Required. Controls whether or not the line item can spend its budget and bid on inventory. * For ... |
| `excludeNewExchanges` | `boolean` | Whether to exclude new exchanges from automatically being targeted by the line item. This field i... |
| `flight` | `LineItemFlight` | Required. The start and end time of the line item's flight. |
| `frequencyCap` | `FrequencyCap` | Required. The impression frequency cap settings of the line item. The max_impressions field in th... |
| `insertionOrderId` | `string` | Required. Immutable. The unique ID of the insertion order that the line item belongs to. |
| `integrationDetails` | `IntegrationDetails` | Integration details of the line item. |
| `lineItemId` | `string` | Output only. The unique ID of the line item. Assigned by the system. |
| `lineItemType` | `string` | Required. Immutable. The type of the line item. |
| `mobileApp` | `MobileApp` | The mobile app promoted by the line item. This is applicable only when line_item_type is either `... |
| `name` | `string` | Output only. The resource name of the line item. |
| `pacing` | `Pacing` | Required. The budget spending speed setting of the line item. |
| `partnerCosts` | `array<PartnerCost>` | The partner costs associated with the line item. If absent or empty in CreateLineItem method, the... |
| `partnerRevenueModel` | `PartnerRevenueModel` | Required. The partner revenue model setting of the line item. |
| `reservationType` | `string` | Output only. The reservation type of the line item. |
| `targetingExpansion` | `TargetingExpansionConfig` | The [optimized targeting](//support.google.com/displayvideo/answer/12060859) settings of the line... |
| `updateTime` | `string` | Output only. The timestamp when the line item was last updated. Assigned by the system. |
| `warningMessages` | `array<string>` | Output only. The warning messages generated by the line item. These warnings do not block saving ... |
| `youtubeAndPartnersSettings` | `YoutubeAndPartnersSettings` | Output only. Settings specific to YouTube and Partners line items. |

### `LineItemAssignedTargetingOption`

Wrapper object associating an assigned_targeting_option resource and the line item it is assigned to.

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOption` | `AssignedTargetingOption` | The assigned targeting option resource. |
| `lineItemId` | `string` | The ID of the line item the assigned targeting option is assigned to. |

### `LineItemBudget`

Settings that control how budget is allocated.

| Property | Type | Description |
|----------|------|-------------|
| `budgetAllocationType` | `string` | Required. The type of the budget allocation. `LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC` is only... |
| `budgetUnit` | `string` | Output only. The budget unit specifies whether the budget is currency based or impression based. ... |
| `maxAmount` | `string` | The maximum budget amount the line item will spend. Must be greater than 0. When budget_allocatio... |

### `LineItemFlight`

Settings that control the active duration of a line item.

| Property | Type | Description |
|----------|------|-------------|
| `dateRange` | `DateRange` | The flight start and end dates of the line item. They are resolved relative to the parent adverti... |
| `flightDateType` | `string` | Required. The type of the line item's flight dates. |

### `ListAdAssetsResponse`

A response message for ListAdAssets.

| Property | Type | Description |
|----------|------|-------------|
| `adAssets` | `array<AdAsset>` | The list of ad assets. The list will only contain assets of AdAssetType `AD_ASSET_TYPE_YOUTUBE_VI... |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListAdGroupAdsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `adGroupAds` | `array<AdGroupAd>` | The list of ads. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListAdGroupAssignedTargetingOptionsResponse`

Response message for ListAdGroupAssignedTargetingOptions.

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options. This list will be absent if empty. |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `ListAdGroupsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `adGroups` | `array<AdGroup>` | The list of ad groups. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListAdvertiserAssignedTargetingOptionsResponse`

Response message for ListAdvertiserAssignedTargetingOptions.

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options. This list will be absent if empty. |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `ListAdvertisersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `advertisers` | `array<Advertiser>` | The list of advertisers. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListAssignedInventorySourcesResponse`

Response message for AssignedInventorySourceService.ListAssignedInventorySources.

| Property | Type | Description |
|----------|------|-------------|
| `assignedInventorySources` | `array<AssignedInventorySource>` | The list of assigned inventory sources. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListAssignedLocationsResponse`

Response message for AssignedLocationService.ListAssignedLocations.

| Property | Type | Description |
|----------|------|-------------|
| `assignedLocations` | `array<AssignedLocation>` | The list of assigned locations. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListCampaignAssignedTargetingOptionsResponse`

Response message for ListCampaignAssignedTargetingOptions.

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options. This list will be absent if empty. |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `ListCampaignsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `campaigns` | `array<Campaign>` | The list of campaigns. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListChannelsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `channels` | `array<Channel>` | The list of channels. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListCombinedAudiencesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `combinedAudiences` | `array<CombinedAudience>` | The list of combined audiences. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListCreativesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `creatives` | `array<Creative>` | The list of creatives. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListCustomBiddingAlgorithmRulesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `customBiddingRules` | `array<CustomBiddingAlgorithmRules>` | The list of CustomBiddingAlgorithmRules resources. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListCustomBiddingAlgorithmsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `customBiddingAlgorithms` | `array<CustomBiddingAlgorithm>` | The list of custom bidding algorithms. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListCustomBiddingScriptsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `customBiddingScripts` | `array<CustomBiddingScript>` | The list of custom bidding scripts. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListCustomListsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `customLists` | `array<CustomList>` | The list of custom lists. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListFirstPartyAndPartnerAudiencesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `firstPartyAndPartnerAudiences` | `array<FirstPartyAndPartnerAudience>` | The list of first party and partner audiences. Audience size properties will not be included. Thi... |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListFloodlightActivitiesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `floodlightActivities` | `array<FloodlightActivity>` | The list of Floodlight activities. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListGoogleAudiencesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `googleAudiences` | `array<GoogleAudience>` | The list of Google audiences. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListGuaranteedOrdersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `guaranteedOrders` | `array<GuaranteedOrder>` | The list of guaranteed orders. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListInsertionOrderAssignedTargetingOptionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options. This list will be absent if empty. |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `ListInsertionOrdersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `insertionOrders` | `array<InsertionOrder>` | The list of insertion orders. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListInventorySourceGroupsResponse`

Response message for InventorySourceGroupService.ListInventorySourceGroups.

| Property | Type | Description |
|----------|------|-------------|
| `inventorySourceGroups` | `array<InventorySourceGroup>` | The list of inventory source groups. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListInventorySourcesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `inventorySources` | `array<InventorySource>` | The list of inventory sources. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListInvoicesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `invoices` | `array<Invoice>` | The list of invoices. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListLineItemAssignedTargetingOptionsResponse`

Response message for ListLineItemAssignedTargetingOptions.

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options. This list will be absent if empty. |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `ListLineItemsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `lineItems` | `array<LineItem>` | The list of line items. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListLocationListsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `locationLists` | `array<LocationList>` | The list of location lists. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListNegativeKeywordListsResponse`

Response message for NegativeKeywordListService.ListNegativeKeywordLists.

| Property | Type | Description |
|----------|------|-------------|
| `negativeKeywordLists` | `array<NegativeKeywordList>` | The list of negative keyword lists. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListNegativeKeywordsResponse`

Response message for NegativeKeywordService.ListNegativeKeywords.

| Property | Type | Description |
|----------|------|-------------|
| `negativeKeywords` | `array<NegativeKeyword>` | The list of negative keywords. This list will be absent if empty. |
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |

### `ListPartnerAssignedTargetingOptionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `assignedTargetingOptions` | `array<AssignedTargetingOption>` | The list of assigned targeting options. This list will be absent if empty. |
| `nextPageToken` | `string` | A token identifying the next page of results. This value should be specified as the pageToken in ... |

### `ListPartnersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |
| `partners` | `array<Partner>` | The list of partners. This list will be absent if empty. |

### `ListSitesResponse`

Response message for SiteService.ListSites.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |
| `sites` | `array<Site>` | The list of sites. This list will be absent if empty. |

### `ListTargetingOptionsResponse`

Response message for ListTargetingOptions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |
| `targetingOptions` | `array<TargetingOption>` | The list of targeting options. This list will be absent if empty. |

### `ListUsersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |
| `users` | `array<User>` | The list of users. This list will be absent if empty. |

### `ListYoutubeAssetAssociationsResponse`

Response message for YoutubeAssetAssociationService.ListYoutubeAssetAssociations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |
| `youtubeAssetAssociations` | `array<YoutubeAssetAssociation>` | The list of asset associations. This list will be absent if empty. |

### `LocationList`

A list of locations used for targeting.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | Required. Immutable. The unique ID of the advertiser the location list belongs to. |
| `displayName` | `string` | Required. The display name of the location list. Must be UTF-8 encoded with a maximum size of 240... |
| `locationListId` | `string` | Output only. The unique ID of the location list. Assigned by the system. |
| `locationType` | `string` | Required. Immutable. The type of location. All locations in the list will share this type. |
| `name` | `string` | Output only. The resource name of the location list. |

### `LookbackWindow`

Specifies how many days into the past to look when determining whether to record a conversion.

| Property | Type | Description |
|----------|------|-------------|
| `clickDays` | `integer` | Lookback window, in days, from the last time a given user clicked on one of your ads. |
| `impressionDays` | `integer` | Lookback window, in days, from the last time a given user viewed one of your ads. |

### `LookupInvoiceCurrencyResponse`

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | Currency used by the advertiser in ISO 4217 format. |

### `MastheadAd`

Details for a Masthead Ad.

| Property | Type | Description |
|----------|------|-------------|
| `autoplayVideoDuration` | `string` | The duration of time the video will autoplay. |
| `autoplayVideoStartMillisecond` | `string` | The amount of time in milliseconds after which the video will start to play. |
| `callToActionButtonLabel` | `string` | The text on the call-to-action button. |
| `callToActionFinalUrl` | `string` | The destination URL for the call-to-action button. |
| `callToActionTrackingUrl` | `string` | The tracking URL for the call-to-action button. |
| `companionYoutubeVideos` | `array<YoutubeVideoDetails>` | The videos that appear next to the Masthead Ad on desktop. Can be no more than two. |
| `description` | `string` | The description of the ad. |
| `headline` | `string` | The headline of the ad. |
| `showChannelArt` | `boolean` | Whether to show a background or banner that appears at the top of a YouTube page. |
| `video` | `YoutubeVideoDetails` | The YouTube video used by the ad. |
| `videoAspectRatio` | `string` | The aspect ratio of the autoplaying YouTube video on the Masthead. |

### `MaximizeSpendBidStrategy`

A strategy that automatically adjusts the bid to optimize a specified performance goal while spending the full budget.

| Property | Type | Description |
|----------|------|-------------|
| `customBiddingAlgorithmId` | `string` | The ID of the Custom Bidding Algorithm used by this strategy. Only applicable when performance_go... |
| `maxAverageCpmBidAmountMicros` | `string` | The maximum average CPM that may be bid, in micros of the advertiser's currency. Must be greater ... |
| `performanceGoalType` | `string` | Required. The type of the performance goal that the bidding strategy tries to minimize while spen... |
| `raiseBidForDeals` | `boolean` | Whether the strategy takes deal floor prices into account. |

### `MeasurementConfig`

Measurement settings of a partner.

| Property | Type | Description |
|----------|------|-------------|
| `dv360ToCmCostReportingEnabled` | `boolean` | Whether or not to report DV360 cost to CM360. |
| `dv360ToCmDataSharingEnabled` | `boolean` | Whether or not to include DV360 data in CM360 data transfer reports. |

### `MobileApp`

A mobile app promoted by a mobile app install line item.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | Required. The ID of the app provided by the platform store. Android apps are identified by the bu... |
| `displayName` | `string` | Output only. The app name. |
| `platform` | `string` | Output only. The app platform. |
| `publisher` | `string` | Output only. The app publisher. |

### `MobileDeviceIdList`

Wrapper message for a list of mobile device IDs defining Customer Match audience members.

| Property | Type | Description |
|----------|------|-------------|
| `consent` | `Consent` | Input only. The consent setting for the users in mobile_device_ids. Leaving this field unset indi... |
| `mobileDeviceIds` | `array<string>` | A list of mobile device IDs defining Customer Match audience members. The size of mobile_device_i... |

### `Money`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `NativeContentPositionAssignedTargetingOptionDetails`

Details for native content position assigned targeting option. This will be populated in the native_content_position_details field when targeting_type is `TARGETING_TYPE_NATIVE_CONTENT_POSITION`. Explicitly targeting all options is not supported. Remove all native content position targeting options to achieve this effect.

| Property | Type | Description |
|----------|------|-------------|
| `contentPosition` | `string` | Required. The content position. |

### `NativeContentPositionTargetingOptionDetails`

Represents a targetable native content position. This will be populated in the native_content_position_details field when targeting_type is `TARGETING_TYPE_NATIVE_CONTENT_POSITION`.

| Property | Type | Description |
|----------|------|-------------|
| `contentPosition` | `string` | Output only. The content position. |

### `NegativeKeyword`

A negatively targeted keyword that belongs to a negative keyword list.

| Property | Type | Description |
|----------|------|-------------|
| `keywordValue` | `string` | Required. Immutable. The negatively targeted keyword, for example `car insurance`. Must be UTF-8 ... |
| `name` | `string` | Output only. The resource name of the negative keyword. |

### `NegativeKeywordList`

A list of negative keywords used for targeting.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | Output only. The unique ID of the advertiser the negative keyword list belongs to. |
| `displayName` | `string` | Required. The display name of the negative keyword list. Must be UTF-8 encoded with a maximum siz... |
| `name` | `string` | Output only. The resource name of the negative keyword list. |
| `negativeKeywordListId` | `string` | Output only. The unique ID of the negative keyword list. Assigned by the system. |
| `targetedLineItemCount` | `string` | Output only. Number of line items that are directly targeting this negative keyword list. |

### `NegativeKeywordListAssignedTargetingOptionDetails`

Targeting details for negative keyword list. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_NEGATIVE_KEYWORD_LIST`.

| Property | Type | Description |
|----------|------|-------------|
| `negativeKeywordListId` | `string` | Required. ID of the negative keyword list. Should refer to the negative_keyword_list_id field of ... |

### `NonSkippableAd`

Details for a non-skippable ad.

| Property | Type | Description |
|----------|------|-------------|
| `commonInStreamAttribute` | `CommonInStreamAttribute` | Common ad attributes. |
| `customParameters` | `object` | The custom parameters to pass custom values to tracking URL template. |

### `ObaIcon`

OBA Icon for a Creative

| Property | Type | Description |
|----------|------|-------------|
| `clickTrackingUrl` | `string` | Required. The click tracking URL of the OBA icon. Only URLs of the following domains are allowed:... |
| `dimensions` | `Dimensions` | Optional. The dimensions of the OBA icon. |
| `landingPageUrl` | `string` | Required. The landing page URL of the OBA icon. Only URLs of the following domains are allowed: *... |
| `position` | `string` | Optional. The position of the OBA icon on the creative. |
| `program` | `string` | Optional. The program of the OBA icon. For example: “AdChoices”. |
| `resourceMimeType` | `string` | Optional. The MIME type of the OBA icon resource. |
| `resourceUrl` | `string` | Optional. The URL of the OBA icon resource. |
| `viewTrackingUrl` | `string` | Required. The view tracking URL of the OBA icon. Only URLs of the following domains are allowed: ... |

### `OmidAssignedTargetingOptionDetails`

Represents a targetable Open Measurement enabled inventory type. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_OMID`.

| Property | Type | Description |
|----------|------|-------------|
| `omid` | `string` | Required. The type of Open Measurement enabled inventory. |

### `OmidTargetingOptionDetails`

Represents a targetable Open Measurement enabled inventory type. This will be populated in the omid_details field when targeting_type is `TARGETING_TYPE_OMID`.

| Property | Type | Description |
|----------|------|-------------|
| `omid` | `string` | Output only. The type of Open Measurement enabled inventory. |

### `OnScreenPositionAssignedTargetingOptionDetails`

On screen position targeting option details. This will be populated in the on_screen_position_details field when targeting_type is `TARGETING_TYPE_ON_SCREEN_POSITION`.

| Property | Type | Description |
|----------|------|-------------|
| `adType` | `string` | Output only. The ad type to target. Only applicable to insertion order targeting and new line ite... |
| `onScreenPosition` | `string` | Output only. The on screen position. |
| `targetingOptionId` | `string` | Required. The targeting_option_id field when targeting_type is `TARGETING_TYPE_ON_SCREEN_POSITION`. |

### `OnScreenPositionTargetingOptionDetails`

Represents a targetable on screen position, which could be used by display and video ads. This will be populated in the on_screen_position_details field when targeting_type is `TARGETING_TYPE_ON_SCREEN_POSITION`.

| Property | Type | Description |
|----------|------|-------------|
| `onScreenPosition` | `string` | Output only. The on screen position. |

### `OperatingSystemAssignedTargetingOptionDetails`

Assigned operating system targeting option details. This will be populated in the operating_system_details field when targeting_type is `TARGETING_TYPE_OPERATING_SYSTEM`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the operating system. |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |
| `targetingOptionId` | `string` | Required. The targeting option ID populated in targeting_option_id field when targeting_type is `... |

### `OperatingSystemTargetingOptionDetails`

Represents a targetable operating system. This will be populated in the operating_system_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_OPERATING_SYSTEM`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the operating system. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Pacing`

Settings that control the rate at which a budget is spent.

| Property | Type | Description |
|----------|------|-------------|
| `dailyMaxImpressions` | `string` | Maximum number of impressions to serve every day. Applicable when the budget is impression based.... |
| `dailyMaxMicros` | `string` | Maximum currency amount to spend every day in micros of advertiser's currency. Applicable when th... |
| `pacingPeriod` | `string` | Required. The time period in which the pacing budget will be spent. When automatic budget allocat... |
| `pacingType` | `string` | Required. The type of pacing that defines how the budget amount will be spent across the pacing_p... |

### `ParentEntityFilter`

A filtering option that filters on selected file types belonging to a chosen set of filter entities.

| Property | Type | Description |
|----------|------|-------------|
| `fileType` | `array<string>` | Required. File types that will be returned. |
| `filterIds` | `array<string>` | The IDs of the specified filter type. This is used to filter entities to fetch. If filter type is... |
| `filterType` | `string` | Required. Filter type used to filter fetched entities. |

### `ParentalStatusAssignedTargetingOptionDetails`

Details for assigned parental status targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_PARENTAL_STATUS`.

| Property | Type | Description |
|----------|------|-------------|
| `parentalStatus` | `string` | Required. The parental status of the audience. |

### `ParentalStatusTargetingOptionDetails`

Represents a targetable parental status. This will be populated in the parental_status_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_PARENTAL_STATUS`.

| Property | Type | Description |
|----------|------|-------------|
| `parentalStatus` | `string` | Output only. The parental status of an audience. |

### `Partner`

A single partner in Display & Video 360 (DV360).

| Property | Type | Description |
|----------|------|-------------|
| `adServerConfig` | `PartnerAdServerConfig` | Ad server related settings of the partner. |
| `billingConfig` | `PartnerBillingConfig` | Billing related settings of the partner. |
| `dataAccessConfig` | `PartnerDataAccessConfig` | Settings that control how partner data may be accessed. |
| `displayName` | `string` | The display name of the partner. Must be UTF-8 encoded with a maximum size of 240 bytes. |
| `entityStatus` | `string` | Output only. The status of the partner. |
| `exchangeConfig` | `ExchangeConfig` | Settings that control which exchanges are enabled for the partner. |
| `generalConfig` | `PartnerGeneralConfig` | General settings of the partner. |
| `name` | `string` | Output only. The resource name of the partner. |
| `partnerId` | `string` | Output only. The unique ID of the partner. Assigned by the system. |
| `updateTime` | `string` | Output only. The timestamp when the partner was last updated. Assigned by the system. |

### `PartnerAdServerConfig`

Ad server related settings of a partner.

| Property | Type | Description |
|----------|------|-------------|
| `measurementConfig` | `MeasurementConfig` | Measurement settings of a partner. |

### `PartnerBillingConfig`

Billing related settings of a partner.

| Property | Type | Description |
|----------|------|-------------|
| `billingProfileId` | `string` | The ID of a partner default billing profile. |

### `PartnerCost`

Settings that control a partner cost. A partner cost is any type of expense involved in running a campaign, other than the costs of purchasing impressions (which is called the media cost) and using third-party audience segment data (data fee). Some examples of partner costs include the fees for using DV360, a third-party ad server, or a third-party ad serving verification service.

| Property | Type | Description |
|----------|------|-------------|
| `costType` | `string` | Required. The type of the partner cost. |
| `feeAmount` | `string` | The CPM fee amount in micros of advertiser's currency. Applicable when the fee_type is `PARTNER_F... |
| `feePercentageMillis` | `string` | The media fee percentage in millis (1/1000 of a percent). Applicable when the fee_type is `PARTNE... |
| `feeType` | `string` | Required. The fee type for this partner cost. |
| `invoiceType` | `string` | The invoice type for this partner cost. * Required when cost_type is one of: - `PARTNER_COST_TYPE... |

### `PartnerDataAccessConfig`

Settings that control how partner related data may be accessed.

| Property | Type | Description |
|----------|------|-------------|
| `sdfConfig` | `SdfConfig` | Structured Data Files (SDF) settings for the partner. The SDF configuration for the partner. |

### `PartnerGeneralConfig`

General settings of a partner.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | Immutable. Partner's currency in ISO 4217 format. |
| `timeZone` | `string` | Immutable. The standard TZ database name of the partner's time zone. For example, `America/New_Yo... |

### `PartnerRevenueModel`

Settings that control how partner revenue is calculated.

| Property | Type | Description |
|----------|------|-------------|
| `markupAmount` | `string` | Required. The markup amount of the partner revenue model. Must be greater than or equal to 0. * W... |
| `markupType` | `string` | Required. The markup type of the partner revenue model. |

### `PerformanceGoal`

Settings that control the performance goal of a campaign.

| Property | Type | Description |
|----------|------|-------------|
| `performanceGoalAmountMicros` | `string` | The goal amount, in micros of the advertiser's currency. Applicable when performance_goal_type is... |
| `performanceGoalPercentageMicros` | `string` | The decimal representation of the goal percentage in micros. Applicable when performance_goal_typ... |
| `performanceGoalString` | `string` | A key performance indicator (KPI) string, which can be empty. Must be UTF-8 encoded with a length... |
| `performanceGoalType` | `string` | Required. The type of the performance goal. |

### `PerformanceGoalBidStrategy`

A strategy that automatically adjusts the bid to meet or beat a specified performance goal.

| Property | Type | Description |
|----------|------|-------------|
| `customBiddingAlgorithmId` | `string` | The ID of the Custom Bidding Algorithm used by this strategy. Only applicable when performance_go... |
| `maxAverageCpmBidAmountMicros` | `string` | The maximum average CPM that may be bid, in micros of the advertiser's currency. Must be greater ... |
| `performanceGoalAmountMicros` | `string` | Required. The performance goal the bidding strategy will attempt to meet or beat, in micros of th... |
| `performanceGoalType` | `string` | Required. The type of the performance goal that the bidding strategy will try to meet or beat. Fo... |

### `PoiAssignedTargetingOptionDetails`

Details for assigned POI targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_POI`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of a POI, e.g. "Times Square", "Space Needle", followed by its full... |
| `latitude` | `number` | Output only. Latitude of the POI rounding to 6th decimal place. |
| `longitude` | `number` | Output only. Longitude of the POI rounding to 6th decimal place. |
| `proximityRadiusAmount` | `number` | Required. The radius of the area around the POI that will be targeted. The units of the radius ar... |
| `proximityRadiusUnit` | `string` | Required. The unit of distance by which the targeting radius is measured. |
| `targetingOptionId` | `string` | Required. The targeting_option_id of a TargetingOption of type `TARGETING_TYPE_POI`. Accepted POI... |

### `PoiSearchTerms`

Search terms for POI targeting options.

| Property | Type | Description |
|----------|------|-------------|
| `poiQuery` | `string` | The search query for the desired POI name, street address, or coordinate of the desired POI. The ... |

### `PoiTargetingOptionDetails`

Represents a targetable point of interest(POI). This will be populated in the poi_details field when targeting_type is `TARGETING_TYPE_POI`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of a POI(e.g. "Times Square", "Space Needle"), followed by its full... |
| `latitude` | `number` | Output only. Latitude of the POI rounding to 6th decimal place. |
| `longitude` | `number` | Output only. Longitude of the POI rounding to 6th decimal place. |

### `PrismaConfig`

Settings specific to the Mediaocean Prisma tool.

| Property | Type | Description |
|----------|------|-------------|
| `prismaCpeCode` | `PrismaCpeCode` | Required. Relevant client, product, and estimate codes from the Mediaocean Prisma tool. |
| `prismaType` | `string` | Required. The Prisma type. |
| `supplier` | `string` | Required. The entity allocated this budget (DSP, site, etc.). |

### `PrismaCpeCode`

Google Payments Center supports searching and filtering on the component fields of this code.

| Property | Type | Description |
|----------|------|-------------|
| `prismaClientCode` | `string` | The Prisma client code. |
| `prismaEstimateCode` | `string` | The Prisma estimate code. |
| `prismaProductCode` | `string` | The Prisma product code. |

### `ProductFeedData`

The details of product feed.

| Property | Type | Description |
|----------|------|-------------|
| `isFeedDisabled` | `boolean` | Whether the product feed has opted-out of showing products. |
| `productMatchDimensions` | `array<ProductMatchDimension>` | A list of dimensions used to match products. |
| `productMatchType` | `string` | How products are selected by the product feed. |

### `ProductMatchDimension`

A dimension used to match products.

| Property | Type | Description |
|----------|------|-------------|
| `customLabel` | `CustomLabel` | The custom label to match all the products with the label. |
| `productOfferId` | `string` | The ID of the product offer to match with a product with the same offer ID. |

### `ProximityLocationListAssignedTargetingOptionDetails`

Targeting details for proximity location list. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_PROXIMITY_LOCATION_LIST`.

| Property | Type | Description |
|----------|------|-------------|
| `proximityLocationListId` | `string` | Required. ID of the proximity location list. Should refer to the location_list_id field of a Loca... |
| `proximityRadius` | `number` | Required. Radius expressed in the distance units set in proximity_radius_unit. This represents th... |
| `proximityRadiusUnit` | `string` | Required. Radius distance units. |

### `RateDetails`

The rate related settings of the inventory source.

| Property | Type | Description |
|----------|------|-------------|
| `inventorySourceRateType` | `string` | The rate type. Acceptable values are `INVENTORY_SOURCE_RATE_TYPE_CPM_FIXED`, `INVENTORY_SOURCE_RA... |
| `minimumSpend` | `Money` | Output only. The amount that the buyer has committed to spending on the inventory source up front... |
| `rate` | `Money` | The rate for the inventory source. |
| `unitsPurchased` | `string` | Required for guaranteed inventory sources. The number of impressions guaranteed by the seller. |

### `RegionalLocationListAssignedTargetingOptionDetails`

Targeting details for regional location list. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_REGIONAL_LOCATION_LIST`.

| Property | Type | Description |
|----------|------|-------------|
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |
| `regionalLocationListId` | `string` | Required. ID of the regional location list. Should refer to the location_list_id field of a Locat... |

### `RemarketingConfig`

Settings that control the whether remarketing is enabled for the given identified advertiser.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | Output only. The ID of the advertiser. |
| `remarketingEnabled` | `boolean` | Output only. Whether the Floodlight activity remarketing user list is available to the identified... |

### `ReplaceNegativeKeywordsRequest`

Request message for NegativeKeywordService.ReplaceNegativeKeywords.

| Property | Type | Description |
|----------|------|-------------|
| `newNegativeKeywords` | `array<NegativeKeyword>` | The negative keywords that will replace the existing keywords in the negative keyword list, speci... |

### `ReplaceNegativeKeywordsResponse`

Response message for NegativeKeywordService.ReplaceNegativeKeywords.

| Property | Type | Description |
|----------|------|-------------|
| `negativeKeywords` | `array<NegativeKeyword>` | The full list of negative keywords now present in the negative keyword list. |

### `ReplaceSitesRequest`

Request message for SiteService.ReplaceSites.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | The ID of the advertiser that owns the parent channel. |
| `newSites` | `array<Site>` | The sites that will replace the existing sites assigned to the channel, specified as a list of Si... |
| `partnerId` | `string` | The ID of the partner that owns the parent channel. |

### `ReplaceSitesResponse`

Response message for SiteService.ReplaceSites.

| Property | Type | Description |
|----------|------|-------------|
| `sites` | `array<Site>` | The list of sites in the channel after replacing. |

### `ReviewStatusInfo`

Review statuses for the creative.

| Property | Type | Description |
|----------|------|-------------|
| `approvalStatus` | `string` | Represents the basic approval needed for a creative to begin serving. Summary of creative_and_lan... |
| `contentAndPolicyReviewStatus` | `string` | Content and policy review status for the creative. |
| `creativeAndLandingPageReviewStatus` | `string` | Creative and landing page review status for the creative. |
| `exchangeReviewStatuses` | `array<ExchangeReviewStatus>` | Exchange review statuses for the creative. |

### `ScriptError`

An error message for a custom bidding script.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | The column number in the script where the error was thrown. |
| `errorCode` | `string` | The type of error. |
| `errorMessage` | `string` | The detailed error message. |
| `line` | `string` | The line number in the script where the error was thrown. |

### `SdfConfig`

Structured Data File (SDF) related settings.

| Property | Type | Description |
|----------|------|-------------|
| `adminEmail` | `string` | An administrator email address to which the SDF processing status reports will be sent. |
| `version` | `string` | Required. The version of SDF being used. |

### `SdfDownloadTask`

Type for the response returned by SdfDownloadTaskService.CreateSdfDownloadTask.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | A resource name to be used in media.download to Download the prepared files. Resource names have ... |

### `SdfDownloadTaskMetadata`

Type for the metadata returned by SdfDownloadTaskService.CreateSdfDownloadTask.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time when the operation was created. |
| `endTime` | `string` | The time when execution was completed. |
| `version` | `string` | The SDF version used to execute this download task. |

### `SearchTargetingOptionsRequest`

Request message for SearchTargetingOptions.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | Required. The Advertiser this request is being made in the context of. |
| `businessChainSearchTerms` | `BusinessChainSearchTerms` | Search terms for Business Chain targeting options. Can only be used when targeting_type is `TARGE... |
| `geoRegionSearchTerms` | `GeoRegionSearchTerms` | Search terms for geo region targeting options. Can only be used when targeting_type is `TARGETING... |
| `pageSize` | `integer` | Requested page size. Must be between `1` and `200`. If unspecified will default to `100`. Returns... |
| `pageToken` | `string` | A token identifying a page of results the server should return. Typically, this is the value of n... |
| `poiSearchTerms` | `PoiSearchTerms` | Search terms for POI targeting options. Can only be used when targeting_type is `TARGETING_TYPE_P... |

### `SearchTargetingOptionsResponse`

Response message for SearchTargetingOptions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in the page_token field in the subs... |
| `targetingOptions` | `array<TargetingOption>` | The list of targeting options that match the search criteria. This list will be absent if empty. |

### `SensitiveCategoryAssignedTargetingOptionDetails`

Targeting details for sensitive category. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.

| Property | Type | Description |
|----------|------|-------------|
| `excludedSensitiveCategory` | `string` | Required. An enum for the DV360 Sensitive category content classified to be EXCLUDED. |

### `SensitiveCategoryTargetingOptionDetails`

Represents a targetable sensitive category. This will be populated in the sensitive_category_details field of the TargetingOption when targeting_type is `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`.

| Property | Type | Description |
|----------|------|-------------|
| `sensitiveCategory` | `string` | Output only. An enum for the DV360 Sensitive category content classifier. |

### `SessionPositionAssignedTargetingOptionDetails`

Details for session position assigned targeting option. This will be populated in the session_position_details field when targeting_type is `TARGETING_TYPE_SESSION_POSITION`.

| Property | Type | Description |
|----------|------|-------------|
| `sessionPosition` | `string` | The position where the ad will show in a session. |

### `Site`

A single site. Sites are apps or websites belonging to a channel.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The resource name of the site. |
| `urlOrAppId` | `string` | Required. The app ID or URL of the site. Must be UTF-8 encoded with a maximum length of 240 bytes. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SubExchangeAssignedTargetingOptionDetails`

Details for assigned sub-exchange targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_SUB_EXCHANGE`.

| Property | Type | Description |
|----------|------|-------------|
| `targetingOptionId` | `string` | Required. The targeting_option_id of a TargetingOption of type `TARGETING_TYPE_SUB_EXCHANGE`. |

### `SubExchangeTargetingOptionDetails`

Represents a targetable sub-exchange. This will be populated in the sub_exchange_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_SUB_EXCHANGE`.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The display name of the sub-exchange. |

### `TargetFrequency`

Setting that controls the average number of times the ads will show to the same person over a certain period of time.

| Property | Type | Description |
|----------|------|-------------|
| `targetCount` | `string` | The target number of times, on average, the ads will be shown to the same person in the timespan ... |
| `timeUnit` | `string` | The unit of time in which the target frequency will be applied. The following time unit is applic... |
| `timeUnitCount` | `integer` | The number of time_unit the target frequency will last. The following restrictions apply based on... |

### `TargetingExpansionConfig`

Settings that control the [optimized targeting](//support.google.com/displayvideo/answer/12060859) settings of the line item.

| Property | Type | Description |
|----------|------|-------------|
| `audienceExpansionLevel` | `string` | Output only. Magnitude of expansion for eligible first-party user lists under this ad group. This... |
| `audienceExpansionSeedListExcluded` | `boolean` | Output only. Whether to exclude seed list for audience expansion. This field only applies to YouT... |
| `enableOptimizedTargeting` | `boolean` | Required. Whether to enable Optimized Targeting for the line item. Optimized targeting is not com... |

### `TargetingOption`

Represents a single targeting option, which is a targetable concept in DV360.

| Property | Type | Description |
|----------|------|-------------|
| `ageRangeDetails` | `AgeRangeTargetingOptionDetails` | Age range details. |
| `appCategoryDetails` | `AppCategoryTargetingOptionDetails` | App category details. |
| `audioContentTypeDetails` | `AudioContentTypeTargetingOptionDetails` | Audio content type details. |
| `authorizedSellerStatusDetails` | `AuthorizedSellerStatusTargetingOptionDetails` | Authorized seller status resource details. |
| `browserDetails` | `BrowserTargetingOptionDetails` | Browser details. |
| `businessChainDetails` | `BusinessChainTargetingOptionDetails` | Business chain resource details. |
| `carrierAndIspDetails` | `CarrierAndIspTargetingOptionDetails` | Carrier and ISP details. |
| `categoryDetails` | `CategoryTargetingOptionDetails` | Category resource details. |
| `contentDurationDetails` | `ContentDurationTargetingOptionDetails` | Content duration resource details. |
| `contentGenreDetails` | `ContentGenreTargetingOptionDetails` | Content genre resource details. |
| `contentInstreamPositionDetails` | `ContentInstreamPositionTargetingOptionDetails` | Content instream position details. |
| `contentOutstreamPositionDetails` | `ContentOutstreamPositionTargetingOptionDetails` | Content outstream position details. |
| `contentStreamTypeDetails` | `ContentStreamTypeTargetingOptionDetails` | Content stream type resource details. |
| `contentThemeDetails` | `ContentThemeTargetingOptionDetails` | Content theme details. |
| `deviceMakeModelDetails` | `DeviceMakeModelTargetingOptionDetails` | Device make and model resource details. |
| `deviceTypeDetails` | `DeviceTypeTargetingOptionDetails` | Device type details. |
| `digitalContentLabelDetails` | `DigitalContentLabelTargetingOptionDetails` | Digital content label details. |
| `environmentDetails` | `EnvironmentTargetingOptionDetails` | Environment details. |
| `exchangeDetails` | `ExchangeTargetingOptionDetails` | Exchange details. |
| `genderDetails` | `GenderTargetingOptionDetails` | Gender details. |
| `geoRegionDetails` | `GeoRegionTargetingOptionDetails` | Geographic region resource details. |
| `householdIncomeDetails` | `HouseholdIncomeTargetingOptionDetails` | Household income details. |
| `languageDetails` | `LanguageTargetingOptionDetails` | Language resource details. |
| `name` | `string` | Output only. The resource name for this targeting option. |
| `nativeContentPositionDetails` | `NativeContentPositionTargetingOptionDetails` | Native content position details. |
| `omidDetails` | `OmidTargetingOptionDetails` | Open Measurement enabled inventory details. |
| `onScreenPositionDetails` | `OnScreenPositionTargetingOptionDetails` | On screen position details. |
| `operatingSystemDetails` | `OperatingSystemTargetingOptionDetails` | Operating system resources details. |
| `parentalStatusDetails` | `ParentalStatusTargetingOptionDetails` | Parental status details. |
| `poiDetails` | `PoiTargetingOptionDetails` | POI resource details. |
| `sensitiveCategoryDetails` | `SensitiveCategoryTargetingOptionDetails` | Sensitive Category details. |
| `subExchangeDetails` | `SubExchangeTargetingOptionDetails` | Sub-exchange details. |
| `targetingOptionId` | `string` | Output only. A unique identifier for this targeting option. The tuple {`targeting_type`, `targeti... |
| `targetingType` | `string` | Output only. The type of this targeting option. |
| `userRewardedContentDetails` | `UserRewardedContentTargetingOptionDetails` | User rewarded content details. |
| `videoPlayerSizeDetails` | `VideoPlayerSizeTargetingOptionDetails` | Video player size details. |
| `viewabilityDetails` | `ViewabilityTargetingOptionDetails` | Viewability resource details. |

### `ThirdPartyMeasurementConfigs`

Settings that control what third-party vendors are measuring specific line item metrics.

| Property | Type | Description |
|----------|------|-------------|
| `brandLiftVendorConfigs` | `array<ThirdPartyVendorConfig>` | Optional. The third-party vendors measuring brand lift. The following third-party vendors are app... |
| `brandSafetyVendorConfigs` | `array<ThirdPartyVendorConfig>` | Optional. The third-party vendors measuring brand safety. The following third-party vendors are a... |
| `reachVendorConfigs` | `array<ThirdPartyVendorConfig>` | Optional. The third-party vendors measuring reach. The following third-party vendors are applicab... |
| `viewabilityVendorConfigs` | `array<ThirdPartyVendorConfig>` | Optional. The third-party vendors measuring viewability. The following third-party vendors are ap... |

### `ThirdPartyOnlyConfig`

Settings for advertisers that use third-party ad servers only.

| Property | Type | Description |
|----------|------|-------------|
| `pixelOrderIdReportingEnabled` | `boolean` | Whether or not order ID reporting for pixels is enabled. This value cannot be changed once set to... |

### `ThirdPartyUrl`

Tracking URLs from third parties to track interactions with an audio or a video creative.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Optional. The type of interaction needs to be tracked by the tracking URL |
| `url` | `string` | Optional. Tracking URL used to track the interaction. Provide a URL with optional path or query s... |

### `ThirdPartyVendorConfig`

Settings that control how third-party measurement vendors are configured.

| Property | Type | Description |
|----------|------|-------------|
| `placementId` | `string` | The ID used by the platform of the third-party vendor to identify the line item. |
| `vendor` | `string` | The third-party measurement vendor. |

### `ThirdPartyVerifierAssignedTargetingOptionDetails`

Assigned third party verifier targeting option details. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_THIRD_PARTY_VERIFIER`.

| Property | Type | Description |
|----------|------|-------------|
| `adloox` | `Adloox` | Third party brand verifier -- Scope3 (previously known as Adloox). |
| `doubleVerify` | `DoubleVerify` | Third party brand verifier -- DoubleVerify. |
| `integralAdScience` | `IntegralAdScience` | Third party brand verifier -- Integral Ad Science. |

### `TimeRange`

A time range.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Required. The upper bound of a time range, inclusive. |
| `startTime` | `string` | Required. The lower bound of a time range, inclusive. |

### `TimerEvent`

Timer event of the creative.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the timer event. |
| `reportingName` | `string` | Required. The name used to identify this timer event in reports. |

### `TrackingFloodlightActivityConfig`

Settings that control the behavior of a single Floodlight activity config.

| Property | Type | Description |
|----------|------|-------------|
| `floodlightActivityId` | `string` | Required. The ID of the Floodlight activity. |
| `postClickLookbackWindowDays` | `integer` | Required. The number of days after an ad has been clicked in which a conversion may be counted. M... |
| `postViewLookbackWindowDays` | `integer` | Required. The number of days after an ad has been viewed in which a conversion may be counted. Mu... |

### `Transcode`

Represents information about the transcoded audio or video file.

| Property | Type | Description |
|----------|------|-------------|
| `audioBitRateKbps` | `string` | Optional. The bit rate for the audio stream of the transcoded video, or the bit rate for the tran... |
| `audioSampleRateHz` | `string` | Optional. The sample rate for the audio stream of the transcoded video, or the sample rate for th... |
| `bitRateKbps` | `string` | Optional. The transcoding bit rate of the transcoded video, in kilobits per second. |
| `dimensions` | `Dimensions` | Optional. The dimensions of the transcoded video. |
| `fileSizeBytes` | `string` | Optional. The size of the transcoded file, in bytes. |
| `frameRate` | `number` | Optional. The frame rate of the transcoded video, in frames per second. |
| `mimeType` | `string` | Optional. The MIME type of the transcoded file. |
| `name` | `string` | Optional. The name of the transcoded file. |
| `transcoded` | `boolean` | Optional. Indicates if the transcoding was successful. |

### `UniversalAdId`

A creative identifier provided by a registry that is unique across all platforms. This is part of the VAST 4.0 standard.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Optional. The unique creative identifier. |
| `registry` | `string` | Optional. The registry provides unique creative identifiers. |

### `UploadAdAssetRequest`

A request message for UploadAdAsset.

| Property | Type | Description |
|----------|------|-------------|
| `adAssetType` | `string` | Required. The type of the ad asset. Only `AD_ASSET_TYPE_IMAGE` is supported. |
| `filename` | `string` | Required. The filename of the ad asset, including the file extension. The filename must be UTF-8 ... |

### `UploadAdAssetResponse`

A response message for UploadAdAsset.

| Property | Type | Description |
|----------|------|-------------|
| `adAsset` | `AdAsset` | The created ad asset. |

### `UrlAssignedTargetingOptionDetails`

Details for assigned URL targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_URL`.

| Property | Type | Description |
|----------|------|-------------|
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |
| `url` | `string` | Required. The URL, for example `example.com`. DV360 supports two levels of subdirectory targeting... |

### `User`

A single user in Display & Video 360.

| Property | Type | Description |
|----------|------|-------------|
| `assignedUserRoles` | `array<AssignedUserRole>` | The assigned user roles. Required in CreateUser. Output only in UpdateUser. Can only be updated t... |
| `displayName` | `string` | Required. The display name of the user. Must be UTF-8 encoded with a maximum size of 240 bytes. |
| `email` | `string` | Required. Immutable. The email address used to identify the user. |
| `lastLoginTime` | `string` | Output only. The timestamp when the user last logged in DV360 UI. |
| `name` | `string` | Output only. The resource name of the user. |
| `userId` | `string` | Output only. The unique ID of the user. Assigned by the system. |

### `UserRewardedContentAssignedTargetingOptionDetails`

User rewarded content targeting option details. This will be populated in the user_rewarded_content_details field when targeting_type is `TARGETING_TYPE_USER_REWARDED_CONTENT`.

| Property | Type | Description |
|----------|------|-------------|
| `targetingOptionId` | `string` | Required. The targeting_option_id field when targeting_type is `TARGETING_TYPE_USER_REWARDED_CONT... |
| `userRewardedContent` | `string` | Output only. User rewarded content status for video ads. |

### `UserRewardedContentTargetingOptionDetails`

Represents a targetable user rewarded content status for video ads only. This will be populated in the user_rewarded_content_details field when targeting_type is `TARGETING_TYPE_USER_REWARDED_CONTENT`.

| Property | Type | Description |
|----------|------|-------------|
| `userRewardedContent` | `string` | Output only. User rewarded content status for video ads. |

### `VideoAdInventoryControl`

The video ad inventory control used in certain YouTube line item types.

| Property | Type | Description |
|----------|------|-------------|
| `allowInFeed` | `boolean` | Optional. Whether ads can serve as in-feed format. |
| `allowInStream` | `boolean` | Optional. Whether ads can serve as in-stream format. |
| `allowShorts` | `boolean` | Optional. Whether ads can serve as shorts format. |

### `VideoAdSequenceSettings`

Settings related to VideoAdSequence.

| Property | Type | Description |
|----------|------|-------------|
| `minimumDuration` | `string` | The minimum time interval before the same user sees this sequence again. |
| `steps` | `array<VideoAdSequenceStep>` | The steps of which the sequence consists. |

### `VideoAdSequenceStep`

The detail of a single step in a VideoAdSequence.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupId` | `string` | The ID of the corresponding ad group of the step. |
| `interactionType` | `string` | The interaction on the previous step that will lead the viewer to this step. The first step does ... |
| `previousStepId` | `string` | The ID of the previous step. The first step does not have previous step. |
| `stepId` | `string` | The ID of the step. |

### `VideoDiscoveryAd`

Details for a video discovery ad.

| Property | Type | Description |
|----------|------|-------------|
| `description1` | `string` | First text line for the ad. |
| `description2` | `string` | Second text line for the ad. |
| `headline` | `string` | The headline of ad. |
| `thumbnail` | `string` | Thumbnail image used in the ad. |
| `video` | `YoutubeVideoDetails` | The YouTube video the ad promotes. |

### `VideoPerformanceAd`

Details for a video performance ad.

| Property | Type | Description |
|----------|------|-------------|
| `actionButtonLabels` | `array<string>` | The list of text assets shown on the call-to-action button. |
| `companionBanners` | `array<ImageAsset>` | The list of companion banners used by this ad. |
| `customParameters` | `object` | The custom parameters to pass custom values to tracking URL template. |
| `descriptions` | `array<string>` | The list of descriptions shown on the call-to-action banner. |
| `displayUrlBreadcrumb1` | `string` | The first piece after the domain in the display URL. |
| `displayUrlBreadcrumb2` | `string` | The second piece after the domain in the display URL. |
| `domain` | `string` | The domain of the display URL. |
| `finalUrl` | `string` | The URL address of the webpage that people reach after they click the ad. |
| `headlines` | `array<string>` | The list of headlines shown on the call-to-action banner. |
| `longHeadlines` | `array<string>` | The list of lone headlines shown on the call-to-action banner. |
| `trackingUrl` | `string` | The URL address loaded in the background for tracking purposes. |
| `videos` | `array<YoutubeVideoDetails>` | The list of YouTube video assets used by this ad. |

### `VideoPlayerSizeAssignedTargetingOptionDetails`

Video player size targeting option details. This will be populated in the video_player_size_details field when targeting_type is `TARGETING_TYPE_VIDEO_PLAYER_SIZE`. Explicitly targeting all options is not supported. Remove all video player size targeting options to achieve this effect.

| Property | Type | Description |
|----------|------|-------------|
| `videoPlayerSize` | `string` | Required. The video player size. |

### `VideoPlayerSizeTargetingOptionDetails`

Represents a targetable video player size. This will be populated in the video_player_size_details field when targeting_type is `TARGETING_TYPE_VIDEO_PLAYER_SIZE`.

| Property | Type | Description |
|----------|------|-------------|
| `videoPlayerSize` | `string` | Output only. The video player size. |

### `ViewabilityAssignedTargetingOptionDetails`

Assigned viewability targeting option details. This will be populated in the viewability_details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_VIEWABILITY`.

| Property | Type | Description |
|----------|------|-------------|
| `viewability` | `string` | Required. The predicted viewability percentage. |

### `ViewabilityTargetingOptionDetails`

Represents a targetable viewability. This will be populated in the viewability_details field of a TargetingOption when targeting_type is `TARGETING_TYPE_VIEWABILITY`.

| Property | Type | Description |
|----------|------|-------------|
| `viewability` | `string` | Output only. The predicted viewability percentage. |

### `YoutubeAndPartnersBiddingStrategy`

Settings that control the bid strategy for YouTube and Partners resources.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupEffectiveTargetCpaSource` | `string` | Output only. Source of the effective target CPA value for ad group. |
| `adGroupEffectiveTargetCpaValue` | `string` | Output only. The effective target CPA for ad group, in micros of advertiser's currency. |
| `type` | `string` | The type of the bidding strategy. |
| `value` | `string` | The value used by the bidding strategy. When the bidding strategy is assigned at the line item le... |

### `YoutubeAndPartnersInventorySourceConfig`

Settings that control what YouTube related inventories the YouTube and Partners line item will target.

| Property | Type | Description |
|----------|------|-------------|
| `includeGoogleTv` | `boolean` | Optional. Whether to target inventory in video apps available with Google TV. |
| `includeYoutube` | `boolean` | Optional. Whether to target inventory on YouTube. This includes both search, channels and videos. |
| `includeYoutubeVideoPartners` | `boolean` | Whether to target inventory on a collection of partner sites and apps that follow the same brand ... |

### `YoutubeAndPartnersSettings`

Settings for YouTube and Partners line items.

| Property | Type | Description |
|----------|------|-------------|
| `contentCategory` | `string` | Output only. The kind of content on which the YouTube and Partners ads will be shown. *Warning*: ... |
| `effectiveContentCategory` | `string` | Output only. The content category which takes effect when serving the line item. When content cat... |
| `inventorySourceSettings` | `YoutubeAndPartnersInventorySourceConfig` | Settings that control what YouTube and Partners inventories the line item will target. |
| `leadFormId` | `string` | Optional. The ID of the form to generate leads. |
| `linkedMerchantId` | `string` | Optional. The ID of the merchant which is linked to the line item for product feed. |
| `relatedVideoIds` | `array<string>` | Optional. The IDs of the videos appear below the primary video ad when the ad is playing in the Y... |
| `targetFrequency` | `TargetFrequency` | Optional. The average number of times you want ads from this line item to show to the same person... |
| `thirdPartyMeasurementConfigs` | `ThirdPartyMeasurementConfigs` | Optional. The third-party measurement configs of the line item. |
| `videoAdInventoryControl` | `VideoAdInventoryControl` | Optional. The settings to control which inventory is allowed for this line item. |
| `videoAdSequenceSettings` | `VideoAdSequenceSettings` | Optional. The settings related to VideoAdSequence. |
| `viewFrequencyCap` | `FrequencyCap` | The view frequency cap settings of the line item. The max_views field in this settings object mus... |

### `YoutubeAssetAssociation`

An association between a resource and a YouTube asset.

| Property | Type | Description |
|----------|------|-------------|
| `linkedYoutubeAsset` | `YoutubeAssetAssociationLinkedYouTubeAsset` | Required. The YouTube asset associated with the resource. |
| `name` | `string` | Identifier. The resource name of the association. For line item-level associations: The name patt... |
| `youtubeAssetType` | `string` | Required. The type of YouTube asset associated with the resource. |

### `YoutubeAssetAssociationAffiliateLocationAssetFilter`

An asset filter that matches eligible affiliate location assets for serving.

| Property | Type | Description |
|----------|------|-------------|
| `affiliateLocationMatchingFunction` | `YoutubeAssetAssociationAffiliateLocationAssetFilterAffiliateLocationMatchingFunction` | Optional. The matching function that determines how the affiliate location asset filter matches a... |
| `affiliateLocationMatchingType` | `string` | Required. The matching type of this affiliate location asset filter. |
| `assetSetId` | `string` | Output only. The ID of the asset set that matches the affiliate location assets eligible for serv... |

### `YoutubeAssetAssociationAffiliateLocationAssetFilterAffiliateLocationChain`

A chain of affiliate locations.

| Property | Type | Description |
|----------|------|-------------|
| `chainId` | `string` | Required. ID of the affiliate location chain. |

### `YoutubeAssetAssociationAffiliateLocationAssetFilterAffiliateLocationMatchingFunction`

The matching function for an affiliate location asset filter.

| Property | Type | Description |
|----------|------|-------------|
| `chains` | `array<YoutubeAssetAssociationAffiliateLocationAssetFilterAffiliateLocationChain>` | Optional. The selected affiliate location chain IDs. This field is required if affiliate_location... |

### `YoutubeAssetAssociationLinkedYouTubeAsset`

A YouTube asset linked to a resource in a YoutubeAssetAssociation.

| Property | Type | Description |
|----------|------|-------------|
| `affiliateLocationAssetFilter` | `YoutubeAssetAssociationAffiliateLocationAssetFilter` | An affiliate location asset filter. This can be set only when youtube_asset_type is `YOUTUBE_ASSE... |
| `locationAssetFilter` | `YoutubeAssetAssociationLocationAssetFilter` | A location asset filter. This can be set only when youtube_asset_type is `YOUTUBE_ASSET_TYPE_LOCA... |
| `sitelinkAsset` | `YoutubeAssetAssociationSitelinkAsset` | A sitelink asset. This can be set only when youtube_asset_type is `YOUTUBE_ASSET_TYPE_SITELINK`. |

### `YoutubeAssetAssociationLocationAssetFilter`

An asset filter that matches eligible location assets for serving.

| Property | Type | Description |
|----------|------|-------------|
| `assetSetId` | `string` | Output only. The ID of the asset set that matches the location assets eligible for serving. |
| `locationMatchingFunction` | `YoutubeAssetAssociationLocationAssetFilterLocationMatchingFunction` | Optional. The matching function that determines how the location asset filter matches location as... |
| `locationMatchingType` | `string` | Required. The matching type of this location asset filter. |

### `YoutubeAssetAssociationLocationAssetFilterLocationMatchingFunction`

The matching function for a location asset filter.

| Property | Type | Description |
|----------|------|-------------|
| `business` | `string` | Optional. The business name to match with. This field is optional and can only be set if location... |
| `labels` | `array<string>` | Optional. The labels to match with. Labels are logically OR'ed together. This field is optional a... |
| `locationAssetIds` | `array<string>` | Optional. The selected location asset IDs. This field is required if location_matching_type is `S... |

### `YoutubeAssetAssociationSitelinkAsset`

A sitelink asset.

| Property | Type | Description |
|----------|------|-------------|
| `assetId` | `string` | Required. ID of the sitelink asset. |

### `YoutubeChannelAssignedTargetingOptionDetails`

Details for YouTube channel assigned targeting option. This will be populated in the youtube_channel_details field when targeting_type is `TARGETING_TYPE_YOUTUBE_CHANNEL`.

| Property | Type | Description |
|----------|------|-------------|
| `channelId` | `string` | The YouTube uploader channel id or the channel code of a YouTube channel. |
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |

### `YoutubeVideoAsset`

Data for a YouTube video ad asset.

| Property | Type | Description |
|----------|------|-------------|
| `youtubeVideoId` | `string` | Required. The YouTube video id of the asset. This is the 11 char string value used in the YouTube... |

### `YoutubeVideoAssignedTargetingOptionDetails`

Details for YouTube video assigned targeting option. This will be populated in the youtube_video_details field when targeting_type is `TARGETING_TYPE_YOUTUBE_VIDEO`.

| Property | Type | Description |
|----------|------|-------------|
| `negative` | `boolean` | Indicates if this option is being negatively targeted. |
| `videoId` | `string` | YouTube video id as it appears on the YouTube watch page. |

### `YoutubeVideoDetails`

Details of a YouTube video.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Output only. The YouTube video ID which can be searched on YouTube webpage. |
| `unavailableReason` | `string` | The reason why the video data is not available. |
| `videoAssetId` | `string` | Required. The YouTube video asset id. This is ad_asset.ad_asset_id. |

