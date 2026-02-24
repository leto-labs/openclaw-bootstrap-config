# Campaign Manager 360 API - API Reference

**Version**: `v5` | **Methods**: 217 | **Schemas**: 260

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `dfareporting.accountPermissionGroups.get` | GET | `userprofiles/{+profileId}/accountPermissionGroups/{+id}` | Gets one account permission group by ID. |
| `dfareporting.accountPermissionGroups.list` | GET | `userprofiles/{+profileId}/accountPermissionGroups` | Retrieves the list of account permission groups. |
| `dfareporting.accountPermissions.get` | GET | `userprofiles/{+profileId}/accountPermissions/{+id}` | Gets one account permission by ID. |
| `dfareporting.accountPermissions.list` | GET | `userprofiles/{+profileId}/accountPermissions` | Retrieves the list of account permissions. |
| `dfareporting.accounts.get` | GET | `userprofiles/{+profileId}/accounts/{+id}` | Gets one account by ID. |
| `dfareporting.accounts.list` | GET | `userprofiles/{+profileId}/accounts` | Retrieves the list of accounts, possibly filtered. This method supports paging. |
| `dfareporting.accounts.update` | PUT | `userprofiles/{+profileId}/accounts` | Updates an existing account. |
| `dfareporting.accounts.patch` | PATCH | `userprofiles/{+profileId}/accounts` | Updates an existing account. This method supports patch semantics. |
| `dfareporting.accountActiveAdSummaries.get` | GET | `userprofiles/{+profileId}/accountActiveAdSummaries/{+summaryAccountId}` | Gets the account's active ad summary by account ID. |
| `dfareporting.accountUserProfiles.get` | GET | `userprofiles/{profileId}/accountUserProfiles/{+id}` | Gets one account user profile by ID. |
| `dfareporting.accountUserProfiles.insert` | POST | `userprofiles/{+profileId}/accountUserProfiles` | Inserts a new account user profile. |
| `dfareporting.accountUserProfiles.list` | GET | `userprofiles/{+profileId}/accountUserProfiles` | Retrieves a list of account user profiles, possibly filtered. This method supports paging. |
| `dfareporting.accountUserProfiles.update` | PUT | `userprofiles/{+profileId}/accountUserProfiles` | Updates an existing account user profile. |
| `dfareporting.accountUserProfiles.patch` | PATCH | `userprofiles/{+profileId}/accountUserProfiles` | Updates an existing account user profile. This method supports patch semantics. |
| `dfareporting.ads.get` | GET | `userprofiles/{+profileId}/ads/{+id}` | Gets one ad by ID. |
| `dfareporting.ads.insert` | POST | `userprofiles/{+profileId}/ads` | Inserts a new ad. |
| `dfareporting.ads.list` | GET | `userprofiles/{+profileId}/ads` | Retrieves a list of ads, possibly filtered. This method supports paging. |
| `dfareporting.ads.update` | PUT | `userprofiles/{+profileId}/ads` | Updates an existing ad. |
| `dfareporting.ads.patch` | PATCH | `userprofiles/{+profileId}/ads` | Updates an existing ad. This method supports patch semantics. |
| `dfareporting.advertiserGroups.delete` | DELETE | `userprofiles/{+profileId}/advertiserGroups/{+id}` | Deletes an existing advertiser group. |
| `dfareporting.advertiserGroups.get` | GET | `userprofiles/{+profileId}/advertiserGroups/{+id}` | Gets one advertiser group by ID. |
| `dfareporting.advertiserGroups.insert` | POST | `userprofiles/{+profileId}/advertiserGroups` | Inserts a new advertiser group. |
| `dfareporting.advertiserGroups.list` | GET | `userprofiles/{+profileId}/advertiserGroups` | Retrieves a list of advertiser groups, possibly filtered. This method supports paging. |
| `dfareporting.advertiserGroups.update` | PUT | `userprofiles/{+profileId}/advertiserGroups` | Updates an existing advertiser group. |
| `dfareporting.advertiserGroups.patch` | PATCH | `userprofiles/{+profileId}/advertiserGroups` | Updates an existing advertiser group. This method supports patch semantics. |
| `dfareporting.advertisers.get` | GET | `userprofiles/{+profileId}/advertisers/{+id}` | Gets one advertiser by ID. |
| `dfareporting.advertisers.insert` | POST | `userprofiles/{+profileId}/advertisers` | Inserts a new advertiser. |
| `dfareporting.advertisers.list` | GET | `userprofiles/{+profileId}/advertisers` | Retrieves a list of advertisers, possibly filtered. This method supports paging. |
| `dfareporting.advertisers.update` | PUT | `userprofiles/{+profileId}/advertisers` | Updates an existing advertiser. |
| `dfareporting.advertisers.patch` | PATCH | `userprofiles/{+profileId}/advertisers` | Updates an existing advertiser. This method supports patch semantics. |
| `dfareporting.billingAssignments.insert` | POST | `userprofiles/{+profileId}/billingProfiles/{+billingProfileId}/billingAssignments` | Inserts a new billing assignment and returns the new assignment. Only one of advertiser_id or cam... |
| `dfareporting.billingAssignments.list` | GET | `userprofiles/{+profileId}/billingProfiles/{+billingProfileId}/billingAssignments` | Retrieves a list of billing assignments. |
| `dfareporting.billingProfiles.get` | GET | `userprofiles/{+profileId}/billingProfiles/{+id}` | Gets one billing profile by ID. |
| `dfareporting.billingProfiles.list` | GET | `userprofiles/{+profileId}/billingProfiles` | Retrieves a list of billing profiles, possibly filtered. This method supports paging. |
| `dfareporting.billingProfiles.update` | PUT | `userprofiles/{+profileId}/billingProfiles` | Updates an existing billing profile. |
| `dfareporting.billingRates.list` | GET | `userprofiles/{+profileId}/billingProfiles/{+billingProfileId}/billingRates` | Retrieves a list of billing rates. This method supports paging. |
| `dfareporting.browsers.list` | GET | `userprofiles/{+profileId}/browsers` | Retrieves a list of browsers. |
| `dfareporting.campaignCreativeAssociations.insert` | POST | `userprofiles/{+profileId}/campaigns/{+campaignId}/campaignCreativeAssociations` | Associates a creative with the specified campaign. This method creates a default ad with dimensio... |
| `dfareporting.campaignCreativeAssociations.list` | GET | `userprofiles/{+profileId}/campaigns/{+campaignId}/campaignCreativeAssociations` | Retrieves the list of creative IDs associated with the specified campaign. This method supports p... |
| `dfareporting.campaigns.get` | GET | `userprofiles/{+profileId}/campaigns/{+id}` | Gets one campaign by ID. |
| `dfareporting.campaigns.insert` | POST | `userprofiles/{+profileId}/campaigns` | Inserts a new campaign. |
| `dfareporting.campaigns.list` | GET | `userprofiles/{+profileId}/campaigns` | Retrieves a list of campaigns, possibly filtered. This method supports paging. |
| `dfareporting.campaigns.update` | PUT | `userprofiles/{+profileId}/campaigns` | Updates an existing campaign. |
| `dfareporting.campaigns.patch` | PATCH | `userprofiles/{+profileId}/campaigns` | Updates an existing campaign. This method supports patch semantics. |
| `dfareporting.changeLogs.get` | GET | `userprofiles/{+profileId}/changeLogs/{+id}` | Gets one change log by ID. |
| `dfareporting.changeLogs.list` | GET | `userprofiles/{+profileId}/changeLogs` | Retrieves a list of change logs. This method supports paging. |
| `dfareporting.cities.list` | GET | `userprofiles/{+profileId}/cities` | Retrieves a list of cities, possibly filtered. |
| `dfareporting.connectionTypes.get` | GET | `userprofiles/{+profileId}/connectionTypes/{+id}` | Gets one connection type by ID. |
| `dfareporting.connectionTypes.list` | GET | `userprofiles/{+profileId}/connectionTypes` | Retrieves a list of connection types. |
| `dfareporting.contentCategories.delete` | DELETE | `userprofiles/{+profileId}/contentCategories/{+id}` | Deletes an existing content category. |
| `dfareporting.contentCategories.get` | GET | `userprofiles/{+profileId}/contentCategories/{+id}` | Gets one content category by ID. |
| `dfareporting.contentCategories.insert` | POST | `userprofiles/{+profileId}/contentCategories` | Inserts a new content category. |
| `dfareporting.contentCategories.list` | GET | `userprofiles/{+profileId}/contentCategories` | Retrieves a list of content categories, possibly filtered. This method supports paging. |
| `dfareporting.contentCategories.update` | PUT | `userprofiles/{+profileId}/contentCategories` | Updates an existing content category. |
| `dfareporting.contentCategories.patch` | PATCH | `userprofiles/{+profileId}/contentCategories` | Updates an existing content category. This method supports patch semantics. |
| `dfareporting.conversions.batchinsert` | POST | `userprofiles/{profileId}/conversions/batchinsert` | Inserts conversions. |
| `dfareporting.conversions.batchupdate` | POST | `userprofiles/{profileId}/conversions/batchupdate` | Updates existing conversions. |
| `dfareporting.countries.get` | GET | `userprofiles/{+profileId}/countries/{+dartId}` | Gets one country by ID. |
| `dfareporting.countries.list` | GET | `userprofiles/{+profileId}/countries` | Retrieves a list of countries. |
| `dfareporting.creativeAssets.insert` | POST | `userprofiles/{+profileId}/creativeAssets/{+advertiserId}/creativeAssets` | Inserts a new creative asset. |
| `dfareporting.creativeFields.delete` | DELETE | `userprofiles/{+profileId}/creativeFields/{+id}` | Deletes an existing creative field. |
| `dfareporting.creativeFields.get` | GET | `userprofiles/{+profileId}/creativeFields/{+id}` | Gets one creative field by ID. |
| `dfareporting.creativeFields.insert` | POST | `userprofiles/{+profileId}/creativeFields` | Inserts a new creative field. |
| `dfareporting.creativeFields.list` | GET | `userprofiles/{+profileId}/creativeFields` | Retrieves a list of creative fields, possibly filtered. This method supports paging. |
| `dfareporting.creativeFields.update` | PUT | `userprofiles/{+profileId}/creativeFields` | Updates an existing creative field. |
| `dfareporting.creativeFields.patch` | PATCH | `userprofiles/{+profileId}/creativeFields` | Updates an existing creative field. This method supports patch semantics. |
| `dfareporting.creativeFieldValues.delete` | DELETE | `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues/{+id}` | Deletes an existing creative field value. |
| `dfareporting.creativeFieldValues.get` | GET | `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues/{+id}` | Gets one creative field value by ID. |
| `dfareporting.creativeFieldValues.insert` | POST | `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues` | Inserts a new creative field value. |
| `dfareporting.creativeFieldValues.list` | GET | `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues` | Retrieves a list of creative field values, possibly filtered. This method supports paging. |
| `dfareporting.creativeFieldValues.update` | PUT | `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues` | Updates an existing creative field value. |
| `dfareporting.creativeFieldValues.patch` | PATCH | `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues` | Updates an existing creative field value. This method supports patch semantics. |
| `dfareporting.creativeGroups.get` | GET | `userprofiles/{+profileId}/creativeGroups/{+id}` | Gets one creative group by ID. |
| `dfareporting.creativeGroups.insert` | POST | `userprofiles/{+profileId}/creativeGroups` | Inserts a new creative group. |
| `dfareporting.creativeGroups.list` | GET | `userprofiles/{+profileId}/creativeGroups` | Retrieves a list of creative groups, possibly filtered. This method supports paging. |
| `dfareporting.creativeGroups.update` | PUT | `userprofiles/{+profileId}/creativeGroups` | Updates an existing creative group. |
| `dfareporting.creativeGroups.patch` | PATCH | `userprofiles/{+profileId}/creativeGroups` | Updates an existing creative group. This method supports patch semantics. |
| `dfareporting.creatives.get` | GET | `userprofiles/{+profileId}/creatives/{+id}` | Gets one creative by ID. |
| `dfareporting.creatives.insert` | POST | `userprofiles/{+profileId}/creatives` | Inserts a new creative. |
| `dfareporting.creatives.list` | GET | `userprofiles/{+profileId}/creatives` | Retrieves a list of creatives, possibly filtered. This method supports paging. |
| `dfareporting.creatives.update` | PUT | `userprofiles/{+profileId}/creatives` | Updates an existing creative. |
| `dfareporting.creatives.patch` | PATCH | `userprofiles/{+profileId}/creatives` | Updates an existing creative. This method supports patch semantics. |
| `dfareporting.dimensionValues.query` | POST | `userprofiles/{profileId}/dimensionvalues/query` | Retrieves list of report dimension values for a list of filters. |
| `dfareporting.directorySites.get` | GET | `userprofiles/{+profileId}/directorySites/{+id}` | Gets one directory site by ID. |
| `dfareporting.directorySites.insert` | POST | `userprofiles/{+profileId}/directorySites` | Inserts a new directory site. |
| `dfareporting.directorySites.list` | GET | `userprofiles/{+profileId}/directorySites` | Retrieves a list of directory sites, possibly filtered. This method supports paging. |
| `dfareporting.dynamicFeeds.get` | GET | `studio/dynamicFeeds/{+dynamicFeedId}` | Gets a dynamic feed by ID. |
| `dfareporting.dynamicFeeds.insert` | POST | `studio/dynamicFeeds` | Inserts a new dynamic feed. |
| `dfareporting.dynamicFeeds.update` | PUT | `studio/dynamicFeeds` | Updates a new dynamic feed. For draft feeds, only Element can be updated. For published feeds, on... |
| `dfareporting.dynamicFeeds.retransform` | POST | `studio/dynamicFeeds/{+dynamicFeedId}/retransform` | Retransforms a dynamic feed. Only draft feeds can be retransformed (i.e. the feed has not been pu... |
| `dfareporting.dynamicProfiles.get` | GET | `studio/dynamicProfiles/{+dynamicProfileId}` | Gets a dynamic profile by ID. |
| `dfareporting.dynamicProfiles.insert` | POST | `studio/dynamicProfiles` | Inserts a new dynamic profile. |
| `dfareporting.dynamicProfiles.update` | PUT | `studio/dynamicProfiles` | Updates an existing dynamic profile. |
| `dfareporting.dynamicProfiles.generateCode` | GET | `studio/dynamicProfiles/{+dynamicProfileId}/generateCode` | Generates code for a dynamic profile, which will need unescaping. |
| `dfareporting.dynamicProfiles.publish` | POST | `studio/dynamicProfiles/{+dynamicProfileId}/publish` | Publish for a dynamic profile. |
| `dfareporting.dynamicTargetingKeys.delete` | DELETE | `userprofiles/{+profileId}/dynamicTargetingKeys/{+objectId}` | Deletes an existing dynamic targeting key. |
| `dfareporting.dynamicTargetingKeys.insert` | POST | `userprofiles/{+profileId}/dynamicTargetingKeys` | Inserts a new dynamic targeting key. Keys must be created at the advertiser level before being as... |
| `dfareporting.dynamicTargetingKeys.list` | GET | `userprofiles/{+profileId}/dynamicTargetingKeys` | Retrieves a list of dynamic targeting keys. |
| `dfareporting.eventTags.delete` | DELETE | `userprofiles/{+profileId}/eventTags/{+id}` | Deletes an existing event tag. |
| `dfareporting.eventTags.get` | GET | `userprofiles/{+profileId}/eventTags/{+id}` | Gets one event tag by ID. |
| `dfareporting.eventTags.insert` | POST | `userprofiles/{+profileId}/eventTags` | Inserts a new event tag. |
| `dfareporting.eventTags.list` | GET | `userprofiles/{+profileId}/eventTags` | Retrieves a list of event tags, possibly filtered. |
| `dfareporting.eventTags.update` | PUT | `userprofiles/{+profileId}/eventTags` | Updates an existing event tag. |
| `dfareporting.eventTags.patch` | PATCH | `userprofiles/{+profileId}/eventTags` | Updates an existing event tag. This method supports patch semantics. |
| `dfareporting.files.get` | GET | `reports/{reportId}/files/{fileId}` | Retrieves a report file by its report ID and file ID. This method supports media download. |
| `dfareporting.files.list` | GET | `userprofiles/{profileId}/files` | Lists files for a user profile. |
| `dfareporting.floodlightActivityGroups.get` | GET | `userprofiles/{+profileId}/floodlightActivityGroups/{+id}` | Gets one floodlight activity group by ID. |
| `dfareporting.floodlightActivityGroups.insert` | POST | `userprofiles/{+profileId}/floodlightActivityGroups` | Inserts a new floodlight activity group. |
| `dfareporting.floodlightActivityGroups.list` | GET | `userprofiles/{+profileId}/floodlightActivityGroups` | Retrieves a list of floodlight activity groups, possibly filtered. This method supports paging. |
| `dfareporting.floodlightActivityGroups.update` | PUT | `userprofiles/{+profileId}/floodlightActivityGroups` | Updates an existing floodlight activity group. |
| `dfareporting.floodlightActivityGroups.patch` | PATCH | `userprofiles/{+profileId}/floodlightActivityGroups` | Updates an existing floodlight activity group. This method supports patch semantics. |
| `dfareporting.floodlightActivities.delete` | DELETE | `userprofiles/{+profileId}/floodlightActivities/{+id}` | Deletes an existing floodlight activity. |
| `dfareporting.floodlightActivities.generatetag` | POST | `userprofiles/{+profileId}/floodlightActivities/generatetag` | Generates a tag for a floodlight activity. |
| `dfareporting.floodlightActivities.get` | GET | `userprofiles/{+profileId}/floodlightActivities/{+id}` | Gets one floodlight activity by ID. |
| `dfareporting.floodlightActivities.insert` | POST | `userprofiles/{+profileId}/floodlightActivities` | Inserts a new floodlight activity. |
| `dfareporting.floodlightActivities.list` | GET | `userprofiles/{+profileId}/floodlightActivities` | Retrieves a list of floodlight activities, possibly filtered. This method supports paging. |
| `dfareporting.floodlightActivities.update` | PUT | `userprofiles/{+profileId}/floodlightActivities` | Updates an existing floodlight activity. |
| `dfareporting.floodlightActivities.patch` | PATCH | `userprofiles/{+profileId}/floodlightActivities` | Updates an existing floodlight activity. This method supports patch semantics. |
| `dfareporting.floodlightConfigurations.get` | GET | `userprofiles/{+profileId}/floodlightConfigurations/{+id}` | Gets one floodlight configuration by ID. |
| `dfareporting.floodlightConfigurations.list` | GET | `userprofiles/{+profileId}/floodlightConfigurations` | Retrieves a list of floodlight configurations, possibly filtered. |
| `dfareporting.floodlightConfigurations.update` | PUT | `userprofiles/{+profileId}/floodlightConfigurations` | Updates an existing floodlight configuration. |
| `dfareporting.floodlightConfigurations.patch` | PATCH | `userprofiles/{+profileId}/floodlightConfigurations` | Updates an existing floodlight configuration. This method supports patch semantics. |
| `dfareporting.advertiserInvoices.list` | GET | `userprofiles/{+profileId}/advertisers/{+advertiserId}/invoices` | Retrieves a list of invoices for a particular issue month. The api only works if the billing prof... |
| `dfareporting.advertiserLandingPages.get` | GET | `userprofiles/{+profileId}/advertiserLandingPages/{+id}` | Gets one landing page by ID. |
| `dfareporting.advertiserLandingPages.insert` | POST | `userprofiles/{+profileId}/advertiserLandingPages` | Inserts a new landing page. |
| `dfareporting.advertiserLandingPages.list` | GET | `userprofiles/{+profileId}/advertiserLandingPages` | Retrieves a list of landing pages. |
| `dfareporting.advertiserLandingPages.update` | PUT | `userprofiles/{+profileId}/advertiserLandingPages` | Updates an existing landing page. |
| `dfareporting.advertiserLandingPages.patch` | PATCH | `userprofiles/{+profileId}/advertiserLandingPages` | Updates an existing landing page. This method supports patch semantics. |
| `dfareporting.languages.list` | GET | `userprofiles/{+profileId}/languages` | Retrieves a list of languages. |
| `dfareporting.metros.list` | GET | `userprofiles/{+profileId}/metros` | Retrieves a list of metros. |
| `dfareporting.mobileApps.get` | GET | `userprofiles/{+profileId}/mobileApps/{+id}` | Gets one mobile app by ID. |
| `dfareporting.mobileApps.list` | GET | `userprofiles/{+profileId}/mobileApps` | Retrieves list of available mobile apps. |
| `dfareporting.mobileCarriers.get` | GET | `userprofiles/{+profileId}/mobileCarriers/{+id}` | Gets one mobile carrier by ID. |
| `dfareporting.mobileCarriers.list` | GET | `userprofiles/{+profileId}/mobileCarriers` | Retrieves a list of mobile carriers. |
| `dfareporting.operatingSystems.get` | GET | `userprofiles/{+profileId}/operatingSystems/{+dartId}` | Gets one operating system by DART ID. |
| `dfareporting.operatingSystems.list` | GET | `userprofiles/{+profileId}/operatingSystems` | Retrieves a list of operating systems. |
| `dfareporting.operatingSystemVersions.get` | GET | `userprofiles/{+profileId}/operatingSystemVersions/{+id}` | Gets one operating system version by ID. |
| `dfareporting.operatingSystemVersions.list` | GET | `userprofiles/{+profileId}/operatingSystemVersions` | Retrieves a list of operating system versions. |
| `dfareporting.remarketingLists.patch` | PATCH | `userprofiles/{+profileId}/remarketingLists` | Updates an existing remarketing list. This method supports patch semantics. |
| `dfareporting.remarketingLists.get` | GET | `userprofiles/{+profileId}/remarketingLists/{+id}` | Gets one remarketing list by ID. |
| `dfareporting.remarketingLists.insert` | POST | `userprofiles/{+profileId}/remarketingLists` | Inserts a new remarketing list. |
| `dfareporting.remarketingLists.list` | GET | `userprofiles/{+profileId}/remarketingLists` | Retrieves a list of remarketing lists, possibly filtered. This method supports paging. |
| `dfareporting.remarketingLists.update` | PUT | `userprofiles/{+profileId}/remarketingLists` | Updates an existing remarketing list. |
| `dfareporting.remarketingListShares.patch` | PATCH | `userprofiles/{+profileId}/remarketingListShares` | Updates an existing remarketing list share. This method supports patch semantics. |
| `dfareporting.remarketingListShares.get` | GET | `userprofiles/{+profileId}/remarketingListShares/{+remarketingListId}` | Gets one remarketing list share by remarketing list ID. |
| `dfareporting.remarketingListShares.update` | PUT | `userprofiles/{+profileId}/remarketingListShares` | Updates an existing remarketing list share. |
| `dfareporting.sites.patch` | PATCH | `userprofiles/{+profileId}/sites` | Updates an existing site. This method supports patch semantics. |
| `dfareporting.sites.get` | GET | `userprofiles/{+profileId}/sites/{+id}` | Gets one site by ID. |
| `dfareporting.sites.insert` | POST | `userprofiles/{+profileId}/sites` | Inserts a new site. |
| `dfareporting.sites.list` | GET | `userprofiles/{+profileId}/sites` | Retrieves a list of sites, possibly filtered. This method supports paging. |
| `dfareporting.sites.update` | PUT | `userprofiles/{+profileId}/sites` | Updates an existing site. |
| `dfareporting.subaccounts.patch` | PATCH | `userprofiles/{+profileId}/subaccounts` | Updates an existing subaccount. This method supports patch semantics. |
| `dfareporting.subaccounts.get` | GET | `userprofiles/{+profileId}/subaccounts/{+id}` | Gets one subaccount by ID. |
| `dfareporting.subaccounts.insert` | POST | `userprofiles/{+profileId}/subaccounts` | Inserts a new subaccount. |
| `dfareporting.subaccounts.list` | GET | `userprofiles/{+profileId}/subaccounts` | Gets a list of subaccounts, possibly filtered. This method supports paging. |
| `dfareporting.subaccounts.update` | PUT | `userprofiles/{+profileId}/subaccounts` | Updates an existing subaccount. |
| `dfareporting.userRoles.patch` | PATCH | `userprofiles/{+profileId}/userRoles` | Updates an existing user role. This method supports patch semantics. |
| `dfareporting.userRoles.get` | GET | `userprofiles/{+profileId}/userRoles/{+id}` | Gets one user role by ID. |
| `dfareporting.userRoles.insert` | POST | `userprofiles/{+profileId}/userRoles` | Inserts a new user role. |
| `dfareporting.userRoles.list` | GET | `userprofiles/{+profileId}/userRoles` | Retrieves a list of user roles, possibly filtered. This method supports paging. |
| `dfareporting.userRoles.update` | PUT | `userprofiles/{+profileId}/userRoles` | Updates an existing user role. |
| `dfareporting.userRoles.delete` | DELETE | `userprofiles/{+profileId}/userRoles/{+id}` | Deletes an existing user role. |
| `dfareporting.targetingTemplates.patch` | PATCH | `userprofiles/{+profileId}/targetingTemplates` | Updates an existing targeting template. This method supports patch semantics. |
| `dfareporting.targetingTemplates.get` | GET | `userprofiles/{+profileId}/targetingTemplates/{+id}` | Gets one targeting template by ID. |
| `dfareporting.targetingTemplates.insert` | POST | `userprofiles/{+profileId}/targetingTemplates` | Inserts a new targeting template. |
| `dfareporting.targetingTemplates.list` | GET | `userprofiles/{+profileId}/targetingTemplates` | Retrieves a list of targeting templates, optionally filtered. This method supports paging. |
| `dfareporting.targetingTemplates.update` | PUT | `userprofiles/{+profileId}/targetingTemplates` | Updates an existing targeting template. |
| `dfareporting.placements.patch` | PATCH | `userprofiles/{+profileId}/placements` | Updates an existing placement. This method supports patch semantics. |
| `dfareporting.placements.generatetags` | POST | `userprofiles/{+profileId}/placements/generatetags` | Generates tags for a placement. |
| `dfareporting.placements.get` | GET | `userprofiles/{+profileId}/placements/{+id}` | Gets one placement by ID. |
| `dfareporting.placements.insert` | POST | `userprofiles/{+profileId}/placements` | Inserts a new placement. |
| `dfareporting.placements.list` | GET | `userprofiles/{+profileId}/placements` | Retrieves a list of placements, possibly filtered. This method supports paging. |
| `dfareporting.placements.update` | PUT | `userprofiles/{+profileId}/placements` | Updates an existing placement. |
| `dfareporting.placementGroups.patch` | PATCH | `userprofiles/{+profileId}/placementGroups` | Updates an existing placement group. This method supports patch semantics. |
| `dfareporting.placementGroups.get` | GET | `userprofiles/{+profileId}/placementGroups/{+id}` | Gets one placement group by ID. |
| `dfareporting.placementGroups.insert` | POST | `userprofiles/{+profileId}/placementGroups` | Inserts a new placement group. |
| `dfareporting.placementGroups.list` | GET | `userprofiles/{+profileId}/placementGroups` | Retrieves a list of placement groups, possibly filtered. This method supports paging. |
| `dfareporting.placementGroups.update` | PUT | `userprofiles/{+profileId}/placementGroups` | Updates an existing placement group. |
| `dfareporting.placementStrategies.patch` | PATCH | `userprofiles/{+profileId}/placementStrategies` | Updates an existing placement strategy. This method supports patch semantics. |
| `dfareporting.placementStrategies.delete` | DELETE | `userprofiles/{+profileId}/placementStrategies/{+id}` | Deletes an existing placement strategy. |
| `dfareporting.placementStrategies.get` | GET | `userprofiles/{+profileId}/placementStrategies/{+id}` | Gets one placement strategy by ID. |
| `dfareporting.placementStrategies.insert` | POST | `userprofiles/{+profileId}/placementStrategies` | Inserts a new placement strategy. |
| `dfareporting.placementStrategies.list` | GET | `userprofiles/{+profileId}/placementStrategies` | Retrieves a list of placement strategies, possibly filtered. This method supports paging. |
| `dfareporting.placementStrategies.update` | PUT | `userprofiles/{+profileId}/placementStrategies` | Updates an existing placement strategy. |
| `dfareporting.platformTypes.get` | GET | `userprofiles/{+profileId}/platformTypes/{+id}` | Gets one platform type by ID. |
| `dfareporting.platformTypes.list` | GET | `userprofiles/{+profileId}/platformTypes` | Retrieves a list of platform types. |
| `dfareporting.postalCodes.get` | GET | `userprofiles/{+profileId}/postalCodes/{+code}` | Gets one postal code by ID. |
| `dfareporting.postalCodes.list` | GET | `userprofiles/{+profileId}/postalCodes` | Retrieves a list of postal codes. |
| `dfareporting.regions.list` | GET | `userprofiles/{+profileId}/regions` | Retrieves a list of regions. |
| `dfareporting.targetableRemarketingLists.get` | GET | `userprofiles/{+profileId}/targetableRemarketingLists/{+id}` | Gets one remarketing list by ID. |
| `dfareporting.targetableRemarketingLists.list` | GET | `userprofiles/{+profileId}/targetableRemarketingLists` | Retrieves a list of targetable remarketing lists, possibly filtered. This method supports paging. |
| `dfareporting.reports.delete` | DELETE | `userprofiles/{profileId}/reports/{reportId}` | Deletes a report by its ID. |
| `dfareporting.reports.get` | GET | `userprofiles/{profileId}/reports/{reportId}` | Retrieves a report by its ID. |
| `dfareporting.reports.insert` | POST | `userprofiles/{profileId}/reports` | Creates a report. |
| `dfareporting.reports.list` | GET | `userprofiles/{profileId}/reports` | Retrieves list of reports. |
| `dfareporting.reports.run` | POST | `userprofiles/{profileId}/reports/{reportId}/run` | Runs a report. |
| `dfareporting.reports.update` | PUT | `userprofiles/{profileId}/reports/{reportId}` | Updates a report. |
| `dfareporting.reports.files.get` | GET | `userprofiles/{profileId}/reports/{reportId}/files/{fileId}` | Retrieves a report file by its report ID and file ID. This method supports media download. |
| `dfareporting.reports.files.list` | GET | `userprofiles/{profileId}/reports/{reportId}/files` | Lists files for a report. |
| `dfareporting.reports.compatibleFields.query` | POST | `userprofiles/{profileId}/reports/compatiblefields/query` | Returns the fields that are compatible to be selected in the respective sections of a report crit... |
| `dfareporting.sizes.get` | GET | `userprofiles/{+profileId}/sizes/{+id}` | Gets one size by ID. |
| `dfareporting.sizes.insert` | POST | `userprofiles/{+profileId}/sizes` | Inserts a new size. |
| `dfareporting.sizes.list` | GET | `userprofiles/{+profileId}/sizes` | Retrieves a list of sizes, possibly filtered. Retrieved sizes are globally unique and may include... |
| `dfareporting.studioCreativeAssets.insert` | POST | `studio/creativeAssets` | Inserts a new studio creative asset. |
| `dfareporting.studioCreatives.get` | GET | `studio/creatives/{+studioCreativeId}` | Gets a studio creative by ID. |
| `dfareporting.studioCreatives.insert` | POST | `studio/creatives` | Inserts a new studio creative. |
| `dfareporting.studioCreatives.publish` | POST | `studio/creatives/{+studioCreativeId}/publish` | Publish for a studio creative. |
| `dfareporting.tvCampaignDetails.get` | GET | `userprofiles/{+profileId}/tvCampaignDetails/{+id}` | Gets one TvCampaignDetail by ID. |
| `dfareporting.tvCampaignSummaries.list` | GET | `userprofiles/{+profileId}/tvCampaignSummaries` | Retrieves a list of TV campaign summaries. |
| `dfareporting.userProfiles.get` | GET | `userprofiles/{profileId}` | Gets one user profile by ID. |
| `dfareporting.userProfiles.list` | GET | `userprofiles` | Retrieves list of user profiles for a user. |
| `dfareporting.userRolePermissionGroups.get` | GET | `userprofiles/{+profileId}/userRolePermissionGroups/{+id}` | Gets one user role permission group by ID. |
| `dfareporting.userRolePermissionGroups.list` | GET | `userprofiles/{+profileId}/userRolePermissionGroups` | Gets a list of all supported user role permission groups. |
| `dfareporting.userRolePermissions.get` | GET | `userprofiles/{+profileId}/userRolePermissions/{+id}` | Gets one user role permission by ID. |
| `dfareporting.userRolePermissions.list` | GET | `userprofiles/{+profileId}/userRolePermissions` | Gets a list of user role permissions, possibly filtered. |
| `dfareporting.videoFormats.get` | GET | `userprofiles/{+profileId}/videoFormats/{+id}` | Gets one video format by ID. |
| `dfareporting.videoFormats.list` | GET | `userprofiles/{+profileId}/videoFormats` | Lists available video formats. |

### `dfareporting.accountPermissionGroups.get`

**GET** `userprofiles/{+profileId}/accountPermissionGroups/{+id}`

Gets one account permission group by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Account permission group ID. |

**Response**: `AccountPermissionGroup`

```typescript
const res = await dfareporting.accountPermissionGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accountPermissionGroups.list`

**GET** `userprofiles/{+profileId}/accountPermissionGroups`

Retrieves the list of account permission groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `AccountPermissionGroupsListResponse`

```typescript
const res = await dfareporting.accountPermissionGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accountPermissions.get`

**GET** `userprofiles/{+profileId}/accountPermissions/{+id}`

Gets one account permission by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Account permission ID. |

**Response**: `AccountPermission`

```typescript
const res = await dfareporting.accountPermissions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accountPermissions.list`

**GET** `userprofiles/{+profileId}/accountPermissions`

Retrieves the list of account permissions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `AccountPermissionsListResponse`

```typescript
const res = await dfareporting.accountPermissions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accounts.get`

**GET** `userprofiles/{+profileId}/accounts/{+id}`

Gets one account by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Account ID. |

**Response**: `Account`

```typescript
const res = await dfareporting.accounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accounts.list`

**GET** `userprofiles/{+profileId}/accounts`

Retrieves the list of accounts, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `active` | `boolean` | query | No | Select only active accounts. Don't set this field to select both active and non-active accounts. |
| `ids` | `string` | query | No | Select only accounts with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "account*2015" will return object... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `AccountsListResponse`

```typescript
const res = await dfareporting.accounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accounts.update`

**PUT** `userprofiles/{+profileId}/accounts`

Updates an existing account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Account`

**Response**: `Account`

```typescript
const res = await dfareporting.accounts.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accounts.patch`

**PATCH** `userprofiles/{+profileId}/accounts`

Updates an existing account. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Account ID. |

**Request body**: `Account`

**Response**: `Account`

```typescript
const res = await dfareporting.accounts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accountActiveAdSummaries.get`

**GET** `userprofiles/{+profileId}/accountActiveAdSummaries/{+summaryAccountId}`

Gets the account's active ad summary by account ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `summaryAccountId` | `string` | path | Yes | Account ID. |

**Response**: `AccountActiveAdSummary`

```typescript
const res = await dfareporting.accountActiveAdSummaries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accountUserProfiles.get`

**GET** `userprofiles/{profileId}/accountUserProfiles/{+id}`

Gets one account user profile by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | User profile ID. |

**Response**: `AccountUserProfile`

```typescript
const res = await dfareporting.accountUserProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accountUserProfiles.insert`

**POST** `userprofiles/{+profileId}/accountUserProfiles`

Inserts a new account user profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `AccountUserProfile`

**Response**: `AccountUserProfile`

```typescript
const res = await dfareporting.accountUserProfiles.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accountUserProfiles.list`

**GET** `userprofiles/{+profileId}/accountUserProfiles`

Retrieves a list of account user profiles, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `active` | `boolean` | query | No | Select only active user profiles. |
| `ids` | `string` | query | No | Select only user profiles with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name, ID or email. Wildcards (*) are allowed. For example, "user profile*2015" will r... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `subaccountId` | `string` | query | No | Select only user profiles with the specified subaccount ID. |
| `userRoleId` | `string` | query | No | Select only user profiles with the specified user role ID. |

**Response**: `AccountUserProfilesListResponse`

```typescript
const res = await dfareporting.accountUserProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accountUserProfiles.update`

**PUT** `userprofiles/{+profileId}/accountUserProfiles`

Updates an existing account user profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `AccountUserProfile`

**Response**: `AccountUserProfile`

```typescript
const res = await dfareporting.accountUserProfiles.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.accountUserProfiles.patch`

**PATCH** `userprofiles/{+profileId}/accountUserProfiles`

Updates an existing account user profile. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. AccountUserProfile ID. |

**Request body**: `AccountUserProfile`

**Response**: `AccountUserProfile`

```typescript
const res = await dfareporting.accountUserProfiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.ads.get`

**GET** `userprofiles/{+profileId}/ads/{+id}`

Gets one ad by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Ad ID. |

**Response**: `Ad`

```typescript
const res = await dfareporting.ads.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.ads.insert`

**POST** `userprofiles/{+profileId}/ads`

Inserts a new ad.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Ad`

**Response**: `Ad`

```typescript
const res = await dfareporting.ads.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.ads.list`

**GET** `userprofiles/{+profileId}/ads`

Retrieves a list of ads, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `active` | `boolean` | query | No | Select only active ads. |
| `advertiserId` | `string` | query | No | Select only ads with this advertiser ID. |
| `archived` | `boolean` | query | No | Select only archived ads. |
| `audienceSegmentIds` | `string` | query | No | Select only ads with these audience segment IDs. |
| `campaignIds` | `string` | query | No | Select only ads with these campaign IDs. |
| `compatibility` | `string` | query | No | Select default ads with the specified compatibility. Applicable when type is AD_SERVING_DEFAULT_AD. DISPLAY and DISPL... |
| `creativeIds` | `string` | query | No | Select only ads with these creative IDs assigned. |
| `creativeOptimizationConfigurationIds` | `string` | query | No | Select only ads with these creative optimization configuration IDs. |
| `dynamicClickTracker` | `boolean` | query | No | Select only dynamic click trackers. Applicable when type is AD_SERVING_CLICK_TRACKER. If true, select dynamic click t... |
| `ids` | `string` | query | No | Select only ads with these IDs. |
| `landingPageIds` | `string` | query | No | Select only ads with these landing page IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `overriddenEventTagId` | `string` | query | No | Select only ads with this event tag override ID. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `placementIds` | `string` | query | No | Select only ads with these placement IDs assigned. |
| `remarketingListIds` | `string` | query | No | Select only ads whose list targeting expression use these remarketing list IDs. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "ad*2015" will return objects wit... |
| `sizeIds` | `string` | query | No | Select only ads with these size IDs. |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `sslCompliant` | `boolean` | query | No | Select only ads that are SSL-compliant. |
| `sslRequired` | `boolean` | query | No | Select only ads that require SSL. |
| `type` | `string` | query | No | Select only ads with these types. |

**Response**: `AdsListResponse`

```typescript
const res = await dfareporting.ads.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.ads.update`

**PUT** `userprofiles/{+profileId}/ads`

Updates an existing ad.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Ad`

**Response**: `Ad`

```typescript
const res = await dfareporting.ads.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.ads.patch`

**PATCH** `userprofiles/{+profileId}/ads`

Updates an existing ad. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. RemarketingList ID. |

**Request body**: `Ad`

**Response**: `Ad`

```typescript
const res = await dfareporting.ads.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserGroups.delete`

**DELETE** `userprofiles/{+profileId}/advertiserGroups/{+id}`

Deletes an existing advertiser group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Advertiser group ID. |

```typescript
const res = await dfareporting.advertiserGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserGroups.get`

**GET** `userprofiles/{+profileId}/advertiserGroups/{+id}`

Gets one advertiser group by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Advertiser group ID. |

**Response**: `AdvertiserGroup`

```typescript
const res = await dfareporting.advertiserGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserGroups.insert`

**POST** `userprofiles/{+profileId}/advertiserGroups`

Inserts a new advertiser group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `AdvertiserGroup`

**Response**: `AdvertiserGroup`

```typescript
const res = await dfareporting.advertiserGroups.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserGroups.list`

**GET** `userprofiles/{+profileId}/advertiserGroups`

Retrieves a list of advertiser groups, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `ids` | `string` | query | No | Select only advertiser groups with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "advertiser*2015" will return obj... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `AdvertiserGroupsListResponse`

```typescript
const res = await dfareporting.advertiserGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserGroups.update`

**PUT** `userprofiles/{+profileId}/advertiserGroups`

Updates an existing advertiser group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `AdvertiserGroup`

**Response**: `AdvertiserGroup`

```typescript
const res = await dfareporting.advertiserGroups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserGroups.patch`

**PATCH** `userprofiles/{+profileId}/advertiserGroups`

Updates an existing advertiser group. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Advertiser Group ID. |

**Request body**: `AdvertiserGroup`

**Response**: `AdvertiserGroup`

```typescript
const res = await dfareporting.advertiserGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertisers.get`

**GET** `userprofiles/{+profileId}/advertisers/{+id}`

Gets one advertiser by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Advertiser ID. |

**Response**: `Advertiser`

```typescript
const res = await dfareporting.advertisers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertisers.insert`

**POST** `userprofiles/{+profileId}/advertisers`

Inserts a new advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Advertiser`

**Response**: `Advertiser`

```typescript
const res = await dfareporting.advertisers.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertisers.list`

**GET** `userprofiles/{+profileId}/advertisers`

Retrieves a list of advertisers, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserGroupIds` | `string` | query | No | Select only advertisers with these advertiser group IDs. |
| `floodlightConfigurationIds` | `string` | query | No | Select only advertisers with these floodlight configuration IDs. |
| `ids` | `string` | query | No | Select only advertisers with these IDs. |
| `includeAdvertisersWithoutGroupsOnly` | `boolean` | query | No | Select only advertisers which do not belong to any advertiser group. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `onlyParent` | `boolean` | query | No | Select only advertisers which use another advertiser's floodlight configuration. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "advertiser*2015" will return obj... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `status` | `string` | query | No | Select only advertisers with the specified status. |
| `subaccountId` | `string` | query | No | Select only advertisers with these subaccount IDs. |

**Response**: `AdvertisersListResponse`

```typescript
const res = await dfareporting.advertisers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertisers.update`

**PUT** `userprofiles/{+profileId}/advertisers`

Updates an existing advertiser.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Advertiser`

**Response**: `Advertiser`

```typescript
const res = await dfareporting.advertisers.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertisers.patch`

**PATCH** `userprofiles/{+profileId}/advertisers`

Updates an existing advertiser. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Advertiser ID. |

**Request body**: `Advertiser`

**Response**: `Advertiser`

```typescript
const res = await dfareporting.advertisers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.billingAssignments.insert`

**POST** `userprofiles/{+profileId}/billingProfiles/{+billingProfileId}/billingAssignments`

Inserts a new billing assignment and returns the new assignment. Only one of advertiser_id or campaign_id is support per request. If the new assignment has no effect (assigning a campaign to the parent advertiser billing profile or assigning an advertiser to the account billing profile), no assignment will be returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `billingProfileId` | `string` | path | Yes | Billing profile ID of this billing assignment. |

**Request body**: `BillingAssignment`

**Response**: `BillingAssignment`

```typescript
const res = await dfareporting.billingAssignments.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.billingAssignments.list`

**GET** `userprofiles/{+profileId}/billingProfiles/{+billingProfileId}/billingAssignments`

Retrieves a list of billing assignments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `billingProfileId` | `string` | path | Yes | Billing profile ID of this billing assignment. |

**Response**: `BillingAssignmentsListResponse`

```typescript
const res = await dfareporting.billingAssignments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.billingProfiles.get`

**GET** `userprofiles/{+profileId}/billingProfiles/{+id}`

Gets one billing profile by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Billing Profile ID. |

**Response**: `BillingProfile`

```typescript
const res = await dfareporting.billingProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.billingProfiles.list`

**GET** `userprofiles/{+profileId}/billingProfiles`

Retrieves a list of billing profiles, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `currency_code` | `string` | query | No | Select only billing profile with currency. |
| `ids` | `string` | query | No | Select only billing profile with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `name` | `string` | query | No | Allows searching for billing profiles by name. Wildcards (*) are allowed. For example, "profile*2020" will return obj... |
| `onlySuggestion` | `boolean` | query | No | Select only billing profile which is suggested for the currency_code & subaccount_id using the Billing Suggestion API. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `status` | `string` | query | No | Select only billing profile with the specified status. |
| `subaccountIds` | `string` | query | No | Select only billing profile with the specified subaccount.When only_suggestion is true, only a single subaccount_id i... |

**Response**: `BillingProfilesListResponse`

```typescript
const res = await dfareporting.billingProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.billingProfiles.update`

**PUT** `userprofiles/{+profileId}/billingProfiles`

Updates an existing billing profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `BillingProfile`

**Response**: `BillingProfile`

```typescript
const res = await dfareporting.billingProfiles.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.billingRates.list`

**GET** `userprofiles/{+profileId}/billingProfiles/{+billingProfileId}/billingRates`

Retrieves a list of billing rates. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `billingProfileId` | `string` | path | Yes | Billing profile ID of this billing rate. |

**Response**: `BillingRatesListResponse`

```typescript
const res = await dfareporting.billingRates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.browsers.list`

**GET** `userprofiles/{+profileId}/browsers`

Retrieves a list of browsers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `BrowsersListResponse`

```typescript
const res = await dfareporting.browsers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.campaignCreativeAssociations.insert`

**POST** `userprofiles/{+profileId}/campaigns/{+campaignId}/campaignCreativeAssociations`

Associates a creative with the specified campaign. This method creates a default ad with dimensions matching the creative in the campaign if such a default ad does not exist already.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `campaignId` | `string` | path | Yes | Campaign ID in this association. |

**Request body**: `CampaignCreativeAssociation`

**Response**: `CampaignCreativeAssociation`

```typescript
const res = await dfareporting.campaignCreativeAssociations.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.campaignCreativeAssociations.list`

**GET** `userprofiles/{+profileId}/campaigns/{+campaignId}/campaignCreativeAssociations`

Retrieves the list of creative IDs associated with the specified campaign. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `campaignId` | `string` | path | Yes | Campaign ID in this association. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `CampaignCreativeAssociationsListResponse`

```typescript
const res = await dfareporting.campaignCreativeAssociations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.campaigns.get`

**GET** `userprofiles/{+profileId}/campaigns/{+id}`

Gets one campaign by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Campaign ID. |

**Response**: `Campaign`

```typescript
const res = await dfareporting.campaigns.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.campaigns.insert`

**POST** `userprofiles/{+profileId}/campaigns`

Inserts a new campaign.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Campaign`

**Response**: `Campaign`

```typescript
const res = await dfareporting.campaigns.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.campaigns.list`

**GET** `userprofiles/{+profileId}/campaigns`

Retrieves a list of campaigns, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserGroupIds` | `string` | query | No | Select only campaigns whose advertisers belong to these advertiser groups. |
| `advertiserIds` | `string` | query | No | Select only campaigns that belong to these advertisers. |
| `archived` | `boolean` | query | No | Select only archived campaigns. Don't set this field to select both archived and non-archived campaigns. |
| `atLeastOneOptimizationActivity` | `boolean` | query | No | Select only campaigns that have at least one optimization activity. |
| `excludedIds` | `string` | query | No | Exclude campaigns with these IDs. |
| `ids` | `string` | query | No | Select only campaigns with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `overriddenEventTagId` | `string` | query | No | Select only campaigns that have overridden this event tag ID. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for campaigns by name or ID. Wildcards (*) are allowed. For example, "campaign*2015" will return cam... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `subaccountId` | `string` | query | No | Select only campaigns that belong to this subaccount. |

**Response**: `CampaignsListResponse`

```typescript
const res = await dfareporting.campaigns.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.campaigns.update`

**PUT** `userprofiles/{+profileId}/campaigns`

Updates an existing campaign.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Campaign`

**Response**: `Campaign`

```typescript
const res = await dfareporting.campaigns.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.campaigns.patch`

**PATCH** `userprofiles/{+profileId}/campaigns`

Updates an existing campaign. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Campaign ID. |

**Request body**: `Campaign`

**Response**: `Campaign`

```typescript
const res = await dfareporting.campaigns.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.changeLogs.get`

**GET** `userprofiles/{+profileId}/changeLogs/{+id}`

Gets one change log by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Change log ID. |

**Response**: `ChangeLog`

```typescript
const res = await dfareporting.changeLogs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.changeLogs.list`

**GET** `userprofiles/{+profileId}/changeLogs`

Retrieves a list of change logs. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `action` | `string` | query | No | Select only change logs with the specified action. |
| `ids` | `string` | query | No | Select only change logs with these IDs. |
| `maxChangeTime` | `string` | query | No | Select only change logs whose change time is before the specified maxChangeTime.The time should be formatted as an RF... |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `minChangeTime` | `string` | query | No | Select only change logs whose change time is after the specified minChangeTime.The time should be formatted as an RFC... |
| `objectIds` | `string` | query | No | Select only change logs with these object IDs. |
| `objectType` | `string` | query | No | Select only change logs with the specified object type. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Select only change logs whose object ID, user name, old or new values match the search string. |
| `userProfileIds` | `string` | query | No | Select only change logs with these user profile IDs. |

**Response**: `ChangeLogsListResponse`

```typescript
const res = await dfareporting.changeLogs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.cities.list`

**GET** `userprofiles/{+profileId}/cities`

Retrieves a list of cities, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `countryDartIds` | `string` | query | No | Select only cities from these countries. |
| `dartIds` | `string` | query | No | Select only cities with these DART IDs. |
| `namePrefix` | `string` | query | No | Select only cities with names starting with this prefix. |
| `regionDartIds` | `string` | query | No | Select only cities from these regions. |

**Response**: `CitiesListResponse`

```typescript
const res = await dfareporting.cities.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.connectionTypes.get`

**GET** `userprofiles/{+profileId}/connectionTypes/{+id}`

Gets one connection type by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Connection type ID. |

**Response**: `ConnectionType`

```typescript
const res = await dfareporting.connectionTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.connectionTypes.list`

**GET** `userprofiles/{+profileId}/connectionTypes`

Retrieves a list of connection types.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `ConnectionTypesListResponse`

```typescript
const res = await dfareporting.connectionTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.contentCategories.delete`

**DELETE** `userprofiles/{+profileId}/contentCategories/{+id}`

Deletes an existing content category.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Content category ID. |

```typescript
const res = await dfareporting.contentCategories.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.contentCategories.get`

**GET** `userprofiles/{+profileId}/contentCategories/{+id}`

Gets one content category by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Content category ID. |

**Response**: `ContentCategory`

```typescript
const res = await dfareporting.contentCategories.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.contentCategories.insert`

**POST** `userprofiles/{+profileId}/contentCategories`

Inserts a new content category.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `ContentCategory`

**Response**: `ContentCategory`

```typescript
const res = await dfareporting.contentCategories.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.contentCategories.list`

**GET** `userprofiles/{+profileId}/contentCategories`

Retrieves a list of content categories, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `ids` | `string` | query | No | Select only content categories with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "contentcategory*2015" will retur... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `ContentCategoriesListResponse`

```typescript
const res = await dfareporting.contentCategories.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.contentCategories.update`

**PUT** `userprofiles/{+profileId}/contentCategories`

Updates an existing content category.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `ContentCategory`

**Response**: `ContentCategory`

```typescript
const res = await dfareporting.contentCategories.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.contentCategories.patch`

**PATCH** `userprofiles/{+profileId}/contentCategories`

Updates an existing content category. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. ContentCategory ID. |

**Request body**: `ContentCategory`

**Response**: `ContentCategory`

```typescript
const res = await dfareporting.contentCategories.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.conversions.batchinsert`

**POST** `userprofiles/{profileId}/conversions/batchinsert`

Inserts conversions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `ConversionsBatchInsertRequest`

**Response**: `ConversionsBatchInsertResponse`

```typescript
const res = await dfareporting.conversions.batchinsert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ddmconversions`

---

### `dfareporting.conversions.batchupdate`

**POST** `userprofiles/{profileId}/conversions/batchupdate`

Updates existing conversions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `ConversionsBatchUpdateRequest`

**Response**: `ConversionsBatchUpdateResponse`

```typescript
const res = await dfareporting.conversions.batchupdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ddmconversions`

---

### `dfareporting.countries.get`

**GET** `userprofiles/{+profileId}/countries/{+dartId}`

Gets one country by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `dartId` | `string` | path | Yes | Country DART ID. |

**Response**: `Country`

```typescript
const res = await dfareporting.countries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.countries.list`

**GET** `userprofiles/{+profileId}/countries`

Retrieves a list of countries.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `CountriesListResponse`

```typescript
const res = await dfareporting.countries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeAssets.insert`

**POST** `userprofiles/{+profileId}/creativeAssets/{+advertiserId}/creativeAssets`

Inserts a new creative asset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserId` | `string` | path | Yes | Advertiser ID of this creative. This is a required field. |

**Request body**: `CreativeAssetMetadata`

**Response**: `CreativeAssetMetadata`

```typescript
const res = await dfareporting.creativeAssets.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFields.delete`

**DELETE** `userprofiles/{+profileId}/creativeFields/{+id}`

Deletes an existing creative field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Creative Field ID |

```typescript
const res = await dfareporting.creativeFields.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFields.get`

**GET** `userprofiles/{+profileId}/creativeFields/{+id}`

Gets one creative field by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Creative Field ID |

**Response**: `CreativeField`

```typescript
const res = await dfareporting.creativeFields.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFields.insert`

**POST** `userprofiles/{+profileId}/creativeFields`

Inserts a new creative field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `CreativeField`

**Response**: `CreativeField`

```typescript
const res = await dfareporting.creativeFields.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFields.list`

**GET** `userprofiles/{+profileId}/creativeFields`

Retrieves a list of creative fields, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserIds` | `string` | query | No | Select only creative fields that belong to these advertisers. |
| `ids` | `string` | query | No | Select only creative fields with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for creative fields by name or ID. Wildcards (*) are allowed. For example, "creativefield*2015" will... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `CreativeFieldsListResponse`

```typescript
const res = await dfareporting.creativeFields.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFields.update`

**PUT** `userprofiles/{+profileId}/creativeFields`

Updates an existing creative field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `CreativeField`

**Response**: `CreativeField`

```typescript
const res = await dfareporting.creativeFields.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFields.patch`

**PATCH** `userprofiles/{+profileId}/creativeFields`

Updates an existing creative field. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | CreativeField ID. |

**Request body**: `CreativeField`

**Response**: `CreativeField`

```typescript
const res = await dfareporting.creativeFields.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFieldValues.delete`

**DELETE** `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues/{+id}`

Deletes an existing creative field value.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `creativeFieldId` | `string` | path | Yes | Creative field ID for this creative field value. |
| `id` | `string` | path | Yes | Creative Field Value ID |

```typescript
const res = await dfareporting.creativeFieldValues.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFieldValues.get`

**GET** `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues/{+id}`

Gets one creative field value by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `creativeFieldId` | `string` | path | Yes | Creative field ID for this creative field value. |
| `id` | `string` | path | Yes | Creative Field Value ID |

**Response**: `CreativeFieldValue`

```typescript
const res = await dfareporting.creativeFieldValues.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFieldValues.insert`

**POST** `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues`

Inserts a new creative field value.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `creativeFieldId` | `string` | path | Yes | Creative field ID for this creative field value. |

**Request body**: `CreativeFieldValue`

**Response**: `CreativeFieldValue`

```typescript
const res = await dfareporting.creativeFieldValues.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFieldValues.list`

**GET** `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues`

Retrieves a list of creative field values, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `creativeFieldId` | `string` | path | Yes | Creative field ID for this creative field value. |
| `ids` | `string` | query | No | Select only creative field values with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for creative field values by their values. Wildcards (e.g. *) are not allowed. |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `CreativeFieldValuesListResponse`

```typescript
const res = await dfareporting.creativeFieldValues.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFieldValues.update`

**PUT** `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues`

Updates an existing creative field value.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `creativeFieldId` | `string` | path | Yes | Creative field ID for this creative field value. |

**Request body**: `CreativeFieldValue`

**Response**: `CreativeFieldValue`

```typescript
const res = await dfareporting.creativeFieldValues.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeFieldValues.patch`

**PATCH** `userprofiles/{+profileId}/creativeFields/{+creativeFieldId}/creativeFieldValues`

Updates an existing creative field value. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `creativeFieldId` | `string` | path | Yes | CreativeField ID. |
| `id` | `string` | query | Yes | CreativeFieldValue ID. |

**Request body**: `CreativeFieldValue`

**Response**: `CreativeFieldValue`

```typescript
const res = await dfareporting.creativeFieldValues.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeGroups.get`

**GET** `userprofiles/{+profileId}/creativeGroups/{+id}`

Gets one creative group by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Creative group ID. |

**Response**: `CreativeGroup`

```typescript
const res = await dfareporting.creativeGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeGroups.insert`

**POST** `userprofiles/{+profileId}/creativeGroups`

Inserts a new creative group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `CreativeGroup`

**Response**: `CreativeGroup`

```typescript
const res = await dfareporting.creativeGroups.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeGroups.list`

**GET** `userprofiles/{+profileId}/creativeGroups`

Retrieves a list of creative groups, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserIds` | `string` | query | No | Select only creative groups that belong to these advertisers. |
| `groupNumber` | `integer` | query | No | Select only creative groups that belong to this subgroup. |
| `ids` | `string` | query | No | Select only creative groups with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for creative groups by name or ID. Wildcards (*) are allowed. For example, "creativegroup*2015" will... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `CreativeGroupsListResponse`

```typescript
const res = await dfareporting.creativeGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeGroups.update`

**PUT** `userprofiles/{+profileId}/creativeGroups`

Updates an existing creative group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `CreativeGroup`

**Response**: `CreativeGroup`

```typescript
const res = await dfareporting.creativeGroups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creativeGroups.patch`

**PATCH** `userprofiles/{+profileId}/creativeGroups`

Updates an existing creative group. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Creative Group ID. |

**Request body**: `CreativeGroup`

**Response**: `CreativeGroup`

```typescript
const res = await dfareporting.creativeGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creatives.get`

**GET** `userprofiles/{+profileId}/creatives/{+id}`

Gets one creative by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Creative ID. |

**Response**: `Creative`

```typescript
const res = await dfareporting.creatives.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creatives.insert`

**POST** `userprofiles/{+profileId}/creatives`

Inserts a new creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Creative`

**Response**: `Creative`

```typescript
const res = await dfareporting.creatives.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creatives.list`

**GET** `userprofiles/{+profileId}/creatives`

Retrieves a list of creatives, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `active` | `boolean` | query | No | Select only active creatives. Leave blank to select active and inactive creatives. |
| `advertiserId` | `string` | query | No | Select only creatives with this advertiser ID. |
| `archived` | `boolean` | query | No | Select only archived creatives. Leave blank to select archived and unarchived creatives. |
| `campaignId` | `string` | query | No | Select only creatives with this campaign ID. |
| `companionCreativeIds` | `string` | query | No | Select only in-stream video creatives with these companion IDs. |
| `creativeFieldIds` | `string` | query | No | Select only creatives with these creative field IDs. |
| `ids` | `string` | query | No | Select only creatives with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `renderingIds` | `string` | query | No | Select only creatives with these rendering IDs. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "creative*2015" will return objec... |
| `sizeIds` | `string` | query | No | Select only creatives with these size IDs. |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `studioCreativeId` | `string` | query | No | Select only creatives corresponding to this Studio creative ID. |
| `types` | `string` | query | No | Select only creatives with these creative types. |

**Response**: `CreativesListResponse`

```typescript
const res = await dfareporting.creatives.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creatives.update`

**PUT** `userprofiles/{+profileId}/creatives`

Updates an existing creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Creative`

**Response**: `Creative`

```typescript
const res = await dfareporting.creatives.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.creatives.patch`

**PATCH** `userprofiles/{+profileId}/creatives`

Updates an existing creative. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Creative ID. |

**Request body**: `Creative`

**Response**: `Creative`

```typescript
const res = await dfareporting.creatives.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dimensionValues.query`

**POST** `userprofiles/{profileId}/dimensionvalues/query`

Retrieves list of report dimension values for a list of filters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | The value of the nextToken from the previous result page. |

**Request body**: `DimensionValueRequest`

**Response**: `DimensionValueList`

```typescript
const res = await dfareporting.dimensionValues.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.directorySites.get`

**GET** `userprofiles/{+profileId}/directorySites/{+id}`

Gets one directory site by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Directory site ID. |

**Response**: `DirectorySite`

```typescript
const res = await dfareporting.directorySites.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.directorySites.insert`

**POST** `userprofiles/{+profileId}/directorySites`

Inserts a new directory site.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `DirectorySite`

**Response**: `DirectorySite`

```typescript
const res = await dfareporting.directorySites.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.directorySites.list`

**GET** `userprofiles/{+profileId}/directorySites`

Retrieves a list of directory sites, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `acceptsInStreamVideoPlacements` | `boolean` | query | No | This search filter is no longer supported and will have no effect on the results returned. |
| `acceptsInterstitialPlacements` | `boolean` | query | No | This search filter is no longer supported and will have no effect on the results returned. |
| `acceptsPublisherPaidPlacements` | `boolean` | query | No | Select only directory sites that accept publisher paid placements. This field can be left blank. |
| `active` | `boolean` | query | No | Select only active directory sites. Leave blank to retrieve both active and inactive directory sites. |
| `dfpNetworkCode` | `string` | query | No | Select only directory sites with this Ad Manager network code. |
| `ids` | `string` | query | No | Select only directory sites with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name, ID or URL. Wildcards (*) are allowed. For example, "directory site*2015" will r... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `DirectorySitesListResponse`

```typescript
const res = await dfareporting.directorySites.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicFeeds.get`

**GET** `studio/dynamicFeeds/{+dynamicFeedId}`

Gets a dynamic feed by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dynamicFeedId` | `string` | path | Yes | Required. Dynamic feed ID. |

**Response**: `DynamicFeed`

```typescript
const res = await dfareporting.dynamicFeeds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicFeeds.insert`

**POST** `studio/dynamicFeeds`

Inserts a new dynamic feed.

**Request body**: `DynamicFeedsInsertRequest`

**Response**: `DynamicFeed`

```typescript
const res = await dfareporting.dynamicFeeds.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicFeeds.update`

**PUT** `studio/dynamicFeeds`

Updates a new dynamic feed. For draft feeds, only Element can be updated. For published feeds, only FeedSchedule can be updated. Other fields will be ignored.

**Request body**: `DynamicFeed`

**Response**: `DynamicFeed`

```typescript
const res = await dfareporting.dynamicFeeds.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicFeeds.retransform`

**POST** `studio/dynamicFeeds/{+dynamicFeedId}/retransform`

Retransforms a dynamic feed. Only draft feeds can be retransformed (i.e. the feed has not been published).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dynamicFeedId` | `string` | path | Yes | Required. Dynamic feed ID. |

**Response**: `DynamicFeed`

```typescript
const res = await dfareporting.dynamicFeeds.retransform({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicProfiles.get`

**GET** `studio/dynamicProfiles/{+dynamicProfileId}`

Gets a dynamic profile by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dynamicProfileId` | `string` | path | Yes | Required. Dynamic profile ID. |

**Response**: `DynamicProfile`

```typescript
const res = await dfareporting.dynamicProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicProfiles.insert`

**POST** `studio/dynamicProfiles`

Inserts a new dynamic profile.

**Request body**: `DynamicProfile`

**Response**: `DynamicProfile`

```typescript
const res = await dfareporting.dynamicProfiles.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicProfiles.update`

**PUT** `studio/dynamicProfiles`

Updates an existing dynamic profile.

**Request body**: `DynamicProfile`

**Response**: `DynamicProfile`

```typescript
const res = await dfareporting.dynamicProfiles.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicProfiles.generateCode`

**GET** `studio/dynamicProfiles/{+dynamicProfileId}/generateCode`

Generates code for a dynamic profile, which will need unescaping.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dynamicProfileId` | `string` | path | Yes | Required. Dynamic profile ID. |

**Response**: `DynamicProfileGenerateCodeResponse`

```typescript
const res = await dfareporting.dynamicProfiles.generateCode({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicProfiles.publish`

**POST** `studio/dynamicProfiles/{+dynamicProfileId}/publish`

Publish for a dynamic profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dynamicProfileId` | `string` | path | Yes | Required. Dynamic profile ID. |

```typescript
const res = await dfareporting.dynamicProfiles.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicTargetingKeys.delete`

**DELETE** `userprofiles/{+profileId}/dynamicTargetingKeys/{+objectId}`

Deletes an existing dynamic targeting key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `objectId` | `string` | path | Yes | ID of the object of this dynamic targeting key. This is a required field. |
| `name` | `string` | query | Yes | Required. Name of this dynamic targeting key. This is a required field. Must be less than 256 characters long and can... |
| `objectType` | `string` | query | Yes | Required. Type of the object of this dynamic targeting key. This is a required field. |

```typescript
const res = await dfareporting.dynamicTargetingKeys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicTargetingKeys.insert`

**POST** `userprofiles/{+profileId}/dynamicTargetingKeys`

Inserts a new dynamic targeting key. Keys must be created at the advertiser level before being assigned to the advertiser's ads, creatives, or placements. There is a maximum of 1000 keys per advertiser, out of which a maximum of 20 keys can be assigned per ad, creative, or placement.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `DynamicTargetingKey`

**Response**: `DynamicTargetingKey`

```typescript
const res = await dfareporting.dynamicTargetingKeys.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.dynamicTargetingKeys.list`

**GET** `userprofiles/{+profileId}/dynamicTargetingKeys`

Retrieves a list of dynamic targeting keys.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserId` | `string` | query | No | Select only dynamic targeting keys whose object has this advertiser ID. |
| `names` | `string` | query | No | Select only dynamic targeting keys exactly matching these names. |
| `objectId` | `string` | query | No | Select only dynamic targeting keys with this object ID. |
| `objectType` | `string` | query | No | Select only dynamic targeting keys with this object type. |

**Response**: `DynamicTargetingKeysListResponse`

```typescript
const res = await dfareporting.dynamicTargetingKeys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.eventTags.delete`

**DELETE** `userprofiles/{+profileId}/eventTags/{+id}`

Deletes an existing event tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Event tag ID. |

```typescript
const res = await dfareporting.eventTags.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.eventTags.get`

**GET** `userprofiles/{+profileId}/eventTags/{+id}`

Gets one event tag by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Event tag ID. |

**Response**: `EventTag`

```typescript
const res = await dfareporting.eventTags.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.eventTags.insert`

**POST** `userprofiles/{+profileId}/eventTags`

Inserts a new event tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `EventTag`

**Response**: `EventTag`

```typescript
const res = await dfareporting.eventTags.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.eventTags.list`

**GET** `userprofiles/{+profileId}/eventTags`

Retrieves a list of event tags, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `adId` | `string` | query | No | Select only event tags that belong to this ad. |
| `advertiserId` | `string` | query | No | Select only event tags that belong to this advertiser. |
| `campaignId` | `string` | query | No | Select only event tags that belong to this campaign. |
| `definitionsOnly` | `boolean` | query | No | Examine only the specified campaign or advertiser's event tags for matching selector criteria. When set to false, the... |
| `enabled` | `boolean` | query | No | Select only enabled event tags. What is considered enabled or disabled depends on the definitionsOnly parameter. When... |
| `eventTagTypes` | `string` | query | No | Select only event tags with the specified event tag types. Event tag types can be used to specify whether to use a th... |
| `ids` | `string` | query | No | Select only event tags with these IDs. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "eventtag*2015" will return objec... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `EventTagsListResponse`

```typescript
const res = await dfareporting.eventTags.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.eventTags.update`

**PUT** `userprofiles/{+profileId}/eventTags`

Updates an existing event tag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `EventTag`

**Response**: `EventTag`

```typescript
const res = await dfareporting.eventTags.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.eventTags.patch`

**PATCH** `userprofiles/{+profileId}/eventTags`

Updates an existing event tag. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. EventTag ID. |

**Request body**: `EventTag`

**Response**: `EventTag`

```typescript
const res = await dfareporting.eventTags.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.files.get`

**GET** `reports/{reportId}/files/{fileId}`

Retrieves a report file by its report ID and file ID. This method supports media download.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `reportId` | `string` | path | Yes | The ID of the report. |
| `fileId` | `string` | path | Yes | The ID of the report file. |

**Response**: `File`

```typescript
const res = await dfareporting.files.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.files.list`

**GET** `userprofiles/{profileId}/files`

Lists files for a user profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | The value of the nextToken from the previous result page. |
| `scope` | `string` | query | No | The scope that defines which results are returned. |
| `sortField` | `string` | query | No | The field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `FileList`

```typescript
const res = await dfareporting.files.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.floodlightActivityGroups.get`

**GET** `userprofiles/{+profileId}/floodlightActivityGroups/{+id}`

Gets one floodlight activity group by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Floodlight activity Group ID. |

**Response**: `FloodlightActivityGroup`

```typescript
const res = await dfareporting.floodlightActivityGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivityGroups.insert`

**POST** `userprofiles/{+profileId}/floodlightActivityGroups`

Inserts a new floodlight activity group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `FloodlightActivityGroup`

**Response**: `FloodlightActivityGroup`

```typescript
const res = await dfareporting.floodlightActivityGroups.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivityGroups.list`

**GET** `userprofiles/{+profileId}/floodlightActivityGroups`

Retrieves a list of floodlight activity groups, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserId` | `string` | query | No | Select only floodlight activity groups with the specified advertiser ID. Must specify either advertiserId or floodlig... |
| `floodlightConfigurationId` | `string` | query | No | Select only floodlight activity groups with the specified floodlight configuration ID. Must specify either advertiser... |
| `ids` | `string` | query | No | Select only floodlight activity groups with the specified IDs. Must specify either advertiserId or floodlightConfigur... |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "floodlightactivitygroup*2015" wi... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `type` | `string` | query | No | Select only floodlight activity groups with the specified floodlight activity group type. |

**Response**: `FloodlightActivityGroupsListResponse`

```typescript
const res = await dfareporting.floodlightActivityGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivityGroups.update`

**PUT** `userprofiles/{+profileId}/floodlightActivityGroups`

Updates an existing floodlight activity group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `FloodlightActivityGroup`

**Response**: `FloodlightActivityGroup`

```typescript
const res = await dfareporting.floodlightActivityGroups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivityGroups.patch`

**PATCH** `userprofiles/{+profileId}/floodlightActivityGroups`

Updates an existing floodlight activity group. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. EventTag ID. |

**Request body**: `FloodlightActivityGroup`

**Response**: `FloodlightActivityGroup`

```typescript
const res = await dfareporting.floodlightActivityGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivities.delete`

**DELETE** `userprofiles/{+profileId}/floodlightActivities/{+id}`

Deletes an existing floodlight activity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Floodlight activity ID. |

```typescript
const res = await dfareporting.floodlightActivities.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivities.generatetag`

**POST** `userprofiles/{+profileId}/floodlightActivities/generatetag`

Generates a tag for a floodlight activity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `floodlightActivityId` | `string` | query | No | Floodlight activity ID for which we want to generate a tag. |

**Response**: `FloodlightActivitiesGenerateTagResponse`

```typescript
const res = await dfareporting.floodlightActivities.generatetag({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivities.get`

**GET** `userprofiles/{+profileId}/floodlightActivities/{+id}`

Gets one floodlight activity by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Floodlight activity ID. |

**Response**: `FloodlightActivity`

```typescript
const res = await dfareporting.floodlightActivities.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivities.insert`

**POST** `userprofiles/{+profileId}/floodlightActivities`

Inserts a new floodlight activity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `FloodlightActivity`

**Response**: `FloodlightActivity`

```typescript
const res = await dfareporting.floodlightActivities.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivities.list`

**GET** `userprofiles/{+profileId}/floodlightActivities`

Retrieves a list of floodlight activities, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserId` | `string` | query | No | Select only floodlight activities for the specified advertiser ID. Must specify either ids, advertiserId, or floodlig... |
| `floodlightActivityGroupIds` | `string` | query | No | Select only floodlight activities with the specified floodlight activity group IDs. |
| `floodlightActivityGroupName` | `string` | query | No | Select only floodlight activities with the specified floodlight activity group name. |
| `floodlightActivityGroupTagString` | `string` | query | No | Select only floodlight activities with the specified floodlight activity group tag string. |
| `floodlightActivityGroupType` | `string` | query | No | Select only floodlight activities with the specified floodlight activity group type. |
| `floodlightConfigurationId` | `string` | query | No | Select only floodlight activities for the specified floodlight configuration ID. Must specify either ids, advertiserI... |
| `ids` | `string` | query | No | Select only floodlight activities with the specified IDs. Must specify either ids, advertiserId, or floodlightConfigu... |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "floodlightactivity*2015" will re... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `tagString` | `string` | query | No | Select only floodlight activities with the specified tag string. |

**Response**: `FloodlightActivitiesListResponse`

```typescript
const res = await dfareporting.floodlightActivities.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivities.update`

**PUT** `userprofiles/{+profileId}/floodlightActivities`

Updates an existing floodlight activity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `FloodlightActivity`

**Response**: `FloodlightActivity`

```typescript
const res = await dfareporting.floodlightActivities.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightActivities.patch`

**PATCH** `userprofiles/{+profileId}/floodlightActivities`

Updates an existing floodlight activity. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. EventTag ID. |

**Request body**: `FloodlightActivity`

**Response**: `FloodlightActivity`

```typescript
const res = await dfareporting.floodlightActivities.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightConfigurations.get`

**GET** `userprofiles/{+profileId}/floodlightConfigurations/{+id}`

Gets one floodlight configuration by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Floodlight configuration ID. |

**Response**: `FloodlightConfiguration`

```typescript
const res = await dfareporting.floodlightConfigurations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightConfigurations.list`

**GET** `userprofiles/{+profileId}/floodlightConfigurations`

Retrieves a list of floodlight configurations, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `ids` | `string` | query | No | Set of IDs of floodlight configurations to retrieve. Required field; otherwise an empty list will be returned. |

**Response**: `FloodlightConfigurationsListResponse`

```typescript
const res = await dfareporting.floodlightConfigurations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightConfigurations.update`

**PUT** `userprofiles/{+profileId}/floodlightConfigurations`

Updates an existing floodlight configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `FloodlightConfiguration`

**Response**: `FloodlightConfiguration`

```typescript
const res = await dfareporting.floodlightConfigurations.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.floodlightConfigurations.patch`

**PATCH** `userprofiles/{+profileId}/floodlightConfigurations`

Updates an existing floodlight configuration. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. EventTag ID. |

**Request body**: `FloodlightConfiguration`

**Response**: `FloodlightConfiguration`

```typescript
const res = await dfareporting.floodlightConfigurations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserInvoices.list`

**GET** `userprofiles/{+profileId}/advertisers/{+advertiserId}/invoices`

Retrieves a list of invoices for a particular issue month. The api only works if the billing profile invoice level is set to either advertiser or campaign non-consolidated invoice level.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserId` | `string` | path | Yes | Advertiser ID of this invoice. |
| `issueMonth` | `string` | query | No | Month for which invoices are needed in the format YYYYMM. Required field |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |

**Response**: `AdvertiserInvoicesListResponse`

```typescript
const res = await dfareporting.advertiserInvoices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserLandingPages.get`

**GET** `userprofiles/{+profileId}/advertiserLandingPages/{+id}`

Gets one landing page by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Landing page ID. |

**Response**: `LandingPage`

```typescript
const res = await dfareporting.advertiserLandingPages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserLandingPages.insert`

**POST** `userprofiles/{+profileId}/advertiserLandingPages`

Inserts a new landing page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `LandingPage`

**Response**: `LandingPage`

```typescript
const res = await dfareporting.advertiserLandingPages.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserLandingPages.list`

**GET** `userprofiles/{+profileId}/advertiserLandingPages`

Retrieves a list of landing pages.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserIds` | `string` | query | No | Select only landing pages that belong to these advertisers. |
| `archived` | `boolean` | query | No | Select only archived landing pages. Don't set this field to select both archived and non-archived landing pages. |
| `campaignIds` | `string` | query | No | Select only landing pages that are associated with these campaigns. |
| `ids` | `string` | query | No | Select only landing pages with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for landing pages by name or ID. Wildcards (*) are allowed. For example, "landingpage*2017" will ret... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `subaccountId` | `string` | query | No | Select only landing pages that belong to this subaccount. |

**Response**: `AdvertiserLandingPagesListResponse`

```typescript
const res = await dfareporting.advertiserLandingPages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserLandingPages.update`

**PUT** `userprofiles/{+profileId}/advertiserLandingPages`

Updates an existing landing page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `LandingPage`

**Response**: `LandingPage`

```typescript
const res = await dfareporting.advertiserLandingPages.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.advertiserLandingPages.patch`

**PATCH** `userprofiles/{+profileId}/advertiserLandingPages`

Updates an existing landing page. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Landing Page ID. |

**Request body**: `LandingPage`

**Response**: `LandingPage`

```typescript
const res = await dfareporting.advertiserLandingPages.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.languages.list`

**GET** `userprofiles/{+profileId}/languages`

Retrieves a list of languages.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `LanguagesListResponse`

```typescript
const res = await dfareporting.languages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.metros.list`

**GET** `userprofiles/{+profileId}/metros`

Retrieves a list of metros.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `MetrosListResponse`

```typescript
const res = await dfareporting.metros.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.mobileApps.get`

**GET** `userprofiles/{+profileId}/mobileApps/{+id}`

Gets one mobile app by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Mobile app ID. |

**Response**: `MobileApp`

```typescript
const res = await dfareporting.mobileApps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.mobileApps.list`

**GET** `userprofiles/{+profileId}/mobileApps`

Retrieves list of available mobile apps.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `directories` | `string` | query | No | Select only apps from these directories. |
| `ids` | `string` | query | No | Select only apps with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "app*2015" will return objects wi... |

**Response**: `MobileAppsListResponse`

```typescript
const res = await dfareporting.mobileApps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.mobileCarriers.get`

**GET** `userprofiles/{+profileId}/mobileCarriers/{+id}`

Gets one mobile carrier by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Mobile carrier ID. |

**Response**: `MobileCarrier`

```typescript
const res = await dfareporting.mobileCarriers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.mobileCarriers.list`

**GET** `userprofiles/{+profileId}/mobileCarriers`

Retrieves a list of mobile carriers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `MobileCarriersListResponse`

```typescript
const res = await dfareporting.mobileCarriers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.operatingSystems.get`

**GET** `userprofiles/{+profileId}/operatingSystems/{+dartId}`

Gets one operating system by DART ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `dartId` | `string` | path | Yes | Operating system DART ID. |

**Response**: `OperatingSystem`

```typescript
const res = await dfareporting.operatingSystems.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.operatingSystems.list`

**GET** `userprofiles/{+profileId}/operatingSystems`

Retrieves a list of operating systems.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `OperatingSystemsListResponse`

```typescript
const res = await dfareporting.operatingSystems.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.operatingSystemVersions.get`

**GET** `userprofiles/{+profileId}/operatingSystemVersions/{+id}`

Gets one operating system version by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Operating system version ID. |

**Response**: `OperatingSystemVersion`

```typescript
const res = await dfareporting.operatingSystemVersions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.operatingSystemVersions.list`

**GET** `userprofiles/{+profileId}/operatingSystemVersions`

Retrieves a list of operating system versions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `OperatingSystemVersionsListResponse`

```typescript
const res = await dfareporting.operatingSystemVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.remarketingLists.patch`

**PATCH** `userprofiles/{+profileId}/remarketingLists`

Updates an existing remarketing list. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. RemarketingList ID. |

**Request body**: `RemarketingList`

**Response**: `RemarketingList`

```typescript
const res = await dfareporting.remarketingLists.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.remarketingLists.get`

**GET** `userprofiles/{+profileId}/remarketingLists/{+id}`

Gets one remarketing list by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Remarketing list ID. |

**Response**: `RemarketingList`

```typescript
const res = await dfareporting.remarketingLists.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.remarketingLists.insert`

**POST** `userprofiles/{+profileId}/remarketingLists`

Inserts a new remarketing list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `RemarketingList`

**Response**: `RemarketingList`

```typescript
const res = await dfareporting.remarketingLists.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.remarketingLists.list`

**GET** `userprofiles/{+profileId}/remarketingLists`

Retrieves a list of remarketing lists, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserId` | `string` | query | Yes | Required. Select only remarketing lists owned by this advertiser. |
| `active` | `boolean` | query | No | Select only active or only inactive remarketing lists. |
| `floodlightActivityId` | `string` | query | No | Select only remarketing lists that have this floodlight activity ID. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `name` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "remarketing list*2015" will retu... |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `RemarketingListsListResponse`

```typescript
const res = await dfareporting.remarketingLists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.remarketingLists.update`

**PUT** `userprofiles/{+profileId}/remarketingLists`

Updates an existing remarketing list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `RemarketingList`

**Response**: `RemarketingList`

```typescript
const res = await dfareporting.remarketingLists.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.remarketingListShares.patch`

**PATCH** `userprofiles/{+profileId}/remarketingListShares`

Updates an existing remarketing list share. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. RemarketingList ID. |

**Request body**: `RemarketingListShare`

**Response**: `RemarketingListShare`

```typescript
const res = await dfareporting.remarketingListShares.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.remarketingListShares.get`

**GET** `userprofiles/{+profileId}/remarketingListShares/{+remarketingListId}`

Gets one remarketing list share by remarketing list ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `remarketingListId` | `string` | path | Yes | Remarketing list ID. |

**Response**: `RemarketingListShare`

```typescript
const res = await dfareporting.remarketingListShares.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.remarketingListShares.update`

**PUT** `userprofiles/{+profileId}/remarketingListShares`

Updates an existing remarketing list share.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `RemarketingListShare`

**Response**: `RemarketingListShare`

```typescript
const res = await dfareporting.remarketingListShares.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.sites.patch`

**PATCH** `userprofiles/{+profileId}/sites`

Updates an existing site. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Site ID. |

**Request body**: `Site`

**Response**: `Site`

```typescript
const res = await dfareporting.sites.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.sites.get`

**GET** `userprofiles/{+profileId}/sites/{+id}`

Gets one site by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Site ID. |

**Response**: `Site`

```typescript
const res = await dfareporting.sites.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.sites.insert`

**POST** `userprofiles/{+profileId}/sites`

Inserts a new site.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Site`

**Response**: `Site`

```typescript
const res = await dfareporting.sites.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.sites.list`

**GET** `userprofiles/{+profileId}/sites`

Retrieves a list of sites, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `acceptsInStreamVideoPlacements` | `boolean` | query | No | This search filter is no longer supported and will have no effect on the results returned. |
| `acceptsInterstitialPlacements` | `boolean` | query | No | This search filter is no longer supported and will have no effect on the results returned. |
| `acceptsPublisherPaidPlacements` | `boolean` | query | No | Select only sites that accept publisher paid placements. |
| `adWordsSite` | `boolean` | query | No | Select only AdWords sites. |
| `approved` | `boolean` | query | No | Select only approved sites. |
| `campaignIds` | `string` | query | No | Select only sites with these campaign IDs. |
| `directorySiteIds` | `string` | query | No | Select only sites with these directory site IDs. |
| `ids` | `string` | query | No | Select only sites with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name, ID or keyName. Wildcards (*) are allowed. For example, "site*2015" will return ... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `subaccountId` | `string` | query | No | Select only sites with this subaccount ID. |
| `unmappedSite` | `boolean` | query | No | Select only sites that have not been mapped to a directory site. |

**Response**: `SitesListResponse`

```typescript
const res = await dfareporting.sites.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.sites.update`

**PUT** `userprofiles/{+profileId}/sites`

Updates an existing site.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Site`

**Response**: `Site`

```typescript
const res = await dfareporting.sites.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.subaccounts.patch`

**PATCH** `userprofiles/{+profileId}/subaccounts`

Updates an existing subaccount. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Subaccount ID. |

**Request body**: `Subaccount`

**Response**: `Subaccount`

```typescript
const res = await dfareporting.subaccounts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.subaccounts.get`

**GET** `userprofiles/{+profileId}/subaccounts/{+id}`

Gets one subaccount by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Subaccount ID. |

**Response**: `Subaccount`

```typescript
const res = await dfareporting.subaccounts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.subaccounts.insert`

**POST** `userprofiles/{+profileId}/subaccounts`

Inserts a new subaccount.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Subaccount`

**Response**: `Subaccount`

```typescript
const res = await dfareporting.subaccounts.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.subaccounts.list`

**GET** `userprofiles/{+profileId}/subaccounts`

Gets a list of subaccounts, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `ids` | `string` | query | No | Select only subaccounts with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "subaccount*2015" will return obj... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `SubaccountsListResponse`

```typescript
const res = await dfareporting.subaccounts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.subaccounts.update`

**PUT** `userprofiles/{+profileId}/subaccounts`

Updates an existing subaccount.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Subaccount`

**Response**: `Subaccount`

```typescript
const res = await dfareporting.subaccounts.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userRoles.patch`

**PATCH** `userprofiles/{+profileId}/userRoles`

Updates an existing user role. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. UserRole ID. |

**Request body**: `UserRole`

**Response**: `UserRole`

```typescript
const res = await dfareporting.userRoles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userRoles.get`

**GET** `userprofiles/{+profileId}/userRoles/{+id}`

Gets one user role by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | User role ID. |

**Response**: `UserRole`

```typescript
const res = await dfareporting.userRoles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userRoles.insert`

**POST** `userprofiles/{+profileId}/userRoles`

Inserts a new user role.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `UserRole`

**Response**: `UserRole`

```typescript
const res = await dfareporting.userRoles.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userRoles.list`

**GET** `userprofiles/{+profileId}/userRoles`

Retrieves a list of user roles, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `accountUserRoleOnly` | `boolean` | query | No | Select only account level user roles not associated with any specific subaccount. |
| `ids` | `string` | query | No | Select only user roles with the specified IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "userrole*2015" will return objec... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |
| `subaccountId` | `string` | query | No | Select only user roles that belong to this subaccount. |

**Response**: `UserRolesListResponse`

```typescript
const res = await dfareporting.userRoles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userRoles.update`

**PUT** `userprofiles/{+profileId}/userRoles`

Updates an existing user role.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `UserRole`

**Response**: `UserRole`

```typescript
const res = await dfareporting.userRoles.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userRoles.delete`

**DELETE** `userprofiles/{+profileId}/userRoles/{+id}`

Deletes an existing user role.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | User role ID. |

```typescript
const res = await dfareporting.userRoles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.targetingTemplates.patch`

**PATCH** `userprofiles/{+profileId}/targetingTemplates`

Updates an existing targeting template. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. RemarketingList ID. |

**Request body**: `TargetingTemplate`

**Response**: `TargetingTemplate`

```typescript
const res = await dfareporting.targetingTemplates.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.targetingTemplates.get`

**GET** `userprofiles/{+profileId}/targetingTemplates/{+id}`

Gets one targeting template by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Targeting template ID. |

**Response**: `TargetingTemplate`

```typescript
const res = await dfareporting.targetingTemplates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.targetingTemplates.insert`

**POST** `userprofiles/{+profileId}/targetingTemplates`

Inserts a new targeting template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `TargetingTemplate`

**Response**: `TargetingTemplate`

```typescript
const res = await dfareporting.targetingTemplates.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.targetingTemplates.list`

**GET** `userprofiles/{+profileId}/targetingTemplates`

Retrieves a list of targeting templates, optionally filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserId` | `string` | query | No | Select only targeting templates with this advertiser ID. |
| `ids` | `string` | query | No | Select only targeting templates with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "template*2015" will return objec... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `TargetingTemplatesListResponse`

```typescript
const res = await dfareporting.targetingTemplates.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.targetingTemplates.update`

**PUT** `userprofiles/{+profileId}/targetingTemplates`

Updates an existing targeting template.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `TargetingTemplate`

**Response**: `TargetingTemplate`

```typescript
const res = await dfareporting.targetingTemplates.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placements.patch`

**PATCH** `userprofiles/{+profileId}/placements`

Updates an existing placement. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Placement ID. |

**Request body**: `Placement`

**Response**: `Placement`

```typescript
const res = await dfareporting.placements.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placements.generatetags`

**POST** `userprofiles/{+profileId}/placements/generatetags`

Generates tags for a placement.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `campaignId` | `string` | query | No | Generate placements belonging to this campaign. This is a required field. |
| `placementIds` | `string` | query | No | Generate tags for these placements. |
| `tagFormats` | `string` | query | No | Tag formats to generate for these placements. *Note:* PLACEMENT_TAG_STANDARD can only be generated for 1x1 placements. |

**Response**: `PlacementsGenerateTagsResponse`

```typescript
const res = await dfareporting.placements.generatetags({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placements.get`

**GET** `userprofiles/{+profileId}/placements/{+id}`

Gets one placement by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Placement ID. |

**Response**: `Placement`

```typescript
const res = await dfareporting.placements.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placements.insert`

**POST** `userprofiles/{+profileId}/placements`

Inserts a new placement.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Placement`

**Response**: `Placement`

```typescript
const res = await dfareporting.placements.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placements.list`

**GET** `userprofiles/{+profileId}/placements`

Retrieves a list of placements, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `activeStatus` | `string` | query | No | Select only placements with these active statuses. |
| `advertiserIds` | `string` | query | No | Select only placements that belong to these advertisers. |
| `campaignIds` | `string` | query | No | Select only placements that belong to these campaigns. |
| `compatibilities` | `string` | query | No | Select only placements that are associated with these compatibilities. DISPLAY and DISPLAY_INTERSTITIAL refer to rend... |
| `contentCategoryIds` | `string` | query | No | Select only placements that are associated with these content categories. |
| `directorySiteIds` | `string` | query | No | Select only placements that are associated with these directory sites. |
| `groupIds` | `string` | query | No | Select only placements that belong to these placement groups. |
| `ids` | `string` | query | No | Select only placements with these IDs. |
| `maxEndDate` | `string` | query | No | Select only placements or placement groups whose end date is on or before the specified maxEndDate. The date should b... |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `maxStartDate` | `string` | query | No | Select only placements or placement groups whose start date is on or before the specified maxStartDate. The date shou... |
| `minEndDate` | `string` | query | No | Select only placements or placement groups whose end date is on or after the specified minEndDate. The date should be... |
| `minStartDate` | `string` | query | No | Select only placements or placement groups whose start date is on or after the specified minStartDate. The date shoul... |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `paymentSource` | `string` | query | No | Select only placements with this payment source. |
| `placementStrategyIds` | `string` | query | No | Select only placements that are associated with these placement strategies. |
| `pricingTypes` | `string` | query | No | Select only placements with these pricing types. |
| `searchString` | `string` | query | No | Allows searching for placements by name or ID. Wildcards (*) are allowed. For example, "placement*2015" will return p... |
| `siteIds` | `string` | query | No | Select only placements that are associated with these sites. |
| `sizeIds` | `string` | query | No | Select only placements that are associated with these sizes. |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `PlacementsListResponse`

```typescript
const res = await dfareporting.placements.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placements.update`

**PUT** `userprofiles/{+profileId}/placements`

Updates an existing placement.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Placement`

**Response**: `Placement`

```typescript
const res = await dfareporting.placements.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementGroups.patch`

**PATCH** `userprofiles/{+profileId}/placementGroups`

Updates an existing placement group. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. Placement ID. |

**Request body**: `PlacementGroup`

**Response**: `PlacementGroup`

```typescript
const res = await dfareporting.placementGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementGroups.get`

**GET** `userprofiles/{+profileId}/placementGroups/{+id}`

Gets one placement group by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Placement group ID. |

**Response**: `PlacementGroup`

```typescript
const res = await dfareporting.placementGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementGroups.insert`

**POST** `userprofiles/{+profileId}/placementGroups`

Inserts a new placement group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `PlacementGroup`

**Response**: `PlacementGroup`

```typescript
const res = await dfareporting.placementGroups.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementGroups.list`

**GET** `userprofiles/{+profileId}/placementGroups`

Retrieves a list of placement groups, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `activeStatus` | `string` | query | No | Select only placements with these active statuses. |
| `advertiserIds` | `string` | query | No | Select only placement groups that belong to these advertisers. |
| `campaignIds` | `string` | query | No | Select only placement groups that belong to these campaigns. |
| `contentCategoryIds` | `string` | query | No | Select only placement groups that are associated with these content categories. |
| `directorySiteIds` | `string` | query | No | Select only placement groups that are associated with these directory sites. |
| `ids` | `string` | query | No | Select only placement groups with these IDs. |
| `maxEndDate` | `string` | query | No | Select only placements or placement groups whose end date is on or before the specified maxEndDate. The date should b... |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `maxStartDate` | `string` | query | No | Select only placements or placement groups whose start date is on or before the specified maxStartDate. The date shou... |
| `minEndDate` | `string` | query | No | Select only placements or placement groups whose end date is on or after the specified minEndDate. The date should be... |
| `minStartDate` | `string` | query | No | Select only placements or placement groups whose start date is on or after the specified minStartDate. The date shoul... |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `placementGroupType` | `string` | query | No | Select only placement groups belonging with this group type. A package is a simple group of placements that acts as a... |
| `placementStrategyIds` | `string` | query | No | Select only placement groups that are associated with these placement strategies. |
| `pricingTypes` | `string` | query | No | Select only placement groups with these pricing types. |
| `searchString` | `string` | query | No | Allows searching for placement groups by name or ID. Wildcards (*) are allowed. For example, "placement*2015" will re... |
| `siteIds` | `string` | query | No | Select only placement groups that are associated with these sites. |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `PlacementGroupsListResponse`

```typescript
const res = await dfareporting.placementGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementGroups.update`

**PUT** `userprofiles/{+profileId}/placementGroups`

Updates an existing placement group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `PlacementGroup`

**Response**: `PlacementGroup`

```typescript
const res = await dfareporting.placementGroups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementStrategies.patch`

**PATCH** `userprofiles/{+profileId}/placementStrategies`

Updates an existing placement strategy. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | query | Yes | Required. PlacementStrategy ID. |

**Request body**: `PlacementStrategy`

**Response**: `PlacementStrategy`

```typescript
const res = await dfareporting.placementStrategies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementStrategies.delete`

**DELETE** `userprofiles/{+profileId}/placementStrategies/{+id}`

Deletes an existing placement strategy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Placement strategy ID. |

```typescript
const res = await dfareporting.placementStrategies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementStrategies.get`

**GET** `userprofiles/{+profileId}/placementStrategies/{+id}`

Gets one placement strategy by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Placement strategy ID. |

**Response**: `PlacementStrategy`

```typescript
const res = await dfareporting.placementStrategies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementStrategies.insert`

**POST** `userprofiles/{+profileId}/placementStrategies`

Inserts a new placement strategy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `PlacementStrategy`

**Response**: `PlacementStrategy`

```typescript
const res = await dfareporting.placementStrategies.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementStrategies.list`

**GET** `userprofiles/{+profileId}/placementStrategies`

Retrieves a list of placement strategies, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `ids` | `string` | query | No | Select only placement strategies with these IDs. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `searchString` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "placementstrategy*2015" will ret... |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `PlacementStrategiesListResponse`

```typescript
const res = await dfareporting.placementStrategies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.placementStrategies.update`

**PUT** `userprofiles/{+profileId}/placementStrategies`

Updates an existing placement strategy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `PlacementStrategy`

**Response**: `PlacementStrategy`

```typescript
const res = await dfareporting.placementStrategies.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.platformTypes.get`

**GET** `userprofiles/{+profileId}/platformTypes/{+id}`

Gets one platform type by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Platform type ID. |

**Response**: `PlatformType`

```typescript
const res = await dfareporting.platformTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.platformTypes.list`

**GET** `userprofiles/{+profileId}/platformTypes`

Retrieves a list of platform types.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `PlatformTypesListResponse`

```typescript
const res = await dfareporting.platformTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.postalCodes.get`

**GET** `userprofiles/{+profileId}/postalCodes/{+code}`

Gets one postal code by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `code` | `string` | path | Yes | Postal code ID. |

**Response**: `PostalCode`

```typescript
const res = await dfareporting.postalCodes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.postalCodes.list`

**GET** `userprofiles/{+profileId}/postalCodes`

Retrieves a list of postal codes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `PostalCodesListResponse`

```typescript
const res = await dfareporting.postalCodes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.regions.list`

**GET** `userprofiles/{+profileId}/regions`

Retrieves a list of regions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `RegionsListResponse`

```typescript
const res = await dfareporting.regions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.targetableRemarketingLists.get`

**GET** `userprofiles/{+profileId}/targetableRemarketingLists/{+id}`

Gets one remarketing list by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Remarketing list ID. |

**Response**: `TargetableRemarketingList`

```typescript
const res = await dfareporting.targetableRemarketingLists.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.targetableRemarketingLists.list`

**GET** `userprofiles/{+profileId}/targetableRemarketingLists`

Retrieves a list of targetable remarketing lists, possibly filtered. This method supports paging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `advertiserId` | `string` | query | Yes | Required. Select only targetable remarketing lists targetable by these advertisers. |
| `active` | `boolean` | query | No | Select only active or only inactive targetable remarketing lists. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `name` | `string` | query | No | Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "remarketing list*2015" will retu... |
| `pageToken` | `string` | query | No | Value of the nextPageToken from the previous result page. |
| `sortField` | `string` | query | No | Field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `TargetableRemarketingListsListResponse`

```typescript
const res = await dfareporting.targetableRemarketingLists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.reports.delete`

**DELETE** `userprofiles/{profileId}/reports/{reportId}`

Deletes a report by its ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |
| `reportId` | `string` | path | Yes | The ID of the report. |

```typescript
const res = await dfareporting.reports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.reports.get`

**GET** `userprofiles/{profileId}/reports/{reportId}`

Retrieves a report by its ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |
| `reportId` | `string` | path | Yes | The ID of the report. |

**Response**: `Report`

```typescript
const res = await dfareporting.reports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.reports.insert`

**POST** `userprofiles/{profileId}/reports`

Creates a report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |

**Request body**: `Report`

**Response**: `Report`

```typescript
const res = await dfareporting.reports.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.reports.list`

**GET** `userprofiles/{profileId}/reports`

Retrieves list of reports.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | The value of the nextToken from the previous result page. |
| `scope` | `string` | query | No | The scope that defines which results are returned. |
| `sortField` | `string` | query | No | The field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `ReportList`

```typescript
const res = await dfareporting.reports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.reports.run`

**POST** `userprofiles/{profileId}/reports/{reportId}/run`

Runs a report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |
| `reportId` | `string` | path | Yes | The ID of the report. |
| `synchronous` | `boolean` | query | No | If set and true, tries to run the report synchronously. |

**Response**: `File`

```typescript
const res = await dfareporting.reports.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.reports.update`

**PUT** `userprofiles/{profileId}/reports/{reportId}`

Updates a report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |
| `reportId` | `string` | path | Yes | The ID of the report. |

**Request body**: `Report`

**Response**: `Report`

```typescript
const res = await dfareporting.reports.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.reports.files.get`

**GET** `userprofiles/{profileId}/reports/{reportId}/files/{fileId}`

Retrieves a report file by its report ID and file ID. This method supports media download.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |
| `reportId` | `string` | path | Yes | The ID of the report. |
| `fileId` | `string` | path | Yes | The ID of the report file. |

**Response**: `File`

```typescript
const res = await dfareporting.files.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.reports.files.list`

**GET** `userprofiles/{profileId}/reports/{reportId}/files`

Lists files for a report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |
| `reportId` | `string` | path | Yes | The ID of the parent report. |
| `maxResults` | `integer` | query | No | Maximum number of results to return. |
| `pageToken` | `string` | query | No | The value of the nextToken from the previous result page. |
| `sortField` | `string` | query | No | The field by which to sort the list. |
| `sortOrder` | `string` | query | No | Order of sorted results. |

**Response**: `FileList`

```typescript
const res = await dfareporting.files.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.reports.compatibleFields.query`

**POST** `userprofiles/{profileId}/reports/compatiblefields/query`

Returns the fields that are compatible to be selected in the respective sections of a report criteria, given the fields already selected in the input report and user permissions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The Campaign Manager 360 user profile ID. |

**Request body**: `Report`

**Response**: `CompatibleFields`

```typescript
const res = await dfareporting.compatibleFields.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfareporting`

---

### `dfareporting.sizes.get`

**GET** `userprofiles/{+profileId}/sizes/{+id}`

Gets one size by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | Size ID. |

**Response**: `Size`

```typescript
const res = await dfareporting.sizes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.sizes.insert`

**POST** `userprofiles/{+profileId}/sizes`

Inserts a new size.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Request body**: `Size`

**Response**: `Size`

```typescript
const res = await dfareporting.sizes.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.sizes.list`

**GET** `userprofiles/{+profileId}/sizes`

Retrieves a list of sizes, possibly filtered. Retrieved sizes are globally unique and may include values not currently in use by your account. Due to this, the list of sizes returned by this method may differ from the list seen in the Trafficking UI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `height` | `integer` | query | No | Select only sizes with this height. |
| `iabStandard` | `boolean` | query | No | Select only IAB standard sizes. |
| `ids` | `string` | query | No | Select only sizes with these IDs. |
| `width` | `integer` | query | No | Select only sizes with this width. |

**Response**: `SizesListResponse`

```typescript
const res = await dfareporting.sizes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.studioCreativeAssets.insert`

**POST** `studio/creativeAssets`

Inserts a new studio creative asset.

**Request body**: `DfareportingStudioCreativeAssetsInsertRequest`

**Response**: `StudioCreativeAssetsResponse`

```typescript
const res = await dfareporting.studioCreativeAssets.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.studioCreatives.get`

**GET** `studio/creatives/{+studioCreativeId}`

Gets a studio creative by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `studioCreativeId` | `string` | path | Yes | Required. Studio creative ID. |

**Response**: `StudioCreative`

```typescript
const res = await dfareporting.studioCreatives.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.studioCreatives.insert`

**POST** `studio/creatives`

Inserts a new studio creative.

**Request body**: `StudioCreative`

**Response**: `StudioCreative`

```typescript
const res = await dfareporting.studioCreatives.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.studioCreatives.publish`

**POST** `studio/creatives/{+studioCreativeId}/publish`

Publish for a studio creative.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `studioCreativeId` | `string` | path | Yes | Required. Studio creative ID. |

```typescript
const res = await dfareporting.studioCreatives.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.tvCampaignDetails.get`

**GET** `userprofiles/{+profileId}/tvCampaignDetails/{+id}`

Gets one TvCampaignDetail by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | Required. User profile ID associated with this request. |
| `id` | `string` | path | Yes | Required. TV Campaign ID. |
| `accountId` | `string` | query | No | Required. Account ID associated with this request. |
| `countryDartId` | `string` | query | No | Optional. Country Dart ID. If not specified, defaults to 256 (US). |
| `tvDataProvider` | `string` | query | No | Optional. TV data provider. If not specified, defaults to `COMSCORE_NATIONAL_US`. |

**Response**: `TvCampaignDetail`

```typescript
const res = await dfareporting.tvCampaignDetails.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.tvCampaignSummaries.list`

**GET** `userprofiles/{+profileId}/tvCampaignSummaries`

Retrieves a list of TV campaign summaries.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | Required. User profile ID associated with this request. |
| `accountId` | `string` | query | No | Required. Account ID associated with this request. |
| `countryDartId` | `string` | query | No | Optional. Country Dart ID. If not specified, defaults to 256 (US). |
| `name` | `string` | query | No | Required. Search string to filter the list of TV campaign summaries. Matches any substring. Required field. |
| `tvDataProvider` | `string` | query | No | Optional. TV data provider. If not specified, defaults to `COMSCORE_NATIONAL_US`. |

**Response**: `TvCampaignSummariesListResponse`

```typescript
const res = await dfareporting.tvCampaignSummaries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userProfiles.get`

**GET** `userprofiles/{profileId}`

Gets one user profile by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | The user profile ID. |

**Response**: `UserProfile`

```typescript
const res = await dfareporting.userProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ddmconversions`
- `https://www.googleapis.com/auth/dfareporting`
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userProfiles.list`

**GET** `userprofiles`

Retrieves list of user profiles for a user.

**Response**: `UserProfileList`

```typescript
const res = await dfareporting.userProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ddmconversions`
- `https://www.googleapis.com/auth/dfareporting`
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userRolePermissionGroups.get`

**GET** `userprofiles/{+profileId}/userRolePermissionGroups/{+id}`

Gets one user role permission group by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | User role permission group ID. |

**Response**: `UserRolePermissionGroup`

```typescript
const res = await dfareporting.userRolePermissionGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userRolePermissionGroups.list`

**GET** `userprofiles/{+profileId}/userRolePermissionGroups`

Gets a list of all supported user role permission groups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `UserRolePermissionGroupsListResponse`

```typescript
const res = await dfareporting.userRolePermissionGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userRolePermissions.get`

**GET** `userprofiles/{+profileId}/userRolePermissions/{+id}`

Gets one user role permission by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `string` | path | Yes | User role permission ID. |

**Response**: `UserRolePermission`

```typescript
const res = await dfareporting.userRolePermissions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.userRolePermissions.list`

**GET** `userprofiles/{+profileId}/userRolePermissions`

Gets a list of user role permissions, possibly filtered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `ids` | `string` | query | No | Select only user role permissions with these IDs. |

**Response**: `UserRolePermissionsListResponse`

```typescript
const res = await dfareporting.userRolePermissions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.videoFormats.get`

**GET** `userprofiles/{+profileId}/videoFormats/{+id}`

Gets one video format by ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |
| `id` | `integer` | path | Yes | Video format ID. |

**Response**: `VideoFormat`

```typescript
const res = await dfareporting.videoFormats.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

### `dfareporting.videoFormats.list`

**GET** `userprofiles/{+profileId}/videoFormats`

Lists available video formats.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `profileId` | `string` | path | Yes | User profile ID associated with this request. |

**Response**: `VideoFormatsListResponse`

```typescript
const res = await dfareporting.videoFormats.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/dfatrafficking`

---

## Schemas

### `Account`

Contains properties of a Campaign Manager account.

| Property | Type | Description |
|----------|------|-------------|
| `accountPermissionIds` | `array<string>` | Account permissions assigned to this account. |
| `accountProfile` | `string` | Profile for this account. This is a read-only field that can be left blank. |
| `active` | `boolean` | Whether this account is active. |
| `activeAdsLimitTier` | `string` | Maximum number of active ads allowed for this account. |
| `activeViewOptOut` | `boolean` | Whether to serve creatives with Active View tags. If disabled, viewability data will not be avail... |
| `availablePermissionIds` | `array<string>` | User role permissions available to the user roles of this account. |
| `countryId` | `string` | ID of the country associated with this account. |
| `currencyId` | `string` | ID of currency associated with this account. This is a required field. Acceptable values are: - "... |
| `defaultCreativeSizeId` | `string` | Default placement dimensions for this account. |
| `description` | `string` | Description of this account. |
| `id` | `string` | ID of this account. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#account". |
| `locale` | `string` | Locale of this account. Acceptable values are: - "cs" (Czech) - "de" (German) - "en" (English) - ... |
| `maximumImageSize` | `string` | Maximum image size allowed for this account, in kilobytes. Value must be greater than or equal to 1. |
| `name` | `string` | Name of this account. This is a required field, and must be less than 128 characters long and be ... |
| `nielsenOcrEnabled` | `boolean` | Whether campaigns created in this account will be enabled for Nielsen OCR reach ratings by default. |
| `reportsConfiguration` | `ReportsConfiguration` | Reporting configuration of this account. |
| `shareReportsWithTwitter` | `boolean` | Share Path to Conversion reports with Twitter. |
| `teaserSizeLimit` | `string` | File size limit in kilobytes of Rich Media teaser creatives. Acceptable values are 1 to 10240, in... |

### `AccountActiveAdSummary`

Gets a summary of active ads in an account.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | ID of the account. |
| `activeAds` | `string` | Ads that have been activated for the account |
| `activeAdsLimitTier` | `string` | Maximum number of active ads allowed for the account. |
| `availableAds` | `string` | Ads that can be activated for the account. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#accountActiveAdSu... |

### `AccountPermission`

AccountPermissions contains information about a particular account permission. Some features of Campaign Manager require an account permission to be present in the account.

| Property | Type | Description |
|----------|------|-------------|
| `accountProfiles` | `array<string>` | Account profiles associated with this account permission. Possible values are: - "ACCOUNT_PROFILE... |
| `id` | `string` | ID of this account permission. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#accountPermission". |
| `level` | `string` | Administrative level required to enable this account permission. |
| `name` | `string` | Name of this account permission. |
| `permissionGroupId` | `string` | Permission group of this account permission. |

### `AccountPermissionGroup`

AccountPermissionGroups contains a mapping of permission group IDs to names. A permission group is a grouping of account permissions.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of this account permission group. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#accountPermission... |
| `name` | `string` | Name of this account permission group. |

### `AccountPermissionGroupsListResponse`

Account Permission Group List Response

| Property | Type | Description |
|----------|------|-------------|
| `accountPermissionGroups` | `array<AccountPermissionGroup>` | Account permission group collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#accountPermission... |

### `AccountPermissionsListResponse`

Account Permission List Response

| Property | Type | Description |
|----------|------|-------------|
| `accountPermissions` | `array<AccountPermission>` | Account permission collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#accountPermission... |

### `AccountUserProfile`

AccountUserProfiles contains properties of a Campaign Manager user profile. This resource is specifically for managing user profiles, whereas UserProfiles is for accessing the API.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of the user profile. This is a read-only field that can be left blank. |
| `active` | `boolean` | Whether this user profile is active. This defaults to false, and must be set true on insert for t... |
| `advertiserFilter` | `ObjectFilter` | Filter that describes which advertisers are visible to the user profile. |
| `campaignFilter` | `ObjectFilter` | Filter that describes which campaigns are visible to the user profile. |
| `comments` | `string` | Comments for this user profile. |
| `email` | `string` | Email of the user profile. The email address must be linked to a Google Account. This field is re... |
| `id` | `string` | ID of the user profile. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#accountUserProfile". |
| `locale` | `string` | Locale of the user profile. This is a required field. Acceptable values are: - "cs" (Czech) - "de... |
| `name` | `string` | Name of the user profile. This is a required field. Must be less than 64 characters long, must be... |
| `siteFilter` | `ObjectFilter` | Filter that describes which sites are visible to the user profile. |
| `subaccountId` | `string` | Subaccount ID of the user profile. This is a read-only field that can be left blank. |
| `traffickerType` | `string` | Trafficker type of this user profile. This is a read-only field. |
| `userAccessType` | `string` | User type of the user profile. This is a read-only field that can be left blank. |
| `userRoleFilter` | `ObjectFilter` | Filter that describes which user roles are visible to the user profile. |
| `userRoleId` | `string` | User role ID of the user profile. This is a required field. |

### `AccountUserProfilesListResponse`

Account User Profile List Response

| Property | Type | Description |
|----------|------|-------------|
| `accountUserProfiles` | `array<AccountUserProfile>` | Account user profile collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#accountUserProfil... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `AccountsListResponse`

Account List Response

| Property | Type | Description |
|----------|------|-------------|
| `accounts` | `array<Account>` | Account collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#accountsListRespo... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `Activities`

Represents an activity group.

| Property | Type | Description |
|----------|------|-------------|
| `filters` | `array<DimensionValue>` | List of activity filters. The dimension values need to be all either of type "dfa:activity" or "d... |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#activities. |
| `metricNames` | `array<string>` | List of names of floodlight activity metrics. |

### `Ad`

Contains properties of a Campaign Manager ad.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this ad. This is a read-only field that can be left blank. |
| `active` | `boolean` | Whether this ad is active. When true, archived must be false. |
| `advertiserId` | `string` | Advertiser ID of this ad. This is a required field on insertion. |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `archived` | `boolean` | Whether this ad is archived. When true, active must be false. |
| `audienceSegmentId` | `string` | Audience segment ID that is being targeted for this ad. Applicable when type is AD_SERVING_STANDA... |
| `campaignId` | `string` | Campaign ID of this ad. This is a required field on insertion. |
| `campaignIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the campaign. This is a read-only, auto-generated field. |
| `clickThroughUrl` | `ClickThroughUrl` | Click-through URL for this ad. This is a required field on insertion. Applicable when type is AD_... |
| `clickThroughUrlSuffixProperties` | `ClickThroughUrlSuffixProperties` | Click-through URL suffix properties for this ad. Applies to the URL in the ad or (if overriding a... |
| `comments` | `string` | Comments for this ad. |
| `compatibility` | `string` | Compatibility of this ad. Applicable when type is AD_SERVING_DEFAULT_AD. DISPLAY and DISPLAY_INTE... |
| `contextualKeywordTargeting` | `ContextualKeywordTargeting` | Optional. Contextual keyword targeting information for this ad. |
| `createInfo` | `LastModifiedInfo` | Information about the creation of this ad. This is a read-only field. |
| `creativeGroupAssignments` | `array<CreativeGroupAssignment>` | Creative group assignments for this ad. Applicable when type is AD_SERVING_CLICK_TRACKER. Only on... |
| `creativeRotation` | `CreativeRotation` | Creative rotation for this ad. Applicable when type is AD_SERVING_DEFAULT_AD, AD_SERVING_STANDARD... |
| `dayPartTargeting` | `DayPartTargeting` | Time and day targeting information for this ad. This field must be left blank if the ad is using ... |
| `defaultClickThroughEventTagProperties` | `DefaultClickThroughEventTagProperties` | Default click-through event tag properties for this ad. |
| `deliverySchedule` | `DeliverySchedule` | Delivery schedule information for this ad. Applicable when type is AD_SERVING_STANDARD_AD or AD_S... |
| `dynamicClickTracker` | `boolean` | Whether this ad is a dynamic click tracker. Applicable when type is AD_SERVING_CLICK_TRACKER. Thi... |
| `endTime` | `string` |  |
| `eventTagOverrides` | `array<EventTagOverride>` | Event tag overrides for this ad. |
| `geoTargeting` | `GeoTargeting` | Geographical targeting information for this ad. This field must be left blank if the ad is using ... |
| `id` | `string` | ID of this ad. This is a read-only, auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this ad. This is a read-only, auto-generated field. |
| `keyValueTargetingExpression` | `KeyValueTargetingExpression` | Key-value targeting information for this ad. This field must be left blank if the ad is using a t... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#ad". |
| `languageTargeting` | `LanguageTargeting` | Language targeting information for this ad. This field must be left blank if the ad is using a ta... |
| `lastModifiedInfo` | `LastModifiedInfo` | Information about the most recent modification of this ad. This is a read-only field. |
| `name` | `string` | Name of this ad. This is a required field and must be less than 256 characters long. |
| `placementAssignments` | `array<PlacementAssignment>` | Placement assignments for this ad. |
| `remarketingListExpression` | `ListTargetingExpression` | Remarketing list targeting expression for this ad. This field must be left blank if the ad is usi... |
| `size` | `Size` | Size of this ad. Applicable when type is AD_SERVING_DEFAULT_AD. |
| `sslCompliant` | `boolean` | Whether this ad is ssl compliant. This is a read-only field that is auto-generated when the ad is... |
| `sslRequired` | `boolean` | Whether this ad requires ssl. This is a read-only field that is auto-generated when the ad is ins... |
| `startTime` | `string` |  |
| `subaccountId` | `string` | Subaccount ID of this ad. This is a read-only field that can be left blank. |
| `targetingTemplateId` | `string` | Targeting template ID, used to apply preconfigured targeting information to this ad. This cannot ... |
| `technologyTargeting` | `TechnologyTargeting` | Technology platform targeting information for this ad. This field must be left blank if the ad is... |
| `type` | `string` | Type of ad. This is a required field on insertion. Note that default ads ( AD_SERVING_DEFAULT_AD)... |

### `AdBlockingConfiguration`

Campaign ad blocking settings.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether this campaign has enabled ad blocking. When true, ad blocking is enabled for placements i... |

### `AdsListResponse`

Ad List Response

| Property | Type | Description |
|----------|------|-------------|
| `ads` | `array<Ad>` | Ad collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#adsListResponse". |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `Advertiser`

Contains properties of a Campaign Manager advertiser.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this advertiser.This is a read-only field that can be left blank. |
| `advertiserGroupId` | `string` | ID of the advertiser group this advertiser belongs to. You can group advertisers for reporting pu... |
| `clickThroughUrlSuffix` | `string` | Suffix added to click-through URL of ad creative associations under this advertiser. Must be less... |
| `defaultClickThroughEventTagId` | `string` | ID of the click-through event tag to apply by default to the landing pages of this advertiser's c... |
| `defaultEmail` | `string` | Default email address used in sender field for tag emails. |
| `euPoliticalAdsDeclaration` | `string` | Optional. Whether the advertiser plans to serve EU political ads. |
| `floodlightConfigurationId` | `string` | Floodlight configuration ID of this advertiser. The floodlight configuration ID will be created a... |
| `floodlightConfigurationIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated f... |
| `id` | `string` | ID of this advertiser. This is a read-only, auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this advertiser. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#advertiser". |
| `measurementPartnerLink` | `MeasurementPartnerAdvertiserLink` | Measurement partner advertiser link for tag wrapping. |
| `name` | `string` | Name of this advertiser. This is a required field and must be less than 256 characters long and u... |
| `originalFloodlightConfigurationId` | `string` | Original floodlight configuration before any sharing occurred. Set the floodlightConfigurationId ... |
| `status` | `string` | Status of this advertiser. |
| `subaccountId` | `string` | Subaccount ID of this advertiser.This is a read-only field that can be left blank. |
| `suspended` | `boolean` | Suspension status of this advertiser. |

### `AdvertiserGroup`

Groups advertisers together so that reports can be generated for the entire group at once.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this advertiser group. This is a read-only field that can be left blank. |
| `id` | `string` | ID of this advertiser group. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#advertiserGroup". |
| `name` | `string` | Name of this advertiser group. This is a required field and must be less than 256 characters long... |

### `AdvertiserGroupsListResponse`

Advertiser Group List Response

| Property | Type | Description |
|----------|------|-------------|
| `advertiserGroups` | `array<AdvertiserGroup>` | Advertiser group collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#advertiserGroupsL... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `AdvertiserInvoicesListResponse`

Invoice List Response

| Property | Type | Description |
|----------|------|-------------|
| `invoices` | `array<Invoice>` | Invoice collection |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#advertiserInvoice... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `AdvertiserLandingPagesListResponse`

Landing Page List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#advertiserLanding... |
| `landingPages` | `array<LandingPage>` | Landing page collection |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `AdvertisersListResponse`

Advertiser List Response

| Property | Type | Description |
|----------|------|-------------|
| `advertisers` | `array<Advertiser>` | Advertiser collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#advertisersListRe... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `AudienceSegment`

Audience Segment.

| Property | Type | Description |
|----------|------|-------------|
| `allocation` | `integer` | Weight allocated to this segment. The weight assigned will be understood in proportion to the wei... |
| `id` | `string` | ID of this audience segment. This is a read-only, auto-generated field. |
| `name` | `string` | Name of this audience segment. This is a required field and must be less than 65 characters long. |

### `AudienceSegmentGroup`

Audience Segment Group.

| Property | Type | Description |
|----------|------|-------------|
| `audienceSegments` | `array<AudienceSegment>` | Audience segments assigned to this group. The number of segments must be between 2 and 100. |
| `id` | `string` | ID of this audience segment group. This is a read-only, auto-generated field. |
| `name` | `string` | Name of this audience segment group. This is a required field and must be less than 65 characters... |

### `BillingAssignment`

List account, subaccount, advertiser, and campaign associated with a given Billing Profile.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | ID of the account associated with the billing assignment.This is a read-only, auto-generated field. |
| `advertiserId` | `string` | ID of the advertiser associated with the billing assignment.Wildcard (*) means this assignment is... |
| `campaignId` | `string` | ID of the campaign associated with the billing assignment. Wildcard (*) means this assignment is ... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#billingAssignment". |
| `subaccountId` | `string` | ID of the subaccount associated with the billing assignment.Wildcard (*) means this assignment is... |

### `BillingAssignmentsListResponse`

Billing assignment List Response

| Property | Type | Description |
|----------|------|-------------|
| `billingAssignments` | `array<BillingAssignment>` | Billing assignments collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#billingAssignment... |

### `BillingProfile`

Contains properties of a Campaign Manager Billing Profile.

| Property | Type | Description |
|----------|------|-------------|
| `consolidatedInvoice` | `boolean` | Consolidated invoice option for this billing profile. Used to get a single, consolidated invoice ... |
| `countryCode` | `string` | Country code of this billing profile.This is a read-only field. |
| `currencyCode` | `string` | Billing currency code in ISO 4217 format.This is a read-only field. |
| `id` | `string` | ID of this billing profile. This is a read-only, auto-generated field. |
| `invoiceLevel` | `string` | Invoice level for this billing profile. Used to group fees into separate invoices by account, adv... |
| `isDefault` | `boolean` | True if the billing profile is the account default profile. This is a read-only field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#billingProfile". |
| `name` | `string` | Name of this billing profile. This is a required field and must be less than 256 characters long ... |
| `paymentsAccountId` | `string` | The ID of the payment account the billing profile belongs to. This is a read-only field. |
| `paymentsCustomerId` | `string` | The ID of the payment customer the billing profile belongs to. This is a read-only field. |
| `purchaseOrder` | `string` | Purchase order (PO) for this billing profile. This PO number is used in the invoices for all of t... |
| `secondaryPaymentsCustomerId` | `string` | The ID of the secondary payment customer the billing profile belongs to. This is a read-only field. |
| `status` | `string` | Status of this billing profile.This is a read-only field. |

### `BillingProfilesListResponse`

Billing profile List Response

| Property | Type | Description |
|----------|------|-------------|
| `billingProfiles` | `array<BillingProfile>` | Billing profiles collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#billingProfilesLi... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `BillingRate`

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | Billing currency code in ISO 4217 format. |
| `endDate` | `string` | End date of this billing rate. |
| `id` | `string` | ID of this billing rate. |
| `name` | `string` | Name of this billing rate. This must be less than 256 characters long. |
| `rateInMicros` | `string` | Flat rate in micros of this billing rate. This cannot co-exist with tiered rate. |
| `startDate` | `string` | Start date of this billing rate. |
| `tieredRates` | `array<BillingRateTieredRate>` | Tiered rate of this billing rate. This cannot co-exist with flat rate. |
| `type` | `string` | Type of this billing rate. |
| `unitOfMeasure` | `string` | Unit of measure for this billing rate. |

### `BillingRateTieredRate`

| Property | Type | Description |
|----------|------|-------------|
| `highValue` | `string` | The maximum for this tier range. |
| `lowValue` | `string` | The minimum for this tier range. |
| `rateInMicros` | `string` | Rate in micros for this tier. |

### `BillingRatesListResponse`

Billing Rate List Response

| Property | Type | Description |
|----------|------|-------------|
| `billingRates` | `array<BillingRate>` | Billing rates collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#billingRatesListR... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `Browser`

Contains information about a browser that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `browserVersionId` | `string` | ID referring to this grouping of browser and version numbers. This is the ID used for targeting. |
| `dartId` | `string` | DART ID of this browser. This is the ID used when generating reports. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#browser". |
| `majorVersion` | `string` | Major version number (leftmost number) of this browser. For example, for Chrome 5.0.376.86 beta, ... |
| `minorVersion` | `string` | Minor version number (number after first dot on left) of this browser. For example, for Chrome 5.... |
| `name` | `string` | Name of this browser. |

### `BrowsersListResponse`

Browser List Response

| Property | Type | Description |
|----------|------|-------------|
| `browsers` | `array<Browser>` | Browser collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#browsersListRespo... |

### `Campaign`

Contains properties of a Campaign Manager campaign.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this campaign. This is a read-only field that can be left blank. |
| `adBlockingConfiguration` | `AdBlockingConfiguration` | Ad blocking settings for this campaign. |
| `additionalCreativeOptimizationConfigurations` | `array<CreativeOptimizationConfiguration>` | Additional creative optimization configurations for the campaign. |
| `advertiserGroupId` | `string` | Advertiser group ID of the associated advertiser. |
| `advertiserId` | `string` | Advertiser ID of this campaign. This is a required field. |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the advertiser ID of this campaign. This is a read-only, auto-generated field. |
| `archived` | `boolean` | Whether this campaign has been archived. |
| `audienceSegmentGroups` | `array<AudienceSegmentGroup>` | Audience segment groups assigned to this campaign. Cannot have more than 300 segment groups. |
| `billingInvoiceCode` | `string` | Billing invoice code included in the Campaign Manager client billing invoices associated with the... |
| `clickThroughUrlSuffixProperties` | `ClickThroughUrlSuffixProperties` | Click-through URL suffix override properties for this campaign. |
| `comment` | `string` | Arbitrary comments about this campaign. Must be less than 256 characters long. |
| `createInfo` | `LastModifiedInfo` | Information about the creation of this campaign. This is a read-only field. |
| `creativeGroupIds` | `array<string>` | List of creative group IDs that are assigned to the campaign. |
| `creativeOptimizationConfiguration` | `CreativeOptimizationConfiguration` | Creative optimization configuration for the campaign. |
| `defaultClickThroughEventTagProperties` | `DefaultClickThroughEventTagProperties` | Click-through event tag ID override properties for this campaign. |
| `defaultLandingPageId` | `string` | The default landing page ID for this campaign. |
| `endDate` | `string` |  |
| `euPoliticalAdsDeclaration` | `string` | Optional. Whether the campaign has EU political ads. Campaign Manager 360 doesn't allow campaigns... |
| `eventTagOverrides` | `array<EventTagOverride>` | Overrides that can be used to activate or deactivate advertiser event tags. |
| `externalId` | `string` | External ID for this campaign. |
| `id` | `string` | ID of this campaign. This is a read-only auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this campaign. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#campaign". |
| `lastModifiedInfo` | `LastModifiedInfo` | Information about the most recent modification of this campaign. This is a read-only field. |
| `measurementPartnerLink` | `MeasurementPartnerCampaignLink` | Measurement partner campaign link for tag wrapping. |
| `name` | `string` | Name of this campaign. This is a required field and must be less than 512 characters long and uni... |
| `startDate` | `string` |  |
| `subaccountId` | `string` | Subaccount ID of this campaign. This is a read-only field that can be left blank. |

### `CampaignCreativeAssociation`

Identifies a creative which has been associated with a given campaign.

| Property | Type | Description |
|----------|------|-------------|
| `creativeId` | `string` | ID of the creative associated with the campaign. This is a required field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#campaignCreativeA... |

### `CampaignCreativeAssociationsListResponse`

Campaign Creative Association List Response

| Property | Type | Description |
|----------|------|-------------|
| `campaignCreativeAssociations` | `array<CampaignCreativeAssociation>` | Campaign creative association collection |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#campaignCreativeA... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `CampaignSummary`

Represents a summarized campaign information associated with this invoice.

| Property | Type | Description |
|----------|------|-------------|
| `billingInvoiceCode` | `string` | Campaign billing invoice code. |
| `campaignId` | `string` | Campaign ID. |
| `preTaxAmountMicros` | `string` | The pre-tax amount for this campaign, in micros of the invoice's currency. |
| `taxAmountMicros` | `string` | The tax amount for this campaign, in micros of the invoice's currency. |
| `totalAmountMicros` | `string` | The total amount of charges for this campaign, in micros of the invoice's currency. |

### `CampaignsListResponse`

Campaign List Response

| Property | Type | Description |
|----------|------|-------------|
| `campaigns` | `array<Campaign>` | Campaign collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#campaignsListResp... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `CartData`

Contains additional information about cart data. This field may only be used when calling batchinsert; it is not supported by batchupdate. Cart data reporting is only supported in SA360. [Learn more](https://support.google.com/sa360/topic/13425788)

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<CartDataItem>` | Data of the items purchased. |
| `merchantFeedLabel` | `string` | The feed labels associated with the feed where your items are uploaded. For more information, ple... |
| `merchantFeedLanguage` | `string` | The language associated with the feed where your items are uploaded. Use ISO 639-1 language codes... |
| `merchantId` | `string` | The Merchant Center ID where the items are uploaded. Providing Merchant Center ID reduces ambigui... |

### `CartDataItem`

Contains data of the items purchased.

| Property | Type | Description |
|----------|------|-------------|
| `itemId` | `string` | The shopping id of the item. Must be equal to the Merchant Center product identifier. This is a r... |
| `quantity` | `integer` | Number of items sold. This is a required field. |
| `unitPrice` | `number` | Unit price excluding tax, shipping, and any transaction level discounts. Interpreted in CM360 Flo... |

### `ChangeLog`

Describes a change that a user has made to a resource.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of the modified object. |
| `action` | `string` | Action which caused the change. |
| `changeTime` | `string` |  |
| `fieldName` | `string` | Field name of the object which changed. |
| `id` | `string` | ID of this change log. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#changeLog". |
| `newValue` | `string` | New value of the object field. |
| `objectId` | `string` | ID of the object of this change log. The object could be a campaign, placement, ad, or other type. |
| `objectType` | `string` | Object type of the change log. |
| `oldValue` | `string` | Old value of the object field. |
| `subaccountId` | `string` | Subaccount ID of the modified object. |
| `transactionId` | `string` | Transaction ID of this change log. When a single API call results in many changes, each change wi... |
| `userProfileId` | `string` | ID of the user who modified the object. |
| `userProfileName` | `string` | User profile name of the user who modified the object. |

### `ChangeLogsListResponse`

Change Log List Response

| Property | Type | Description |
|----------|------|-------------|
| `changeLogs` | `array<ChangeLog>` | Change log collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#changeLogsListRes... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `CitiesListResponse`

City List Response

| Property | Type | Description |
|----------|------|-------------|
| `cities` | `array<City>` | City collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#citiesListResponse". |

### `City`

Contains information about a city that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `string` | Country code of the country to which this city belongs. |
| `countryDartId` | `string` | DART ID of the country to which this city belongs. |
| `dartId` | `string` | DART ID of this city. This is the ID used for targeting and generating reports. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#city". |
| `metroCode` | `string` | Metro region code of the metro region (DMA) to which this city belongs. |
| `metroDmaId` | `string` | ID of the metro region (DMA) to which this city belongs. |
| `name` | `string` | Name of this city. |
| `regionCode` | `string` | Region code of the region to which this city belongs. |
| `regionDartId` | `string` | DART ID of the region to which this city belongs. |

### `ClickTag`

Creative Click Tag.

| Property | Type | Description |
|----------|------|-------------|
| `clickThroughUrl` | `CreativeClickThroughUrl` | Parameter value for the specified click tag. This field contains a click-through url. |
| `eventName` | `string` | Advertiser event name associated with the click tag. This field is used by DISPLAY_IMAGE_GALLERY ... |
| `name` | `string` | Parameter name for the specified click tag. For DISPLAY_IMAGE_GALLERY creative assets, this field... |

### `ClickThroughUrl`

Click-through URL

| Property | Type | Description |
|----------|------|-------------|
| `computedClickThroughUrl` | `string` | Read-only convenience field representing the actual URL that will be used for this click-through.... |
| `customClickThroughUrl` | `string` | Custom click-through URL. Applicable if the defaultLandingPage field is set to false and the land... |
| `defaultLandingPage` | `boolean` | Whether the campaign default landing page is used. |
| `landingPageId` | `string` | ID of the landing page for the click-through URL. Applicable if the defaultLandingPage field is s... |

### `ClickThroughUrlSuffixProperties`

Click Through URL Suffix settings.

| Property | Type | Description |
|----------|------|-------------|
| `clickThroughUrlSuffix` | `string` | Click-through URL suffix to apply to all ads in this entity's scope. Must be less than 128 charac... |
| `overrideInheritedSuffix` | `boolean` | Whether this entity should override the inherited click-through URL suffix with its own defined v... |

### `CompanionClickThroughOverride`

Companion Click-through override.

| Property | Type | Description |
|----------|------|-------------|
| `clickThroughUrl` | `ClickThroughUrl` | Click-through URL of this companion click-through override. |
| `creativeId` | `string` | ID of the creative for this companion click-through override. |

### `CompanionSetting`

Companion Settings

| Property | Type | Description |
|----------|------|-------------|
| `companionsDisabled` | `boolean` | Whether companions are disabled for this placement. |
| `enabledSizes` | `array<Size>` | Allowlist of companion sizes to be served to this placement. Set this list to null or empty to se... |
| `imageOnly` | `boolean` | Whether to serve only static images as companions. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#companionSetting". |

### `CompatibleFields`

Represents a response to the queryCompatibleFields method. Next ID: 10

| Property | Type | Description |
|----------|------|-------------|
| `crossDimensionReachReportCompatibleFields` | `CrossDimensionReachReportCompatibleFields` | Contains items that are compatible to be selected for a report of type "CROSS_DIMENSION_REACH". |
| `crossMediaReachReportCompatibleFields` | `CrossMediaReachReportCompatibleFields` | Contains items that are compatible to be selected for a report of type "CROSS_MEDIA_REACH". |
| `floodlightReportCompatibleFields` | `FloodlightReportCompatibleFields` | Contains items that are compatible to be selected for a report of type "FLOODLIGHT". |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#compatibleFields. |
| `pathToConversionReportCompatibleFields` | `PathToConversionReportCompatibleFields` | Contains items that are compatible to be selected for a report of type "PATH_TO_CONVERSION". |
| `reachReportCompatibleFields` | `ReachReportCompatibleFields` | Contains items that are compatible to be selected for a report of type "REACH". |
| `reportCompatibleFields` | `ReportCompatibleFields` | Contains items that are compatible to be selected for a report of type "STANDARD". |

### `ConnectionType`

Contains information about an internet connection type that can be targeted by ads. Clients can use the connection type to target mobile vs. broadband users.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of this connection type. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#connectionType". |
| `name` | `string` | Name of this connection type. |

### `ConnectionTypesListResponse`

Connection Type List Response

| Property | Type | Description |
|----------|------|-------------|
| `connectionTypes` | `array<ConnectionType>` | Collection of connection types such as broadband and mobile. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#connectionTypesLi... |

### `ContentCategoriesListResponse`

Content Category List Response

| Property | Type | Description |
|----------|------|-------------|
| `contentCategories` | `array<ContentCategory>` | Content category collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#contentCategories... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `ContentCategory`

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this content category. This is a read-only field that can be left blank. |
| `id` | `string` | ID of this content category. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#contentCategory". |
| `name` | `string` | Name of this content category. This is a required field and must be less than 256 characters long... |

### `ContentSource`

Contains the content source of the dynamic feed.

| Property | Type | Description |
|----------|------|-------------|
| `contentSourceName` | `string` | Optional. The name of the content source. It is defaulted to content source file name if not prov... |
| `createInfo` | `LastModifiedInfo` | Output only. The creation timestamp of the content source. This is a read-only field. |
| `lastModifiedInfo` | `LastModifiedInfo` | Output only. The last modified timestamp of the content source. This is a read-only field. |
| `metaData` | `ContentSourceMetaData` | Output only. Metadata of the content source. It contains the number of rows and the column names ... |
| `resourceLink` | `string` | Required. The link to the file of the content source. |
| `resourceType` | `string` | Required. The resource type of the content source. |

### `ContentSourceMetaData`

Contains the meta data of the content source. This is a read-only field.

| Property | Type | Description |
|----------|------|-------------|
| `charset` | `string` | Output only. The charset of the content source. |
| `fieldNames` | `array<string>` | Output only. The list of column names in the content source. |
| `rowNumber` | `integer` | Output only. The number of rows in the content source. |
| `separator` | `string` | Output only. The separator of the content source. |

### `ContextualKeyword`

Contains information about a Contextual Keyword that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `keyword` | `string` | The keyword that can be targeted by ads. |

### `ContextualKeywordTargeting`

Contextual Keyword Targeting.

| Property | Type | Description |
|----------|------|-------------|
| `keywords` | `array<ContextualKeyword>` | Contextual keywords that this ad targets |

### `Conversion`

A Conversion represents when a user successfully performs a desired action after seeing an ad.

| Property | Type | Description |
|----------|------|-------------|
| `adUserDataConsent` | `string` | This represents consent for ad user data. |
| `cartData` | `CartData` | The cart data associated with this conversion. |
| `childDirectedTreatment` | `boolean` | Whether this particular request may come from a user under the age of 13, under COPPA compliance. |
| `customVariables` | `array<CustomFloodlightVariable>` | Custom floodlight variables. |
| `dclid` | `string` | The display click ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandi... |
| `encryptedUserId` | `string` | The alphanumeric encrypted user ID. When set, encryptionInfo should also be specified. This field... |
| `encryptedUserIdCandidates` | `array<string>` | A list of the alphanumeric encrypted user IDs. Any user ID with exposure prior to the conversion ... |
| `floodlightActivityId` | `string` | Floodlight Activity ID of this conversion. This is a required field. |
| `floodlightConfigurationId` | `string` | Floodlight Configuration ID of this conversion. This is a required field. |
| `gclid` | `string` | The Google click ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandid... |
| `impressionId` | `string` | The impression ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidat... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#conversion". |
| `limitAdTracking` | `boolean` | Whether Limit Ad Tracking is enabled. When set to true, the conversion will be used for reporting... |
| `matchId` | `string` | The match ID field. A match ID is your own first-party identifier that has been synced with Googl... |
| `mobileDeviceId` | `string` | The mobile device ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandi... |
| `nonPersonalizedAd` | `boolean` | Whether the conversion was for a non personalized ad. |
| `ordinal` | `string` | The ordinal of the conversion. Use this field to control how conversions of the same user and day... |
| `quantity` | `string` | The quantity of the conversion. This is a required field. |
| `sessionAttributesEncoded` | `string` | Session attributes for the conversion, encoded as based64 bytes. This field may only be used when... |
| `timestampMicros` | `string` | The timestamp of conversion, in Unix epoch micros. This is a required field. |
| `treatmentForUnderage` | `boolean` | Whether this particular request may come from a user under the age of 16 (may differ by country),... |
| `userIdentifiers` | `array<UserIdentifier>` | The user identifiers to enhance the conversion. The maximum number of user identifiers for each c... |
| `value` | `number` | The value of the conversion. Interpreted in CM360 Floodlight config parent advertiser's currency ... |

### `ConversionError`

The error code and description for a conversion that failed to insert or update.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The error code. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#conversionError". |
| `message` | `string` | A description of the error. |

### `ConversionStatus`

The original conversion that was inserted or updated and whether there were any errors.

| Property | Type | Description |
|----------|------|-------------|
| `conversion` | `Conversion` | The original conversion that was inserted or updated. |
| `errors` | `array<ConversionError>` | A list of errors related to this conversion. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#conversionStatus". |

### `ConversionsBatchInsertRequest`

Insert Conversions Request.

| Property | Type | Description |
|----------|------|-------------|
| `conversions` | `array<Conversion>` | The set of conversions to insert. |
| `encryptionInfo` | `EncryptionInfo` | Describes how encryptedUserId or encryptedUserIdCandidates[] is encrypted. This is a required fie... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#conversionsBatchI... |

### `ConversionsBatchInsertResponse`

Insert Conversions Response.

| Property | Type | Description |
|----------|------|-------------|
| `hasFailures` | `boolean` | Indicates that some or all conversions failed to insert. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#conversionsBatchI... |
| `status` | `array<ConversionStatus>` | The insert status of each conversion. Statuses are returned in the same order that conversions ar... |

### `ConversionsBatchUpdateRequest`

Update Conversions Request.

| Property | Type | Description |
|----------|------|-------------|
| `conversions` | `array<Conversion>` | The set of conversions to update. |
| `encryptionInfo` | `EncryptionInfo` | Describes how encryptedUserId is encrypted. This is a required field if encryptedUserId is used. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#conversionsBatchU... |

### `ConversionsBatchUpdateResponse`

Update Conversions Response.

| Property | Type | Description |
|----------|------|-------------|
| `hasFailures` | `boolean` | Indicates that some or all conversions failed to update. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#conversionsBatchU... |
| `status` | `array<ConversionStatus>` | The update status of each conversion. Statuses are returned in the same order that conversions ar... |

### `CountriesListResponse`

Country List Response

| Property | Type | Description |
|----------|------|-------------|
| `countries` | `array<Country>` | Country collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#countriesListResp... |

### `Country`

Contains information about a country that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `string` | Country code. |
| `dartId` | `string` | DART ID of this country. This is the ID used for targeting and generating reports. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#country". |
| `name` | `string` | Name of this country. |
| `sslEnabled` | `boolean` | Whether ad serving supports secure servers in this country. |
| `tvDataProviders` | `array<string>` | Output only. The TV data providers supported in this country. |

### `Creative`

Contains properties of a Creative.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this creative. This field, if left unset, will be auto-generated for both insert an... |
| `active` | `boolean` | Whether the creative is active. Applicable to all creative types. |
| `adParameters` | `string` | Ad parameters user for VPAID creative. This is a read-only field. Applicable to the following cre... |
| `adTagKeys` | `array<string>` | Keywords for a Rich Media creative. Keywords let you customize the creative settings of a Rich Me... |
| `additionalSizes` | `array<Size>` | Additional sizes associated with a responsive creative. When inserting or updating a creative eit... |
| `advertiserId` | `string` | Required. Advertiser ID of this creative. This is a required field. Applicable to all creative ty... |
| `allowScriptAccess` | `boolean` | Whether script access is allowed for this creative. This is a read-only and deprecated field whic... |
| `archived` | `boolean` | Whether the creative is archived. Applicable to all creative types. |
| `artworkType` | `string` | Type of artwork used for the creative. This is a read-only field. Applicable to the following cre... |
| `authoringSource` | `string` | Source application where creative was authored. Presently, only DBM authored creatives will have ... |
| `authoringTool` | `string` | Authoring tool for HTML5 banner creatives. This is a read-only field. Applicable to the following... |
| `autoAdvanceImages` | `boolean` | Whether images are automatically advanced for image gallery creatives. Applicable to the followin... |
| `backgroundColor` | `string` | The 6-character HTML color code, beginning with #, for the background of the window area where th... |
| `backupImageClickThroughUrl` | `CreativeClickThroughUrl` | Click-through URL for backup image. Applicable to ENHANCED_BANNER when the primary asset type is ... |
| `backupImageFeatures` | `array<string>` | List of feature dependencies that will cause a backup image to be served if the browser that serv... |
| `backupImageReportingLabel` | `string` | Reporting label used for HTML5 banner backup image. Applicable to the following creative types: D... |
| `backupImageTargetWindow` | `TargetWindow` | Target window for backup image. Applicable to the following creative types: FLASH_INPAGE and HTML... |
| `clickTags` | `array<ClickTag>` | Click tags of the creative. For DISPLAY, FLASH_INPAGE, and HTML5_BANNER creatives, this is a subs... |
| `commercialId` | `string` | Industry standard ID assigned to creative for reach and frequency. Applicable to INSTREAM_VIDEO_R... |
| `companionCreatives` | `array<string>` | List of companion creatives assigned to an in-Stream video creative. Acceptable values include ID... |
| `compatibility` | `array<string>` | Compatibilities associated with this creative. This is a read-only field. DISPLAY and DISPLAY_INT... |
| `convertFlashToHtml5` | `boolean` | Whether Flash assets associated with the creative need to be automatically converted to HTML5. Th... |
| `counterCustomEvents` | `array<CreativeCustomEvent>` | List of counter events configured for the creative. For DISPLAY_IMAGE_GALLERY creatives, these ar... |
| `creativeAssets` | `array<CreativeAsset>` | Assets associated with a creative. Applicable to all but the following creative types: INTERNAL_R... |
| `creativeFieldAssignments` | `array<CreativeFieldAssignment>` | Creative field assignments for this creative. Applicable to all creative types. |
| `customKeyValues` | `array<string>` | Custom key-values for a Rich Media creative. Key-values let you customize the creative settings o... |
| `exitCustomEvents` | `array<CreativeCustomEvent>` | List of exit events configured for the creative. For DISPLAY and DISPLAY_IMAGE_GALLERY creatives,... |
| `fsCommand` | `FsCommand` | OpenWindow FSCommand of this creative. This lets the SWF file communicate with either Flash Playe... |
| `htmlCode` | `string` | HTML code for the creative. This is a required field when applicable. This field is ignored if ht... |
| `htmlCodeLocked` | `boolean` | Whether HTML code is generated by Campaign Manager or manually entered. Set to true to ignore cha... |
| `id` | `string` | ID of this creative. This is a read-only, auto-generated field. Applicable to all creative types. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this creative. This is a read-only field. Applicable to all creativ... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#creative". |
| `lastModifiedInfo` | `LastModifiedInfo` | Creative last modification information. This is a read-only field. Applicable to all creative types. |
| `latestTraffickedCreativeId` | `string` | Latest Studio trafficked creative ID associated with rich media and VPAID creatives. This is a re... |
| `mediaDescription` | `string` | Description of the audio or video ad. Applicable to the following creative types: all INSTREAM_VI... |
| `mediaDuration` | `number` | Creative audio or video duration in seconds. This is a read-only field. Applicable to the followi... |
| `name` | `string` | Required. Name of the creative. This must be less than 256 characters long. Applicable to all cre... |
| `obaIcon` | `ObaIcon` | Online behavioral advertising icon to be added to the creative. Applicable to the following creat... |
| `overrideCss` | `string` | Override CSS value for rich media creatives. Applicable to the following creative types: all RICH... |
| `progressOffset` | `VideoOffset` | Amount of time to play the video before counting a view. Applicable to the following creative typ... |
| `redirectUrl` | `string` | URL of hosted image or hosted video or another ad tag. For INSTREAM_VIDEO_REDIRECT creatives this... |
| `renderingId` | `string` | ID of current rendering version. This is a read-only field. Applicable to all creative types. |
| `renderingIdDimensionValue` | `DimensionValue` | Dimension value for the rendering ID of this creative. This is a read-only field. Applicable to a... |
| `requiredFlashPluginVersion` | `string` | The minimum required Flash plugin version for this creative. For example, 11.2.202.235. This is a... |
| `requiredFlashVersion` | `integer` | The internal Flash version for this creative as calculated by Studio. This is a read-only field. ... |
| `size` | `Size` | Size associated with this creative. When inserting or updating a creative either the size ID fiel... |
| `skipOffset` | `VideoOffset` | Amount of time to play the video before the skip button appears. Applicable to the following crea... |
| `skippable` | `boolean` | Whether the user can choose to skip the creative. Applicable to the following creative types: all... |
| `sslCompliant` | `boolean` | Whether the creative is SSL-compliant. This is a read-only field. Applicable to all creative types. |
| `sslOverride` | `boolean` | Whether creative should be treated as SSL compliant even if the system scan shows it's not. Appli... |
| `studioAdvertiserId` | `string` | Studio advertiser ID associated with rich media and VPAID creatives. This is a read-only field. A... |
| `studioCreativeId` | `string` | Studio creative ID associated with rich media and VPAID creatives. This is a read-only field. App... |
| `studioTraffickedCreativeId` | `string` | Studio trafficked creative ID associated with rich media and VPAID creatives. This is a read-only... |
| `subaccountId` | `string` | Subaccount ID of this creative. This field, if left unset, will be auto-generated for both insert... |
| `thirdPartyBackupImageImpressionsUrl` | `string` | Third-party URL used to record backup image impressions. Applicable to the following creative typ... |
| `thirdPartyRichMediaImpressionsUrl` | `string` | Third-party URL used to record rich media impressions. Applicable to the following creative types... |
| `thirdPartyUrls` | `array<ThirdPartyTrackingUrl>` | Third-party URLs for tracking in-stream creative events. Applicable to the following creative typ... |
| `timerCustomEvents` | `array<CreativeCustomEvent>` | List of timer events configured for the creative. For DISPLAY_IMAGE_GALLERY creatives, these are ... |
| `totalFileSize` | `string` | Combined size of all creative assets. This is a read-only field. Applicable to the following crea... |
| `type` | `string` | Required. Type of this creative. Applicable to all creative types. *Note:* FLASH_INPAGE, HTML5_BA... |
| `universalAdId` | `UniversalAdId` | A Universal Ad ID as per the VAST 4.0 spec. Applicable to the following creative types: INSTREAM_... |
| `version` | `integer` | The version number helps you keep track of multiple versions of your creative in your reports. Th... |

### `CreativeAsset`

Creative Asset.

| Property | Type | Description |
|----------|------|-------------|
| `actionScript3` | `boolean` | Whether ActionScript3 is enabled for the flash asset. This is a read-only field. Applicable to th... |
| `active` | `boolean` | Whether the video or audio asset is active. This is a read-only field for VPAID_NON_LINEAR_VIDEO ... |
| `additionalSizes` | `array<Size>` | Additional sizes associated with this creative asset. HTML5 asset generated by compatible softwar... |
| `alignment` | `string` | Possible alignments for an asset. This is a read-only field. Applicable to the following creative... |
| `artworkType` | `string` | Artwork type of rich media creative. This is a read-only field. Applicable to the following creat... |
| `assetIdentifier` | `CreativeAssetId` | Identifier of this asset. This is the same identifier returned during creative asset insert opera... |
| `audioBitRate` | `integer` | Audio stream bit rate in kbps. This is a read-only field. Applicable to the following creative ty... |
| `audioSampleRate` | `integer` | Audio sample bit rate in hertz. This is a read-only field. Applicable to the following creative t... |
| `backupImageExit` | `CreativeCustomEvent` | Exit event configured for the backup image. Applicable to the following creative types: all RICH_... |
| `bitRate` | `integer` | Detected bit-rate for audio or video asset. This is a read-only field. Applicable to the followin... |
| `childAssetType` | `string` | Rich media child asset type. This is a read-only field. Applicable to the following creative type... |
| `collapsedSize` | `Size` | Size of an asset when collapsed. This is a read-only field. Applicable to the following creative ... |
| `companionCreativeIds` | `array<string>` | List of companion creatives assigned to an in-stream video creative asset. Acceptable values incl... |
| `customStartTimeValue` | `integer` | Custom start time in seconds for making the asset visible. Applicable to the following creative t... |
| `detectedFeatures` | `array<string>` | List of feature dependencies for the creative asset that are detected by Campaign Manager. Featur... |
| `displayType` | `string` | Type of rich media asset. This is a read-only field. Applicable to the following creative types: ... |
| `duration` | `integer` | Duration in seconds for which an asset will be displayed. Applicable to the following creative ty... |
| `durationType` | `string` | Duration type for which an asset will be displayed. Applicable to the following creative types: a... |
| `expandedDimension` | `Size` | Detected expanded dimension for video asset. This is a read-only field. Applicable to the followi... |
| `fileSize` | `string` | File size associated with this creative asset. This is a read-only field. Applicable to all but t... |
| `flashVersion` | `integer` | Flash version of the asset. This is a read-only field. Applicable to the following creative types... |
| `frameRate` | `number` | Video frame rate for video asset in frames per second. This is a read-only field. Applicable to t... |
| `hideFlashObjects` | `boolean` | Whether to hide Flash objects flag for an asset. Applicable to the following creative types: all ... |
| `hideSelectionBoxes` | `boolean` | Whether to hide selection boxes flag for an asset. Applicable to the following creative types: al... |
| `horizontallyLocked` | `boolean` | Whether the asset is horizontally locked. This is a read-only field. Applicable to the following ... |
| `id` | `string` | Numeric ID of this creative asset. This is a required field and should not be modified. Applicabl... |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of the asset. This is a read-only, auto-generated field. |
| `mediaDuration` | `number` | Detected duration for audio or video asset. This is a read-only field. Applicable to the followin... |
| `mimeType` | `string` | Detected MIME type for audio or video asset. This is a read-only field. Applicable to the followi... |
| `offset` | `OffsetPosition` | Offset position for an asset in collapsed mode. This is a read-only field. Applicable to the foll... |
| `orientation` | `string` | Orientation of video asset. This is a read-only, auto-generated field. |
| `originalBackup` | `boolean` | Whether the backup asset is original or changed by the user in Campaign Manager. Applicable to th... |
| `politeLoad` | `boolean` | Whether this asset is used as a polite load asset. |
| `position` | `OffsetPosition` | Offset position for an asset. Applicable to the following creative types: all RICH_MEDIA. |
| `positionLeftUnit` | `string` | Offset left unit for an asset. This is a read-only field. Applicable to the following creative ty... |
| `positionTopUnit` | `string` | Offset top unit for an asset. This is a read-only field if the asset displayType is ASSET_DISPLAY... |
| `progressiveServingUrl` | `string` | Progressive URL for video asset. This is a read-only field. Applicable to the following creative ... |
| `pushdown` | `boolean` | Whether the asset pushes down other content. Applicable to the following creative types: all RICH... |
| `pushdownDuration` | `number` | Pushdown duration in seconds for an asset. Applicable to the following creative types: all RICH_M... |
| `role` | `string` | Role of the asset in relation to creative. Applicable to all but the following creative types: al... |
| `size` | `Size` | Size associated with this creative asset. This is a required field when applicable; however for I... |
| `sslCompliant` | `boolean` | Whether the asset is SSL-compliant. This is a read-only field. Applicable to all but the followin... |
| `startTimeType` | `string` | Initial wait time type before making the asset visible. Applicable to the following creative type... |
| `streamingServingUrl` | `string` | Streaming URL for video asset. This is a read-only field. Applicable to the following creative ty... |
| `transparency` | `boolean` | Whether the asset is transparent. Applicable to the following creative types: all RICH_MEDIA. Add... |
| `verticallyLocked` | `boolean` | Whether the asset is vertically locked. This is a read-only field. Applicable to the following cr... |
| `windowMode` | `string` | Window mode options for flash assets. Applicable to the following creative types: FLASH_INPAGE, R... |
| `zIndex` | `integer` | zIndex value of an asset. Applicable to the following creative types: all RICH_MEDIA.Additionally... |
| `zipFilename` | `string` | File name of zip file. This is a read-only field. Applicable to the following creative types: HTM... |
| `zipFilesize` | `string` | Size of zip file. This is a read-only field. Applicable to the following creative types: HTML5_BA... |

### `CreativeAssetId`

Creative Asset ID.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the creative asset. This is a required field while inserting an asset. After insertion, t... |
| `type` | `string` | Type of asset to upload. This is a required field. FLASH and IMAGE are no longer supported for ne... |

### `CreativeAssetMetadata`

CreativeAssets contains properties of a creative asset file which will be uploaded or has already been uploaded. Refer to the creative sample code for how to upload assets and insert a creative.

| Property | Type | Description |
|----------|------|-------------|
| `assetIdentifier` | `CreativeAssetId` | ID of the creative asset. This is a required field. |
| `clickTags` | `array<ClickTag>` | List of detected click tags for assets. This is a read-only, auto-generated field. This field is ... |
| `counterCustomEvents` | `array<CreativeCustomEvent>` | List of counter events configured for the asset. This is a read-only, auto-generated field and on... |
| `detectedFeatures` | `array<string>` | List of feature dependencies for the creative asset that are detected by Campaign Manager. Featur... |
| `exitCustomEvents` | `array<CreativeCustomEvent>` | List of exit events configured for the asset. This is a read-only, auto-generated field and only ... |
| `id` | `string` | Numeric ID of the asset. This is a read-only, auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the numeric ID of the asset. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#creativeAssetMeta... |
| `richMedia` | `boolean` | True if the uploaded asset is a rich media asset. This is a read-only, auto-generated field. |
| `timerCustomEvents` | `array<CreativeCustomEvent>` | List of timer events configured for the asset. This is a read-only, auto-generated field and only... |
| `warnedValidationRules` | `array<string>` | Rules validated during code generation that generated a warning. This is a read-only, auto-genera... |

### `CreativeAssignment`

Creative Assignment.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | Whether this creative assignment is active. When true, the creative will be included in the ad's ... |
| `applyEventTags` | `boolean` | Whether applicable event tags should fire when this creative assignment is rendered. If this valu... |
| `clickThroughUrl` | `ClickThroughUrl` | Click-through URL of the creative assignment. |
| `companionCreativeOverrides` | `array<CompanionClickThroughOverride>` | Companion creative overrides for this creative assignment. Applicable to video ads. |
| `creativeGroupAssignments` | `array<CreativeGroupAssignment>` | Creative group assignments for this creative assignment. Only one assignment per creative group n... |
| `creativeId` | `string` | ID of the creative to be assigned. This is a required field. |
| `creativeIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the creative. This is a read-only, auto-generated field. |
| `endTime` | `string` |  |
| `richMediaExitOverrides` | `array<RichMediaExitOverride>` | Rich media exit overrides for this creative assignment. Applicable when the creative type is any ... |
| `sequence` | `integer` | Sequence number of the creative assignment, applicable when the rotation type is CREATIVE_ROTATIO... |
| `sslCompliant` | `boolean` | Whether the creative to be assigned is SSL-compliant. This is a read-only field that is auto-gene... |
| `startTime` | `string` |  |
| `weight` | `integer` | Weight of the creative assignment, applicable when the rotation type is CREATIVE_ROTATION_TYPE_RA... |

### `CreativeClickThroughUrl`

Click-through URL

| Property | Type | Description |
|----------|------|-------------|
| `computedClickThroughUrl` | `string` | Read-only convenience field representing the actual URL that will be used for this click-through.... |
| `customClickThroughUrl` | `string` | Custom click-through URL. Applicable if the landingPageId field is left unset. |
| `landingPageId` | `string` | ID of the landing page for the click-through URL. |

### `CreativeCustomEvent`

Creative Custom Event.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserCustomEventId` | `string` | Unique ID of this event used by Reporting and Data Transfer. This is a read-only field. |
| `advertiserCustomEventName` | `string` | User-entered name for the event. |
| `advertiserCustomEventType` | `string` | Type of the event. This is a read-only field. |
| `artworkLabel` | `string` | Artwork label column, used to link events in Campaign Manager back to events in Studio. This is a... |
| `artworkType` | `string` | Artwork type used by the creative.This is a read-only field. |
| `exitClickThroughUrl` | `CreativeClickThroughUrl` | Exit click-through URL for the event. This field is used only for exit events. |
| `id` | `string` | ID of this event. This is a required field and should not be modified after insertion. |
| `popupWindowProperties` | `PopupWindowProperties` | Properties for rich media popup windows. This field is used only for exit events. |
| `targetType` | `string` | Target type used by the event. |
| `videoReportingId` | `string` | Video reporting ID, used to differentiate multiple videos in a single creative. This is a read-on... |

### `CreativeField`

Contains properties of a creative field.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this creative field. This is a read-only field that can be left blank. |
| `advertiserId` | `string` | Advertiser ID of this creative field. This is a required field on insertion. |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `id` | `string` | ID of this creative field. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#creativeField". |
| `name` | `string` | Name of this creative field. This is a required field and must be less than 256 characters long a... |
| `subaccountId` | `string` | Subaccount ID of this creative field. This is a read-only field that can be left blank. |

### `CreativeFieldAssignment`

Creative Field Assignment.

| Property | Type | Description |
|----------|------|-------------|
| `creativeFieldId` | `string` | ID of the creative field. |
| `creativeFieldValueId` | `string` | ID of the creative field value. |

### `CreativeFieldValue`

Contains properties of a creative field value.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of this creative field value. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#creativeFieldValue". |
| `value` | `string` | Value of this creative field value. It needs to be less than 256 characters in length and unique ... |

### `CreativeFieldValuesListResponse`

Creative Field Value List Response

| Property | Type | Description |
|----------|------|-------------|
| `creativeFieldValues` | `array<CreativeFieldValue>` | Creative field value collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#creativeFieldValu... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `CreativeFieldsListResponse`

Creative Field List Response

| Property | Type | Description |
|----------|------|-------------|
| `creativeFields` | `array<CreativeField>` | Creative field collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#creativeFieldsLis... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `CreativeGroup`

Contains properties of a creative group.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this creative group. This is a read-only field that can be left blank. |
| `advertiserId` | `string` | Advertiser ID of this creative group. This is a required field on insertion. |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `groupNumber` | `integer` | Subgroup of the creative group. Assign your creative groups to a subgroup in order to filter or m... |
| `id` | `string` | ID of this creative group. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#creativeGroup". |
| `name` | `string` | Name of this creative group. This is a required field and must be less than 256 characters long a... |
| `subaccountId` | `string` | Subaccount ID of this creative group. This is a read-only field that can be left blank. |

### `CreativeGroupAssignment`

Creative Group Assignment.

| Property | Type | Description |
|----------|------|-------------|
| `creativeGroupId` | `string` | ID of the creative group to be assigned. |
| `creativeGroupNumber` | `string` | Creative group number of the creative group assignment. |

### `CreativeGroupsListResponse`

Creative Group List Response

| Property | Type | Description |
|----------|------|-------------|
| `creativeGroups` | `array<CreativeGroup>` | Creative group collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#creativeGroupsLis... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `CreativeOptimizationConfiguration`

Creative optimization settings.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of this creative optimization config. This field is auto-generated when the campaign is insert... |
| `name` | `string` | Name of this creative optimization config. This is a required field and must be less than 129 cha... |
| `optimizationActivitys` | `array<OptimizationActivity>` | List of optimization activities associated with this configuration. |
| `optimizationModel` | `string` | Optimization model for this configuration. |

### `CreativeRotation`

Creative Rotation.

| Property | Type | Description |
|----------|------|-------------|
| `creativeAssignments` | `array<CreativeAssignment>` | Creative assignments in this creative rotation. |
| `creativeOptimizationConfigurationId` | `string` | Creative optimization configuration that is used by this ad. It should refer to one of the existi... |
| `type` | `string` | Type of creative rotation. Can be used to specify whether to use sequential or random rotation. |
| `weightCalculationStrategy` | `string` | Strategy for calculating weights. Used with CREATIVE_ROTATION_TYPE_RANDOM. |

### `CreativesListResponse`

Creative List Response

| Property | Type | Description |
|----------|------|-------------|
| `creatives` | `array<Creative>` | Creative collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#creativesListResp... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `CrossDimensionReachReportCompatibleFields`

Represents fields that are compatible to be selected for a report of type "CROSS_DIMENSION_REACH".

| Property | Type | Description |
|----------|------|-------------|
| `breakdown` | `array<Dimension>` | Dimensions which are compatible to be selected in the "breakdown" section of the report. |
| `dimensionFilters` | `array<Dimension>` | Dimensions which are compatible to be selected in the "dimensionFilters" section of the report. |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#crossDimensionReachReportCompatibleFields. |
| `metrics` | `array<Metric>` | Metrics which are compatible to be selected in the "metricNames" section of the report. |
| `overlapMetrics` | `array<Metric>` | Metrics which are compatible to be selected in the "overlapMetricNames" section of the report. |

### `CrossMediaReachReportCompatibleFields`

Represents fields that are compatible to be selected for a report of type "CROSS_MEDIA_REACH".

| Property | Type | Description |
|----------|------|-------------|
| `dimensionFilters` | `array<Dimension>` | Dimensions which are compatible to be selected in the "dimensionFilters" section of the report. |
| `dimensions` | `array<Dimension>` | Dimensions which are compatible to be selected in the "dimensions" section of the report. |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#crossMediaReachReportCompatibleFields. |
| `metrics` | `array<Metric>` | Metrics which are compatible to be selected in the "metricNames" section of the report. |

### `CustomFloodlightVariable`

A custom floodlight variable. Can be used in both batchinsert and batchupdate. Adding this in batchupdate will update or append the variable to the existing list.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#customFloodlightV... |
| `type` | `string` | The type of custom floodlight variable to supply a value for. These map to the "u[1-100]=" in the... |
| `value` | `string` | The value of the custom floodlight variable. The length of string must not exceed 100 characters. |

### `CustomRichMediaEvents`

Represents a Custom Rich Media Events group.

| Property | Type | Description |
|----------|------|-------------|
| `filteredEventIds` | `array<DimensionValue>` | List of custom rich media event IDs. Dimension values must be all of type dfa:richMediaEventTypeI... |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#customRichMediaEvents. |

### `CustomRule`

Contains custom rule information.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of this custom rule. |
| `priority` | `integer` | Optional. Priority of the custom rule. |
| `ruleBlocks` | `array<RuleBlock>` | Optional. A list of field filter, the custom rule will apply. |

### `CustomValueField`

Contains custom value field information.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `integer` | Optional. Field ID in the element. |
| `requestKey` | `string` | Optional. Custom key used to match for auto filtering. |

### `CustomViewabilityMetric`

Custom Viewability Metric

| Property | Type | Description |
|----------|------|-------------|
| `configuration` | `CustomViewabilityMetricConfiguration` | Configuration of the custom viewability metric. |
| `id` | `string` | ID of the custom viewability metric. |
| `name` | `string` | Name of the custom viewability metric. |

### `CustomViewabilityMetricConfiguration`

The attributes, like playtime and percent onscreen, that define the Custom Viewability Metric.

| Property | Type | Description |
|----------|------|-------------|
| `audible` | `boolean` | Whether the video must be audible to count an impression. |
| `timeMillis` | `integer` | The time in milliseconds the video must play for the Custom Viewability Metric to count an impres... |
| `timePercent` | `integer` | The percentage of video that must play for the Custom Viewability Metric to count an impression. ... |
| `viewabilityPercent` | `integer` | The percentage of video that must be on screen for the Custom Viewability Metric to count an impr... |

### `DateRange`

Represents a date range.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `string` |  |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#dateRange. |
| `relativeDateRange` | `string` | The date range relative to the date of when the report is run. |
| `startDate` | `string` |  |

### `DayPartTargeting`

Day Part Targeting.

| Property | Type | Description |
|----------|------|-------------|
| `daysOfWeek` | `array<string>` | Days of the week when the ad will serve. Acceptable values are: - "SUNDAY" - "MONDAY" - "TUESDAY"... |
| `hoursOfDay` | `array<integer>` | Hours of the day when the ad will serve, where 0 is midnight to 1 AM and 23 is 11 PM to midnight.... |
| `userLocalTime` | `boolean` | Whether or not to use the user's local time. If false, the America/New York time zone applies. |

### `DeepLink`

Contains information about a landing page deep link.

| Property | Type | Description |
|----------|------|-------------|
| `appUrl` | `string` | The URL of the mobile app being linked to. |
| `fallbackUrl` | `string` | The fallback URL. This URL will be served to users who do not have the mobile app installed. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#deepLink". |
| `mobileApp` | `MobileApp` | The mobile app targeted by this deep link. |
| `remarketingListIds` | `array<string>` | Ads served to users on these remarketing lists will use this deep link. Applicable when mobileApp... |

### `DefaultClickThroughEventTagProperties`

Properties of inheriting and overriding the default click-through event tag. A campaign may override the event tag defined at the advertiser level, and an ad may also override the campaign's setting further.

| Property | Type | Description |
|----------|------|-------------|
| `defaultClickThroughEventTagId` | `string` | ID of the click-through event tag to apply to all ads in this entity's scope. |
| `overrideInheritedEventTag` | `boolean` | Whether this entity should override the inherited default click-through event tag with its own de... |

### `DeliverySchedule`

Delivery Schedule.

| Property | Type | Description |
|----------|------|-------------|
| `frequencyCap` | `FrequencyCap` | Limit on the number of times an individual user can be served the ad within a specified period of... |
| `hardCutoff` | `boolean` | Whether or not hard cutoff is enabled. If true, the ad will not serve after the end date and time... |
| `impressionRatio` | `string` | Impression ratio for this ad. This ratio determines how often each ad is served relative to the o... |
| `priority` | `string` | Serving priority of an ad, with respect to other ads. The lower the priority number, the greater ... |

### `DependentFieldValue`

Contains dependent field value information.

| Property | Type | Description |
|----------|------|-------------|
| `elementId` | `string` | Optional. The ID of the element that value's field will match against. |
| `fieldId` | `integer` | Optional. The field id of the dependent field. |

### `DfareportingStudioCreativeAssetsInsertRequest`

Request message for DfareportingStudioCreativeAssets.Insert.

| Property | Type | Description |
|----------|------|-------------|
| `studioAccountId` | `string` | Optional. Studio account ID of the studio creative asset. It is a optional. |
| `studioAdvertiserId` | `string` | Required. Studio advertiser ID of the studio creative asset. It is a required field on insertion. |
| `studioCreativeId` | `string` | Optional. Studio creative ID of the studio creative asset. It is a optional field. If it is set, ... |

### `DfpSettings`

Google Ad Manager Settings

| Property | Type | Description |
|----------|------|-------------|
| `dfpNetworkCode` | `string` | Ad Manager network code for this directory site. |
| `dfpNetworkName` | `string` | Ad Manager network name for this directory site. |
| `programmaticPlacementAccepted` | `boolean` | Whether this directory site accepts programmatic placements. |
| `pubPaidPlacementAccepted` | `boolean` | Whether this directory site accepts publisher-paid tags. |
| `publisherPortalOnly` | `boolean` | Whether this directory site is available only via Publisher Portal. |

### `Dimension`

Represents a dimension.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of resource this is, in this case dfareporting#dimension. |
| `name` | `string` | The dimension name, e.g. advertiser |

### `DimensionFilter`

Represents a dimension filter.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionName` | `string` | The name of the dimension to filter. |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#dimensionFilter. |
| `value` | `string` | The value of the dimension to filter. |

### `DimensionValue`

Represents a DimensionValue resource.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionName` | `string` | The name of the dimension. |
| `etag` | `string` | The eTag of this response for caching purposes. |
| `id` | `string` | The ID associated with the value if available. |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#dimensionValue. |
| `matchType` | `string` | Determines how the 'value' field is matched when filtering. If not specified, defaults to EXACT. ... |
| `value` | `string` | The value of the dimension. |

### `DimensionValueList`

Represents the list of DimensionValue resources.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | The eTag of this response for caching purposes. |
| `items` | `array<DimensionValue>` | The dimension values returned in this response. |
| `kind` | `string` | The kind of list this is, in this case dfareporting#dimensionValueList. |
| `nextPageToken` | `string` | Continuation token used to page through dimension values. To retrieve the next page of results, s... |

### `DimensionValueRequest`

Represents a DimensionValuesRequest.

| Property | Type | Description |
|----------|------|-------------|
| `dimensionName` | `string` | The name of the dimension for which values should be requested. |
| `endDate` | `string` |  |
| `filters` | `array<DimensionFilter>` | The list of filters by which to filter values. The filters are ANDed. |
| `kind` | `string` | The kind of request this is, in this case dfareporting#dimensionValueRequest . |
| `startDate` | `string` |  |

### `DirectorySite`

DirectorySites contains properties of a website from the Site Directory. Sites need to be added to an account via the Sites resource before they can be assigned to a placement.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of this directory site. This is a read-only, auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this directory site. This is a read-only, auto-generated field. |
| `inpageTagFormats` | `array<string>` | Tag types for regular placements. Acceptable values are: - "STANDARD" - "IFRAME_JAVASCRIPT_INPAGE... |
| `interstitialTagFormats` | `array<string>` | Tag types for interstitial placements. Acceptable values are: - "IFRAME_JAVASCRIPT_INTERSTITIAL" ... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#directorySite". |
| `name` | `string` | Name of this directory site. |
| `publisherSpecificationId` | `string` | Output only. Default publisher specification ID of video placements under this directory site. Po... |
| `settings` | `DirectorySiteSettings` | Directory site settings. |
| `url` | `string` | URL of this directory site. |

### `DirectorySiteSettings`

Directory Site Settings

| Property | Type | Description |
|----------|------|-------------|
| `activeViewOptOut` | `boolean` | Whether this directory site has disabled active view creatives. |
| `dfpSettings` | `DfpSettings` | Directory site Ad Manager settings. |
| `instreamVideoPlacementAccepted` | `boolean` | Whether this site accepts in-stream video ads. |
| `interstitialPlacementAccepted` | `boolean` | Whether this site accepts interstitial ads. |

### `DirectorySitesListResponse`

Directory Site List Response

| Property | Type | Description |
|----------|------|-------------|
| `directorySites` | `array<DirectorySite>` | Directory site collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#directorySitesLis... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `DynamicFeed`

*Beta:* This API resource is available only to a very limited number of customers. If you'd like to use this resource, please reach out to your Google sales representative. Contains dynamic feed information.

| Property | Type | Description |
|----------|------|-------------|
| `contentSource` | `ContentSource` | Required. The content source of the dynamic feed. This is a required field. |
| `createInfo` | `LastModifiedInfo` | Output only. The creation timestamp of the dynamic feed. This is a read-only field. |
| `dynamicFeedId` | `string` | Output only. Unique ID of this dynamic feed. This is a read-only, auto-generated field. |
| `dynamicFeedName` | `string` | Optional. Name of this dynamic feed. It is defaulted to content source file name if not provided. |
| `element` | `Element` | Required. The element of the dynamic feed that is to specify the schema of the feed. This is a re... |
| `feedIngestionStatus` | `FeedIngestionStatus` | Output only. The ingestion status of the dynamic feed. This is a read-only field. |
| `feedSchedule` | `FeedSchedule` | Optional. The schedule of the dynamic feed. It can be set if the feed is published. |
| `hasPublished` | `boolean` | Output only. Indicates whether the dynamic feed has a published version. This is a read-only field. |
| `lastModifiedInfo` | `LastModifiedInfo` | Output only. The last modified timestamp of the dynamic feed. This is a read-only field. |
| `status` | `string` | Output only. The status of the feed. It is a read-only field that depends on the the feed ingesti... |
| `studioAdvertiserId` | `string` | Required. Advertiser ID of this dynamic feed. This is a required field. |

### `DynamicFeedsInsertRequest`

Dynamic profile ID is required for dynamic feed insert as the current GPA API only can create a dynamic feed under profile context,even though the dynamic feed itself don't need the dynamic profile id.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicFeed` | `DynamicFeed` | Required. Dynamic feed to insert. |
| `dynamicProfileId` | `string` | Required. Dynamic profile ID of the inserted dynamic feed. |

### `DynamicProfile`

*Beta:* This API resource is available only to a very limited number of customers. If you'd like to use this resource, please reach out to your Google sales representative. Contains dynamic profile information.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `DynamicProfileVersion` | Optional. Active version of the dynamic profile. |
| `archiveStatus` | `string` | Optional. Archive status of this dynamic profile. |
| `createInfo` | `LastModifiedInfo` | Output only. The creation timestamp of the dynamic profile. This is a read-only field. |
| `description` | `string` | Optional. Description of this dynamic profile. |
| `draft` | `DynamicProfileVersion` | Optional. Draft version of the dynamic profile. |
| `dynamicProfileId` | `string` | Output only. Unique ID of this dynamic profile. This is a read-only, auto-generated field. |
| `kind` | `string` | Output only. Identifies what kind of resource this is. Value: the fixed string "dfareporting#dyna... |
| `lastModifiedInfo` | `LastModifiedInfo` | Output only. The last modified timestamp of the dynamic profile. This is a read-only field. |
| `name` | `string` | Required. Identifier. Name of this dynamic profile. This is a required field and must be less tha... |
| `status` | `string` | Optional. Status of this dynamic profile. |
| `studioAdvertiserId` | `string` | Required. Advertiser ID of this dynamic profile. This is a required field on insertion. |

### `DynamicProfileFeedSettings`

Contains dynamic profile specific settings for an associated dynamic feed.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicFeedId` | `string` | Optional. Dynamic feed ID associated with dynamic profile version. |
| `dynamicRules` | `DynamicRules` | Optional. Dynamic rules for row selection for the given dynamic feed in the given dynamic profile. |
| `quantity` | `integer` | Optional. The number of this dynamic feed rows needed by the dynamic profile, default value is 1.... |

### `DynamicProfileGenerateCodeResponse`

Response message for DfareportingDynamicProfiles.GenerateCode.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Generated code for the dynamic profile. The code will need to be unescaped. |

### `DynamicProfileVersion`

Contains dynamic profile version information.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicProfileFeedSettings` | `array<DynamicProfileFeedSettings>` | Optional. Associated dynamic feeds and their settings (including dynamic rules) for this dynamic ... |
| `versionId` | `string` | Output only. Version ID of this dynamic profile version. This is a read-only, auto-generated fiel... |

### `DynamicRules`

Contains dynamic rules information.

| Property | Type | Description |
|----------|------|-------------|
| `autoTargetedFieldIds` | `array<integer>` | Optional. List of field IDs in this element that should be auto-targeted. Applicable when rule ty... |
| `customRules` | `array<CustomRule>` | Optional. The custom rules of the dynamic feed, only applicable when rule type is CUSTOM. |
| `customValueFields` | `array<CustomValueField>` | Optional. Mapping between field ID and custom key that are used to match for auto filtering. |
| `proximityFilter` | `ProximityFilter` | Optional. The proximity targeting rules of the dynamic feed, only applicable when rule type is PR... |
| `remarketingValueAttributes` | `array<RemarketingValueAttribute>` | Optional. The link between an element field ID and a list of user attribute IDs. |
| `rotationType` | `string` | Optional. The rotation type to select from eligible rows. Rotation type only apply when the filte... |
| `ruleType` | `string` | Optional. The type of the rule, the default value is OPEN. |
| `weightFieldId` | `integer` | Optional. The field ID for the feed that will be used for weighted rotation, only applicable when... |

### `DynamicTargetingKey`

Contains properties of a dynamic targeting key. Dynamic targeting keys are unique, user-friendly labels, created at the advertiser level in DCM, that can be assigned to ads, creatives, and placements and used for targeting with Studio dynamic creatives. Use these labels instead of numeric Campaign Manager IDs (such as placement IDs) to save time and avoid errors in your dynamic feeds.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#dynamicTargetingK... |
| `name` | `string` | Name of this dynamic targeting key. This is a required field. Must be less than 256 characters lo... |
| `objectId` | `string` | ID of the object of this dynamic targeting key. This is a required field. |
| `objectType` | `string` | Type of the object of this dynamic targeting key. This is a required field. |

### `DynamicTargetingKeysListResponse`

Dynamic Targeting Key List Response

| Property | Type | Description |
|----------|------|-------------|
| `dynamicTargetingKeys` | `array<DynamicTargetingKey>` | Dynamic targeting key collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#dynamicTargetingK... |

### `Element`

Contains the element of the dynamic feed.

| Property | Type | Description |
|----------|------|-------------|
| `activeFieldId` | `integer` | Optional. The field ID to specify the active field in the feed. |
| `createInfo` | `LastModifiedInfo` | Output only. The creation timestamp of the element. This is a read-only field. |
| `defaultFieldId` | `integer` | Optional. The field ID to specify the field that represents the default field in the feed. |
| `elementName` | `string` | Optional. The name of the element. It is defaulted to resource file name if not provided. |
| `endTimestampFieldId` | `integer` | Optional. The field ID to specify the field that represents the end timestamp. Only applicable if... |
| `externalIdFieldId` | `integer` | Required. The field ID to specify the field used for uniquely identifying the feed row. This is a... |
| `feedFields` | `array<FeedField>` | Required. The list of fields of the element. The field order and name should match the meta data ... |
| `isLocalTimestamp` | `boolean` | Optional. Whether the start and end timestamp is local timestamp. The default value is false whic... |
| `lastModifiedInfo` | `LastModifiedInfo` | Output only. The last modified timestamp of the element. This is a read-only field. |
| `proximityTargetingFieldId` | `integer` | Optional. The field ID that specify field used for proximity targeting. |
| `reportingLabelFieldId` | `integer` | Required. The field ID to specify the field used for dynamic reporting in Campaign Manager 360. |
| `startTimestampFieldId` | `integer` | Optional. The field ID to specify the field that represents the start timestamp. Only applicable ... |

### `EncryptionInfo`

A description of how user IDs are encrypted.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionEntityId` | `string` | The encryption entity ID. This should match the encryption configuration for ad serving or Data T... |
| `encryptionEntityType` | `string` | The encryption entity type. This should match the encryption configuration for ad serving or Data... |
| `encryptionSource` | `string` | Describes whether the encrypted cookie was received from ad serving (the %m macro) or from Data T... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#encryptionInfo". |

### `EventTag`

Contains properties of an event tag.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this event tag. This is a read-only field that can be left blank. |
| `advertiserId` | `string` | Advertiser ID of this event tag. This field or the campaignId field is required on insertion. |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `campaignId` | `string` | Campaign ID of this event tag. This field or the advertiserId field is required on insertion. |
| `campaignIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the campaign. This is a read-only, auto-generated field. |
| `enabledByDefault` | `boolean` | Whether this event tag should be automatically enabled for all of the advertiser's campaigns and ... |
| `excludeFromAdxRequests` | `boolean` | Whether to remove this event tag from ads that are trafficked through Display & Video 360 to Ad E... |
| `id` | `string` | ID of this event tag. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#eventTag". |
| `name` | `string` | Name of this event tag. This is a required field and must be less than 256 characters long. |
| `siteFilterType` | `string` | Site filter type for this event tag. If no type is specified then the event tag will be applied t... |
| `siteIds` | `array<string>` | Filter list of site IDs associated with this event tag. The siteFilterType determines whether thi... |
| `sslCompliant` | `boolean` | Whether this tag is SSL-compliant or not. This is a read-only field. |
| `status` | `string` | Status of this event tag. Must be ENABLED for this event tag to fire. This is a required field. |
| `subaccountId` | `string` | Subaccount ID of this event tag. This is a read-only field that can be left blank. |
| `type` | `string` | Event tag type. Can be used to specify whether to use a third-party pixel, a third-party JavaScri... |
| `url` | `string` | Payload URL for this event tag. The URL on a click-through event tag should have a landing page U... |
| `urlEscapeLevels` | `integer` | Number of times the landing page URL should be URL-escaped before being appended to the click-thr... |

### `EventTagOverride`

Event tag override information.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether this override is enabled. |
| `id` | `string` | ID of this event tag override. This is a read-only, auto-generated field. |

### `EventTagsListResponse`

Event Tag List Response

| Property | Type | Description |
|----------|------|-------------|
| `eventTags` | `array<EventTag>` | Event tag collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#eventTagsListResp... |

### `FeedField`

Each field of the element. This is a required field.

| Property | Type | Description |
|----------|------|-------------|
| `defaultValue` | `string` | Optional. The default value of the field. |
| `filterable` | `boolean` | Optional. Whether the field is filterable. Could be set as true when the field type is any of the... |
| `id` | `integer` | Required. The ID of the field. The ID is based on the column index starting from 0, and it should... |
| `name` | `string` | Required. The name of the field. |
| `renderable` | `boolean` | Optional. Whether the field is able to display. Could be set as true when the field type is not i... |
| `required` | `boolean` | Optional. Whether the field is required and should not be empty in the feed. Could be set as true... |
| `type` | `string` | Required. The type of the field. |

### `FeedIngestionStatus`

Contains the ingestion status of the dynamic feed. Feed ingestion is an asynchronous process. If the feed create request is successful, feed ingestion will be processed in the background, including validation, assets retrieval, and saving the data from the resource link. The processing time is dependent on the data size in the resource link. This read-only status field contains the current stage of that processing and its ingestion state.

| Property | Type | Description |
|----------|------|-------------|
| `ingestionErrorRecords` | `array<IngestionErrorRecord>` | Output only. The ingestion error records of the feed. |
| `ingestionStatus` | `IngestionStatus` | Output only. The ingestion status of the feed. |
| `state` | `string` | Output only. The processing state of the feed. |

### `FeedSchedule`

Contains the schedule of the dynamic feed.

| Property | Type | Description |
|----------|------|-------------|
| `repeatValue` | `string` | Optional. The number of times the feed retransforms within one day. This is a required field if t... |
| `scheduleEnabled` | `boolean` | Optional. Whether the schedule is enabled. |
| `startHour` | `string` | Optional. The hour of the day to start the feed. It is applicable if the repeat value is equal to... |
| `startMinute` | `string` | Optional. The minute of the hour to start the feed. It is applicable if the repeat value is equal... |
| `timeZone` | `string` | Optional. The time zone to schedule the feed. It is applicable if the repeat value is equal to 1.... |

### `FieldError`

Contains the field error of the dynamic feed.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `integer` | Output only. The ID of the field. |
| `fieldName` | `string` | Output only. The name of the field. |
| `fieldValues` | `array<string>` | Output only. The list of values of the field. |
| `ingestionError` | `string` | Output only. The ingestion error of the field. |
| `isError` | `boolean` | Output only. Incidcates whether the field has error or warning. |

### `FieldFilter`

Contains field filter information.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Optional. The boolean values, only applicable when rhs_value_type is BOOL. |
| `dependentFieldValue` | `DependentFieldValue` | Optional. The dependent values, only applicable when rhs_value_type is DEPENDENT. |
| `fieldId` | `integer` | Optional. The field ID on the left hand side of the expression. |
| `matchType` | `string` | Optional. Left hand side of the expression match type. |
| `requestValue` | `RequestValue` | Optional. The request value, only applicable when rhs_value_type is REQUEST. |
| `stringValue` | `string` | Optional. The string value, only applicable when rhs_value_type is STRING. |
| `valueType` | `string` | Optional. Right hand side of the expression. |

### `File`

Represents a File resource. A file contains the metadata for a report run. It shows the status of the run and holds the URLs to the generated report data if the run is finished and the status is "REPORT_AVAILABLE".

| Property | Type | Description |
|----------|------|-------------|
| `dateRange` | `DateRange` | The date range for which the file has report data. The date range will always be the absolute dat... |
| `etag` | `string` | Etag of this resource. |
| `fileName` | `string` | The filename of the file. |
| `format` | `string` | The output format of the report. Only available once the file is available. |
| `id` | `string` | The unique ID of this report file. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#file". |
| `lastModifiedTime` | `string` | The timestamp in milliseconds since epoch when this file was last modified. |
| `reportId` | `string` | The ID of the report this file was generated from. |
| `status` | `string` | The status of the report file. |
| `urls` | `object` | The URLs where the completed report file can be downloaded. |

### `FileList`

List of files for a report.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `items` | `array<File>` | The files returned in this response. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#fileList". |
| `nextPageToken` | `string` | Continuation token used to page through files. To retrieve the next page of results, set the next... |

### `FloodlightActivitiesGenerateTagResponse`

Floodlight Activity GenerateTag Response

| Property | Type | Description |
|----------|------|-------------|
| `floodlightActivityTag` | `string` | Generated tag for this Floodlight activity. For Google tags, this is the event snippet. |
| `globalSiteTagGlobalSnippet` | `string` | The global snippet section of a Google tag. The Google tag sets new cookies on your domain, which... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#floodlightActivit... |

### `FloodlightActivitiesListResponse`

Floodlight Activity List Response

| Property | Type | Description |
|----------|------|-------------|
| `floodlightActivities` | `array<FloodlightActivity>` | Floodlight activity collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#floodlightActivit... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `FloodlightActivity`

Contains properties of a Floodlight activity.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this floodlight activity. This is a read-only field that can be left blank. |
| `advertiserId` | `string` | Advertiser ID of this floodlight activity. If this field is left blank, the value will be copied ... |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `attributionEnabled` | `boolean` | Whether the activity is enabled for attribution. |
| `cacheBustingType` | `string` | Code type used for cache busting in the generated tag. Applicable only when floodlightActivityGro... |
| `conversionCategory` | `string` | Required. The conversion category of the activity. |
| `countingMethod` | `string` | Counting method for conversions for this floodlight activity. This is a required field. |
| `defaultTags` | `array<FloodlightActivityDynamicTag>` | Dynamic floodlight tags. |
| `expectedUrl` | `string` | URL where this tag will be deployed. If specified, must be less than 256 characters long. |
| `floodlightActivityGroupId` | `string` | Floodlight activity group ID of this floodlight activity. This is a required field. |
| `floodlightActivityGroupName` | `string` | Name of the associated floodlight activity group. This is a read-only field. |
| `floodlightActivityGroupTagString` | `string` | Tag string of the associated floodlight activity group. This is a read-only field. |
| `floodlightActivityGroupType` | `string` | Type of the associated floodlight activity group. This is a read-only field. |
| `floodlightConfigurationId` | `string` | Floodlight configuration ID of this floodlight activity. If this field is left blank, the value w... |
| `floodlightConfigurationIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated f... |
| `floodlightTagType` | `string` | The type of Floodlight tag this activity will generate. This is a required field. |
| `id` | `string` | ID of this floodlight activity. This is a read-only, auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this floodlight activity. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#floodlightActivity". |
| `name` | `string` | Name of this floodlight activity. This is a required field. Must be less than 129 characters long... |
| `notes` | `string` | General notes or implementation instructions for the tag. |
| `publisherTags` | `array<FloodlightActivityPublisherDynamicTag>` | Publisher dynamic floodlight tags. |
| `secure` | `boolean` | Whether this tag should use SSL. |
| `sslCompliant` | `boolean` | Whether the floodlight activity is SSL-compliant. This is a read-only field, its value detected b... |
| `sslRequired` | `boolean` | Whether this floodlight activity must be SSL-compliant. |
| `status` | `string` | The status of the activity. This can only be set to ACTIVE or ARCHIVED_AND_DISABLED. The ARCHIVED... |
| `subaccountId` | `string` | Subaccount ID of this floodlight activity. This is a read-only field that can be left blank. |
| `tagFormat` | `string` | Tag format type for the floodlight activity. If left blank, the tag format will default to HTML. |
| `tagString` | `string` | Value of the cat= parameter in the floodlight tag, which the ad servers use to identify the activ... |
| `userDefinedVariableTypes` | `array<string>` | List of the user-defined variables used by this conversion tag. These map to the "u[1-100]=" in t... |

### `FloodlightActivityDynamicTag`

Dynamic Tag

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of this dynamic tag. This is a read-only, auto-generated field. |
| `name` | `string` | Name of this tag. |
| `tag` | `string` | Tag code. |

### `FloodlightActivityGroup`

Contains properties of a Floodlight activity group.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this floodlight activity group. This is a read-only field that can be left blank. |
| `advertiserId` | `string` | Advertiser ID of this floodlight activity group. If this field is left blank, the value will be c... |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `floodlightConfigurationId` | `string` | Floodlight configuration ID of this floodlight activity group. This is a required field. |
| `floodlightConfigurationIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated f... |
| `id` | `string` | ID of this floodlight activity group. This is a read-only, auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this floodlight activity group. This is a read-only, auto-generated... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#floodlightActivit... |
| `name` | `string` | Name of this floodlight activity group. This is a required field. Must be less than 65 characters... |
| `subaccountId` | `string` | Subaccount ID of this floodlight activity group. This is a read-only field that can be left blank. |
| `tagString` | `string` | Value of the type= parameter in the floodlight tag, which the ad servers use to identify the acti... |
| `type` | `string` | Type of the floodlight activity group. This is a required field that is read-only after insertion. |

### `FloodlightActivityGroupsListResponse`

Floodlight Activity Group List Response

| Property | Type | Description |
|----------|------|-------------|
| `floodlightActivityGroups` | `array<FloodlightActivityGroup>` | Floodlight activity group collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#floodlightActivit... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `FloodlightActivityPublisherDynamicTag`

Publisher Dynamic Tag

| Property | Type | Description |
|----------|------|-------------|
| `clickThrough` | `boolean` | Whether this tag is applicable only for click-throughs. |
| `directorySiteId` | `string` | Directory site ID of this dynamic tag. This is a write-only field that can be used as an alternat... |
| `dynamicTag` | `FloodlightActivityDynamicTag` | Dynamic floodlight tag. |
| `siteId` | `string` | Site ID of this dynamic tag. |
| `siteIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the site. This is a read-only, auto-generated field. |
| `viewThrough` | `boolean` | Whether this tag is applicable only for view-throughs. |

### `FloodlightConfiguration`

Contains properties of a Floodlight configuration.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this floodlight configuration. This is a read-only field that can be left blank. |
| `advertiserId` | `string` | Advertiser ID of the parent advertiser of this floodlight configuration. |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `analyticsDataSharingEnabled` | `boolean` | Whether advertiser data is shared with Google Analytics. |
| `customViewabilityMetric` | `CustomViewabilityMetric` | Custom Viewability metric for the floodlight configuration. |
| `exposureToConversionEnabled` | `boolean` | Whether the exposure-to-conversion report is enabled. This report shows detailed pathway informat... |
| `firstDayOfWeek` | `string` |  |
| `id` | `string` | ID of this floodlight configuration. This is a read-only, auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this floodlight configuration. This is a read-only, auto-generated ... |
| `inAppAttributionTrackingEnabled` | `boolean` | Whether in-app attribution tracking is enabled. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#floodlightConfigu... |
| `lookbackConfiguration` | `LookbackConfiguration` | Lookback window settings for this floodlight configuration. |
| `naturalSearchConversionAttributionOption` | `string` | Types of attribution options for natural search conversions. |
| `omnitureSettings` | `OmnitureSettings` | Settings for Campaign Manager Omniture integration. |
| `subaccountId` | `string` | Subaccount ID of this floodlight configuration. This is a read-only field that can be left blank. |
| `tagSettings` | `TagSettings` | Configuration settings for dynamic and image floodlight tags. |
| `thirdPartyAuthenticationTokens` | `array<ThirdPartyAuthenticationToken>` | List of third-party authentication tokens enabled for this configuration. |
| `userDefinedVariableConfigurations` | `array<UserDefinedVariableConfiguration>` | List of user defined variables enabled for this configuration. |

### `FloodlightConfigurationsListResponse`

Floodlight Configuration List Response

| Property | Type | Description |
|----------|------|-------------|
| `floodlightConfigurations` | `array<FloodlightConfiguration>` | Floodlight configuration collection. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#floodlightConfigu... |

### `FloodlightReportCompatibleFields`

Represents fields that are compatible to be selected for a report of type "FlOODLIGHT".

| Property | Type | Description |
|----------|------|-------------|
| `dimensionFilters` | `array<Dimension>` | Dimensions which are compatible to be selected in the "dimensionFilters" section of the report. |
| `dimensions` | `array<Dimension>` | Dimensions which are compatible to be selected in the "dimensions" section of the report. |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#floodlightReportCompatibleFields. |
| `metrics` | `array<Metric>` | Metrics which are compatible to be selected in the "metricNames" section of the report. |

### `FrequencyCap`

Frequency Cap.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Duration of time, in seconds, for this frequency cap. The maximum duration is 90 days. Acceptable... |
| `impressions` | `string` | Number of times an individual user can be served the ad within the specified duration. Acceptable... |

### `FsCommand`

FsCommand.

| Property | Type | Description |
|----------|------|-------------|
| `left` | `integer` | Distance from the left of the browser.Applicable when positionOption is DISTANCE_FROM_TOP_LEFT_CO... |
| `positionOption` | `string` | Position in the browser where the window will open. |
| `top` | `integer` | Distance from the top of the browser. Applicable when positionOption is DISTANCE_FROM_TOP_LEFT_CO... |
| `windowHeight` | `integer` | Height of the window. |
| `windowWidth` | `integer` | Width of the window. |

### `GeoTargeting`

Geographical Targeting.

| Property | Type | Description |
|----------|------|-------------|
| `cities` | `array<City>` | Cities to be targeted. For each city only dartId is required. The other fields are populated auto... |
| `countries` | `array<Country>` | Countries to be targeted or excluded from targeting, depending on the setting of the excludeCount... |
| `excludeCountries` | `boolean` | Whether or not to exclude the countries in the countries field from targeting. If false, the coun... |
| `metros` | `array<Metro>` | Metros to be targeted. For each metro only dmaId is required. The other fields are populated auto... |
| `postalCodes` | `array<PostalCode>` | Postal codes to be targeted. For each postal code only id is required. The other fields are popul... |
| `regions` | `array<Region>` | Regions to be targeted. For each region only dartId is required. The other fields are populated a... |

### `IngestionErrorRecord`

Contains the ingestion error record of the dynamic feed. limited to 100 records.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<FieldError>` | Output only. The list of field errors of the ingestion error record. |
| `recordId` | `string` | Output only. The record ID of the ingestion error record. |

### `IngestionStatus`

Contains the ingestion status of the dynamic feed.

| Property | Type | Description |
|----------|------|-------------|
| `numActiveRows` | `string` | Output only. The number of active rows in the feed. |
| `numRowsProcessed` | `string` | Output only. The number of rows processed in the feed. |
| `numRowsTotal` | `string` | Output only. The total number of rows in the feed. |
| `numRowsWithErrors` | `string` | Output only. The number of rows with errors in the feed. |
| `numWarningsTotal` | `string` | Output only. The total number of warnings in the feed. |

### `Invoice`

Contains information about a single invoice

| Property | Type | Description |
|----------|------|-------------|
| `campaign_summaries` | `array<CampaignSummary>` | The list of summarized campaign information associated with this invoice. |
| `correctedInvoiceId` | `string` | The originally issued invoice that is being adjusted by this invoice, if applicable. May appear o... |
| `currencyCode` | `string` | Invoice currency code in ISO 4217 format. |
| `dueDate` | `string` | The invoice due date. |
| `id` | `string` | ID of this invoice. |
| `invoiceType` | `string` | The type of invoice document. |
| `issueDate` | `string` | The date when the invoice was issued. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#invoice". |
| `paymentsAccountId` | `string` | The ID of the payments account the invoice belongs to. Appears on the invoice PDF as *Billing Acc... |
| `paymentsProfileId` | `string` | The ID of the payments profile the invoice belongs to. Appears on the invoice PDF as *Billing ID*. |
| `pdfUrl` | `string` | The URL to download a PDF copy of the invoice. Note that this URL is user specific and requires a... |
| `purchaseOrderNumber` | `string` | Purchase order number associated with the invoice. |
| `replacedInvoiceIds` | `array<string>` | The originally issued invoice(s) that is being cancelled by this invoice, if applicable. May appe... |
| `serviceEndDate` | `string` | The invoice service end date. |
| `serviceStartDate` | `string` | The invoice service start date. |
| `subtotalAmountMicros` | `string` | The pre-tax subtotal amount, in micros of the invoice's currency. |
| `totalAmountMicros` | `string` | The invoice total amount, in micros of the invoice's currency. |
| `totalTaxAmountMicros` | `string` | The sum of all taxes in invoice, in micros of the invoice's currency. |

### `KeyValueTargetingExpression`

Key Value Targeting Expression.

| Property | Type | Description |
|----------|------|-------------|
| `expression` | `string` | Keyword expression being targeted by the ad. |

### `LandingPage`

Contains information about where a user's browser is taken after the user clicks an ad.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | Advertiser ID of this landing page. This is a required field. |
| `archived` | `boolean` | Whether this landing page has been archived. |
| `deepLinks` | `array<DeepLink>` | Links that will direct the user to a mobile app, if installed. |
| `id` | `string` | ID of this landing page. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#landingPage". |
| `name` | `string` | Name of this landing page. This is a required field. It must be less than 256 characters long. |
| `url` | `string` | URL of this landing page. This is a required field. |

### `Language`

Contains information about a language that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Language ID of this language. This is the ID used for targeting and generating reports. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#language". |
| `languageCode` | `string` | Format of language code is an ISO 639 two-letter language code optionally followed by an undersco... |
| `name` | `string` | Name of this language. |

### `LanguageTargeting`

Language Targeting.

| Property | Type | Description |
|----------|------|-------------|
| `languages` | `array<Language>` | Languages that this ad targets. For each language only languageId is required. The other fields a... |

### `LanguagesListResponse`

Language List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#languagesListResp... |
| `languages` | `array<Language>` | Language collection. |

### `LastModifiedInfo`

Modification timestamp.

| Property | Type | Description |
|----------|------|-------------|
| `time` | `string` | Timestamp of the last change in milliseconds since epoch. |

### `ListPopulationClause`

A group clause made up of list population terms representing constraints joined by ORs.

| Property | Type | Description |
|----------|------|-------------|
| `terms` | `array<ListPopulationTerm>` | Terms of this list population clause. Each clause is made up of list population terms representin... |

### `ListPopulationRule`

Remarketing List Population Rule.

| Property | Type | Description |
|----------|------|-------------|
| `floodlightActivityId` | `string` | Floodlight activity ID associated with this rule. This field can be left blank. |
| `floodlightActivityName` | `string` | Name of floodlight activity associated with this rule. This is a read-only, auto-generated field. |
| `listPopulationClauses` | `array<ListPopulationClause>` | Clauses that make up this list population rule. Clauses are joined by ANDs, and the clauses thems... |

### `ListPopulationTerm`

Remarketing List Population Rule Term.

| Property | Type | Description |
|----------|------|-------------|
| `contains` | `boolean` | Will be true if the term should check if the user is in the list and false if the term should che... |
| `negation` | `boolean` | Whether to negate the comparison result of this term during rule evaluation. This field is only r... |
| `operator` | `string` | Comparison operator of this term. This field is only relevant when type is left unset or set to C... |
| `remarketingListId` | `string` | ID of the list in question. This field is only relevant when type is set to LIST_MEMBERSHIP_TERM. |
| `type` | `string` | List population term type determines the applicable fields in this object. If left unset or set t... |
| `value` | `string` | Literal to compare the variable to. This field is only relevant when type is left unset or set to... |
| `variableFriendlyName` | `string` | Friendly name of this term's variable. This is a read-only, auto-generated field. This field is o... |
| `variableName` | `string` | Name of the variable (U1, U2, etc.) being compared in this term. This field is only relevant when... |

### `ListTargetingExpression`

Remarketing List Targeting Expression.

| Property | Type | Description |
|----------|------|-------------|
| `expression` | `string` | Expression describing which lists are being targeted by the ad. |

### `LookbackConfiguration`

Lookback configuration settings.

| Property | Type | Description |
|----------|------|-------------|
| `clickDuration` | `integer` | Lookback window, in days, from the last time a given user clicked on one of your ads. If you ente... |
| `postImpressionActivitiesDuration` | `integer` | Lookback window, in days, from the last time a given user viewed one of your ads. If you enter 0,... |

### `MeasurementPartnerAdvertiserLink`

| Property | Type | Description |
|----------|------|-------------|
| `linkStatus` | `string` | Status of the partner link. |
| `measurementPartner` | `string` | Measurement partner used for tag wrapping. |
| `partnerAdvertiserId` | `string` | partner Advertiser Id. |

### `MeasurementPartnerCampaignLink`

| Property | Type | Description |
|----------|------|-------------|
| `linkStatus` | `string` | . |
| `measurementPartner` | `string` | Measurement partner used for tag wrapping. |
| `partnerCampaignId` | `string` | Partner campaign ID needed for establishing linking with Measurement partner. |

### `MeasurementPartnerWrappingData`

Placement tag wrapping

| Property | Type | Description |
|----------|------|-------------|
| `linkStatus` | `string` | Placement wrapping status. |
| `measurementPartner` | `string` | Measurement partner used for wrapping the placement. |
| `tagWrappingMode` | `string` | Measurement mode for the wrapped placement. |
| `wrappedTag` | `string` | Tag provided by the measurement partner during wrapping. |

### `Metric`

Represents a metric.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of resource this is, in this case dfareporting#metric. |
| `name` | `string` | The metric name, e.g. impressions |

### `Metro`

Contains information about a metro region that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `string` | Country code of the country to which this metro region belongs. |
| `countryDartId` | `string` | DART ID of the country to which this metro region belongs. |
| `dartId` | `string` | DART ID of this metro region. |
| `dmaId` | `string` | DMA ID of this metro region. This is the ID used for targeting and generating reports, and is equ... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#metro". |
| `metroCode` | `string` | Metro code of this metro region. This is equivalent to dma_id. |
| `name` | `string` | Name of this metro region. |

### `MetrosListResponse`

Metro List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#metrosListResponse". |
| `metros` | `array<Metro>` | Metro collection. |

### `MobileApp`

Contains information about a mobile app. Used as a landing page deep link.

| Property | Type | Description |
|----------|------|-------------|
| `directory` | `string` | Mobile app directory. |
| `id` | `string` | ID of this mobile app. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#mobileApp". |
| `publisherName` | `string` | Publisher name. |
| `title` | `string` | Title of this mobile app. |

### `MobileAppsListResponse`

Mobile app List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#mobileAppsListRes... |
| `mobileApps` | `array<MobileApp>` | Mobile apps collection. |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |

### `MobileCarrier`

Contains information about a mobile carrier that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `string` | Country code of the country to which this mobile carrier belongs. |
| `countryDartId` | `string` | DART ID of the country to which this mobile carrier belongs. |
| `id` | `string` | ID of this mobile carrier. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#mobileCarrier". |
| `name` | `string` | Name of this mobile carrier. |

### `MobileCarriersListResponse`

Mobile Carrier List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#mobileCarriersLis... |
| `mobileCarriers` | `array<MobileCarrier>` | Mobile carrier collection. |

### `ObaIcon`

Online Behavioral Advertiser icon.

| Property | Type | Description |
|----------|------|-------------|
| `iconClickThroughUrl` | `string` | URL to redirect to when an OBA icon is clicked. |
| `iconClickTrackingUrl` | `string` | URL to track click when an OBA icon is clicked. |
| `iconViewTrackingUrl` | `string` | URL to track view when an OBA icon is clicked. |
| `program` | `string` | Identifies the industry initiative that the icon supports. For example, AdChoices. |
| `resourceUrl` | `string` | OBA icon resource URL. Campaign Manager only supports image and JavaScript icons. Learn more |
| `size` | `Size` | OBA icon size. |
| `xPosition` | `string` | OBA icon x coordinate position. Accepted values are left or right. |
| `yPosition` | `string` | OBA icon y coordinate position. Accepted values are top or bottom. |

### `ObjectFilter`

Object Filter.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#objectFilter". |
| `objectIds` | `array<string>` | Applicable when status is ASSIGNED. The user has access to objects with these object IDs. |
| `status` | `string` | Status of the filter. NONE means the user has access to none of the objects. ALL means the user h... |

### `OfflineUserAddressInfo`

Identify a user by name and address.

| Property | Type | Description |
|----------|------|-------------|
| `city` | `string` | City of the address. |
| `countryCode` | `string` | 2-letter country code in ISO-3166-1 alpha-2 of the user's address. |
| `hashedFirstName` | `string` | First name of the user, which is hashed as SHA-256 after normalized (Lowercase all characters; Re... |
| `hashedLastName` | `string` | Last name of the user, which is hashed as SHA-256 after normalized (lower case only and no punctu... |
| `hashedStreetAddress` | `string` | The street address of the user hashed using SHA-256 hash function after normalization (lower case... |
| `postalCode` | `string` | Postal code of the user's address. |
| `state` | `string` | State code of the address. |

### `OffsetPosition`

Offset Position.

| Property | Type | Description |
|----------|------|-------------|
| `left` | `integer` | Offset distance from left side of an asset or a window. |
| `top` | `integer` | Offset distance from top side of an asset or a window. |

### `OmnitureSettings`

Omniture Integration Settings.

| Property | Type | Description |
|----------|------|-------------|
| `omnitureCostDataEnabled` | `boolean` | Whether placement cost data will be sent to Omniture. This property can be enabled only if omnitu... |
| `omnitureIntegrationEnabled` | `boolean` | Whether Omniture integration is enabled. This property can be enabled only when the "Advanced Ad ... |

### `OperatingSystem`

Contains information about an operating system that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `dartId` | `string` | DART ID of this operating system. This is the ID used for targeting. |
| `desktop` | `boolean` | Whether this operating system is for desktop. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#operatingSystem". |
| `mobile` | `boolean` | Whether this operating system is for mobile. |
| `name` | `string` | Name of this operating system. |

### `OperatingSystemVersion`

Contains information about a particular version of an operating system that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of this operating system version. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#operatingSystemVe... |
| `majorVersion` | `string` | Major version (leftmost number) of this operating system version. |
| `minorVersion` | `string` | Minor version (number after the first dot) of this operating system version. |
| `name` | `string` | Name of this operating system version. |
| `operatingSystem` | `OperatingSystem` | Operating system of this operating system version. |

### `OperatingSystemVersionsListResponse`

Operating System Version List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#operatingSystemVe... |
| `operatingSystemVersions` | `array<OperatingSystemVersion>` | Operating system version collection. |

### `OperatingSystemsListResponse`

Operating System List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#operatingSystemsL... |
| `operatingSystems` | `array<OperatingSystem>` | Operating system collection. |

### `OptimizationActivity`

Creative optimization activity.

| Property | Type | Description |
|----------|------|-------------|
| `floodlightActivityId` | `string` | Floodlight activity ID of this optimization activity. This is a required field. |
| `floodlightActivityIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the floodlight activity. This is a read-only, auto-generated field. |
| `weight` | `integer` | Weight associated with this optimization. The weight assigned will be understood in proportion to... |

### `PathToConversionReportCompatibleFields`

Represents fields that are compatible to be selected for a report of type "PATH_TO_CONVERSION".

| Property | Type | Description |
|----------|------|-------------|
| `conversionDimensions` | `array<Dimension>` | Conversion dimensions which are compatible to be selected in the "conversionDimensions" section o... |
| `customFloodlightVariables` | `array<Dimension>` | Custom floodlight variables which are compatible to be selected in the "customFloodlightVariables... |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#pathToConversionReportCompatibleFields. |
| `metrics` | `array<Metric>` | Metrics which are compatible to be selected in the "metricNames" section of the report. |
| `perInteractionDimensions` | `array<Dimension>` | Per-interaction dimensions which are compatible to be selected in the "perInteractionDimensions" ... |

### `Placement`

Contains properties of a placement.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this placement. This field can be left blank. |
| `activeStatus` | `string` | Whether this placement is active, inactive, archived or permanently archived. |
| `adBlockingOptOut` | `boolean` | Whether this placement opts out of ad blocking. When true, ad blocking is disabled for this place... |
| `adServingPlatformId` | `string` | Optional. Ad serving platform ID to identify the ad serving platform used by the placement. Measu... |
| `additionalSizes` | `array<Size>` | Additional sizes associated with this placement. When inserting or updating a placement, only the... |
| `advertiserId` | `string` | Advertiser ID of this placement. This field can be left blank. |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `allowOnYoutube` | `boolean` | Optional. Whether the placement is enabled for YouTube integration. |
| `campaignId` | `string` | Campaign ID of this placement. This field is a required field on insertion. |
| `campaignIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the campaign. This is a read-only, auto-generated field. |
| `comment` | `string` | Comments for this placement. |
| `compatibility` | `string` | Placement compatibility. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering on desktop, on mobil... |
| `contentCategoryId` | `string` | ID of the content category assigned to this placement. |
| `conversionDomainOverride` | `PlacementConversionDomainOverride` | Optional. Conversion domain overrides for a placement. |
| `createInfo` | `LastModifiedInfo` | Information about the creation of this placement. This is a read-only field. |
| `directorySiteId` | `string` | Directory site ID of this placement. On insert, you must set either this field or the siteId fiel... |
| `directorySiteIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the directory site. This is a read-only, auto-generated field. |
| `externalId` | `string` | External ID for this placement. |
| `id` | `string` | ID of this placement. This is a read-only, auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this placement. This is a read-only, auto-generated field. |
| `keyName` | `string` | Key name of this placement. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#placement". |
| `lastModifiedInfo` | `LastModifiedInfo` | Information about the most recent modification of this placement. This is a read-only field. |
| `lookbackConfiguration` | `LookbackConfiguration` | Lookback window settings for this placement. |
| `name` | `string` | Name of this placement.This is a required field and must be less than or equal to 512 characters ... |
| `partnerWrappingData` | `MeasurementPartnerWrappingData` | Measurement partner provided settings for a wrapped placement. |
| `paymentApproved` | `boolean` | Whether payment was approved for this placement. This is a read-only field relevant only to publi... |
| `paymentSource` | `string` | Payment source for this placement. This is a required field that is read-only after insertion. |
| `placementGroupId` | `string` | ID of this placement's group, if applicable. |
| `placementGroupIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the placement group. This is a read-only, auto-generated field. |
| `placementStrategyId` | `string` | ID of the placement strategy assigned to this placement. |
| `pricingSchedule` | `PricingSchedule` | Pricing schedule of this placement. This field is required on insertion, specifically subfields s... |
| `primary` | `boolean` | Whether this placement is the primary placement of a roadblock (placement group). You cannot chan... |
| `publisherUpdateInfo` | `LastModifiedInfo` | Information about the last publisher update. This is a read-only field. |
| `siteId` | `string` | Site ID associated with this placement. On insert, you must set either this field or the director... |
| `siteIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the site. This is a read-only, auto-generated field. |
| `siteServed` | `boolean` | Optional. Whether the ads in the placement are served by another platform and CM is only used for... |
| `size` | `Size` | Size associated with this placement. When inserting or updating a placement, only the size ID fie... |
| `sslRequired` | `boolean` | Whether creatives assigned to this placement must be SSL-compliant. |
| `status` | `string` | Third-party placement status. |
| `subaccountId` | `string` | Subaccount ID of this placement. This field can be left blank. |
| `tagFormats` | `array<string>` | Tag formats to generate for this placement. This field is required on insertion. Acceptable value... |
| `tagSetting` | `TagSetting` | Tag settings for this placement. |
| `videoActiveViewOptOut` | `boolean` | Whether Verification and ActiveView are disabled for in-stream video creatives for this placement... |
| `videoSettings` | `VideoSettings` | A collection of settings which affect video creatives served through this placement. Applicable t... |
| `vpaidAdapterChoice` | `string` | VPAID adapter setting for this placement. Controls which VPAID format the measurement adapter wil... |
| `wrappingOptOut` | `boolean` | Whether this placement opts out of tag wrapping. |
| `youtubeSettings` | `YoutubeSettings` | Optional. YouTube settings for the placement. The placement must be enabled for YouTube to use th... |

### `PlacementAssignment`

Placement Assignment.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | Whether this placement assignment is active. When true, the placement will be included in the ad'... |
| `placementId` | `string` | ID of the placement to be assigned. This is a required field. |
| `placementIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the placement. This is a read-only, auto-generated field. |
| `sslRequired` | `boolean` | Whether the placement to be assigned requires SSL. This is a read-only field that is auto-generat... |

### `PlacementConversionDomainOverride`

| Property | Type | Description |
|----------|------|-------------|
| `conversionDomains` | `array<PlacementSingleConversionDomain>` |  |

### `PlacementGroup`

Contains properties of a package or roadblock.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this placement group. This is a read-only field that can be left blank. |
| `activeStatus` | `string` | Whether this placement group is active, inactive, archived or permanently archived. |
| `advertiserId` | `string` | Advertiser ID of this placement group. This is a required field on insertion. |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `campaignId` | `string` | Campaign ID of this placement group. This field is required on insertion. |
| `campaignIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the campaign. This is a read-only, auto-generated field. |
| `childPlacementIds` | `array<string>` | IDs of placements which are assigned to this placement group. This is a read-only, auto-generated... |
| `comment` | `string` | Comments for this placement group. |
| `contentCategoryId` | `string` | ID of the content category assigned to this placement group. |
| `createInfo` | `LastModifiedInfo` | Information about the creation of this placement group. This is a read-only field. |
| `directorySiteId` | `string` | Directory site ID associated with this placement group. On insert, you must set either this field... |
| `directorySiteIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the directory site. This is a read-only, auto-generated field. |
| `externalId` | `string` | External ID for this placement. |
| `id` | `string` | ID of this placement group. This is a read-only, auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this placement group. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#placementGroup". |
| `lastModifiedInfo` | `LastModifiedInfo` | Information about the most recent modification of this placement group. This is a read-only field. |
| `name` | `string` | Name of this placement group. This is a required field and must be less than 256 characters long. |
| `placementGroupType` | `string` | Type of this placement group. A package is a simple group of placements that acts as a single pri... |
| `placementStrategyId` | `string` | ID of the placement strategy assigned to this placement group. |
| `pricingSchedule` | `PricingSchedule` | Pricing schedule of this placement group. This field is required on insertion. |
| `primaryPlacementId` | `string` | ID of the primary placement, used to calculate the media cost of a roadblock (placement group). M... |
| `primaryPlacementIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the primary placement. This is a read-only, auto-generated field. |
| `siteId` | `string` | Site ID associated with this placement group. On insert, you must set either this field or the di... |
| `siteIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the site. This is a read-only, auto-generated field. |
| `subaccountId` | `string` | Subaccount ID of this placement group. This is a read-only field that can be left blank. |

### `PlacementGroupsListResponse`

Placement Group List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#placementGroupsLi... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |
| `placementGroups` | `array<PlacementGroup>` | Placement group collection. |

### `PlacementSingleConversionDomain`

| Property | Type | Description |
|----------|------|-------------|
| `conversionDomainId` | `string` |  |
| `conversionDomainValue` | `string` |  |

### `PlacementStrategiesListResponse`

Placement Strategy List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#placementStrategi... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |
| `placementStrategies` | `array<PlacementStrategy>` | Placement strategy collection. |

### `PlacementStrategy`

Contains properties of a placement strategy.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this placement strategy.This is a read-only field that can be left blank. |
| `id` | `string` | ID of this placement strategy. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#placementStrategy". |
| `name` | `string` | Name of this placement strategy. This is a required field. It must be less than 256 characters lo... |

### `PlacementTag`

Placement Tag

| Property | Type | Description |
|----------|------|-------------|
| `placementId` | `string` | Placement ID |
| `tagDatas` | `array<TagData>` | Tags generated for this placement. |

### `PlacementsGenerateTagsResponse`

Placement GenerateTags Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#placementsGenerat... |
| `placementTags` | `array<PlacementTag>` | Set of generated tags for the specified placements. |

### `PlacementsListResponse`

Placement List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#placementsListRes... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |
| `placements` | `array<Placement>` | Placement collection. |

### `PlatformType`

Contains information about a platform type that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of this platform type. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#platformType". |
| `name` | `string` | Name of this platform type. |

### `PlatformTypesListResponse`

Platform Type List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#platformTypesList... |
| `platformTypes` | `array<PlatformType>` | Platform type collection. |

### `PopupWindowProperties`

Popup Window Properties.

| Property | Type | Description |
|----------|------|-------------|
| `dimension` | `Size` | Popup dimension for a creative. This is a read-only field. Applicable to the following creative t... |
| `offset` | `OffsetPosition` | Upper-left corner coordinates of the popup window. Applicable if positionType is COORDINATES. |
| `positionType` | `string` | Popup window position either centered or at specific coordinate. |
| `showAddressBar` | `boolean` | Whether to display the browser address bar. |
| `showMenuBar` | `boolean` | Whether to display the browser menu bar. |
| `showScrollBar` | `boolean` | Whether to display the browser scroll bar. |
| `showStatusBar` | `boolean` | Whether to display the browser status bar. |
| `showToolBar` | `boolean` | Whether to display the browser tool bar. |
| `title` | `string` | Title of popup window. |

### `PostalCode`

Contains information about a postal code that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Postal code. This is equivalent to the id field. |
| `countryCode` | `string` | Country code of the country to which this postal code belongs. |
| `countryDartId` | `string` | DART ID of the country to which this postal code belongs. |
| `id` | `string` | ID of this postal code. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#postalCode". |

### `PostalCodesListResponse`

Postal Code List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#postalCodesListRe... |
| `postalCodes` | `array<PostalCode>` | Postal code collection. |

### `PricingSchedule`

Pricing Schedule

| Property | Type | Description |
|----------|------|-------------|
| `capCostOption` | `string` | Placement cap cost option. |
| `endDate` | `string` |  |
| `flighted` | `boolean` | Whether this placement is flighted. If true, pricing periods will be computed automatically. |
| `floodlightActivityId` | `string` | Floodlight activity ID associated with this placement. This field should be set when placement pr... |
| `pricingPeriods` | `array<PricingSchedulePricingPeriod>` | Pricing periods for this placement. |
| `pricingType` | `string` | Placement pricing type. This field is required on insertion. |
| `startDate` | `string` |  |
| `testingStartDate` | `string` |  |

### `PricingSchedulePricingPeriod`

Pricing Period

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `string` |  |
| `pricingComment` | `string` | Comments for this pricing period. |
| `rateOrCostNanos` | `string` | Rate or cost of this pricing period in nanos (i.e., multiplied by 1000000000). Acceptable values ... |
| `startDate` | `string` |  |
| `units` | `string` | Units of this pricing period. Acceptable values are 0 to 10000000000, inclusive. |

### `ProximityFilter`

Contains proximity filter information.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `integer` | Optional. Field ID in the element. |
| `radiusBucketType` | `string` | Optional. The radius bucket type of the proximity filter |
| `radiusUnitType` | `string` | Optional. The units of the radius value |
| `radiusValue` | `integer` | Optional. Radius length in units defined by radius_units. |

### `ReachReportCompatibleFields`

Represents fields that are compatible to be selected for a report of type "REACH".

| Property | Type | Description |
|----------|------|-------------|
| `dimensionFilters` | `array<Dimension>` | Dimensions which are compatible to be selected in the "dimensionFilters" section of the report. |
| `dimensions` | `array<Dimension>` | Dimensions which are compatible to be selected in the "dimensions" section of the report. |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#reachReportCompatibleFields. |
| `metrics` | `array<Metric>` | Metrics which are compatible to be selected in the "metricNames" section of the report. |
| `pivotedActivityMetrics` | `array<Metric>` | Metrics which are compatible to be selected as activity metrics to pivot on in the "activities" s... |
| `reachByFrequencyMetrics` | `array<Metric>` | Metrics which are compatible to be selected in the "reachByFrequencyMetricNames" section of the r... |

### `Recipient`

Represents a recipient.

| Property | Type | Description |
|----------|------|-------------|
| `deliveryType` | `string` | The delivery type for the recipient. |
| `email` | `string` | The email address of the recipient. |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#recipient. |

### `Region`

Contains information about a region that can be targeted by ads.

| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `string` | Country code of the country to which this region belongs. |
| `countryDartId` | `string` | DART ID of the country to which this region belongs. |
| `dartId` | `string` | DART ID of this region. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#region". |
| `name` | `string` | Name of this region. |
| `regionCode` | `string` | Region code. |

### `RegionsListResponse`

Region List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#regionsListRespon... |
| `regions` | `array<Region>` | Region collection. |

### `RemarketingList`

Contains properties of a remarketing list. Remarketing enables you to create lists of users who have performed specific actions on a site, then target ads to members of those lists. This resource can be used to manage remarketing lists that are owned by your advertisers. To see all remarketing lists that are visible to your advertisers, including those that are shared to your advertiser or account, use the TargetableRemarketingLists resource.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this remarketing list. This is a read-only, auto-generated field that is only retur... |
| `active` | `boolean` | Whether this remarketing list is active. |
| `advertiserId` | `string` | Dimension value for the advertiser ID that owns this remarketing list. This is a required field. |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `description` | `string` | Remarketing list description. |
| `id` | `string` | Remarketing list ID. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#remarketingList". |
| `lifeSpan` | `string` | Number of days that a user should remain in the remarketing list without an impression. Acceptabl... |
| `listPopulationRule` | `ListPopulationRule` | Rule used to populate the remarketing list with users. |
| `listSize` | `string` | Number of users currently in the list. This is a read-only field. |
| `listSource` | `string` | Product from which this remarketing list was originated. |
| `name` | `string` | Name of the remarketing list. This is a required field. Must be no greater than 128 characters long. |
| `subaccountId` | `string` | Subaccount ID of this remarketing list. This is a read-only, auto-generated field that is only re... |

### `RemarketingListShare`

Contains properties of a remarketing list's sharing information. Sharing allows other accounts or advertisers to target to your remarketing lists. This resource can be used to manage remarketing list sharing to other accounts and advertisers.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#remarketingListSh... |
| `remarketingListId` | `string` | Remarketing list ID. This is a read-only, auto-generated field. |
| `sharedAccountIds` | `array<string>` | Accounts that the remarketing list is shared with. |
| `sharedAdvertiserIds` | `array<string>` | Advertisers that the remarketing list is shared with. |

### `RemarketingListsListResponse`

Remarketing list response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#remarketingListsL... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |
| `remarketingLists` | `array<RemarketingList>` | Remarketing list collection. |

### `RemarketingValueAttribute`

Contains remarketing value attribute information.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `integer` | Optional. Field ID in the element. |
| `userAttributeIds` | `array<string>` | Optional. Remarketing user attribute IDs for auto filtering. |

### `Report`

Represents a Report resource.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The account ID to which this report belongs. |
| `criteria` | `object` | The report criteria for a report of type "STANDARD". |
| `crossMediaReachCriteria` | `object` | Optional. The report criteria for a report of type "CROSS_MEDIA_REACH". |
| `delivery` | `object` | The report's email delivery settings. |
| `etag` | `string` | The eTag of this response for caching purposes. |
| `fileName` | `string` | The filename used when generating report files for this report. |
| `floodlightCriteria` | `object` | The report criteria for a report of type "FLOODLIGHT". |
| `format` | `string` | The output format of the report. If not specified, default format is "CSV". Note that the actual ... |
| `id` | `string` | The unique ID identifying this report resource. |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#report. |
| `lastModifiedTime` | `string` | The timestamp (in milliseconds since epoch) of when this report was last modified. |
| `name` | `string` | The name of the report. |
| `ownerProfileId` | `string` | The user profile id of the owner of this report. |
| `pathToConversionCriteria` | `object` | The report criteria for a report of type "PATH_TO_CONVERSION". |
| `reachCriteria` | `object` | The report criteria for a report of type "REACH". |
| `schedule` | `object` | The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and t... |
| `subAccountId` | `string` | The subaccount ID to which this report belongs if applicable. |
| `type` | `string` | The type of the report. |

### `ReportCompatibleFields`

Represents fields that are compatible to be selected for a report of type "STANDARD".

| Property | Type | Description |
|----------|------|-------------|
| `dimensionFilters` | `array<Dimension>` | Dimensions which are compatible to be selected in the "dimensionFilters" section of the report. |
| `dimensions` | `array<Dimension>` | Dimensions which are compatible to be selected in the "dimensions" section of the report. |
| `kind` | `string` | The kind of resource this is, in this case dfareporting#reportCompatibleFields. |
| `metrics` | `array<Metric>` | Metrics which are compatible to be selected in the "metricNames" section of the report. |
| `pivotedActivityMetrics` | `array<Metric>` | Metrics which are compatible to be selected as activity metrics to pivot on in the "activities" s... |

### `ReportList`

Represents the list of reports.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | The eTag of this response for caching purposes. |
| `items` | `array<Report>` | The reports returned in this response. |
| `kind` | `string` | The kind of list this is, in this case dfareporting#reportList. |
| `nextPageToken` | `string` | Continuation token used to page through reports. To retrieve the next page of results, set the ne... |

### `ReportsConfiguration`

Reporting Configuration

| Property | Type | Description |
|----------|------|-------------|
| `exposureToConversionEnabled` | `boolean` | Whether the exposure to conversion report is enabled. This report shows detailed pathway informat... |
| `lookbackConfiguration` | `LookbackConfiguration` | Default lookback windows for new advertisers in this account. |
| `reportGenerationTimeZoneId` | `string` | Report generation time zone ID of this account. This is a required field that cannot be changed o... |

### `RequestValue`

Contains request value information.

| Property | Type | Description |
|----------|------|-------------|
| `excludeFromUserAttributeIds` | `array<string>` | Optional. User attribute IDs in the request that should be excluded. Used only when the field typ... |
| `key` | `string` | Optional. Custom key in the request. Used only when the field type is CUSTOM_VALUE. |
| `userAttributeIds` | `array<string>` | Optional. User attribute IDs in the request. Used only when the field type is REMARKETING_VALUE o... |

### `RichMediaExitOverride`

Rich Media Exit Override.

| Property | Type | Description |
|----------|------|-------------|
| `clickThroughUrl` | `ClickThroughUrl` | Click-through URL of this rich media exit override. Applicable if the enabled field is set to true. |
| `enabled` | `boolean` | Whether to use the clickThroughUrl. If false, the creative-level exit will be used. |
| `exitId` | `string` | ID for the override to refer to a specific exit in the creative. |

### `RuleBlock`

Contains a list of field filters that the given custom rule will apply.

| Property | Type | Description |
|----------|------|-------------|
| `fieldFilter` | `array<FieldFilter>` | Optional. A list of non-auto field filters |

### `Site`

Contains properties of a site.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this site. This is a read-only field that can be left blank. |
| `adServingPlatformId` | `string` | Optional. Ad serving platform ID to identify the ad serving platform used by the site. Measuremen... |
| `approved` | `boolean` | Whether this site is approved. |
| `directorySiteId` | `string` | Directory site associated with this site. This is a required field that is read-only after insert... |
| `directorySiteIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the directory site. This is a read-only, auto-generated field. |
| `id` | `string` | ID of this site. This is a read-only, auto-generated field. |
| `idDimensionValue` | `DimensionValue` | Dimension value for the ID of this site. This is a read-only, auto-generated field. |
| `keyName` | `string` | Key name of this site. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#site". |
| `name` | `string` | Name of this site.This is a required field. Must be less than 128 characters long. If this site i... |
| `siteContacts` | `array<SiteContact>` | Site contacts. |
| `siteSettings` | `SiteSettings` | Site-wide settings. |
| `subaccountId` | `string` | Subaccount ID of this site. This is a read-only field that can be left blank. |
| `videoSettings` | `SiteVideoSettings` | Default video settings for new placements created under this site. This value will be used to pop... |

### `SiteCompanionSetting`

Companion Settings

| Property | Type | Description |
|----------|------|-------------|
| `companionsDisabled` | `boolean` | Whether companions are disabled for this site template. |
| `enabledSizes` | `array<Size>` | Allowlist of companion sizes to be served via this site template. Set this list to null or empty ... |
| `imageOnly` | `boolean` | Whether to serve only static images as companions. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#siteCompanionSett... |

### `SiteContact`

Site Contact

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Address of this site contact. |
| `contactType` | `string` | Site contact type. |
| `email` | `string` | Email address of this site contact. This is a required field. |
| `firstName` | `string` | First name of this site contact. |
| `id` | `string` | ID of this site contact. This is a read-only, auto-generated field. |
| `lastName` | `string` | Last name of this site contact. |
| `phone` | `string` | Primary phone number of this site contact. |
| `title` | `string` | Title or designation of this site contact. |

### `SiteSettings`

Site Settings

| Property | Type | Description |
|----------|------|-------------|
| `activeViewOptOut` | `boolean` | Whether active view creatives are disabled for this site. |
| `adBlockingOptOut` | `boolean` | Whether this site opts out of ad blocking. When true, ad blocking is disabled for all placements ... |
| `disableNewCookie` | `boolean` | Whether new cookies are disabled for this site. |
| `tagSetting` | `TagSetting` | Configuration settings for dynamic and image floodlight tags. |
| `videoActiveViewOptOutTemplate` | `boolean` | Whether Verification and ActiveView for in-stream video creatives are disabled by default for new... |
| `vpaidAdapterChoiceTemplate` | `string` | Default VPAID adapter setting for new placements created under this site. This value will be used... |

### `SiteSkippableSetting`

Skippable Settings

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#siteSkippableSett... |
| `progressOffset` | `VideoOffset` | Amount of time to play videos served to this site template before counting a view. Applicable whe... |
| `skipOffset` | `VideoOffset` | Amount of time to play videos served to this site before the skip button should appear. Applicabl... |
| `skippable` | `boolean` | Whether the user can skip creatives served to this site. This will act as default for new placeme... |

### `SiteTranscodeSetting`

Transcode Settings

| Property | Type | Description |
|----------|------|-------------|
| `enabledVideoFormats` | `array<integer>` | Allowlist of video formats to be served to this site template. Set this list to null or empty to ... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#siteTranscodeSett... |

### `SiteVideoSettings`

Video Settings

| Property | Type | Description |
|----------|------|-------------|
| `companionSettings` | `SiteCompanionSetting` | Settings for the companion creatives of video creatives served to this site. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#siteVideoSettings". |
| `obaEnabled` | `boolean` | Whether OBA icons are enabled for this placement. |
| `obaSettings` | `ObaIcon` | Settings for the OBA icon of video creatives served to this site. This will act as default for ne... |
| `orientation` | `string` | Orientation of a site template used for video. This will act as default for new placements create... |
| `publisherSpecificationId` | `string` | Publisher specification ID used to identify site-associated publisher requirements and automatica... |
| `skippableSettings` | `SiteSkippableSetting` | Settings for the skippability of video creatives served to this site. This will act as default fo... |
| `transcodeSettings` | `SiteTranscodeSetting` | Settings for the transcodes of video creatives served to this site. This will act as default for ... |

### `SitesListResponse`

Site List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#sitesListResponse". |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |
| `sites` | `array<Site>` | Site collection. |

### `Size`

Represents the dimensions of ads, placements, creatives, or creative assets.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | Height of this size. Acceptable values are 0 to 32767, inclusive. |
| `iab` | `boolean` | IAB standard size. This is a read-only, auto-generated field. |
| `id` | `string` | ID of this size. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#size". |
| `width` | `integer` | Width of this size. Acceptable values are 0 to 32767, inclusive. |

### `SizesListResponse`

Size List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#sizesListResponse". |
| `sizes` | `array<Size>` | Size collection. |

### `SkippableSetting`

Skippable Settings

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#skippableSetting". |
| `progressOffset` | `VideoOffset` | Amount of time to play videos served to this placement before counting a view. Applicable when sk... |
| `skipOffset` | `VideoOffset` | Amount of time to play videos served to this placement before the skip button should appear. Appl... |
| `skippable` | `boolean` | Whether the user can skip creatives served to this placement. |

### `SortedDimension`

Represents a sorted dimension.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of resource this is, in this case dfareporting#sortedDimension. |
| `name` | `string` | The name of the dimension. |
| `sortOrder` | `string` | An optional sort order for the dimension column. |

### `StudioCreative`

*Beta:* This API resource is available only to a very limited number of customers. If you'd like to use this resource, please reach out to your Google sales representative. Contains studio creative information.

| Property | Type | Description |
|----------|------|-------------|
| `assetIds` | `array<string>` | List of assets associated with this studio creative. It is a required field on insertion. |
| `backupImageAssetId` | `string` | Backup image asset ID of this studio creative. It is a required field on insertion. |
| `createdInfo` | `LastModifiedInfo` | The timestamp when the studio creative was created. This is a read-only, auto-generated field. |
| `dimension` | `StudioCreativeDimension` | Dimension of this studio creative. This is a required field on insertion if format is BANNER or E... |
| `dynamicProfileId` | `string` | Dynamic profile ID of this studio creative. |
| `format` | `string` | Format of this studio creative. This is a required field on insertion. |
| `id` | `string` | Output only. Unique ID of this studio creative. This is a read-only, auto-generated field. |
| `lastModifiedInfo` | `LastModifiedInfo` | The timestamp when the studio creative was last modified. This is a read-only, auto-generated field. |
| `name` | `string` | Identifier. Name of this studio creative. This is a required field on insertion. |
| `status` | `string` | Output only. Status of this studio creative. It is a read-only field. |
| `studioAccountId` | `string` | Studio account ID of this creative. This field, if left unset, will be auto-populated. |
| `studioAdvertiserId` | `string` | Studio advertiser ID of this studio creative. This is a required field on insertion. |
| `studioCampaignId` | `string` | Studio campaign ID of this studio creative. This is a required field on insertion. |

### `StudioCreativeAsset`

*Beta:* This API resource is available only to a very limited number of customers. If you'd like to use this resource, please reach out to your Google sales representative. Contains studio creative asset information.

| Property | Type | Description |
|----------|------|-------------|
| `createInfo` | `LastModifiedInfo` | Output only. The creation timestamp of the studio creative asset. This is a read-only field. |
| `filename` | `string` | The filename of the studio creative asset. It is default to the original filename of the asset. |
| `filesize` | `string` | The filesize of the studio creative asset. This is a read-only field. |
| `id` | `string` | Output only. Unique ID of this studio creative asset. This is a read-only, auto-generated field. |
| `lastModifiedInfo` | `LastModifiedInfo` | Output only. The last modified timestamp of the studio creative asset. This is a read-only field. |
| `studioAccountId` | `string` | Studio account ID of this studio creative asset. This field, if left unset, will be auto-populated.. |
| `studioAdvertiserId` | `string` | Studio advertiser ID of this studio creative asset. This is a required field on insertion. |
| `studioCreativeId` | `string` | Studio creative ID of this studio creative asset. The asset will be associated to the creative if... |
| `type` | `string` | The type of the studio creative asset. It is a auto-generated, read-only field. |
| `videoProcessingData` | `VideoProcessingData` | The processing data of the studio creative asset. This is a read-only field. |

### `StudioCreativeAssetsResponse`

Response message for DfareportingStudioCreativeAssets.Insert.

| Property | Type | Description |
|----------|------|-------------|
| `assets` | `array<StudioCreativeAsset>` | The list of studio creative assets. |

### `StudioCreativeDimension`

Dimension information for a studio creative.

| Property | Type | Description |
|----------|------|-------------|
| `height` | `integer` | Height of the studio creative. |
| `width` | `integer` | Width of the studio creative. |

### `Subaccount`

Contains properties of a Campaign Manager subaccount.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | ID of the account that contains this subaccount. This is a read-only field that can be left blank. |
| `availablePermissionIds` | `array<string>` | IDs of the available user role permissions for this subaccount. |
| `id` | `string` | ID of this subaccount. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#subaccount". |
| `name` | `string` | Name of this subaccount. This is a required field. Must be less than 128 characters long and be u... |

### `SubaccountsListResponse`

Subaccount List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#subaccountsListRe... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |
| `subaccounts` | `array<Subaccount>` | Subaccount collection. |

### `TagData`

Placement Tag Data

| Property | Type | Description |
|----------|------|-------------|
| `adId` | `string` | Ad associated with this placement tag. Applicable only when format is PLACEMENT_TAG_TRACKING. |
| `clickTag` | `string` | Tag string to record a click. |
| `creativeId` | `string` | Creative associated with this placement tag. Applicable only when format is PLACEMENT_TAG_TRACKING. |
| `format` | `string` | TagData tag format of this tag. |
| `impressionTag` | `string` | Tag string for serving an ad. |

### `TagSetting`

Tag Settings

| Property | Type | Description |
|----------|------|-------------|
| `additionalKeyValues` | `string` | Additional key-values to be included in tags. Each key-value pair must be of the form key=value, ... |
| `includeClickThroughUrls` | `boolean` | Whether static landing page URLs should be included in the tags. New placements will default to t... |
| `includeClickTracking` | `boolean` | Whether click-tracking string should be included in the tags. |
| `includeUnescapedlpurlMacro` | `boolean` | Optional. Indicates that the unescapedlpurl macro should be included in the tag for the static la... |
| `keywordOption` | `string` | Option specifying how keywords are embedded in ad tags. This setting can be used to specify wheth... |

### `TagSettings`

Dynamic and Image Tag Settings.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicTagEnabled` | `boolean` | Whether dynamic floodlight tags are enabled. |
| `imageTagEnabled` | `boolean` | Whether image tags are enabled. |

### `TargetWindow`

Target Window.

| Property | Type | Description |
|----------|------|-------------|
| `customHtml` | `string` | User-entered value. |
| `targetWindowOption` | `string` | Type of browser window for which the backup image of the flash creative can be displayed. |

### `TargetableRemarketingList`

Contains properties of a targetable remarketing list. Remarketing enables you to create lists of users who have performed specific actions on a site, then target ads to members of those lists. This resource is a read-only view of a remarketing list to be used to facilitate targeting ads to specific lists. Remarketing lists that are owned by your advertisers and those that are shared to your advertisers or account are accessible via this resource. To manage remarketing lists that are owned by your advertisers, use the RemarketingLists resource.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this remarketing list. This is a read-only, auto-generated field that is only retur... |
| `active` | `boolean` | Whether this targetable remarketing list is active. |
| `advertiserId` | `string` | Dimension value for the advertiser ID that owns this targetable remarketing list. |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. |
| `description` | `string` | Targetable remarketing list description. |
| `id` | `string` | Targetable remarketing list ID. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#targetableRemarke... |
| `lifeSpan` | `string` | Number of days that a user should remain in the targetable remarketing list without an impression. |
| `listSize` | `string` | Number of users currently in the list. This is a read-only field. |
| `listSource` | `string` | Product from which this targetable remarketing list was originated. |
| `name` | `string` | Name of the targetable remarketing list. Is no greater than 128 characters long. |
| `subaccountId` | `string` | Subaccount ID of this remarketing list. This is a read-only, auto-generated field that is only re... |

### `TargetableRemarketingListsListResponse`

Targetable remarketing list response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#targetableRemarke... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |
| `targetableRemarketingLists` | `array<TargetableRemarketingList>` | Targetable remarketing list collection. |

### `TargetingTemplate`

Contains properties of a targeting template. A targeting template encapsulates targeting information which can be reused across multiple ads.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this targeting template. This field, if left unset, will be auto-generated on inser... |
| `advertiserId` | `string` | Advertiser ID of this targeting template. This is a required field on insert and is read-only aft... |
| `advertiserIdDimensionValue` | `DimensionValue` | Dimension value for the ID of the advertiser. This is a read-only, auto-generated field. |
| `contextualKeywordTargeting` | `ContextualKeywordTargeting` | Optional. Contextual keyword targeting criteria. |
| `dayPartTargeting` | `DayPartTargeting` | Time and day targeting criteria. |
| `geoTargeting` | `GeoTargeting` | Geographical targeting criteria. |
| `id` | `string` | ID of this targeting template. This is a read-only, auto-generated field. |
| `keyValueTargetingExpression` | `KeyValueTargetingExpression` | Key-value targeting criteria. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#targetingTemplate". |
| `languageTargeting` | `LanguageTargeting` | Language targeting criteria. |
| `listTargetingExpression` | `ListTargetingExpression` | Remarketing list targeting criteria. |
| `name` | `string` | Name of this targeting template. This field is required. It must be less than 256 characters long... |
| `subaccountId` | `string` | Subaccount ID of this targeting template. This field, if left unset, will be auto-generated on in... |
| `technologyTargeting` | `TechnologyTargeting` | Technology platform targeting criteria. |

### `TargetingTemplatesListResponse`

Targeting Template List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#targetingTemplate... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |
| `targetingTemplates` | `array<TargetingTemplate>` | Targeting template collection. |

### `TechnologyTargeting`

Technology Targeting.

| Property | Type | Description |
|----------|------|-------------|
| `browsers` | `array<Browser>` | Browsers that this ad targets. For each browser either set browserVersionId or dartId along with ... |
| `connectionTypes` | `array<ConnectionType>` | Connection types that this ad targets. For each connection type only id is required. The other fi... |
| `mobileCarriers` | `array<MobileCarrier>` | Mobile carriers that this ad targets. For each mobile carrier only id is required, and the other ... |
| `operatingSystemVersions` | `array<OperatingSystemVersion>` | Operating system versions that this ad targets. To target all versions, use operatingSystems. For... |
| `operatingSystems` | `array<OperatingSystem>` | Operating systems that this ad targets. To target specific versions, use operatingSystemVersions.... |
| `platformTypes` | `array<PlatformType>` | Platform types that this ad targets. For example, desktop, mobile, or tablet. For each platform t... |

### `ThirdPartyAuthenticationToken`

Third Party Authentication Token

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the third-party authentication token. |
| `value` | `string` | Value of the third-party authentication token. This is a read-only, auto-generated field. |

### `ThirdPartyTrackingUrl`

Third-party Tracking URL.

| Property | Type | Description |
|----------|------|-------------|
| `thirdPartyUrlType` | `string` | Third-party URL type for in-stream video and in-stream audio creatives. |
| `url` | `string` | URL for the specified third-party URL type. |

### `TranscodeSetting`

Transcode Settings

| Property | Type | Description |
|----------|------|-------------|
| `enabledVideoFormats` | `array<integer>` | Allowlist of video formats to be served to this placement. Set this list to null or empty to serv... |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#transcodeSetting". |

### `TvCampaignDetail`

TvCampaignDetail contains data from a TV campaign for specific start dates and date windows.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of this TV campaign. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#tvCampaignSummary". |
| `timepoints` | `array<TvCampaignTimepoint>` | The timepoints of the TV campaign. |

### `TvCampaignSummariesListResponse`

Response message for TvCampaignSummariesService.List.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#tvCampaignSummari... |
| `tvCampaignSummaries` | `array<TvCampaignSummary>` | List of TV campaign summaries. |

### `TvCampaignSummary`

TvCampaignSummary contains aggregate data from a TV campaign.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `string` | The end date of the TV campaign, inclusive. A string of the format: "yyyy-MM-dd". |
| `grp` | `string` | GRP of this TV campaign. |
| `id` | `string` | ID of this TV campaign. |
| `impressions` | `string` | Impressions across the entire TV campaign. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#tvCampaignSummary". |
| `name` | `string` | Identifier. Name of this TV campaign. |
| `spend` | `number` | Spend across the entire TV campaign. |
| `startDate` | `string` | The start date of the TV campaign, inclusive. A string of the format: "yyyy-MM-dd". |
| `type` | `string` | "CampaignComponentType" of this TV campaign. |

### `TvCampaignTimepoint`

A single data point for TvCampaignDetail, which holds information about the TV campaign for a specific start date and date window.

| Property | Type | Description |
|----------|------|-------------|
| `dateWindow` | `string` | The date window of the timepoint. |
| `spend` | `number` | The spend within the time range of the timepoint. |
| `startDate` | `string` | The start date of the timepoint. A string in the format of "yyyy-MM-dd". |

### `UniversalAdId`

A Universal Ad ID as per the VAST 4.0 spec. Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO and VPAID.

| Property | Type | Description |
|----------|------|-------------|
| `registry` | `string` | Registry used for the Ad ID value. |
| `value` | `string` | ID value for this creative. Only alphanumeric characters and the following symbols are valid: "_/... |

### `UserDefinedVariableConfiguration`

User Defined Variable configuration.

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` | Data type for the variable. This is a required field. |
| `reportName` | `string` | User-friendly name for the variable which will appear in reports. This is a required field, must ... |
| `variableType` | `string` | Variable name in the tag. This is a required field. |

### `UserIdentifier`

User identifying information. Exactly one type of identifier must be specified.

| Property | Type | Description |
|----------|------|-------------|
| `addressInfo` | `OfflineUserAddressInfo` | Address information. |
| `hashedEmail` | `string` | Hashed email address using SHA-256 hash function after normalization. |
| `hashedPhoneNumber` | `string` | Hashed phone number using SHA-256 hash function after normalization (E164 standard). |

### `UserProfile`

A UserProfile resource lets you list all DFA user profiles that are associated with a Google user account. The profile_id needs to be specified in other API requests.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | The account ID to which this profile belongs. |
| `accountName` | `string` | The account name this profile belongs to. |
| `etag` | `string` | Etag of this resource. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#userProfile". |
| `profileId` | `string` | The unique ID of the user profile. |
| `subAccountId` | `string` | The sub account ID this profile belongs to if applicable. |
| `subAccountName` | `string` | The sub account name this profile belongs to if applicable. |
| `userName` | `string` | The user name. |

### `UserProfileList`

Represents the list of user profiles.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of this resource. |
| `items` | `array<UserProfile>` | The user profiles returned in this response. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#userProfileList". |

### `UserRole`

Contains properties of auser role, which is used to manage user access.

| Property | Type | Description |
|----------|------|-------------|
| `accountId` | `string` | Account ID of this user role. This is a read-only field that can be left blank. |
| `defaultUserRole` | `boolean` | Whether this is a default user role. Default user roles are created by the system for the account... |
| `id` | `string` | ID of this user role. This is a read-only, auto-generated field. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#userRole". |
| `name` | `string` | Name of this user role. This is a required field. Must be less than 256 characters long. If this ... |
| `parentUserRoleId` | `string` | ID of the user role that this user role is based on or copied from. This is a required field. |
| `permissions` | `array<UserRolePermission>` | List of permissions associated with this user role. |
| `subaccountId` | `string` | Subaccount ID of this user role. This is a read-only field that can be left blank. |

### `UserRolePermission`

Contains properties of a user role permission.

| Property | Type | Description |
|----------|------|-------------|
| `availability` | `string` | Levels of availability for a user role permission. |
| `id` | `string` | ID of this user role permission. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#userRolePermission". |
| `name` | `string` | Name of this user role permission. |
| `permissionGroupId` | `string` | ID of the permission group that this user role permission belongs to. |

### `UserRolePermissionGroup`

Represents a grouping of related user role permissions.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of this user role permission. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#userRolePermissio... |
| `name` | `string` | Name of this user role permission group. |

### `UserRolePermissionGroupsListResponse`

User Role Permission Group List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#userRolePermissio... |
| `userRolePermissionGroups` | `array<UserRolePermissionGroup>` | User role permission group collection. |

### `UserRolePermissionsListResponse`

User Role Permission List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#userRolePermissio... |
| `userRolePermissions` | `array<UserRolePermission>` | User role permission collection. |

### `UserRolesListResponse`

User Role List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#userRolesListResp... |
| `nextPageToken` | `string` | Pagination token to be used for the next list operation. |
| `userRoles` | `array<UserRole>` | User role collection. |

### `VideoFormat`

Contains information about supported video formats.

| Property | Type | Description |
|----------|------|-------------|
| `fileType` | `string` | File type of the video format. |
| `id` | `integer` | ID of the video format. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#videoFormat". |
| `resolution` | `Size` | The resolution of this video format. |
| `targetBitRate` | `integer` | The target bit rate of this video format. |

### `VideoFormatsListResponse`

Video Format List Response

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#videoFormatsListR... |
| `videoFormats` | `array<VideoFormat>` | Video format collection. |

### `VideoOffset`

Video Offset

| Property | Type | Description |
|----------|------|-------------|
| `offsetPercentage` | `integer` | Duration, as a percentage of video duration. Do not set when offsetSeconds is set. Acceptable val... |
| `offsetSeconds` | `integer` | Duration, in seconds. Do not set when offsetPercentage is set. Acceptable values are 0 to 86399, ... |

### `VideoProcessingData`

Contains processing data for a video asset.

| Property | Type | Description |
|----------|------|-------------|
| `errorReason` | `string` | For a FAILED processing state, the error reason discovered. |
| `processingState` | `string` | Output only. The processing state of the studio creative asset. |

### `VideoSettings`

Video Settings

| Property | Type | Description |
|----------|------|-------------|
| `companionSettings` | `CompanionSetting` | Settings for the companion creatives of video creatives served to this placement. |
| `durationSeconds` | `integer` | Duration of a video placement in seconds. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "dfareporting#videoSettings". |
| `obaEnabled` | `boolean` | Whether OBA icons are enabled for this placement. |
| `obaSettings` | `ObaIcon` | Settings for the OBA icon of video creatives served to this placement. If this object is provided... |
| `orientation` | `string` | Orientation of a video placement. If this value is set, placement will return assets matching the... |
| `publisherSpecificationId` | `string` | Publisher specification ID of a video placement. Possible values are: * `1`, Hulu * `2`, NBC * `3... |
| `skippableSettings` | `SkippableSetting` | Settings for the skippability of video creatives served to this placement. If this object is prov... |
| `transcodeSettings` | `TranscodeSetting` | Settings for the transcodes of video creatives served to this placement. If this object is provid... |

### `YoutubeSettings`

Contains the YouTube settings.

| Property | Type | Description |
|----------|------|-------------|
| `businessLogoCreativeIds` | `array<string>` | Optional. The IDs of the creatives to use for the business logo. Currently only one creative is s... |
| `businessName` | `string` | Optional. The business name. |
| `callToActions` | `array<string>` | Optional. The call to actions. Currently only one call to action is supported. |
| `descriptions` | `array<string>` | Optional. The descriptions. Currently only one description is supported. |
| `headlines` | `array<string>` | Optional. The headlines associated with the call to actions. Currently only one headline is suppo... |
| `longHeadlines` | `array<string>` | Optional. The long headlines. Currently only one long headline is supported. |

