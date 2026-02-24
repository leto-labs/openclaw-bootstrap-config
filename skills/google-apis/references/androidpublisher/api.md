# Google Play Android Developer API - API Reference

**Version**: `v3` | **Methods**: 136 | **Schemas**: 329

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `androidpublisher.users.create` | POST | `androidpublisher/v3/{+parent}/users` | Grant access for a user to the given developer account. |
| `androidpublisher.users.list` | GET | `androidpublisher/v3/{+parent}/users` | Lists all users with access to a developer account. |
| `androidpublisher.users.patch` | PATCH | `androidpublisher/v3/{+name}` | Updates access for the user to the developer account. |
| `androidpublisher.users.delete` | DELETE | `androidpublisher/v3/{+name}` | Removes all access for the user to the given developer account. |
| `androidpublisher.grants.create` | POST | `androidpublisher/v3/{+parent}/grants` | Grant access for a user to the given package. |
| `androidpublisher.grants.patch` | PATCH | `androidpublisher/v3/{+name}` | Updates access for the user to the given package. |
| `androidpublisher.grants.delete` | DELETE | `androidpublisher/v3/{+name}` | Removes all access for the user to the given package or developer account. |
| `androidpublisher.apprecovery.create` | POST | `androidpublisher/v3/applications/{packageName}/appRecoveries` | Create an app recovery action with recovery status as DRAFT. Note that this action does not execu... |
| `androidpublisher.apprecovery.deploy` | POST | `androidpublisher/v3/applications/{packageName}/appRecoveries/{appRecoveryId}:deploy` | Deploy an already created app recovery action with recovery status DRAFT. Note that this action a... |
| `androidpublisher.apprecovery.list` | GET | `androidpublisher/v3/applications/{packageName}/appRecoveries` | List all app recovery action resources associated with a particular package name and app version. |
| `androidpublisher.apprecovery.addTargeting` | POST | `androidpublisher/v3/applications/{packageName}/appRecoveries/{appRecoveryId}:addTargeting` | Incrementally update targeting for a recovery action. Note that only the criteria selected during... |
| `androidpublisher.apprecovery.cancel` | POST | `androidpublisher/v3/applications/{packageName}/appRecoveries/{appRecoveryId}:cancel` | Cancel an already executing app recovery action. Note that this action changes status of the reco... |
| `androidpublisher.purchases.productsv2.getproductpurchasev2` | GET | `androidpublisher/v3/applications/{packageName}/purchases/productsv2/tokens/{token}` | Checks the purchase and consumption status of an inapp item. |
| `androidpublisher.purchases.products.get` | GET | `androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}` | Checks the purchase and consumption status of an inapp item. |
| `androidpublisher.purchases.products.acknowledge` | POST | `androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}:acknowledge` | Acknowledges a purchase of an inapp item. |
| `androidpublisher.purchases.products.consume` | POST | `androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}:consume` | Consumes a purchase for an inapp item. |
| `androidpublisher.purchases.subscriptions.get` | GET | `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}` | Deprecated: Use purchases.subscriptionsv2.get instead. Checks whether a user's subscription purch... |
| `androidpublisher.purchases.subscriptions.cancel` | POST | `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:cancel` | Cancels a user's subscription purchase. The subscription remains valid until its expiration time.... |
| `androidpublisher.purchases.subscriptions.defer` | POST | `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:defer` | Defers a user's subscription purchase until a specified future expiration time. |
| `androidpublisher.purchases.subscriptions.refund` | POST | `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:refund` | Deprecated: Use orders.refund instead. Refunds a user's subscription purchase, but the subscripti... |
| `androidpublisher.purchases.subscriptions.revoke` | POST | `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:revoke` | Deprecated: Use purchases.subscriptionsv2.revoke instead. Refunds and immediately revokes a user'... |
| `androidpublisher.purchases.subscriptions.acknowledge` | POST | `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:acknowledge` | Acknowledges a subscription purchase. |
| `androidpublisher.purchases.subscriptionsv2.get` | GET | `androidpublisher/v3/applications/{packageName}/purchases/subscriptionsv2/tokens/{token}` | Get metadata about a subscription |
| `androidpublisher.purchases.subscriptionsv2.revoke` | POST | `androidpublisher/v3/applications/{packageName}/purchases/subscriptionsv2/tokens/{token}:revoke` | Revoke a subscription purchase for the user. |
| `androidpublisher.purchases.subscriptionsv2.cancel` | POST | `androidpublisher/v3/applications/{packageName}/purchases/subscriptionsv2/tokens/{token}:cancel` | Cancel a subscription purchase for the user. |
| `androidpublisher.purchases.subscriptionsv2.defer` | POST | `androidpublisher/v3/applications/{packageName}/purchases/subscriptionsv2/tokens/{token}:defer` | Defers the renewal of a subscription. |
| `androidpublisher.purchases.voidedpurchases.list` | GET | `androidpublisher/v3/applications/{packageName}/purchases/voidedpurchases` | Lists the purchases that were canceled, refunded or charged-back. |
| `androidpublisher.edits.insert` | POST | `androidpublisher/v3/applications/{packageName}/edits` | Creates a new edit for an app. |
| `androidpublisher.edits.get` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}` | Gets an app edit. |
| `androidpublisher.edits.delete` | DELETE | `androidpublisher/v3/applications/{packageName}/edits/{editId}` | Deletes an app edit. |
| `androidpublisher.edits.commit` | POST | `androidpublisher/v3/applications/{packageName}/edits/{editId}:commit` | Commits an app edit. |
| `androidpublisher.edits.validate` | POST | `androidpublisher/v3/applications/{packageName}/edits/{editId}:validate` | Validates an app edit. |
| `androidpublisher.edits.apks.upload` | POST | `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks` | Uploads an APK and adds to the current edit. |
| `androidpublisher.edits.apks.list` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks` | Lists all current APKs of the app and edit. |
| `androidpublisher.edits.apks.addexternallyhosted` | POST | `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/externallyHosted` | Creates a new APK without uploading the APK itself to Google Play, instead hosting the APK at a s... |
| `androidpublisher.edits.bundles.list` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles` | Lists all current Android App Bundles of the app and edit. |
| `androidpublisher.edits.bundles.upload` | POST | `androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles` | Uploads a new Android App Bundle to this edit. If you are using the Google API client libraries, ... |
| `androidpublisher.edits.countryavailability.get` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/countryAvailability/{track}` | Gets country availability. |
| `androidpublisher.edits.deobfuscationfiles.upload` | POST | `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/deobfuscationFiles/{deobfuscationFileType}` | Uploads a new deobfuscation file and attaches to the specified APK. |
| `androidpublisher.edits.details.get` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/details` | Gets details of an app. |
| `androidpublisher.edits.details.update` | PUT | `androidpublisher/v3/applications/{packageName}/edits/{editId}/details` | Updates details of an app. |
| `androidpublisher.edits.details.patch` | PATCH | `androidpublisher/v3/applications/{packageName}/edits/{editId}/details` | Patches details of an app. |
| `androidpublisher.edits.expansionfiles.get` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}` | Fetches the expansion file configuration for the specified APK. |
| `androidpublisher.edits.expansionfiles.update` | PUT | `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}` | Updates the APK's expansion file configuration to reference another APK's expansion file. To add ... |
| `androidpublisher.edits.expansionfiles.patch` | PATCH | `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}` | Patches the APK's expansion file configuration to reference another APK's expansion file. To add ... |
| `androidpublisher.edits.expansionfiles.upload` | POST | `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}` | Uploads a new expansion file and attaches to the specified APK. |
| `androidpublisher.edits.images.list` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}` | Lists all images. The response may be empty. |
| `androidpublisher.edits.images.delete` | DELETE | `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}/{imageId}` | Deletes the image (specified by id) from the edit. |
| `androidpublisher.edits.images.deleteall` | DELETE | `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}` | Deletes all images for the specified language and image type. Returns an empty response if no ima... |
| `androidpublisher.edits.images.upload` | POST | `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}` | Uploads an image of the specified language and image type, and adds to the edit. |
| `androidpublisher.edits.listings.update` | PUT | `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}` | Creates or updates a localized store listing. |
| `androidpublisher.edits.listings.patch` | PATCH | `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}` | Patches a localized store listing. |
| `androidpublisher.edits.listings.get` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}` | Gets a localized store listing. |
| `androidpublisher.edits.listings.list` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings` | Lists all localized store listings. |
| `androidpublisher.edits.listings.delete` | DELETE | `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}` | Deletes a localized store listing. |
| `androidpublisher.edits.listings.deleteall` | DELETE | `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings` | Deletes all store listings. |
| `androidpublisher.edits.testers.get` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}` | Gets testers. Note: Testers resource does not support email lists. |
| `androidpublisher.edits.testers.update` | PUT | `androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}` | Updates testers. Note: Testers resource does not support email lists. |
| `androidpublisher.edits.testers.patch` | PATCH | `androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}` | Patches testers. Note: Testers resource does not support email lists. |
| `androidpublisher.edits.tracks.get` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}` | Gets a track. |
| `androidpublisher.edits.tracks.list` | GET | `androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks` | Lists all tracks. |
| `androidpublisher.edits.tracks.update` | PUT | `androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}` | Updates a track. |
| `androidpublisher.edits.tracks.patch` | PATCH | `androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}` | Patches a track. |
| `androidpublisher.edits.tracks.create` | POST | `androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks` | Creates a new track. |
| `androidpublisher.externaltransactions.createexternaltransaction` | POST | `androidpublisher/v3/{+parent}/externalTransactions` | Creates a new external transaction. |
| `androidpublisher.externaltransactions.refundexternaltransaction` | POST | `androidpublisher/v3/{+name}:refund` | Refunds or partially refunds an existing external transaction. |
| `androidpublisher.externaltransactions.getexternaltransaction` | GET | `androidpublisher/v3/{+name}` | Gets an existing external transaction. |
| `androidpublisher.generatedapks.list` | GET | `androidpublisher/v3/applications/{packageName}/generatedApks/{versionCode}` | Returns download metadata for all APKs that were generated from a given app bundle. |
| `androidpublisher.generatedapks.download` | GET | `androidpublisher/v3/applications/{packageName}/generatedApks/{versionCode}/downloads/{downloadId}:download` | Downloads a single signed APK generated from an app bundle. |
| `androidpublisher.inappproducts.get` | GET | `androidpublisher/v3/applications/{packageName}/inappproducts/{sku}` | Gets an in-app product, which can be a managed product or a subscription. This method should no l... |
| `androidpublisher.inappproducts.batchGet` | GET | `androidpublisher/v3/applications/{packageName}/inappproducts:batchGet` | Reads multiple in-app products, which can be managed products or subscriptions. This method shoul... |
| `androidpublisher.inappproducts.list` | GET | `androidpublisher/v3/applications/{packageName}/inappproducts` | Lists all in-app products - both managed products and subscriptions. If an app has a large number... |
| `androidpublisher.inappproducts.insert` | POST | `androidpublisher/v3/applications/{packageName}/inappproducts` | Creates an in-app product (a managed product or a subscription). This method should no longer be ... |
| `androidpublisher.inappproducts.update` | PUT | `androidpublisher/v3/applications/{packageName}/inappproducts/{sku}` | Updates an in-app product (a managed product or a subscription). This method should no longer be ... |
| `androidpublisher.inappproducts.batchUpdate` | POST | `androidpublisher/v3/applications/{packageName}/inappproducts:batchUpdate` | Updates or inserts one or more in-app products (managed products or subscriptions). Set the laten... |
| `androidpublisher.inappproducts.patch` | PATCH | `androidpublisher/v3/applications/{packageName}/inappproducts/{sku}` | Patches an in-app product (a managed product or a subscription). This method should no longer be ... |
| `androidpublisher.inappproducts.delete` | DELETE | `androidpublisher/v3/applications/{packageName}/inappproducts/{sku}` | Deletes an in-app product (a managed product or a subscription). This method should no longer be ... |
| `androidpublisher.inappproducts.batchDelete` | POST | `androidpublisher/v3/applications/{packageName}/inappproducts:batchDelete` | Deletes in-app products (managed products or subscriptions). Set the latencyTolerance field on ne... |
| `androidpublisher.internalappsharingartifacts.uploadapk` | POST | `androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/apk` | Uploads an APK to internal app sharing. If you are using the Google API client libraries, please ... |
| `androidpublisher.internalappsharingartifacts.uploadbundle` | POST | `androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/bundle` | Uploads an app bundle to internal app sharing. If you are using the Google API client libraries, ... |
| `androidpublisher.orders.refund` | POST | `androidpublisher/v3/applications/{packageName}/orders/{orderId}:refund` | Refunds a user's subscription or in-app purchase order. Orders older than 3 years cannot be refun... |
| `androidpublisher.orders.get` | GET | `androidpublisher/v3/applications/{packageName}/orders/{orderId}` | Get order details for a single order. |
| `androidpublisher.orders.batchget` | GET | `androidpublisher/v3/applications/{packageName}/orders:batchGet` | Get order details for a list of orders. |
| `androidpublisher.applications.dataSafety` | POST | `androidpublisher/v3/applications/{packageName}/dataSafety` | Writes the Safety Labels declaration of an app. |
| `androidpublisher.applications.deviceTierConfigs.create` | POST | `androidpublisher/v3/applications/{packageName}/deviceTierConfigs` | Creates a new device tier config for an app. |
| `androidpublisher.applications.deviceTierConfigs.get` | GET | `androidpublisher/v3/applications/{packageName}/deviceTierConfigs/{deviceTierConfigId}` | Returns a particular device tier config. |
| `androidpublisher.applications.deviceTierConfigs.list` | GET | `androidpublisher/v3/applications/{packageName}/deviceTierConfigs` | Returns created device tier configs, ordered by descending creation time. |
| `androidpublisher.monetization.convertRegionPrices` | POST | `androidpublisher/v3/applications/{packageName}/pricing:convertRegionPrices` | Calculates the region prices, using today's exchange rate and country-specific pricing patterns, ... |
| `androidpublisher.monetization.onetimeproducts.get` | GET | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}` | Reads a single one-time product. |
| `androidpublisher.monetization.onetimeproducts.batchGet` | GET | `androidpublisher/v3/applications/{packageName}/oneTimeProducts:batchGet` | Reads one or more one-time products. |
| `androidpublisher.monetization.onetimeproducts.list` | GET | `androidpublisher/v3/applications/{packageName}/oneTimeProducts` | Lists all one-time products under a given app. |
| `androidpublisher.monetization.onetimeproducts.patch` | PATCH | `androidpublisher/v3/applications/{packageName}/onetimeproducts/{productId}` | Creates or updates a one-time product. |
| `androidpublisher.monetization.onetimeproducts.batchUpdate` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts:batchUpdate` | Creates or updates one or more one-time products. |
| `androidpublisher.monetization.onetimeproducts.delete` | DELETE | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}` | Deletes a one-time product. |
| `androidpublisher.monetization.onetimeproducts.batchDelete` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts:batchDelete` | Deletes one or more one-time products. |
| `androidpublisher.monetization.onetimeproducts.purchaseOptions.batchUpdateStates` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions:batchUpdateStates` | Activates or deactivates purchase options across one or multiple one-time products. |
| `androidpublisher.monetization.onetimeproducts.purchaseOptions.batchDelete` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions:batchDelete` | Deletes purchase options across one or multiple one-time products. By default this operation will... |
| `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.list` | GET | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers` | Lists all offers under a given app, product, or purchase option. |
| `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchGet` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers:batchGet` | Reads one or more one-time product offers. |
| `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchUpdate` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers:batchUpdate` | Creates or updates one or more one-time product offers. |
| `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchUpdateStates` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers:batchUpdateStates` | Updates a batch of one-time product offer states. |
| `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchDelete` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers:batchDelete` | Deletes one or more one-time product offers. |
| `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.activate` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers/{offerId}:activate` | Activates a one-time product offer. |
| `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.cancel` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers/{offerId}:cancel` | Cancels a one-time product offer. |
| `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.deactivate` | POST | `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers/{offerId}:deactivate` | Deactivates a one-time product offer. |
| `androidpublisher.monetization.subscriptions.get` | GET | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}` | Reads a single subscription. |
| `androidpublisher.monetization.subscriptions.batchGet` | GET | `androidpublisher/v3/applications/{packageName}/subscriptions:batchGet` | Reads one or more subscriptions. |
| `androidpublisher.monetization.subscriptions.list` | GET | `androidpublisher/v3/applications/{packageName}/subscriptions` | Lists all subscriptions under a given app. |
| `androidpublisher.monetization.subscriptions.create` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions` | Creates a new subscription. Newly added base plans will remain in draft state until activated. |
| `androidpublisher.monetization.subscriptions.patch` | PATCH | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}` | Updates an existing subscription. |
| `androidpublisher.monetization.subscriptions.batchUpdate` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions:batchUpdate` | Updates a batch of subscriptions. Set the latencyTolerance field on nested requests to PRODUCT_UP... |
| `androidpublisher.monetization.subscriptions.delete` | DELETE | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}` | Deletes a subscription. A subscription can only be deleted if it has never had a base plan publis... |
| `androidpublisher.monetization.subscriptions.archive` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}:archive` | Deprecated: subscription archiving is not supported. |
| `androidpublisher.monetization.subscriptions.basePlans.delete` | DELETE | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}` | Deletes a base plan. Can only be done for draft base plans. This action is irreversible. |
| `androidpublisher.monetization.subscriptions.basePlans.activate` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:activate` | Activates a base plan. Once activated, base plans will be available to new subscribers. |
| `androidpublisher.monetization.subscriptions.basePlans.deactivate` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:deactivate` | Deactivates a base plan. Once deactivated, the base plan will become unavailable to new subscribe... |
| `androidpublisher.monetization.subscriptions.basePlans.batchUpdateStates` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans:batchUpdateStates` | Activates or deactivates base plans across one or multiple subscriptions. Set the latencyToleranc... |
| `androidpublisher.monetization.subscriptions.basePlans.migratePrices` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:migratePrices` | Migrates subscribers from one or more legacy price cohorts to the current price. Requests result ... |
| `androidpublisher.monetization.subscriptions.basePlans.batchMigratePrices` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans:batchMigratePrices` | Batch variant of the MigrateBasePlanPrices endpoint. Set the latencyTolerance field on nested req... |
| `androidpublisher.monetization.subscriptions.basePlans.offers.get` | GET | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}` | Reads a single offer |
| `androidpublisher.monetization.subscriptions.basePlans.offers.batchGet` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers:batchGet` | Reads one or more subscription offers. |
| `androidpublisher.monetization.subscriptions.basePlans.offers.list` | GET | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers` | Lists all offers under a given subscription. |
| `androidpublisher.monetization.subscriptions.basePlans.offers.create` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers` | Creates a new subscription offer. Only auto-renewing base plans can have subscription offers. The... |
| `androidpublisher.monetization.subscriptions.basePlans.offers.patch` | PATCH | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}` | Updates an existing subscription offer. |
| `androidpublisher.monetization.subscriptions.basePlans.offers.batchUpdate` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers:batchUpdate` | Updates a batch of subscription offers. Set the latencyTolerance field on nested requests to PROD... |
| `androidpublisher.monetization.subscriptions.basePlans.offers.activate` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}:activate` | Activates a subscription offer. Once activated, subscription offers will be available to new subs... |
| `androidpublisher.monetization.subscriptions.basePlans.offers.deactivate` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}:deactivate` | Deactivates a subscription offer. Once deactivated, existing subscribers will maintain their subs... |
| `androidpublisher.monetization.subscriptions.basePlans.offers.batchUpdateStates` | POST | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers:batchUpdateStates` | Updates a batch of subscription offer states. Set the latencyTolerance field on nested requests t... |
| `androidpublisher.monetization.subscriptions.basePlans.offers.delete` | DELETE | `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}` | Deletes a subscription offer. Can only be done for draft offers. This action is irreversible. |
| `androidpublisher.reviews.get` | GET | `androidpublisher/v3/applications/{packageName}/reviews/{reviewId}` | Gets a single review. |
| `androidpublisher.reviews.list` | GET | `androidpublisher/v3/applications/{packageName}/reviews` | Lists all reviews. |
| `androidpublisher.reviews.reply` | POST | `androidpublisher/v3/applications/{packageName}/reviews/{reviewId}:reply` | Replies to a single review, or updates an existing reply. |
| `androidpublisher.systemapks.variants.create` | POST | `androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants` | Creates an APK which is suitable for inclusion in a system image from an already uploaded Android... |
| `androidpublisher.systemapks.variants.list` | GET | `androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants` | Returns the list of previously created system APK variants. |
| `androidpublisher.systemapks.variants.get` | GET | `androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}` | Returns a previously created system APK variant. |
| `androidpublisher.systemapks.variants.download` | GET | `androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}:download` | Downloads a previously created system APK which is suitable for inclusion in a system image. |

### `androidpublisher.users.create`

**POST** `androidpublisher/v3/{+parent}/users`

Grant access for a user to the given developer account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The developer account to add the user to. Format: developers/{developer} |

**Request body**: `User`

**Response**: `User`

```typescript
const res = await androidpublisher.users.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.users.list`

**GET** `androidpublisher/v3/{+parent}/users`

Lists all users with access to a developer account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The developer account to fetch users from. Format: developers/{developer} |
| `pageSize` | `integer` | query | No | The maximum number of results to return. This must be set to -1 to disable pagination. |
| `pageToken` | `string` | query | No | A token received from a previous call to this method, in order to retrieve further results. |

**Response**: `ListUsersResponse`

```typescript
const res = await androidpublisher.users.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.users.patch`

**PATCH** `androidpublisher/v3/{+name}`

Updates access for the user to the developer account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for this user, following the pattern "developers/{developer}/users/{email}". |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. |

**Request body**: `User`

**Response**: `User`

```typescript
const res = await androidpublisher.users.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.users.delete`

**DELETE** `androidpublisher/v3/{+name}`

Removes all access for the user to the given developer account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the user to delete. Format: developers/{developer}/users/{email} |

```typescript
const res = await androidpublisher.users.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.grants.create`

**POST** `androidpublisher/v3/{+parent}/grants`

Grant access for a user to the given package.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The user which needs permission. Format: developers/{developer}/users/{user} |

**Request body**: `Grant`

**Response**: `Grant`

```typescript
const res = await androidpublisher.grants.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.grants.patch`

**PATCH** `androidpublisher/v3/{+name}`

Updates access for the user to the given package.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name for this grant, following the pattern "developers/{developer}/users/{email}/grants/{package_n... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. |

**Request body**: `Grant`

**Response**: `Grant`

```typescript
const res = await androidpublisher.grants.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.grants.delete`

**DELETE** `androidpublisher/v3/{+name}`

Removes all access for the user to the given package or developer account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the grant to delete. Format: developers/{developer}/users/{email}/grants/{package_name} |

```typescript
const res = await androidpublisher.grants.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.apprecovery.create`

**POST** `androidpublisher/v3/applications/{packageName}/appRecoveries`

Create an app recovery action with recovery status as DRAFT. Note that this action does not execute the recovery action.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Package name of the app on which recovery action is performed. |

**Request body**: `CreateDraftAppRecoveryRequest`

**Response**: `AppRecoveryAction`

```typescript
const res = await androidpublisher.apprecovery.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.apprecovery.deploy`

**POST** `androidpublisher/v3/applications/{packageName}/appRecoveries/{appRecoveryId}:deploy`

Deploy an already created app recovery action with recovery status DRAFT. Note that this action activates the recovery action for all targeted users and changes its status to ACTIVE.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Package name of the app for which recovery action is deployed. |
| `appRecoveryId` | `string` | path | Yes | Required. ID corresponding to the app recovery action to deploy. |

**Request body**: `DeployAppRecoveryRequest`

**Response**: `DeployAppRecoveryResponse`

```typescript
const res = await androidpublisher.apprecovery.deploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.apprecovery.list`

**GET** `androidpublisher/v3/applications/{packageName}/appRecoveries`

List all app recovery action resources associated with a particular package name and app version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Package name of the app for which list of recovery actions is requested. |
| `versionCode` | `string` | query | No | Required. Version code targeted by the list of recovery actions. |

**Response**: `ListAppRecoveriesResponse`

```typescript
const res = await androidpublisher.apprecovery.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.apprecovery.addTargeting`

**POST** `androidpublisher/v3/applications/{packageName}/appRecoveries/{appRecoveryId}:addTargeting`

Incrementally update targeting for a recovery action. Note that only the criteria selected during the creation of recovery action can be expanded.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Package name of the app for which recovery action is to be updated. |
| `appRecoveryId` | `string` | path | Yes | Required. ID corresponding to the app recovery action. |

**Request body**: `AddTargetingRequest`

**Response**: `AddTargetingResponse`

```typescript
const res = await androidpublisher.apprecovery.addTargeting({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.apprecovery.cancel`

**POST** `androidpublisher/v3/applications/{packageName}/appRecoveries/{appRecoveryId}:cancel`

Cancel an already executing app recovery action. Note that this action changes status of the recovery action to CANCELED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Package name of the app for which recovery action cancellation is requested. |
| `appRecoveryId` | `string` | path | Yes | Required. ID corresponding to the app recovery action. |

**Request body**: `CancelAppRecoveryRequest`

**Response**: `CancelAppRecoveryResponse`

```typescript
const res = await androidpublisher.apprecovery.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.productsv2.getproductpurchasev2`

**GET** `androidpublisher/v3/applications/{packageName}/purchases/productsv2/tokens/{token}`

Checks the purchase and consumption status of an inapp item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application the inapp product was sold in (for example, 'com.some.thing'). |
| `token` | `string` | path | Yes | The token provided to the user's device when the inapp product was purchased. |

**Response**: `ProductPurchaseV2`

```typescript
const res = await androidpublisher.productsv2.getproductpurchasev2({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.products.get`

**GET** `androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}`

Checks the purchase and consumption status of an inapp item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application the inapp product was sold in (for example, 'com.some.thing'). |
| `productId` | `string` | path | Yes | The inapp product SKU (for example, 'com.some.thing.inapp1'). |
| `token` | `string` | path | Yes | The token provided to the user's device when the inapp product was purchased. |

**Response**: `ProductPurchase`

```typescript
const res = await androidpublisher.products.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.products.acknowledge`

**POST** `androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}:acknowledge`

Acknowledges a purchase of an inapp item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application the inapp product was sold in (for example, 'com.some.thing'). |
| `productId` | `string` | path | Yes | The inapp product SKU (for example, 'com.some.thing.inapp1'). |
| `token` | `string` | path | Yes | The token provided to the user's device when the inapp product was purchased. |

**Request body**: `ProductPurchasesAcknowledgeRequest`

```typescript
const res = await androidpublisher.products.acknowledge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.products.consume`

**POST** `androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}:consume`

Consumes a purchase for an inapp item.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application the inapp product was sold in (for example, 'com.some.thing'). |
| `productId` | `string` | path | Yes | The inapp product SKU (for example, 'com.some.thing.inapp1'). |
| `token` | `string` | path | Yes | The token provided to the user's device when the inapp product was purchased. |

```typescript
const res = await androidpublisher.products.consume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.subscriptions.get`

**GET** `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}`

Deprecated: Use purchases.subscriptionsv2.get instead. Checks whether a user's subscription purchase is valid and returns its expiry time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application for which this subscription was purchased (for example, 'com.some.thing'). |
| `subscriptionId` | `string` | path | Yes | The purchased subscription ID (for example, 'monthly001'). |
| `token` | `string` | path | Yes | The token provided to the user's device when the subscription was purchased. |

**Response**: `SubscriptionPurchase`

```typescript
const res = await androidpublisher.subscriptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.subscriptions.cancel`

**POST** `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:cancel`

Cancels a user's subscription purchase. The subscription remains valid until its expiration time. Newer version is available at purchases.subscriptionsv2.cancel for better client library support.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application for which this subscription was purchased (for example, 'com.some.thing'). |
| `subscriptionId` | `string` | path | Yes | Note: Since May 21, 2025, subscription_id is not required, and not recommended for subscription with add-ons. The pur... |
| `token` | `string` | path | Yes | The token provided to the user's device when the subscription was purchased. |

```typescript
const res = await androidpublisher.subscriptions.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.subscriptions.defer`

**POST** `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:defer`

Defers a user's subscription purchase until a specified future expiration time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application for which this subscription was purchased (for example, 'com.some.thing'). |
| `subscriptionId` | `string` | path | Yes | The purchased subscription ID (for example, 'monthly001'). |
| `token` | `string` | path | Yes | The token provided to the user's device when the subscription was purchased. |

**Request body**: `SubscriptionPurchasesDeferRequest`

**Response**: `SubscriptionPurchasesDeferResponse`

```typescript
const res = await androidpublisher.subscriptions.defer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.subscriptions.refund`

**POST** `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:refund`

Deprecated: Use orders.refund instead. Refunds a user's subscription purchase, but the subscription remains valid until its expiration time and it will continue to recur.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application for which this subscription was purchased (for example, 'com.some.thing'). |
| `subscriptionId` | `string` | path | Yes | "The purchased subscription ID (for example, 'monthly001'). |
| `token` | `string` | path | Yes | The token provided to the user's device when the subscription was purchased. |

```typescript
const res = await androidpublisher.subscriptions.refund({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.subscriptions.revoke`

**POST** `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:revoke`

Deprecated: Use purchases.subscriptionsv2.revoke instead. Refunds and immediately revokes a user's subscription purchase. Access to the subscription will be terminated immediately and it will stop recurring.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application for which this subscription was purchased (for example, 'com.some.thing'). |
| `subscriptionId` | `string` | path | Yes | The purchased subscription ID (for example, 'monthly001'). |
| `token` | `string` | path | Yes | The token provided to the user's device when the subscription was purchased. |

```typescript
const res = await androidpublisher.subscriptions.revoke({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.subscriptions.acknowledge`

**POST** `androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:acknowledge`

Acknowledges a subscription purchase.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application for which this subscription was purchased (for example, 'com.some.thing'). |
| `subscriptionId` | `string` | path | Yes | Note: Since May 21, 2025, subscription_id is not required, and not recommended for subscription with add-ons. The pur... |
| `token` | `string` | path | Yes | The token provided to the user's device when the subscription was purchased. |

**Request body**: `SubscriptionPurchasesAcknowledgeRequest`

```typescript
const res = await androidpublisher.subscriptions.acknowledge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.subscriptionsv2.get`

**GET** `androidpublisher/v3/applications/{packageName}/purchases/subscriptionsv2/tokens/{token}`

Get metadata about a subscription

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package of the application for which this subscription was purchased (for example, 'com.some.thing'). |
| `token` | `string` | path | Yes | Required. The token provided to the user's device when the subscription was purchased. |

**Response**: `SubscriptionPurchaseV2`

```typescript
const res = await androidpublisher.subscriptionsv2.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.subscriptionsv2.revoke`

**POST** `androidpublisher/v3/applications/{packageName}/purchases/subscriptionsv2/tokens/{token}:revoke`

Revoke a subscription purchase for the user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The package of the application for which this subscription was purchased (for example, 'com.some.thing'). |
| `token` | `string` | path | Yes | Required. The token provided to the user's device when the subscription was purchased. |

**Request body**: `RevokeSubscriptionPurchaseRequest`

**Response**: `RevokeSubscriptionPurchaseResponse`

```typescript
const res = await androidpublisher.subscriptionsv2.revoke({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.subscriptionsv2.cancel`

**POST** `androidpublisher/v3/applications/{packageName}/purchases/subscriptionsv2/tokens/{token}:cancel`

Cancel a subscription purchase for the user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The package of the application for which this subscription was purchased (for example, 'com.some.thing'). |
| `token` | `string` | path | Yes | Required. The token provided to the user's device when the subscription was purchased. |

**Request body**: `CancelSubscriptionPurchaseRequest`

**Response**: `CancelSubscriptionPurchaseResponse`

```typescript
const res = await androidpublisher.subscriptionsv2.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.subscriptionsv2.defer`

**POST** `androidpublisher/v3/applications/{packageName}/purchases/subscriptionsv2/tokens/{token}:defer`

Defers the renewal of a subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The package of the application for which this subscription was purchased (for example, 'com.some.thing'). |
| `token` | `string` | path | Yes | Required. The token provided to the user's device when the subscription was purchased. |

**Request body**: `DeferSubscriptionPurchaseRequest`

**Response**: `DeferSubscriptionPurchaseResponse`

```typescript
const res = await androidpublisher.subscriptionsv2.defer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.purchases.voidedpurchases.list`

**GET** `androidpublisher/v3/applications/{packageName}/purchases/voidedpurchases`

Lists the purchases that were canceled, refunded or charged-back.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application for which voided purchases need to be returned (for example, 'com.some.thing'). |
| `endTime` | `string` | query | No | The time, in milliseconds since the Epoch, of the newest voided purchase that you want to see in the response. The va... |
| `includeQuantityBasedPartialRefund` | `boolean` | query | No | Optional. Whether to include voided purchases of quantity-based partial refunds, which are applicable only to multi-q... |
| `maxResults` | `integer` | query | No | Defines how many results the list operation should return. The default number depends on the resource collection. |
| `startIndex` | `integer` | query | No | Defines the index of the first element to return. This can only be used if indexed paging is enabled. |
| `startTime` | `string` | query | No | The time, in milliseconds since the Epoch, of the oldest voided purchase that you want to see in the response. The va... |
| `token` | `string` | query | No | Defines the token of the page to return, usually taken from TokenPagination. This can only be used if token paging is... |
| `type` | `integer` | query | No | The type of voided purchases that you want to see in the response. Possible values are: 0. Only voided in-app product... |

**Response**: `VoidedPurchasesListResponse`

```typescript
const res = await androidpublisher.voidedpurchases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.insert`

**POST** `androidpublisher/v3/applications/{packageName}/edits`

Creates a new edit for an app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |

**Request body**: `AppEdit`

**Response**: `AppEdit`

```typescript
const res = await androidpublisher.edits.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.get`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}`

Gets an app edit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Response**: `AppEdit`

```typescript
const res = await androidpublisher.edits.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.delete`

**DELETE** `androidpublisher/v3/applications/{packageName}/edits/{editId}`

Deletes an app edit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

```typescript
const res = await androidpublisher.edits.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.commit`

**POST** `androidpublisher/v3/applications/{packageName}/edits/{editId}:commit`

Commits an app edit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `changesNotSentForReview` | `boolean` | query | No | When a rejection happens, the parameter will make sure that the changes in this edit won't be reviewed until they are... |

**Response**: `AppEdit`

```typescript
const res = await androidpublisher.edits.commit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.validate`

**POST** `androidpublisher/v3/applications/{packageName}/edits/{editId}:validate`

Validates an app edit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Response**: `AppEdit`

```typescript
const res = await androidpublisher.edits.validate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.apks.upload`

**POST** `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks`

Uploads an APK and adds to the current edit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Response**: `Apk`

```typescript
const res = await androidpublisher.apks.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.apks.list`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks`

Lists all current APKs of the app and edit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Response**: `ApksListResponse`

```typescript
const res = await androidpublisher.apks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.apks.addexternallyhosted`

**POST** `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/externallyHosted`

Creates a new APK without uploading the APK itself to Google Play, instead hosting the APK at a specified URL. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Request body**: `ApksAddExternallyHostedRequest`

**Response**: `ApksAddExternallyHostedResponse`

```typescript
const res = await androidpublisher.apks.addexternallyhosted({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.bundles.list`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles`

Lists all current Android App Bundles of the app and edit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Response**: `BundlesListResponse`

```typescript
const res = await androidpublisher.bundles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.bundles.upload`

**POST** `androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles`

Uploads a new Android App Bundle to this edit. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See [Timeouts and Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors) for an example in java.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `ackBundleInstallationWarning` | `boolean` | query | No | Deprecated. The installation warning has been removed, it's not necessary to set this field anymore. |
| `deviceTierConfigId` | `string` | query | No | Device tier config (DTC) to be used for generating deliverables (APKs). Contains id of the DTC or "LATEST" for last u... |

**Response**: `Bundle`

```typescript
const res = await androidpublisher.bundles.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.countryavailability.get`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/countryAvailability/{track}`

Gets country availability.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `track` | `string` | path | Yes | The track to read from. |

**Response**: `TrackCountryAvailability`

```typescript
const res = await androidpublisher.countryavailability.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.deobfuscationfiles.upload`

**POST** `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/deobfuscationFiles/{deobfuscationFileType}`

Uploads a new deobfuscation file and attaches to the specified APK.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Unique identifier for the Android app. |
| `editId` | `string` | path | Yes | Unique identifier for this edit. |
| `apkVersionCode` | `integer` | path | Yes | The version code of the APK whose Deobfuscation File is being uploaded. |
| `deobfuscationFileType` | `string` | path | Yes | The type of the deobfuscation file. |

**Response**: `DeobfuscationFilesUploadResponse`

```typescript
const res = await androidpublisher.deobfuscationfiles.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.details.get`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/details`

Gets details of an app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Response**: `AppDetails`

```typescript
const res = await androidpublisher.details.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.details.update`

**PUT** `androidpublisher/v3/applications/{packageName}/edits/{editId}/details`

Updates details of an app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Request body**: `AppDetails`

**Response**: `AppDetails`

```typescript
const res = await androidpublisher.details.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.details.patch`

**PATCH** `androidpublisher/v3/applications/{packageName}/edits/{editId}/details`

Patches details of an app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Request body**: `AppDetails`

**Response**: `AppDetails`

```typescript
const res = await androidpublisher.details.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.expansionfiles.get`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}`

Fetches the expansion file configuration for the specified APK.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `apkVersionCode` | `integer` | path | Yes | The version code of the APK whose expansion file configuration is being read or modified. |
| `expansionFileType` | `string` | path | Yes | The file type of the file configuration which is being read or modified. |

**Response**: `ExpansionFile`

```typescript
const res = await androidpublisher.expansionfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.expansionfiles.update`

**PUT** `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}`

Updates the APK's expansion file configuration to reference another APK's expansion file. To add a new expansion file use the Upload method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `apkVersionCode` | `integer` | path | Yes | The version code of the APK whose expansion file configuration is being read or modified. |
| `expansionFileType` | `string` | path | Yes | The file type of the file configuration which is being read or modified. |

**Request body**: `ExpansionFile`

**Response**: `ExpansionFile`

```typescript
const res = await androidpublisher.expansionfiles.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.expansionfiles.patch`

**PATCH** `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}`

Patches the APK's expansion file configuration to reference another APK's expansion file. To add a new expansion file use the Upload method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `apkVersionCode` | `integer` | path | Yes | The version code of the APK whose expansion file configuration is being read or modified. |
| `expansionFileType` | `string` | path | Yes | The file type of the expansion file configuration which is being updated. |

**Request body**: `ExpansionFile`

**Response**: `ExpansionFile`

```typescript
const res = await androidpublisher.expansionfiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.expansionfiles.upload`

**POST** `androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}`

Uploads a new expansion file and attaches to the specified APK.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `apkVersionCode` | `integer` | path | Yes | The version code of the APK whose expansion file configuration is being read or modified. |
| `expansionFileType` | `string` | path | Yes | The file type of the expansion file configuration which is being updated. |

**Response**: `ExpansionFilesUploadResponse`

```typescript
const res = await androidpublisher.expansionfiles.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.images.list`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}`

Lists all images. The response may be empty.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `language` | `string` | path | Yes | Language localization code (a BCP-47 language tag; for example, "de-AT" for Austrian German). There must be a store l... |
| `imageType` | `string` | path | Yes | Type of the Image. Providing an image type that refers to no images will return an empty response. |

**Response**: `ImagesListResponse`

```typescript
const res = await androidpublisher.images.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.images.delete`

**DELETE** `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}/{imageId}`

Deletes the image (specified by id) from the edit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `language` | `string` | path | Yes | Language localization code (a BCP-47 language tag; for example, "de-AT" for Austrian German). |
| `imageType` | `string` | path | Yes | Type of the Image. |
| `imageId` | `string` | path | Yes | Unique identifier an image within the set of images attached to this edit. |

```typescript
const res = await androidpublisher.images.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.images.deleteall`

**DELETE** `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}`

Deletes all images for the specified language and image type. Returns an empty response if no images are found.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `language` | `string` | path | Yes | Language localization code (a BCP-47 language tag; for example, "de-AT" for Austrian German). Providing a language th... |
| `imageType` | `string` | path | Yes | Type of the Image. Providing an image type that refers to no images is a no-op. |

**Response**: `ImagesDeleteAllResponse`

```typescript
const res = await androidpublisher.images.deleteall({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.images.upload`

**POST** `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}`

Uploads an image of the specified language and image type, and adds to the edit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `language` | `string` | path | Yes | Language localization code (a BCP-47 language tag; for example, "de-AT" for Austrian German). Providing a language th... |
| `imageType` | `string` | path | Yes | Type of the Image. |

**Response**: `ImagesUploadResponse`

```typescript
const res = await androidpublisher.images.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.listings.update`

**PUT** `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}`

Creates or updates a localized store listing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `language` | `string` | path | Yes | Language localization code (a BCP-47 language tag; for example, "de-AT" for Austrian German). |

**Request body**: `Listing`

**Response**: `Listing`

```typescript
const res = await androidpublisher.listings.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.listings.patch`

**PATCH** `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}`

Patches a localized store listing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `language` | `string` | path | Yes | Language localization code (a BCP-47 language tag; for example, "de-AT" for Austrian German). |

**Request body**: `Listing`

**Response**: `Listing`

```typescript
const res = await androidpublisher.listings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.listings.get`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}`

Gets a localized store listing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `language` | `string` | path | Yes | Language localization code (a BCP-47 language tag; for example, "de-AT" for Austrian German). |

**Response**: `Listing`

```typescript
const res = await androidpublisher.listings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.listings.list`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings`

Lists all localized store listings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Response**: `ListingsListResponse`

```typescript
const res = await androidpublisher.listings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.listings.delete`

**DELETE** `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}`

Deletes a localized store listing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `language` | `string` | path | Yes | Language localization code (a BCP-47 language tag; for example, "de-AT" for Austrian German). |

```typescript
const res = await androidpublisher.listings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.listings.deleteall`

**DELETE** `androidpublisher/v3/applications/{packageName}/edits/{editId}/listings`

Deletes all store listings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

```typescript
const res = await androidpublisher.listings.deleteall({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.testers.get`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}`

Gets testers. Note: Testers resource does not support email lists.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `track` | `string` | path | Yes | The track to read from. |

**Response**: `Testers`

```typescript
const res = await androidpublisher.testers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.testers.update`

**PUT** `androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}`

Updates testers. Note: Testers resource does not support email lists.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `track` | `string` | path | Yes | The track to update. |

**Request body**: `Testers`

**Response**: `Testers`

```typescript
const res = await androidpublisher.testers.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.testers.patch`

**PATCH** `androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}`

Patches testers. Note: Testers resource does not support email lists.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `track` | `string` | path | Yes | The track to update. |

**Request body**: `Testers`

**Response**: `Testers`

```typescript
const res = await androidpublisher.testers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.tracks.get`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}`

Gets a track.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `track` | `string` | path | Yes | Identifier of the track. [More on track name](https://developers.google.com/android-publisher/tracks#ff-track-name) |

**Response**: `Track`

```typescript
const res = await androidpublisher.tracks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.tracks.list`

**GET** `androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks`

Lists all tracks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |

**Response**: `TracksListResponse`

```typescript
const res = await androidpublisher.tracks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.tracks.update`

**PUT** `androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}`

Updates a track.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `track` | `string` | path | Yes | Identifier of the track. [More on track name](https://developers.google.com/android-publisher/tracks#ff-track-name) |

**Request body**: `Track`

**Response**: `Track`

```typescript
const res = await androidpublisher.tracks.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.tracks.patch`

**PATCH** `androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}`

Patches a track.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `editId` | `string` | path | Yes | Identifier of the edit. |
| `track` | `string` | path | Yes | Identifier of the track. [More on track name](https://developers.google.com/android-publisher/tracks#ff-track-name) |

**Request body**: `Track`

**Response**: `Track`

```typescript
const res = await androidpublisher.tracks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.edits.tracks.create`

**POST** `androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks`

Creates a new track.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Package name of the app. |
| `editId` | `string` | path | Yes | Required. Identifier of the edit. |

**Request body**: `TrackConfig`

**Response**: `Track`

```typescript
const res = await androidpublisher.tracks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.externaltransactions.createexternaltransaction`

**POST** `androidpublisher/v3/{+parent}/externalTransactions`

Creates a new external transaction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this external transaction will be created. Format: applications/{package_name} |
| `externalTransactionId` | `string` | query | No | Required. The id to use for the external transaction. Must be unique across all other transactions for the app. This ... |

**Request body**: `ExternalTransaction`

**Response**: `ExternalTransaction`

```typescript
const res = await androidpublisher.externaltransactions.createexternaltransaction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.externaltransactions.refundexternaltransaction`

**POST** `androidpublisher/v3/{+name}:refund`

Refunds or partially refunds an existing external transaction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the external transaction that will be refunded. Format: applications/{package_name}/externalTra... |

**Request body**: `RefundExternalTransactionRequest`

**Response**: `ExternalTransaction`

```typescript
const res = await androidpublisher.externaltransactions.refundexternaltransaction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.externaltransactions.getexternaltransaction`

**GET** `androidpublisher/v3/{+name}`

Gets an existing external transaction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the external transaction to retrieve. Format: applications/{package_name}/externalTransactions/... |

**Response**: `ExternalTransaction`

```typescript
const res = await androidpublisher.externaltransactions.getexternaltransaction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.generatedapks.list`

**GET** `androidpublisher/v3/applications/{packageName}/generatedApks/{versionCode}`

Returns download metadata for all APKs that were generated from a given app bundle.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `versionCode` | `integer` | path | Yes | Version code of the app bundle. |

**Response**: `GeneratedApksListResponse`

```typescript
const res = await androidpublisher.generatedapks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.generatedapks.download`

**GET** `androidpublisher/v3/applications/{packageName}/generatedApks/{versionCode}/downloads/{downloadId}:download`

Downloads a single signed APK generated from an app bundle.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `versionCode` | `integer` | path | Yes | Version code of the app bundle. |
| `downloadId` | `string` | path | Yes | Download ID, which uniquely identifies the APK to download. Can be obtained from the response of `generatedapks.list`... |

```typescript
const res = await androidpublisher.generatedapks.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.inappproducts.get`

**GET** `androidpublisher/v3/applications/{packageName}/inappproducts/{sku}`

Gets an in-app product, which can be a managed product or a subscription. This method should no longer be used to retrieve subscriptions. See [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `sku` | `string` | path | Yes | Unique identifier for the in-app product. |

**Response**: `InAppProduct`

```typescript
const res = await androidpublisher.inappproducts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.inappproducts.batchGet`

**GET** `androidpublisher/v3/applications/{packageName}/inappproducts:batchGet`

Reads multiple in-app products, which can be managed products or subscriptions. This method should not be used to retrieve subscriptions. See [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `sku` | `string` | query | No | Unique identifier for the in-app products. |

**Response**: `InappproductsBatchGetResponse`

```typescript
const res = await androidpublisher.inappproducts.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.inappproducts.list`

**GET** `androidpublisher/v3/applications/{packageName}/inappproducts`

Lists all in-app products - both managed products and subscriptions. If an app has a large number of in-app products, the response may be paginated. In this case the response field `tokenPagination.nextPageToken` will be set and the caller should provide its value as a `token` request parameter to retrieve the next page. This method should no longer be used to retrieve subscriptions. See [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `maxResults` | `integer` | query | No | Deprecated and ignored. The page size is determined by the server. |
| `startIndex` | `integer` | query | No | Deprecated and ignored. Set the `token` parameter to retrieve the next page. |
| `token` | `string` | query | No | Pagination token. If empty, list starts at the first product. |

**Response**: `InappproductsListResponse`

```typescript
const res = await androidpublisher.inappproducts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.inappproducts.insert`

**POST** `androidpublisher/v3/applications/{packageName}/inappproducts`

Creates an in-app product (a managed product or a subscription). This method should no longer be used to create subscriptions. See [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `autoConvertMissingPrices` | `boolean` | query | No | If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app produ... |

**Request body**: `InAppProduct`

**Response**: `InAppProduct`

```typescript
const res = await androidpublisher.inappproducts.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.inappproducts.update`

**PUT** `androidpublisher/v3/applications/{packageName}/inappproducts/{sku}`

Updates an in-app product (a managed product or a subscription). This method should no longer be used to update subscriptions. See [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `sku` | `string` | path | Yes | Unique identifier for the in-app product. |
| `allowMissing` | `boolean` | query | No | If set to true, and the in-app product with the given package_name and sku doesn't exist, the in-app product will be ... |
| `autoConvertMissingPrices` | `boolean` | query | No | If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app produ... |
| `latencyTolerance` | `string` | query | No | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive. |

**Request body**: `InAppProduct`

**Response**: `InAppProduct`

```typescript
const res = await androidpublisher.inappproducts.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.inappproducts.batchUpdate`

**POST** `androidpublisher/v3/applications/{packageName}/inappproducts:batchUpdate`

Updates or inserts one or more in-app products (managed products or subscriptions). Set the latencyTolerance field on nested requests to PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum update throughput. This method should no longer be used to update subscriptions. See [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |

**Request body**: `InappproductsBatchUpdateRequest`

**Response**: `InappproductsBatchUpdateResponse`

```typescript
const res = await androidpublisher.inappproducts.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.inappproducts.patch`

**PATCH** `androidpublisher/v3/applications/{packageName}/inappproducts/{sku}`

Patches an in-app product (a managed product or a subscription). This method should no longer be used to update subscriptions. See [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `sku` | `string` | path | Yes | Unique identifier for the in-app product. |
| `autoConvertMissingPrices` | `boolean` | query | No | If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app produ... |
| `latencyTolerance` | `string` | query | No | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive. |

**Request body**: `InAppProduct`

**Response**: `InAppProduct`

```typescript
const res = await androidpublisher.inappproducts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.inappproducts.delete`

**DELETE** `androidpublisher/v3/applications/{packageName}/inappproducts/{sku}`

Deletes an in-app product (a managed product or a subscription). This method should no longer be used to delete subscriptions. See [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `sku` | `string` | path | Yes | Unique identifier for the in-app product. |
| `latencyTolerance` | `string` | query | No | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive. |

```typescript
const res = await androidpublisher.inappproducts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.inappproducts.batchDelete`

**POST** `androidpublisher/v3/applications/{packageName}/inappproducts:batchDelete`

Deletes in-app products (managed products or subscriptions). Set the latencyTolerance field on nested requests to PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum update throughput. This method should not be used to delete subscriptions. See [this article](https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html) for more information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |

**Request body**: `InappproductsBatchDeleteRequest`

```typescript
const res = await androidpublisher.inappproducts.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.internalappsharingartifacts.uploadapk`

**POST** `androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/apk`

Uploads an APK to internal app sharing. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See [Timeouts and Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors) for an example in java.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |

**Response**: `InternalAppSharingArtifact`

```typescript
const res = await androidpublisher.internalappsharingartifacts.uploadapk({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.internalappsharingartifacts.uploadbundle`

**POST** `androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/bundle`

Uploads an app bundle to internal app sharing. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See [Timeouts and Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors) for an example in java.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |

**Response**: `InternalAppSharingArtifact`

```typescript
const res = await androidpublisher.internalappsharingartifacts.uploadbundle({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.orders.refund`

**POST** `androidpublisher/v3/applications/{packageName}/orders/{orderId}:refund`

Refunds a user's subscription or in-app purchase order. Orders older than 3 years cannot be refunded.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | The package name of the application for which this subscription or in-app item was purchased (for example, 'com.some.... |
| `orderId` | `string` | path | Yes | The order ID provided to the user when the subscription or in-app order was purchased. |
| `revoke` | `boolean` | query | No | Whether to revoke the purchased item. If set to true, access to the subscription or in-app item will be terminated im... |

```typescript
const res = await androidpublisher.orders.refund({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.orders.get`

**GET** `androidpublisher/v3/applications/{packageName}/orders/{orderId}`

Get order details for a single order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The package name of the application for which this subscription or in-app item was purchased (for example, ... |
| `orderId` | `string` | path | Yes | Required. The order ID provided to the user when the subscription or in-app order was purchased. |

**Response**: `Order`

```typescript
const res = await androidpublisher.orders.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.orders.batchget`

**GET** `androidpublisher/v3/applications/{packageName}/orders:batchGet`

Get order details for a list of orders.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The package name of the application for which this subscription or in-app item was purchased (for example, ... |
| `orderIds` | `string` | query | No | Required. The list of order IDs to retrieve order details for. There must be between 1 and 1000 (inclusive) order IDs... |

**Response**: `BatchGetOrdersResponse`

```typescript
const res = await androidpublisher.orders.batchget({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.applications.dataSafety`

**POST** `androidpublisher/v3/applications/{packageName}/dataSafety`

Writes the Safety Labels declaration of an app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Package name of the app. |

**Request body**: `SafetyLabelsUpdateRequest`

**Response**: `SafetyLabelsUpdateResponse`

```typescript
const res = await androidpublisher.applications.dataSafety({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.applications.deviceTierConfigs.create`

**POST** `androidpublisher/v3/applications/{packageName}/deviceTierConfigs`

Creates a new device tier config for an app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `allowUnknownDevices` | `boolean` | query | No | Whether the service should accept device IDs that are unknown to Play's device catalog. |

**Request body**: `DeviceTierConfig`

**Response**: `DeviceTierConfig`

```typescript
const res = await androidpublisher.deviceTierConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.applications.deviceTierConfigs.get`

**GET** `androidpublisher/v3/applications/{packageName}/deviceTierConfigs/{deviceTierConfigId}`

Returns a particular device tier config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `deviceTierConfigId` | `string` | path | Yes | Required. Id of an existing device tier config. |

**Response**: `DeviceTierConfig`

```typescript
const res = await androidpublisher.deviceTierConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.applications.deviceTierConfigs.list`

**GET** `androidpublisher/v3/applications/{packageName}/deviceTierConfigs`

Returns created device tier configs, ordered by descending creation time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `pageSize` | `integer` | query | No | The maximum number of device tier configs to return. The service may return fewer than this value. If unspecified, at... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListDeviceTierConfigs` call. Provide this to retrieve the subsequent page. |

**Response**: `ListDeviceTierConfigsResponse`

```typescript
const res = await androidpublisher.deviceTierConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.convertRegionPrices`

**POST** `androidpublisher/v3/applications/{packageName}/pricing:convertRegionPrices`

Calculates the region prices, using today's exchange rate and country-specific pricing patterns, based on the price in the request for a set of regions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The app package name. |

**Request body**: `ConvertRegionPricesRequest`

**Response**: `ConvertRegionPricesResponse`

```typescript
const res = await androidpublisher.monetization.convertRegionPrices({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.get`

**GET** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}`

Reads a single one-time product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the product to retrieve. |
| `productId` | `string` | path | Yes | Required. The product ID of the product to retrieve. |

**Response**: `OneTimeProduct`

```typescript
const res = await androidpublisher.onetimeproducts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.batchGet`

**GET** `androidpublisher/v3/applications/{packageName}/oneTimeProducts:batchGet`

Reads one or more one-time products.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the products should be retrieved. Must be equal to the package_name... |
| `productIds` | `string` | query | No | Required. A list of up to 100 product IDs to retrieve. All IDs must be different. |

**Response**: `BatchGetOneTimeProductsResponse`

```typescript
const res = await androidpublisher.onetimeproducts.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.list`

**GET** `androidpublisher/v3/applications/{packageName}/oneTimeProducts`

Lists all one-time products under a given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the one-time product should be read. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of one-time product to return. The service may return fewer than this value. If unspecif... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListOneTimeProducts` call. Provide this to retrieve the subsequent ... |

**Response**: `ListOneTimeProductsResponse`

```typescript
const res = await androidpublisher.onetimeproducts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.patch`

**PATCH** `androidpublisher/v3/applications/{packageName}/onetimeproducts/{productId}`

Creates or updates a one-time product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Immutable. Package name of the parent app. |
| `productId` | `string` | path | Yes | Required. Immutable. Unique product ID of the product. Unique within the parent app. Product IDs must start with a nu... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the one-time product with the given package_name and product_id doesn't exist, the one-... |
| `latencyTolerance` | `string` | query | No | Optional. The latency tolerance for the propagation of this product upsert. Defaults to latency-sensitive. |
| `regionsVersion.version` | `string` | query | No | Required. A string representing the version of available regions being used for the specified resource. Regional pric... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `OneTimeProduct`

**Response**: `OneTimeProduct`

```typescript
const res = await androidpublisher.onetimeproducts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.batchUpdate`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts:batchUpdate`

Creates or updates one or more one-time products.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the one-time products should be updated. Must be equal to the packa... |

**Request body**: `BatchUpdateOneTimeProductsRequest`

**Response**: `BatchUpdateOneTimeProductsResponse`

```typescript
const res = await androidpublisher.onetimeproducts.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.delete`

**DELETE** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}`

Deletes a one-time product.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the one-time product to delete. |
| `productId` | `string` | path | Yes | Required. The one-time product ID of the one-time product to delete. |
| `latencyTolerance` | `string` | query | No | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive. |

```typescript
const res = await androidpublisher.onetimeproducts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.batchDelete`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts:batchDelete`

Deletes one or more one-time products.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the one-time products should be deleted. Must be equal to the packa... |

**Request body**: `BatchDeleteOneTimeProductsRequest`

```typescript
const res = await androidpublisher.onetimeproducts.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.purchaseOptions.batchUpdateStates`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions:batchUpdateStates`

Activates or deactivates purchase options across one or multiple one-time products.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the updated purchase options. |
| `productId` | `string` | path | Yes | Required. The product ID of the parent one-time product, if all updated purchase options belong to the same one-time ... |

**Request body**: `BatchUpdatePurchaseOptionStatesRequest`

**Response**: `BatchUpdatePurchaseOptionStatesResponse`

```typescript
const res = await androidpublisher.purchaseOptions.batchUpdateStates({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.purchaseOptions.batchDelete`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions:batchDelete`

Deletes purchase options across one or multiple one-time products. By default this operation will fail if there are any existing offers under the deleted purchase options. Use the force parameter to override the default behavior.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the purchase options to delete. |
| `productId` | `string` | path | Yes | Required. The product ID of the parent one-time product, if all purchase options to delete belong to the same one-tim... |

**Request body**: `BatchDeletePurchaseOptionsRequest`

```typescript
const res = await androidpublisher.purchaseOptions.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.list`

**GET** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers`

Lists all offers under a given app, product, or purchase option.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the offers should be read. |
| `productId` | `string` | path | Yes | Required. The parent one-time product (ID) for which the offers should be read. May be specified as '-' to read all o... |
| `purchaseOptionId` | `string` | path | Yes | Required. The parent purchase option (ID) for which the offers should be read. May be specified as '-' to read all of... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of offers to return. The service may return fewer than this value. If unspecified, at mo... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListOneTimeProductsOffers` call. Provide this to retrieve the subse... |

**Response**: `ListOneTimeProductOffersResponse`

```typescript
const res = await androidpublisher.offers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchGet`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers:batchGet`

Reads one or more one-time product offers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the updated offers. Must be equal to the package_name field on all the upd... |
| `productId` | `string` | path | Yes | Required. The product ID of the parent one-time product, if all updated offers belong to the same product. If this re... |
| `purchaseOptionId` | `string` | path | Yes | Required. The parent purchase option (ID) for which the offers should be updated. May be specified as '-' to update o... |

**Request body**: `BatchGetOneTimeProductOffersRequest`

**Response**: `BatchGetOneTimeProductOffersResponse`

```typescript
const res = await androidpublisher.offers.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchUpdate`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers:batchUpdate`

Creates or updates one or more one-time product offers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the updated offers. Must be equal to the package_name field on all the upd... |
| `productId` | `string` | path | Yes | Required. The product ID of the parent one-time product, if all updated offers belong to the same product. If this re... |
| `purchaseOptionId` | `string` | path | Yes | Required. The parent purchase option (ID) for which the offers should be updated. May be specified as '-' to update o... |

**Request body**: `BatchUpdateOneTimeProductOffersRequest`

**Response**: `BatchUpdateOneTimeProductOffersResponse`

```typescript
const res = await androidpublisher.offers.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchUpdateStates`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers:batchUpdateStates`

Updates a batch of one-time product offer states.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the updated one-time product offers. |
| `productId` | `string` | path | Yes | Required. The product ID of the parent one-time product, if all updated offers belong to the same one-time product. I... |
| `purchaseOptionId` | `string` | path | Yes | Required. The purchase option ID of the parent purchase option, if all updated offers belong to the same purchase opt... |

**Request body**: `BatchUpdateOneTimeProductOfferStatesRequest`

**Response**: `BatchUpdateOneTimeProductOfferStatesResponse`

```typescript
const res = await androidpublisher.offers.batchUpdateStates({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.batchDelete`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers:batchDelete`

Deletes one or more one-time product offers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the offers to delete. Must be equal to the package_name field on all the O... |
| `productId` | `string` | path | Yes | Required. The product ID of the parent one-time product, if all offers to delete belong to the same product. If this ... |
| `purchaseOptionId` | `string` | path | Yes | Required. The parent purchase option (ID) for which the offers should be deleted. May be specified as '-' to update o... |

**Request body**: `BatchDeleteOneTimeProductOffersRequest`

```typescript
const res = await androidpublisher.offers.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.activate`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers/{offerId}:activate`

Activates a one-time product offer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the offer to activate. |
| `productId` | `string` | path | Yes | Required. The parent one-time product (ID) of the offer to activate. |
| `purchaseOptionId` | `string` | path | Yes | Required. The parent purchase option (ID) of the offer to activate. |
| `offerId` | `string` | path | Yes | Required. The offer ID of the offer to activate. |

**Request body**: `ActivateOneTimeProductOfferRequest`

**Response**: `OneTimeProductOffer`

```typescript
const res = await androidpublisher.offers.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.cancel`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers/{offerId}:cancel`

Cancels a one-time product offer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the offer to cancel. |
| `productId` | `string` | path | Yes | Required. The parent one-time product (ID) of the offer to cancel. |
| `purchaseOptionId` | `string` | path | Yes | Required. The parent purchase option (ID) of the offer to cancel. |
| `offerId` | `string` | path | Yes | Required. The offer ID of the offer to cancel. |

**Request body**: `CancelOneTimeProductOfferRequest`

**Response**: `OneTimeProductOffer`

```typescript
const res = await androidpublisher.offers.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.onetimeproducts.purchaseOptions.offers.deactivate`

**POST** `androidpublisher/v3/applications/{packageName}/oneTimeProducts/{productId}/purchaseOptions/{purchaseOptionId}/offers/{offerId}:deactivate`

Deactivates a one-time product offer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the offer to deactivate. |
| `productId` | `string` | path | Yes | Required. The parent one-time product (ID) of the offer to deactivate. |
| `purchaseOptionId` | `string` | path | Yes | Required. The parent purchase option (ID) of the offer to deactivate. |
| `offerId` | `string` | path | Yes | Required. The offer ID of the offer to deactivate. |

**Request body**: `DeactivateOneTimeProductOfferRequest`

**Response**: `OneTimeProductOffer`

```typescript
const res = await androidpublisher.offers.deactivate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.get`

**GET** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}`

Reads a single subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the subscription to get. |
| `productId` | `string` | path | Yes | Required. The unique product ID of the subscription to get. |

**Response**: `Subscription`

```typescript
const res = await androidpublisher.subscriptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.batchGet`

**GET** `androidpublisher/v3/applications/{packageName}/subscriptions:batchGet`

Reads one or more subscriptions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the subscriptions should be retrieved. Must be equal to the package... |
| `productIds` | `string` | query | No | Required. A list of up to 100 subscription product IDs to retrieve. All the IDs must be different. |

**Response**: `BatchGetSubscriptionsResponse`

```typescript
const res = await androidpublisher.subscriptions.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.list`

**GET** `androidpublisher/v3/applications/{packageName}/subscriptions`

Lists all subscriptions under a given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the subscriptions should be read. |
| `pageSize` | `integer` | query | No | The maximum number of subscriptions to return. The service may return fewer than this value. If unspecified, at most ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSubscriptions` call. Provide this to retrieve the subsequent page. When p... |
| `showArchived` | `boolean` | query | No | Deprecated: subscription archiving is not supported. |

**Response**: `ListSubscriptionsResponse`

```typescript
const res = await androidpublisher.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.create`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions`

Creates a new subscription. Newly added base plans will remain in draft state until activated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the subscription should be created. Must be equal to the package_na... |
| `productId` | `string` | query | No | Required. The ID to use for the subscription. For the requirements on this format, see the documentation of the produ... |
| `regionsVersion.version` | `string` | query | No | Required. A string representing the version of available regions being used for the specified resource. Regional pric... |

**Request body**: `Subscription`

**Response**: `Subscription`

```typescript
const res = await androidpublisher.subscriptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.patch`

**PATCH** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}`

Updates an existing subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Immutable. Package name of the parent app. |
| `productId` | `string` | path | Yes | Immutable. Unique product ID of the product. Unique within the parent app. Product IDs must be composed of lower-case... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the subscription with the given package_name and product_id doesn't exist, the subscrip... |
| `latencyTolerance` | `string` | query | No | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive. |
| `regionsVersion.version` | `string` | query | No | Required. A string representing the version of available regions being used for the specified resource. Regional pric... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `Subscription`

**Response**: `Subscription`

```typescript
const res = await androidpublisher.subscriptions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.batchUpdate`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions:batchUpdate`

Updates a batch of subscriptions. Set the latencyTolerance field on nested requests to PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum update throughput.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the subscriptions should be updated. Must be equal to the package_n... |

**Request body**: `BatchUpdateSubscriptionsRequest`

**Response**: `BatchUpdateSubscriptionsResponse`

```typescript
const res = await androidpublisher.subscriptions.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.delete`

**DELETE** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}`

Deletes a subscription. A subscription can only be deleted if it has never had a base plan published.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the app of the subscription to delete. |
| `productId` | `string` | path | Yes | Required. The unique product ID of the subscription to delete. |

```typescript
const res = await androidpublisher.subscriptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.archive`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}:archive`

Deprecated: subscription archiving is not supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the app of the subscription to delete. |
| `productId` | `string` | path | Yes | Required. The unique product ID of the subscription to delete. |

**Request body**: `ArchiveSubscriptionRequest`

**Response**: `Subscription`

```typescript
const res = await androidpublisher.subscriptions.archive({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.delete`

**DELETE** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}`

Deletes a base plan. Can only be done for draft base plans. This action is irreversible.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the base plan to delete. |
| `productId` | `string` | path | Yes | Required. The parent subscription (ID) of the base plan to delete. |
| `basePlanId` | `string` | path | Yes | Required. The unique offer ID of the base plan to delete. |

```typescript
const res = await androidpublisher.basePlans.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.activate`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:activate`

Activates a base plan. Once activated, base plans will be available to new subscribers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the base plan to activate. |
| `productId` | `string` | path | Yes | Required. The parent subscription (ID) of the base plan to activate. |
| `basePlanId` | `string` | path | Yes | Required. The unique base plan ID of the base plan to activate. |

**Request body**: `ActivateBasePlanRequest`

**Response**: `Subscription`

```typescript
const res = await androidpublisher.basePlans.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.deactivate`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:deactivate`

Deactivates a base plan. Once deactivated, the base plan will become unavailable to new subscribers, but existing subscribers will maintain their subscription

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the base plan to deactivate. |
| `productId` | `string` | path | Yes | Required. The parent subscription (ID) of the base plan to deactivate. |
| `basePlanId` | `string` | path | Yes | Required. The unique base plan ID of the base plan to deactivate. |

**Request body**: `DeactivateBasePlanRequest`

**Response**: `Subscription`

```typescript
const res = await androidpublisher.basePlans.deactivate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.batchUpdateStates`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans:batchUpdateStates`

Activates or deactivates base plans across one or multiple subscriptions. Set the latencyTolerance field on nested requests to PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum update throughput.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the updated base plans. |
| `productId` | `string` | path | Yes | Required. The product ID of the parent subscription, if all updated base plans belong to the same subscription. If th... |

**Request body**: `BatchUpdateBasePlanStatesRequest`

**Response**: `BatchUpdateBasePlanStatesResponse`

```typescript
const res = await androidpublisher.basePlans.batchUpdateStates({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.migratePrices`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:migratePrices`

Migrates subscribers from one or more legacy price cohorts to the current price. Requests result in Google Play notifying affected subscribers. Only up to 250 simultaneous legacy price cohorts are supported.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Package name of the parent app. Must be equal to the package_name field on the Subscription resource. |
| `productId` | `string` | path | Yes | Required. The ID of the subscription to update. Must be equal to the product_id field on the Subscription resource. |
| `basePlanId` | `string` | path | Yes | Required. The unique base plan ID of the base plan to update prices on. |

**Request body**: `MigrateBasePlanPricesRequest`

**Response**: `MigrateBasePlanPricesResponse`

```typescript
const res = await androidpublisher.basePlans.migratePrices({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.batchMigratePrices`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans:batchMigratePrices`

Batch variant of the MigrateBasePlanPrices endpoint. Set the latencyTolerance field on nested requests to PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum update throughput.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the subscriptions should be created or updated. Must be equal to th... |
| `productId` | `string` | path | Yes | Required. The product ID of the parent subscription, if all updated offers belong to the same subscription. If this b... |

**Request body**: `BatchMigrateBasePlanPricesRequest`

**Response**: `BatchMigrateBasePlanPricesResponse`

```typescript
const res = await androidpublisher.basePlans.batchMigratePrices({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.offers.get`

**GET** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}`

Reads a single offer

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the offer to get. |
| `productId` | `string` | path | Yes | Required. The parent subscription (ID) of the offer to get. |
| `basePlanId` | `string` | path | Yes | Required. The parent base plan (ID) of the offer to get. |
| `offerId` | `string` | path | Yes | Required. The unique offer ID of the offer to get. |

**Response**: `SubscriptionOffer`

```typescript
const res = await androidpublisher.offers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.offers.batchGet`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers:batchGet`

Reads one or more subscription offers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the subscriptions should be created or updated. Must be equal to th... |
| `productId` | `string` | path | Yes | Required. The product ID of the parent subscription, if all updated offers belong to the same subscription. If this r... |
| `basePlanId` | `string` | path | Yes | Required. The parent base plan (ID) for which the offers should be read. May be specified as '-' to read offers from ... |

**Request body**: `BatchGetSubscriptionOffersRequest`

**Response**: `BatchGetSubscriptionOffersResponse`

```typescript
const res = await androidpublisher.offers.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.offers.list`

**GET** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers`

Lists all offers under a given subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the subscriptions should be read. |
| `productId` | `string` | path | Yes | Required. The parent subscription (ID) for which the offers should be read. May be specified as '-' to read all offer... |
| `basePlanId` | `string` | path | Yes | Required. The parent base plan (ID) for which the offers should be read. May be specified as '-' to read all offers u... |
| `pageSize` | `integer` | query | No | The maximum number of subscriptions to return. The service may return fewer than this value. If unspecified, at most ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSubscriptionsOffers` call. Provide this to retrieve the subsequent page. ... |

**Response**: `ListSubscriptionOffersResponse`

```typescript
const res = await androidpublisher.offers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.offers.create`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers`

Creates a new subscription offer. Only auto-renewing base plans can have subscription offers. The offer state will be DRAFT until it is activated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) for which the offer should be created. Must be equal to the package_name fiel... |
| `productId` | `string` | path | Yes | Required. The parent subscription (ID) for which the offer should be created. Must be equal to the product_id field o... |
| `basePlanId` | `string` | path | Yes | Required. The parent base plan (ID) for which the offer should be created. Must be equal to the base_plan_id field on... |
| `offerId` | `string` | query | No | Required. The ID to use for the offer. For the requirements on this format, see the documentation of the offer_id fie... |
| `regionsVersion.version` | `string` | query | No | Required. A string representing the version of available regions being used for the specified resource. Regional pric... |

**Request body**: `SubscriptionOffer`

**Response**: `SubscriptionOffer`

```typescript
const res = await androidpublisher.offers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.offers.patch`

**PATCH** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}`

Updates an existing subscription offer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. Immutable. The package name of the app the parent subscription belongs to. |
| `productId` | `string` | path | Yes | Required. Immutable. The ID of the parent subscription this offer belongs to. |
| `basePlanId` | `string` | path | Yes | Required. Immutable. The ID of the base plan to which this offer is an extension. |
| `offerId` | `string` | path | Yes | Required. Immutable. Unique ID of this subscription offer. Must be unique within the base plan. |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the subscription offer with the given package_name, product_id, base_plan_id and offer_... |
| `latencyTolerance` | `string` | query | No | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive. |
| `regionsVersion.version` | `string` | query | No | Required. A string representing the version of available regions being used for the specified resource. Regional pric... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `SubscriptionOffer`

**Response**: `SubscriptionOffer`

```typescript
const res = await androidpublisher.offers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.offers.batchUpdate`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers:batchUpdate`

Updates a batch of subscription offers. Set the latencyTolerance field on nested requests to PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum update throughput.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the updated subscription offers. Must be equal to the package_name field o... |
| `productId` | `string` | path | Yes | Required. The product ID of the parent subscription, if all updated offers belong to the same subscription. If this r... |
| `basePlanId` | `string` | path | Yes | Required. The parent base plan (ID) for which the offers should be updated. May be specified as '-' to update offers ... |

**Request body**: `BatchUpdateSubscriptionOffersRequest`

**Response**: `BatchUpdateSubscriptionOffersResponse`

```typescript
const res = await androidpublisher.offers.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.offers.activate`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}:activate`

Activates a subscription offer. Once activated, subscription offers will be available to new subscribers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the offer to activate. |
| `productId` | `string` | path | Yes | Required. The parent subscription (ID) of the offer to activate. |
| `basePlanId` | `string` | path | Yes | Required. The parent base plan (ID) of the offer to activate. |
| `offerId` | `string` | path | Yes | Required. The unique offer ID of the offer to activate. |

**Request body**: `ActivateSubscriptionOfferRequest`

**Response**: `SubscriptionOffer`

```typescript
const res = await androidpublisher.offers.activate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.offers.deactivate`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}:deactivate`

Deactivates a subscription offer. Once deactivated, existing subscribers will maintain their subscription, but the offer will become unavailable to new subscribers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the offer to deactivate. |
| `productId` | `string` | path | Yes | Required. The parent subscription (ID) of the offer to deactivate. |
| `basePlanId` | `string` | path | Yes | Required. The parent base plan (ID) of the offer to deactivate. |
| `offerId` | `string` | path | Yes | Required. The unique offer ID of the offer to deactivate. |

**Request body**: `DeactivateSubscriptionOfferRequest`

**Response**: `SubscriptionOffer`

```typescript
const res = await androidpublisher.offers.deactivate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.offers.batchUpdateStates`

**POST** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers:batchUpdateStates`

Updates a batch of subscription offer states. Set the latencyTolerance field on nested requests to PRODUCT_UPDATE_LATENCY_TOLERANCE_LATENCY_TOLERANT to achieve maximum update throughput.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the updated subscription offers. Must be equal to the package_name field o... |
| `productId` | `string` | path | Yes | Required. The product ID of the parent subscription, if all updated offers belong to the same subscription. If this r... |
| `basePlanId` | `string` | path | Yes | Required. The parent base plan (ID) for which the offers should be updated. May be specified as '-' to update offers ... |

**Request body**: `BatchUpdateSubscriptionOfferStatesRequest`

**Response**: `BatchUpdateSubscriptionOfferStatesResponse`

```typescript
const res = await androidpublisher.offers.batchUpdateStates({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.monetization.subscriptions.basePlans.offers.delete`

**DELETE** `androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}`

Deletes a subscription offer. Can only be done for draft offers. This action is irreversible.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Required. The parent app (package name) of the offer to delete. |
| `productId` | `string` | path | Yes | Required. The parent subscription (ID) of the offer to delete. |
| `basePlanId` | `string` | path | Yes | Required. The parent base plan (ID) of the offer to delete. |
| `offerId` | `string` | path | Yes | Required. The unique offer ID of the offer to delete. |

```typescript
const res = await androidpublisher.offers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.reviews.get`

**GET** `androidpublisher/v3/applications/{packageName}/reviews/{reviewId}`

Gets a single review.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `reviewId` | `string` | path | Yes | Unique identifier for a review. |
| `translationLanguage` | `string` | query | No | Language localization code. |

**Response**: `Review`

```typescript
const res = await androidpublisher.reviews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.reviews.list`

**GET** `androidpublisher/v3/applications/{packageName}/reviews`

Lists all reviews.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `maxResults` | `integer` | query | No | How many results the list operation should return. |
| `startIndex` | `integer` | query | No | The index of the first element to return. |
| `token` | `string` | query | No | Pagination token. If empty, list starts at the first review. |
| `translationLanguage` | `string` | query | No | Language localization code. |

**Response**: `ReviewsListResponse`

```typescript
const res = await androidpublisher.reviews.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.reviews.reply`

**POST** `androidpublisher/v3/applications/{packageName}/reviews/{reviewId}:reply`

Replies to a single review, or updates an existing reply.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `reviewId` | `string` | path | Yes | Unique identifier for a review. |

**Request body**: `ReviewsReplyRequest`

**Response**: `ReviewsReplyResponse`

```typescript
const res = await androidpublisher.reviews.reply({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.systemapks.variants.create`

**POST** `androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants`

Creates an APK which is suitable for inclusion in a system image from an already uploaded Android App Bundle.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `versionCode` | `string` | path | Yes | The version code of the App Bundle. |

**Request body**: `Variant`

**Response**: `Variant`

```typescript
const res = await androidpublisher.variants.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.systemapks.variants.list`

**GET** `androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants`

Returns the list of previously created system APK variants.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `versionCode` | `string` | path | Yes | The version code of the App Bundle. |

**Response**: `SystemApksListResponse`

```typescript
const res = await androidpublisher.variants.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.systemapks.variants.get`

**GET** `androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}`

Returns a previously created system APK variant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `versionCode` | `string` | path | Yes | The version code of the App Bundle. |
| `variantId` | `integer` | path | Yes | The ID of a previously created system APK variant. |

**Response**: `Variant`

```typescript
const res = await androidpublisher.variants.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

### `androidpublisher.systemapks.variants.download`

**GET** `androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}:download`

Downloads a previously created system APK which is suitable for inclusion in a system image.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `packageName` | `string` | path | Yes | Package name of the app. |
| `versionCode` | `string` | path | Yes | The version code of the App Bundle. |
| `variantId` | `integer` | path | Yes | The ID of a previously created system APK variant. |

```typescript
const res = await androidpublisher.variants.download({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/androidpublisher`

---

## Schemas

### `Abi`

Represents an Abi.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | Alias for an abi. |

### `AbiTargeting`

Targeting based on Abi.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<Abi>` | Targeting of other sibling directories that were in the Bundle. For main splits this is targeting... |
| `value` | `array<Abi>` | Value of an abi. |

### `AcquisitionTargetingRule`

Represents a targeting rule of the form: User never had {scope} before.

| Property | Type | Description |
|----------|------|-------------|
| `scope` | `TargetingRuleScope` | Required. The scope of subscriptions this rule considers. Only allows "this subscription" and "an... |

### `ActivateBasePlanRequest`

Request message for ActivateBasePlan.

| Property | Type | Description |
|----------|------|-------------|
| `basePlanId` | `string` | Required. The unique base plan ID of the base plan to activate. |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `packageName` | `string` | Required. The parent app (package name) of the base plan to activate. |
| `productId` | `string` | Required. The parent subscription (ID) of the base plan to activate. |

### `ActivateOneTimeProductOfferRequest`

Request message for ActivateOneTimeProductOffer.

| Property | Type | Description |
|----------|------|-------------|
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this update. Defaults to latency-sensitive. |
| `offerId` | `string` | Required. The offer ID of the offer to activate. |
| `packageName` | `string` | Required. The parent app (package name) of the offer to activate. |
| `productId` | `string` | Required. The parent one-time product (ID) of the offer to activate. |
| `purchaseOptionId` | `string` | Required. The parent purchase option (ID) of the offer to activate. |

### `ActivatePurchaseOptionRequest`

Request message for UpdatePurchaseOptionState.

| Property | Type | Description |
|----------|------|-------------|
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `packageName` | `string` | Required. The parent app (package name) of the purchase option to activate. |
| `productId` | `string` | Required. The parent one-time product (ID) of the purchase option to activate. |
| `purchaseOptionId` | `string` | Required. The purchase option ID of the purchase option to activate. |

### `ActivateSubscriptionOfferRequest`

Request message for ActivateSubscriptionOffer.

| Property | Type | Description |
|----------|------|-------------|
| `basePlanId` | `string` | Required. The parent base plan (ID) of the offer to activate. |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `offerId` | `string` | Required. The unique offer ID of the offer to activate. |
| `packageName` | `string` | Required. The parent app (package name) of the offer to activate. |
| `productId` | `string` | Required. The parent subscription (ID) of the offer to activate. |

### `AddTargetingRequest`

Request message for AddTargeting.

| Property | Type | Description |
|----------|------|-------------|
| `targetingUpdate` | `TargetingUpdate` | Specifies targeting updates such as regions, android sdk versions etc. |

### `AddTargetingResponse`

Response message for AddTargeting.

### `AllUsers`

Object representation to describe all set of users.

| Property | Type | Description |
|----------|------|-------------|
| `isAllUsersRequested` | `boolean` | Required. Set to true if all set of users are needed. |

### `AndroidSdks`

Android api level targeting data for app recovery action targeting.

| Property | Type | Description |
|----------|------|-------------|
| `sdkLevels` | `array<string>` | Android api levels of devices targeted by recovery action. See https://developer.android.com/guid... |

### `Apk`

Information about an APK. The resource for ApksService.

| Property | Type | Description |
|----------|------|-------------|
| `binary` | `ApkBinary` | Information about the binary payload of this APK. |
| `versionCode` | `integer` | The version code of the APK, as specified in the manifest file. |

### `ApkBinary`

Represents the binary payload of an APK.

| Property | Type | Description |
|----------|------|-------------|
| `sha1` | `string` | A sha1 hash of the APK payload, encoded as a hex string and matching the output of the sha1sum co... |
| `sha256` | `string` | A sha256 hash of the APK payload, encoded as a hex string and matching the output of the sha256su... |

### `ApkDescription`

Description of the created apks.

| Property | Type | Description |
|----------|------|-------------|
| `assetSliceMetadata` | `SplitApkMetadata` | Set only for asset slices. |
| `instantApkMetadata` | `SplitApkMetadata` | Set only for Instant split APKs. |
| `path` | `string` | Path of the Apk, will be in the following format: .apk where DownloadId is the ID used to downloa... |
| `splitApkMetadata` | `SplitApkMetadata` | Set only for Split APKs. |
| `standaloneApkMetadata` | `StandaloneApkMetadata` | Set only for standalone APKs. |
| `targeting` | `ApkTargeting` | Apk-level targeting. |

### `ApkSet`

A set of apks representing a module.

| Property | Type | Description |
|----------|------|-------------|
| `apkDescription` | `array<ApkDescription>` | Description of the generated apks. |
| `moduleMetadata` | `ModuleMetadata` | Metadata about the module represented by this ApkSet |

### `ApkTargeting`

Represents a set of apk-level targetings.

| Property | Type | Description |
|----------|------|-------------|
| `abiTargeting` | `AbiTargeting` | The abi that the apk targets |
| `languageTargeting` | `LanguageTargeting` | The language that the apk targets |
| `multiAbiTargeting` | `MultiAbiTargeting` | Multi-api-level targeting. |
| `screenDensityTargeting` | `ScreenDensityTargeting` | The screen density that this apk supports. |
| `sdkVersionTargeting` | `SdkVersionTargeting` | The sdk version that the apk targets |
| `textureCompressionFormatTargeting` | `TextureCompressionFormatTargeting` | Texture-compression-format-level targeting |

### `ApksAddExternallyHostedRequest`

Request to create a new externally hosted APK.

| Property | Type | Description |
|----------|------|-------------|
| `externallyHostedApk` | `ExternallyHostedApk` | The definition of the externally-hosted APK and where it is located. |

### `ApksAddExternallyHostedResponse`

Response for creating a new externally hosted APK.

| Property | Type | Description |
|----------|------|-------------|
| `externallyHostedApk` | `ExternallyHostedApk` | The definition of the externally-hosted APK and where it is located. |

### `ApksListResponse`

Response listing all APKs.

| Property | Type | Description |
|----------|------|-------------|
| `apks` | `array<Apk>` | All APKs. |
| `kind` | `string` | The kind of this response ("androidpublisher#apksListResponse"). |

### `AppDetails`

The app details. The resource for DetailsService.

| Property | Type | Description |
|----------|------|-------------|
| `contactEmail` | `string` | The user-visible support email for this app. |
| `contactPhone` | `string` | The user-visible support telephone number for this app. |
| `contactWebsite` | `string` | The user-visible website for this app. |
| `defaultLanguage` | `string` | Default language code, in BCP 47 format (eg "en-US"). |

### `AppEdit`

An app edit. The resource for EditsService.

| Property | Type | Description |
|----------|------|-------------|
| `expiryTimeSeconds` | `string` | Output only. The time (as seconds since Epoch) at which the edit will expire and will be no longe... |
| `id` | `string` | Output only. Identifier of the edit. Can be used in subsequent API calls. |

### `AppRecoveryAction`

Information about an app recovery action.

| Property | Type | Description |
|----------|------|-------------|
| `appRecoveryId` | `string` | ID corresponding to the app recovery action. |
| `cancelTime` | `string` | Timestamp of when the app recovery action is canceled by the developer. Only set if the recovery ... |
| `createTime` | `string` | Timestamp of when the app recovery action is created by the developer. It is always set after cre... |
| `deployTime` | `string` | Timestamp of when the app recovery action is deployed to the users. Only set if the recovery acti... |
| `lastUpdateTime` | `string` | Timestamp of when the developer last updated recovery action. In case the action is cancelled, it... |
| `remoteInAppUpdateData` | `RemoteInAppUpdateData` | Data about the remote in-app update action such as such as recovered user base, recoverable user ... |
| `status` | `string` | The status of the recovery action. |
| `targeting` | `Targeting` | Specifies targeting criteria for the recovery action such as regions, android sdk versions, app v... |

### `AppVersionList`

Data format for a list of app versions.

| Property | Type | Description |
|----------|------|-------------|
| `versionCodes` | `array<string>` | List of app version codes. |

### `AppVersionRange`

Data format for a continuous range of app versions.

| Property | Type | Description |
|----------|------|-------------|
| `versionCodeEnd` | `string` | Highest app version in the range, inclusive. |
| `versionCodeStart` | `string` | Lowest app version in the range, inclusive. |

### `ArchiveSubscriptionRequest`

Deprecated: subscription archiving is not supported.

### `AssetModuleMetadata`

Metadata of an asset module.

| Property | Type | Description |
|----------|------|-------------|
| `deliveryType` | `string` | Indicates the delivery type for persistent install. |
| `name` | `string` | Module name. |

### `AssetSliceSet`

Set of asset slices belonging to a single asset module.

| Property | Type | Description |
|----------|------|-------------|
| `apkDescription` | `array<ApkDescription>` | Asset slices. |
| `assetModuleMetadata` | `AssetModuleMetadata` | Module level metadata. |

### `AutoRenewingBasePlanType`

Represents a base plan that automatically renews at the end of its subscription period.

| Property | Type | Description |
|----------|------|-------------|
| `accountHoldDuration` | `string` | Optional. Custom account hold period of the subscription, specified in ISO 8601 format. Acceptabl... |
| `billingPeriodDuration` | `string` | Required. Immutable. Subscription period, specified in ISO 8601 format. For a list of acceptable ... |
| `gracePeriodDuration` | `string` | Grace period of the subscription, specified in ISO 8601 format. Acceptable values must be in days... |
| `legacyCompatible` | `boolean` | Whether the renewing base plan is backward compatible. The backward compatible base plan is retur... |
| `legacyCompatibleSubscriptionOfferId` | `string` | Subscription offer id which is legacy compatible. The backward compatible subscription offer is r... |
| `prorationMode` | `string` | The proration mode for the base plan determines what happens when a user switches to this plan fr... |
| `resubscribeState` | `string` | Whether users should be able to resubscribe to this base plan in Google Play surfaces. Defaults t... |

### `AutoRenewingPlan`

Information related to an auto renewing plan.

| Property | Type | Description |
|----------|------|-------------|
| `autoRenewEnabled` | `boolean` | If the subscription is currently set to auto-renew, e.g. the user has not canceled the subscription |
| `installmentDetails` | `InstallmentPlan` | The installment plan commitment and state related info for the auto renewing plan. |
| `priceChangeDetails` | `SubscriptionItemPriceChangeDetails` | The information of the last price change for the item since subscription signup. |
| `priceStepUpConsentDetails` | `PriceStepUpConsentDetails` | The information of the latest price step-up consent. |
| `recurringPrice` | `Money` | The current recurring price of the auto renewing plan. Note that the price does not take into acc... |

### `BaseDetails`

Details of a base price pricing phase.

### `BasePlan`

A single base plan for a subscription.

| Property | Type | Description |
|----------|------|-------------|
| `autoRenewingBasePlanType` | `AutoRenewingBasePlanType` | Set when the base plan automatically renews at a regular interval. |
| `basePlanId` | `string` | Required. Immutable. The unique identifier of this base plan. Must be unique within the subscript... |
| `installmentsBasePlanType` | `InstallmentsBasePlanType` | Set for installments base plans where a user is committed to a specified number of payments. |
| `offerTags` | `array<OfferTag>` | List of up to 20 custom tags specified for this base plan, and returned to the app through the bi... |
| `otherRegionsConfig` | `OtherRegionsBasePlanConfig` | Pricing information for any new locations Play may launch in the future. If omitted, the BasePlan... |
| `prepaidBasePlanType` | `PrepaidBasePlanType` | Set when the base plan does not automatically renew at the end of the billing period. |
| `regionalConfigs` | `array<RegionalBasePlanConfig>` | Region-specific information for this base plan. |
| `state` | `string` | Output only. The state of the base plan, i.e. whether it's active. Draft and inactive base plans ... |

### `BasePriceOfferPhase`

Details about base price offer phase.

### `BatchDeleteOneTimeProductOffersRequest`

Request message for BatchDeleteOneTimeProductOffers.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<DeleteOneTimeProductOfferRequest>` | Required. A list of update requests of up to 100 elements. All requests must correspond to differ... |

### `BatchDeleteOneTimeProductsRequest`

Request message for BatchDeleteOneTimeProduct.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<DeleteOneTimeProductRequest>` | Required. A list of delete requests of up to 100 elements. All requests must delete different one... |

### `BatchDeletePurchaseOptionsRequest`

Request message for BatchDeletePurchaseOption.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<DeletePurchaseOptionRequest>` | Required. A list of delete requests of up to 100 elements. All requests must delete purchase opti... |

### `BatchGetOneTimeProductOffersRequest`

Request message for the BatchGetOneTimeProductOffers endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GetOneTimeProductOfferRequest>` | Required. A list of get requests of up to 100 elements. All requests must retrieve different offers. |

### `BatchGetOneTimeProductOffersResponse`

Response message for the BatchGetOneTimeProductOffers endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `oneTimeProductOffers` | `array<OneTimeProductOffer>` | The list of updated one-time product offers, in the same order as the request. |

### `BatchGetOneTimeProductsResponse`

Response message for the BatchGetOneTimeProducts endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `oneTimeProducts` | `array<OneTimeProduct>` | The list of requested one-time products, in the same order as the request. |

### `BatchGetOrdersResponse`

Response for the orders.batchGet API.

| Property | Type | Description |
|----------|------|-------------|
| `orders` | `array<Order>` | Details for the requested order IDs. |

### `BatchGetSubscriptionOffersRequest`

Request message for BatchGetSubscriptionOffers endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<GetSubscriptionOfferRequest>` | Required. A list of update requests of up to 100 elements. All requests must update different sub... |

### `BatchGetSubscriptionOffersResponse`

Response message for BatchGetSubscriptionOffers endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `subscriptionOffers` | `array<SubscriptionOffer>` |  |

### `BatchGetSubscriptionsResponse`

Response message for BatchGetSubscriptions endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `subscriptions` | `array<Subscription>` | The list of requested subscriptions, in the same order as the request. |

### `BatchMigrateBasePlanPricesRequest`

Request message for BatchMigrateBasePlanPrices.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<MigrateBasePlanPricesRequest>` | Required. Up to 100 price migration requests. All requests must update different base plans. |

### `BatchMigrateBasePlanPricesResponse`

Response message for BatchMigrateBasePlanPrices.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<MigrateBasePlanPricesResponse>` | Contains one response per requested price migration, in the same order as the request. |

### `BatchUpdateBasePlanStatesRequest`

Request message for BatchUpdateBasePlanStates.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<UpdateBasePlanStateRequest>` | Required. The update request list of up to 100 elements. All requests must update different base ... |

### `BatchUpdateBasePlanStatesResponse`

Response message for BatchUpdateBasePlanStates.

| Property | Type | Description |
|----------|------|-------------|
| `subscriptions` | `array<Subscription>` | The list of updated subscriptions. This list will match the requests one to one, in the same order. |

### `BatchUpdateOneTimeProductOfferStatesRequest`

Request message for BatchUpdateOneTimeProductOfferStates.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<UpdateOneTimeProductOfferStateRequest>` | Required. The update request list of up to 100 elements. All requests must update different offers. |

### `BatchUpdateOneTimeProductOfferStatesResponse`

Response message for BatchUpdateOneTimeProductOfferStates.

| Property | Type | Description |
|----------|------|-------------|
| `oneTimeProductOffers` | `array<OneTimeProductOffer>` | The updated one-time product offers list, in the same order as the request. |

### `BatchUpdateOneTimeProductOffersRequest`

Request message for BatchUpdateOneTimeProductOffers.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<UpdateOneTimeProductOfferRequest>` | Required. A list of update requests of up to 100 elements. All requests must update different off... |

### `BatchUpdateOneTimeProductOffersResponse`

Response message for BatchUpdateOneTimeProductOffers.

| Property | Type | Description |
|----------|------|-------------|
| `oneTimeProductOffers` | `array<OneTimeProductOffer>` | The list of updated one-time product offers, in the same order as the request. |

### `BatchUpdateOneTimeProductsRequest`

Request message for BatchUpdateOneTimeProduct.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<UpdateOneTimeProductRequest>` | Required. A list of update requests of up to 100 elements. All requests must update different one... |

### `BatchUpdateOneTimeProductsResponse`

Response message for BatchUpdateOneTimeProduct.

| Property | Type | Description |
|----------|------|-------------|
| `oneTimeProducts` | `array<OneTimeProduct>` | The list of updated one-time products list, in the same order as the request. |

### `BatchUpdatePurchaseOptionStatesRequest`

Request message for BatchUpdatePurchaseOptionStates.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<UpdatePurchaseOptionStateRequest>` | Required. The update request list of up to 100 elements. All requests must update different purch... |

### `BatchUpdatePurchaseOptionStatesResponse`

Response message for BatchUpdatePurchaseOptionStates.

| Property | Type | Description |
|----------|------|-------------|
| `oneTimeProducts` | `array<OneTimeProduct>` | The list of updated one-time products. This list will match the requests one to one, in the same ... |

### `BatchUpdateSubscriptionOfferStatesRequest`

Request message for BatchUpdateSubscriptionOfferStates.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<UpdateSubscriptionOfferStateRequest>` | Required. The update request list of up to 100 elements. All requests must update different offers. |

### `BatchUpdateSubscriptionOfferStatesResponse`

Response message for BatchUpdateSubscriptionOfferStates.

| Property | Type | Description |
|----------|------|-------------|
| `subscriptionOffers` | `array<SubscriptionOffer>` | The updated subscription offers list. |

### `BatchUpdateSubscriptionOffersRequest`

Request message for BatchUpdateSubscriptionOffers.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<UpdateSubscriptionOfferRequest>` | Required. A list of update requests of up to 100 elements. All requests must update different sub... |

### `BatchUpdateSubscriptionOffersResponse`

Response message for BatchUpdateSubscriptionOffers.

| Property | Type | Description |
|----------|------|-------------|
| `subscriptionOffers` | `array<SubscriptionOffer>` | The updated subscription offers list. |

### `BatchUpdateSubscriptionsRequest`

Request message for BatchUpdateSubscription.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<UpdateSubscriptionRequest>` | Required. A list of update requests of up to 100 elements. All requests must update different sub... |

### `BatchUpdateSubscriptionsResponse`

Response message for BatchUpdateSubscription.

| Property | Type | Description |
|----------|------|-------------|
| `subscriptions` | `array<Subscription>` | The updated subscriptions list. |

### `Bundle`

Information about an app bundle. The resource for BundlesService.

| Property | Type | Description |
|----------|------|-------------|
| `sha1` | `string` | A sha1 hash of the upload payload, encoded as a hex string and matching the output of the sha1sum... |
| `sha256` | `string` | A sha256 hash of the upload payload, encoded as a hex string and matching the output of the sha25... |
| `versionCode` | `integer` | The version code of the Android App Bundle, as specified in the Android App Bundle's base module ... |

### `BundlesListResponse`

Response listing all app bundles.

| Property | Type | Description |
|----------|------|-------------|
| `bundles` | `array<Bundle>` | All app bundles. |
| `kind` | `string` | The kind of this response ("androidpublisher#bundlesListResponse"). |

### `BuyerAddress`

Address information for the customer, for use in tax computation.

| Property | Type | Description |
|----------|------|-------------|
| `buyerCountry` | `string` | Two letter country code based on ISO-3166-1 Alpha-2 (UN country codes). |
| `buyerPostcode` | `string` | Postal code of an address. When Google is the Merchant of Record for the order, this information ... |
| `buyerState` | `string` | Top-level administrative subdivision of the buyer address country. When Google is the Merchant of... |

### `CancelAppRecoveryRequest`

Request message for CancelAppRecovery.

### `CancelAppRecoveryResponse`

Response message for CancelAppRecovery.

### `CancelOneTimeProductOfferRequest`

Request message for CancelOneTimeProductOffer.

| Property | Type | Description |
|----------|------|-------------|
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this update. Defaults to latency-sensitive. |
| `offerId` | `string` | Required. The offer ID of the offer to cancel. |
| `packageName` | `string` | Required. The parent app (package name) of the offer to cancel. |
| `productId` | `string` | Required. The parent one-time product (ID) of the offer to cancel. |
| `purchaseOptionId` | `string` | Required. The parent purchase option (ID) of the offer to cancel. |

### `CancelSubscriptionPurchaseRequest`

Request for the purchases.subscriptionsv2.cancel API.

| Property | Type | Description |
|----------|------|-------------|
| `cancellationContext` | `CancellationContext` | Required. Additional details around the subscription revocation. |

### `CancelSubscriptionPurchaseResponse`

Response for the purchases.subscriptionsv2.cancel API.

### `CancelSurveyResult`

Result of the cancel survey when the subscription was canceled by the user.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | The reason the user selected in the cancel survey. |
| `reasonUserInput` | `string` | Only set for CANCEL_SURVEY_REASON_OTHERS. This is the user's freeform response to the survey. |

### `CanceledStateContext`

Information specific to a subscription in the SUBSCRIPTION_STATE_CANCELED or SUBSCRIPTION_STATE_EXPIRED state.

| Property | Type | Description |
|----------|------|-------------|
| `developerInitiatedCancellation` | `DeveloperInitiatedCancellation` | Subscription was canceled by the developer. |
| `replacementCancellation` | `ReplacementCancellation` | Subscription was replaced by a new subscription. |
| `systemInitiatedCancellation` | `SystemInitiatedCancellation` | Subscription was canceled by the system, for example because of a billing problem. |
| `userInitiatedCancellation` | `UserInitiatedCancellation` | Subscription was canceled by user. |

### `CancellationContext`

Cancellation context of the purchases.subscriptionsv2.cancel API.

| Property | Type | Description |
|----------|------|-------------|
| `cancellationType` | `string` | Required. The type of cancellation for the purchased subscription. |

### `CancellationEvent`

Details of when the order was canceled.

| Property | Type | Description |
|----------|------|-------------|
| `eventTime` | `string` | The time when the order was canceled. |

### `Comment`

An entry of conversation between user and developer.

| Property | Type | Description |
|----------|------|-------------|
| `developerComment` | `DeveloperComment` | A comment from a developer. |
| `userComment` | `UserComment` | A comment from a user. |

### `ConvertRegionPricesRequest`

Request message for ConvertRegionPrices.

| Property | Type | Description |
|----------|------|-------------|
| `price` | `Money` | The intital price to convert other regions from. Tax exclusive. |
| `productTaxCategoryCode` | `string` | Optional. Product tax category code in context. Product tax category determines the transaction t... |

### `ConvertRegionPricesResponse`

Response message for ConvertRegionPrices.

| Property | Type | Description |
|----------|------|-------------|
| `convertedOtherRegionsPrice` | `ConvertedOtherRegionsPrice` | Converted other regions prices in USD and EUR, to use for countries where Play doesn't support a ... |
| `convertedRegionPrices` | `object` | Map from region code to converted region price. |
| `regionVersion` | `RegionsVersion` | The region version at which the prices were generated. |

### `ConvertedOtherRegionsPrice`

Converted other regions prices.

| Property | Type | Description |
|----------|------|-------------|
| `eurPrice` | `Money` | Price in EUR to use for the "Other regions" location exclusive of taxes. |
| `usdPrice` | `Money` | Price in USD to use for the "Other regions" location exclusive of taxes. |

### `ConvertedRegionPrice`

A converted region price.

| Property | Type | Description |
|----------|------|-------------|
| `price` | `Money` | The converted price tax inclusive. |
| `regionCode` | `string` | The region code of the region. |
| `taxAmount` | `Money` | The tax amount of the converted price. |

### `CountryTargeting`

Country targeting specification.

| Property | Type | Description |
|----------|------|-------------|
| `countries` | `array<string>` | Countries to target, specified as two letter [CLDR codes](https://unicode.org/cldr/charts/latest/... |
| `includeRestOfWorld` | `boolean` | Include "rest of world" as well as explicitly targeted countries. |

### `CreateDraftAppRecoveryRequest`

Request message for CreateDraftAppRecovery.

| Property | Type | Description |
|----------|------|-------------|
| `remoteInAppUpdate` | `RemoteInAppUpdate` | Action type is remote in-app update. As a consequence of this action, a downloadable recovery mod... |
| `targeting` | `Targeting` | Specifies targeting criteria for the recovery action such as regions, android sdk versions, app v... |

### `DeactivateBasePlanRequest`

Request message for DeactivateBasePlan.

| Property | Type | Description |
|----------|------|-------------|
| `basePlanId` | `string` | Required. The unique base plan ID of the base plan to deactivate. |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `packageName` | `string` | Required. The parent app (package name) of the base plan to deactivate. |
| `productId` | `string` | Required. The parent subscription (ID) of the base plan to deactivate. |

### `DeactivateOneTimeProductOfferRequest`

Request message for DeactivateOneTimeProductOffer.

| Property | Type | Description |
|----------|------|-------------|
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this update. Defaults to latency-sensitive. |
| `offerId` | `string` | Required. The offer ID of the offer to deactivate. |
| `packageName` | `string` | Required. The parent app (package name) of the offer to deactivate. |
| `productId` | `string` | Required. The parent one-time product (ID) of the offer to deactivate. |
| `purchaseOptionId` | `string` | Required. The parent purchase option (ID) of the offer to deactivate. |

### `DeactivatePurchaseOptionRequest`

Request message for UpdatePurchaseOptionState.

| Property | Type | Description |
|----------|------|-------------|
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `packageName` | `string` | Required. The parent app (package name) of the purchase option to deactivate. |
| `productId` | `string` | Required. The parent one-time product (ID) of the purchase option to deactivate. |
| `purchaseOptionId` | `string` | Required. The purchase option ID of the purchase option to deactivate. |

### `DeactivateSubscriptionOfferRequest`

Request message for DeactivateSubscriptionOffer.

| Property | Type | Description |
|----------|------|-------------|
| `basePlanId` | `string` | Required. The parent base plan (ID) of the offer to deactivate. |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `offerId` | `string` | Required. The unique offer ID of the offer to deactivate. |
| `packageName` | `string` | Required. The parent app (package name) of the offer to deactivate. |
| `productId` | `string` | Required. The parent subscription (ID) of the offer to deactivate. |

### `DeferSubscriptionPurchaseRequest`

Request for the v2 purchases.subscriptions.defer API.

| Property | Type | Description |
|----------|------|-------------|
| `deferralContext` | `DeferralContext` | Required. Details about the subscription deferral. |

### `DeferSubscriptionPurchaseResponse`

Response for the v2 purchases.subscriptions.defer API.

| Property | Type | Description |
|----------|------|-------------|
| `itemExpiryTimeDetails` | `array<ItemExpiryTimeDetails>` | The new expiry time for each subscription items. |

### `DeferralContext`

Deferral context of the purchases.subscriptionsv2.defer API.

| Property | Type | Description |
|----------|------|-------------|
| `deferDuration` | `string` | Required. The duration by which all subscription items should be deferred. |
| `etag` | `string` | Required. The API will fail if the etag does not match the latest etag for this subscription. The... |
| `validateOnly` | `boolean` | If set to "true", the request is a dry run to validate the effect of Defer, the subscription woul... |

### `DeferredItemRemoval`

Information related to deferred item replacement.

### `DeferredItemReplacement`

Information related to deferred item replacement.

| Property | Type | Description |
|----------|------|-------------|
| `productId` | `string` | The product_id going to replace the existing product_id. |

### `DeleteOneTimeProductOfferRequest`

Request message for deleting an one-time product offer.

| Property | Type | Description |
|----------|------|-------------|
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `offerId` | `string` | Required. The unique offer ID of the offer to delete. |
| `packageName` | `string` | Required. The parent app (package name) of the offer to delete. |
| `productId` | `string` | Required. The parent one-time product (ID) of the offer to delete. |
| `purchaseOptionId` | `string` | Required. The parent purchase option (ID) of the offer to delete. |

### `DeleteOneTimeProductRequest`

Request message for deleting a one-time product.

| Property | Type | Description |
|----------|------|-------------|
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `packageName` | `string` | Required. The parent app (package name) of the one-time product to delete. |
| `productId` | `string` | Required. The one-time product ID of the one-time product to delete. |

### `DeletePurchaseOptionRequest`

Request message for deleting a purchase option.

| Property | Type | Description |
|----------|------|-------------|
| `force` | `boolean` | Optional. This field has no effect for purchase options with no offers under them. For purchase o... |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `packageName` | `string` | Required. The parent app (package name) of the purchase option to delete. |
| `productId` | `string` | Required. The parent one-time product (ID) of the purchase option to delete. |
| `purchaseOptionId` | `string` | Required. The purchase option ID of the purchase option to delete. |

### `DeobfuscationFile`

Represents a deobfuscation file.

| Property | Type | Description |
|----------|------|-------------|
| `symbolType` | `string` | The type of the deobfuscation file. |

### `DeobfuscationFilesUploadResponse`

Responses for the upload.

| Property | Type | Description |
|----------|------|-------------|
| `deobfuscationFile` | `DeobfuscationFile` | The uploaded Deobfuscation File configuration. |

### `DeployAppRecoveryRequest`

Request message for DeployAppRecovery.

### `DeployAppRecoveryResponse`

Response message for DeployAppRecovery.

### `DeveloperComment`

Developer entry from conversation between user and developer.

| Property | Type | Description |
|----------|------|-------------|
| `lastModified` | `Timestamp` | The last time at which this comment was updated. |
| `text` | `string` | The content of the comment, i.e. reply body. |

### `DeveloperInitiatedCancellation`

Information specific to cancellations initiated by developers.

### `DeviceFeature`

Represents a device feature.

| Property | Type | Description |
|----------|------|-------------|
| `featureName` | `string` | Name of the feature. |
| `featureVersion` | `integer` | The feature version specified by android:glEsVersion or android:version in in the AndroidManifest. |

### `DeviceFeatureTargeting`

Targeting for a device feature.

| Property | Type | Description |
|----------|------|-------------|
| `requiredFeature` | `DeviceFeature` | Feature of the device. |

### `DeviceGroup`

A group of devices. A group is defined by a set of device selectors. A device belongs to the group if it matches any selector (logical OR).

| Property | Type | Description |
|----------|------|-------------|
| `deviceSelectors` | `array<DeviceSelector>` | Device selectors for this group. A device matching any of the selectors is included in this group. |
| `name` | `string` | The name of the group. |

### `DeviceId`

Identifier of a device.

| Property | Type | Description |
|----------|------|-------------|
| `buildBrand` | `string` | Value of Build.BRAND. |
| `buildDevice` | `string` | Value of Build.DEVICE. |

### `DeviceMetadata`

Characteristics of the user's device.

| Property | Type | Description |
|----------|------|-------------|
| `cpuMake` | `string` | Device CPU make, e.g. "Qualcomm" |
| `cpuModel` | `string` | Device CPU model, e.g. "MSM8974" |
| `deviceClass` | `string` | Device class (e.g. tablet) |
| `glEsVersion` | `integer` | OpenGL version |
| `manufacturer` | `string` | Device manufacturer (e.g. Motorola) |
| `nativePlatform` | `string` | Comma separated list of native platforms (e.g. "arm", "arm7") |
| `productName` | `string` | Device model name (e.g. Droid) |
| `ramMb` | `integer` | Device RAM in Megabytes, e.g. "2048" |
| `screenDensityDpi` | `integer` | Screen density in DPI |
| `screenHeightPx` | `integer` | Screen height in pixels |
| `screenWidthPx` | `integer` | Screen width in pixels |

### `DeviceRam`

Conditions about a device's RAM capabilities.

| Property | Type | Description |
|----------|------|-------------|
| `maxBytes` | `string` | Maximum RAM in bytes (bound excluded). |
| `minBytes` | `string` | Minimum RAM in bytes (bound included). |

### `DeviceSelector`

Selector for a device group. A selector consists of a set of conditions on the device that should all match (logical AND) to determine a device group eligibility. For instance, if a selector specifies RAM conditions, device model inclusion and device model exclusion, a device is considered to match if: device matches RAM conditions AND device matches one of the included device models AND device doesn't match excluded device models

| Property | Type | Description |
|----------|------|-------------|
| `deviceRam` | `DeviceRam` | Conditions on the device's RAM. |
| `excludedDeviceIds` | `array<DeviceId>` | Device models excluded by this selector, even if they match all other conditions. |
| `forbiddenSystemFeatures` | `array<SystemFeature>` | A device that has any of these system features is excluded by this selector, even if it matches a... |
| `includedDeviceIds` | `array<DeviceId>` | Device models included by this selector. |
| `requiredSystemFeatures` | `array<SystemFeature>` | A device needs to have all these system features to be included by the selector. |
| `systemOnChips` | `array<SystemOnChip>` | Optional. The SoCs included by this selector. Only works for Android S+ devices. |

### `DeviceSpec`

The device spec used to generate a system APK.

| Property | Type | Description |
|----------|------|-------------|
| `screenDensity` | `integer` | Screen dpi. |
| `supportedAbis` | `array<string>` | Supported ABI architectures in the order of preference. The values should be the string as report... |
| `supportedLocales` | `array<string>` | All installed locales represented as BCP-47 strings, e.g. "en-US". |

### `DeviceTier`

A single device tier. Devices matching any of the device groups in device_group_names are considered to match the tier.

| Property | Type | Description |
|----------|------|-------------|
| `deviceGroupNames` | `array<string>` | Groups of devices included in this tier. These groups must be defined explicitly under device_gro... |
| `level` | `integer` | The priority level of the tier. Tiers are evaluated in descending order of level: the highest lev... |

### `DeviceTierConfig`

Configuration describing device targeting criteria for the content of an app.

| Property | Type | Description |
|----------|------|-------------|
| `deviceGroups` | `array<DeviceGroup>` | Definition of device groups for the app. |
| `deviceTierConfigId` | `string` | Output only. The device tier config ID. |
| `deviceTierSet` | `DeviceTierSet` | Definition of the set of device tiers for the app. |
| `userCountrySets` | `array<UserCountrySet>` | Definition of user country sets for the app. |

### `DeviceTierSet`

A set of device tiers. A tier set determines what variation of app content gets served to a specific device, for device-targeted content. You should assign a priority level to each tier, which determines the ordering by which they are evaluated by Play. See the documentation of DeviceTier.level for more details.

| Property | Type | Description |
|----------|------|-------------|
| `deviceTiers` | `array<DeviceTier>` | Device tiers belonging to the set. |

### `ExpansionFile`

An expansion file. The resource for ExpansionFilesService.

| Property | Type | Description |
|----------|------|-------------|
| `fileSize` | `string` | If set, this field indicates that this APK has an expansion file uploaded to it: this APK does no... |
| `referencesVersion` | `integer` | If set, this APK's expansion file references another APK's expansion file. The file_size field wi... |

### `ExpansionFilesUploadResponse`

Response for uploading an expansion file.

| Property | Type | Description |
|----------|------|-------------|
| `expansionFile` | `ExpansionFile` | The uploaded expansion file configuration. |

### `ExternalAccountIdentifiers`

User account identifier in the third-party service.

| Property | Type | Description |
|----------|------|-------------|
| `externalAccountId` | `string` | User account identifier in the third-party service. Only present if account linking happened as p... |
| `obfuscatedExternalAccountId` | `string` | An obfuscated version of the id that is uniquely associated with the user's account in your app. ... |
| `obfuscatedExternalProfileId` | `string` | An obfuscated version of the id that is uniquely associated with the user's profile in your app. ... |

### `ExternalAccountIds`

User account identifier in your app.

| Property | Type | Description |
|----------|------|-------------|
| `obfuscatedAccountId` | `string` | Optional. Specifies an optional obfuscated string that is uniquely associated with the purchaser'... |
| `obfuscatedProfileId` | `string` | Optional. Specifies an optional obfuscated string that is uniquely associated with the purchaser'... |

### `ExternalOfferDetails`

Reporting details unique to the external offers program.

| Property | Type | Description |
|----------|------|-------------|
| `appDownloadEventExternalTransactionId` | `string` | Optional. The external transaction id associated with the app download event through an external ... |
| `installedAppCategory` | `string` | Optional. The category of the downloaded app though this transaction. This must match the categor... |
| `installedAppPackage` | `string` | Optional. The package name of the app downloaded through this transaction. Required when link_typ... |
| `linkType` | `string` | Optional. The type of content being reported by this transaction. Required when reporting app dow... |

### `ExternalSubscription`

Details of an external subscription.

| Property | Type | Description |
|----------|------|-------------|
| `subscriptionType` | `string` | Required. The type of the external subscription. |

### `ExternalTransaction`

The details of an external transaction.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when this transaction was created. This is the time when Google was notifie... |
| `currentPreTaxAmount` | `Price` | Output only. The current transaction amount before tax. This represents the current pre-tax amoun... |
| `currentTaxAmount` | `Price` | Output only. The current tax amount. This represents the current tax amount including any refunds... |
| `externalOfferDetails` | `ExternalOfferDetails` | Optional. Details necessary to accurately report external offers transactions. |
| `externalTransactionId` | `string` | Output only. The id of this transaction. All transaction ids under the same package name must be ... |
| `oneTimeTransaction` | `OneTimeExternalTransaction` | This is a one-time transaction and not part of a subscription. |
| `originalPreTaxAmount` | `Price` | Required. The original transaction amount before taxes. This represents the pre-tax amount origin... |
| `originalTaxAmount` | `Price` | Required. The original tax amount. This represents the tax amount originally notified to Google b... |
| `packageName` | `string` | Output only. The resource name of the external transaction. The package name of the application t... |
| `recurringTransaction` | `RecurringExternalTransaction` | This transaction is part of a recurring series of transactions. |
| `testPurchase` | `ExternalTransactionTestPurchase` | Output only. If set, this transaction was a test purchase. Google will not charge for a test tran... |
| `transactionProgramCode` | `integer` | Optional. The transaction program code, used to help determine service fee for eligible apps part... |
| `transactionState` | `string` | Output only. The current state of the transaction. |
| `transactionTime` | `string` | Required. The time when the transaction was completed. |
| `userTaxAddress` | `ExternalTransactionAddress` | Required. User address for tax computation. |

### `ExternalTransactionAddress`

User's address for the external transaction.

| Property | Type | Description |
|----------|------|-------------|
| `administrativeArea` | `string` | Optional. Top-level administrative subdivision of the country/region. Only required for transacti... |
| `regionCode` | `string` | Required. Two letter region code based on ISO-3166-1 Alpha-2 (UN region codes). |

### `ExternalTransactionTestPurchase`

Represents a transaction performed using a test account. These transactions will not be charged by Google.

### `ExternallyHostedApk`

Defines an APK available for this application that is hosted externally and not uploaded to Google Play. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.

| Property | Type | Description |
|----------|------|-------------|
| `applicationLabel` | `string` | The application label. |
| `certificateBase64s` | `array<string>` | A certificate (or array of certificates if a certificate-chain is used) used to sign this APK, re... |
| `externallyHostedUrl` | `string` | The URL at which the APK is hosted. This must be an https URL. |
| `fileSha1Base64` | `string` | The sha1 checksum of this APK, represented as a base64 encoded byte array. |
| `fileSha256Base64` | `string` | The sha256 checksum of this APK, represented as a base64 encoded byte array. |
| `fileSize` | `string` | The file size in bytes of this APK. |
| `iconBase64` | `string` | The icon image from the APK, as a base64 encoded byte array. |
| `maximumSdk` | `integer` | The maximum SDK supported by this APK (optional). |
| `minimumSdk` | `integer` | The minimum SDK targeted by this APK. |
| `nativeCodes` | `array<string>` | The native code environments supported by this APK (optional). |
| `packageName` | `string` | The package name. |
| `usesFeatures` | `array<string>` | The features required by this APK (optional). |
| `usesPermissions` | `array<UsesPermission>` | The permissions requested by this APK. |
| `versionCode` | `integer` | The version code of this APK. |
| `versionName` | `string` | The version name of this APK. |

### `FreeTrialDetails`

Details of a free trial pricing phase.

### `FreeTrialOfferPhase`

Details about free trial offer phase.

### `FullRefund`

A full refund of the remaining amount of a transaction.

### `GeneratedApksListResponse`

Response to list generated APKs.

| Property | Type | Description |
|----------|------|-------------|
| `generatedApks` | `array<GeneratedApksPerSigningKey>` | All generated APKs, grouped by the APK signing key. |

### `GeneratedApksPerSigningKey`

Download metadata for split, standalone and universal APKs, as well as asset pack slices, signed with a given key.

| Property | Type | Description |
|----------|------|-------------|
| `certificateSha256Hash` | `string` | SHA256 hash of the APK signing public key certificate. |
| `generatedAssetPackSlices` | `array<GeneratedAssetPackSlice>` | List of asset pack slices which will be served for this app bundle, signed with a key correspondi... |
| `generatedRecoveryModules` | `array<GeneratedRecoveryApk>` | Generated recovery apks for recovery actions signed with a key corresponding to certificate_sha25... |
| `generatedSplitApks` | `array<GeneratedSplitApk>` | List of generated split APKs, signed with a key corresponding to certificate_sha256_hash. |
| `generatedStandaloneApks` | `array<GeneratedStandaloneApk>` | List of generated standalone APKs, signed with a key corresponding to certificate_sha256_hash. |
| `generatedUniversalApk` | `GeneratedUniversalApk` | Generated universal APK, signed with a key corresponding to certificate_sha256_hash. This field i... |
| `targetingInfo` | `TargetingInfo` | Contains targeting information about the generated apks. |

### `GeneratedAssetPackSlice`

Download metadata for an asset pack slice.

| Property | Type | Description |
|----------|------|-------------|
| `downloadId` | `string` | Download ID, which uniquely identifies the APK to download. Should be supplied to `generatedapks.... |
| `moduleName` | `string` | Name of the module that this asset slice belongs to. |
| `sliceId` | `string` | Asset slice ID. |
| `version` | `string` | Asset module version. |

### `GeneratedRecoveryApk`

Download metadata for an app recovery module.

| Property | Type | Description |
|----------|------|-------------|
| `downloadId` | `string` | Download ID, which uniquely identifies the APK to download. Should be supplied to `generatedapks.... |
| `moduleName` | `string` | Name of the module which recovery apk belongs to. |
| `recoveryId` | `string` | ID of the recovery action. |
| `recoveryStatus` | `string` | The status of the recovery action corresponding to the recovery apk. |

### `GeneratedSplitApk`

Download metadata for a split APK.

| Property | Type | Description |
|----------|------|-------------|
| `downloadId` | `string` | Download ID, which uniquely identifies the APK to download. Should be supplied to `generatedapks.... |
| `moduleName` | `string` | Name of the module that this APK belongs to. |
| `splitId` | `string` | Split ID. Empty for the main split of the base module. |
| `variantId` | `integer` | ID of the generated variant. |

### `GeneratedStandaloneApk`

Download metadata for a standalone APK.

| Property | Type | Description |
|----------|------|-------------|
| `downloadId` | `string` | Download ID, which uniquely identifies the APK to download. Should be supplied to `generatedapks.... |
| `variantId` | `integer` | ID of the generated variant. |

### `GeneratedUniversalApk`

Download metadata for a universal APK.

| Property | Type | Description |
|----------|------|-------------|
| `downloadId` | `string` | Download ID, which uniquely identifies the APK to download. Should be supplied to `generatedapks.... |

### `GetOneTimeProductOfferRequest`

Request message for GetOneTimeProductOffers.

| Property | Type | Description |
|----------|------|-------------|
| `offerId` | `string` | Required. The unique offer ID of the offer to get. |
| `packageName` | `string` | Required. The parent app (package name) of the offer to get. |
| `productId` | `string` | Required. The parent one-time product (ID) of the offer to get. |
| `purchaseOptionId` | `string` | Required. The parent purchase option (ID) of the offer to get. |

### `GetSubscriptionOfferRequest`

Request message for GetSubscriptionOffer.

| Property | Type | Description |
|----------|------|-------------|
| `basePlanId` | `string` | Required. The parent base plan (ID) of the offer to get. |
| `offerId` | `string` | Required. The unique offer ID of the offer to get. |
| `packageName` | `string` | Required. The parent app (package name) of the offer to get. |
| `productId` | `string` | Required. The parent subscription (ID) of the offer to get. |

### `Grant`

An access grant resource.

| Property | Type | Description |
|----------|------|-------------|
| `appLevelPermissions` | `array<string>` | The permissions granted to the user for this app. |
| `name` | `string` | Required. Resource name for this grant, following the pattern "developers/{developer}/users/{emai... |
| `packageName` | `string` | Immutable. The package name of the app. This will be empty for draft apps. |

### `Image`

An uploaded image. The resource for ImagesService.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | A unique id representing this image. |
| `sha1` | `string` | A sha1 hash of the image. |
| `sha256` | `string` | A sha256 hash of the image. |
| `url` | `string` | A URL that will serve a preview of the image. |

### `ImagesDeleteAllResponse`

Response for deleting all images.

| Property | Type | Description |
|----------|------|-------------|
| `deleted` | `array<Image>` | The deleted images. |

### `ImagesListResponse`

Response listing all images.

| Property | Type | Description |
|----------|------|-------------|
| `images` | `array<Image>` | All listed Images. |

### `ImagesUploadResponse`

Response for uploading an image.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `Image` | The uploaded image. |

### `InAppProduct`

An in-app product. The resource for InappproductsService.

| Property | Type | Description |
|----------|------|-------------|
| `defaultLanguage` | `string` | Default language of the localized data, as defined by BCP-47. e.g. "en-US". |
| `defaultPrice` | `Price` | Default price. Cannot be zero, as in-app products are never free. Always in the developer's Check... |
| `gracePeriod` | `string` | Grace period of the subscription, specified in ISO 8601 format. Allows developers to give their s... |
| `listings` | `object` | List of localized title and description data. Map key is the language of the localized data, as d... |
| `managedProductTaxesAndComplianceSettings` | `ManagedProductTaxAndComplianceSettings` | Details about taxes and legal compliance. Only applicable to managed products. |
| `packageName` | `string` | Package name of the parent app. |
| `prices` | `object` | Prices per buyer region. None of these can be zero, as in-app products are never free. Map key is... |
| `purchaseType` | `string` | The type of the product, e.g. a recurring subscription. |
| `sku` | `string` | Stock-keeping-unit (SKU) of the product, unique within an app. |
| `status` | `string` | The status of the product, e.g. whether it's active. |
| `subscriptionPeriod` | `string` | Subscription period, specified in ISO 8601 format. Acceptable values are P1W (one week), P1M (one... |
| `subscriptionTaxesAndComplianceSettings` | `SubscriptionTaxAndComplianceSettings` | Details about taxes and legal compliance. Only applicable to subscription products. |
| `trialPeriod` | `string` | Trial period, specified in ISO 8601 format. Acceptable values are anything between P7D (seven day... |

### `InAppProductListing`

Store listing of a single in-app product.

| Property | Type | Description |
|----------|------|-------------|
| `benefits` | `array<string>` | Localized entitlement benefits for a subscription. |
| `description` | `string` | Description for the store listing. |
| `title` | `string` | Title for the store listing. |

### `InappproductsBatchDeleteRequest`

Request to delete multiple in-app products.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<InappproductsDeleteRequest>` | Individual delete requests. At least one request is required. Can contain up to 100 requests. All... |

### `InappproductsBatchGetResponse`

Response message for BatchGetSubscriptions endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `inappproduct` | `array<InAppProduct>` | The list of requested in-app products, in the same order as the request. |

### `InappproductsBatchUpdateRequest`

Request to update or insert one or more in-app products.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<InappproductsUpdateRequest>` | Required. Individual update requests. At least one request is required. Can contain up to 100 req... |

### `InappproductsBatchUpdateResponse`

Response for a batch in-app product update.

| Property | Type | Description |
|----------|------|-------------|
| `inappproducts` | `array<InAppProduct>` | The updated or inserted in-app products. |

### `InappproductsDeleteRequest`

Request to delete an in-app product.

| Property | Type | Description |
|----------|------|-------------|
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `packageName` | `string` | Package name of the app. |
| `sku` | `string` | Unique identifier for the in-app product. |

### `InappproductsListResponse`

Response listing all in-app products.

| Property | Type | Description |
|----------|------|-------------|
| `inappproduct` | `array<InAppProduct>` | All in-app products. |
| `kind` | `string` | The kind of this response ("androidpublisher#inappproductsListResponse"). |
| `pageInfo` | `PageInfo` | Deprecated and unset. |
| `tokenPagination` | `TokenPagination` | Pagination token, to handle a number of products that is over one page. |

### `InappproductsUpdateRequest`

Request to update an in-app product.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | If set to true, and the in-app product with the given package_name and sku doesn't exist, the in-... |
| `autoConvertMissingPrices` | `boolean` | If true the prices for all regions targeted by the parent app that don't have a price specified f... |
| `inappproduct` | `InAppProduct` | The new in-app product. |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `packageName` | `string` | Package name of the app. |
| `sku` | `string` | Unique identifier for the in-app product. |

### `InstallmentPlan`

Information to a installment plan.

| Property | Type | Description |
|----------|------|-------------|
| `initialCommittedPaymentsCount` | `integer` | Total number of payments the user is initially committed for. |
| `pendingCancellation` | `PendingCancellation` | If present, this installment plan is pending to be canceled. The cancellation will happen only af... |
| `remainingCommittedPaymentsCount` | `integer` | Total number of committed payments remaining to be paid for in this renewal cycle. |
| `subsequentCommittedPaymentsCount` | `integer` | Total number of payments the user will be committed for after each commitment period. Empty means... |

### `InstallmentsBasePlanType`

Represents an installments base plan where a user commits to a specified number of payments.

| Property | Type | Description |
|----------|------|-------------|
| `accountHoldDuration` | `string` | Optional. Custom account hold period of the subscription, specified in ISO 8601 format. Acceptabl... |
| `billingPeriodDuration` | `string` | Required. Immutable. Subscription period, specified in ISO 8601 format. For a list of acceptable ... |
| `committedPaymentsCount` | `integer` | Required. Immutable. The number of payments the user is committed to. It is immutable after the b... |
| `gracePeriodDuration` | `string` | Grace period of the subscription, specified in ISO 8601 format. Acceptable values must be in days... |
| `prorationMode` | `string` | The proration mode for the base plan determines what happens when a user switches to this plan fr... |
| `renewalType` | `string` | Required. Immutable. Installments base plan renewal type. Determines the behavior at the end of t... |
| `resubscribeState` | `string` | Whether users should be able to resubscribe to this base plan in Google Play surfaces. Defaults t... |

### `InternalAppSharingArtifact`

An artifact resource which gets created when uploading an APK or Android App Bundle through internal app sharing.

| Property | Type | Description |
|----------|------|-------------|
| `certificateFingerprint` | `string` | The sha256 fingerprint of the certificate used to sign the generated artifact. |
| `downloadUrl` | `string` | The download URL generated for the uploaded artifact. Users that are authorized to download can f... |
| `sha256` | `string` | The sha256 hash of the artifact represented as a lowercase hexadecimal number, matching the outpu... |

### `IntroductoryPriceDetails`

Details of an introductory price pricing phase.

### `IntroductoryPriceInfo`

Contains the introductory price information for a subscription.

| Property | Type | Description |
|----------|------|-------------|
| `introductoryPriceAmountMicros` | `string` | Introductory price of the subscription, not including tax. The currency is the same as price_curr... |
| `introductoryPriceCurrencyCode` | `string` | ISO 4217 currency code for the introductory subscription price. For example, if the price is spec... |
| `introductoryPriceCycles` | `integer` | The number of billing period to offer introductory pricing. |
| `introductoryPricePeriod` | `string` | Introductory price period, specified in ISO 8601 format. Common values are (but not limited to) "... |

### `IntroductoryPriceOfferPhase`

Details about introductory price offer phase.

### `ItemExpiryTimeDetails`

Expiry time details of a subscription item.

| Property | Type | Description |
|----------|------|-------------|
| `expiryTime` | `string` | The new expiry time for this subscription item. |
| `productId` | `string` | The product ID of the subscription item (for example, 'premium_plan'). |

### `ItemReplacement`

Details about a subscription line item that is being replaced.

| Property | Type | Description |
|----------|------|-------------|
| `basePlanId` | `string` | The base plan ID of the subscription line item being replaced. |
| `offerId` | `string` | The offer ID of the subscription line item being replaced, if applicable. |
| `productId` | `string` | The product ID of the subscription line item being replaced. |
| `replacementMode` | `string` | The replacement mode applied during the purchase. |

### `LanguageTargeting`

Targeting based on language.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<string>` | Alternative languages. |
| `value` | `array<string>` | ISO-639: 2 or 3 letter language code. |

### `LineItem`

Details of a line item.

| Property | Type | Description |
|----------|------|-------------|
| `listingPrice` | `Money` | Item's listed price on Play Store, this may or may not include tax. Excludes Google-funded discou... |
| `oneTimePurchaseDetails` | `OneTimePurchaseDetails` | Details of a one-time purchase. |
| `paidAppDetails` | `PaidAppDetails` | Details of a paid app purchase. |
| `productId` | `string` | The purchased product ID or in-app SKU (for example, 'monthly001' or 'com.some.thing.inapp1'). |
| `productTitle` | `string` | Developer-specified name of the product. Displayed in buyer's locale. Example: coins, monthly sub... |
| `subscriptionDetails` | `SubscriptionDetails` | Details of a subscription purchase. |
| `tax` | `Money` | The tax paid for this line item. |
| `total` | `Money` | The total amount paid by the user for this line item, taking into account discounts and tax. |

### `ListAppRecoveriesResponse`

Response message for ListAppRecoveries. -- api-linter: core::0158::response-next-page-token-field=disabled

| Property | Type | Description |
|----------|------|-------------|
| `recoveryActions` | `array<AppRecoveryAction>` | List of recovery actions associated with the requested package name. |

### `ListDeviceTierConfigsResponse`

Response listing existing device tier configs.

| Property | Type | Description |
|----------|------|-------------|
| `deviceTierConfigs` | `array<DeviceTierConfig>` | Device tier configs created by the developer. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListOneTimeProductOffersResponse`

Response message for ListOneTimeProductOffers.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `oneTimeProductOffers` | `array<OneTimeProductOffer>` | The one_time_product offers from the specified request. |

### `ListOneTimeProductsResponse`

Response message for ListOneTimeProducts.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `oneTimeProducts` | `array<OneTimeProduct>` | The one-time products from the specified app. |

### `ListSubscriptionOffersResponse`

Response message for ListSubscriptionOffers.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `subscriptionOffers` | `array<SubscriptionOffer>` | The subscription offers from the specified subscription. |

### `ListSubscriptionsResponse`

Response message for ListSubscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `subscriptions` | `array<Subscription>` | The subscriptions from the specified app. |

### `ListUsersResponse`

A response containing one or more users with access to an account.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to pass to subsequent calls in order to retrieve subsequent results. This will not be set... |
| `users` | `array<User>` | The resulting users. |

### `Listing`

A localized store listing. The resource for ListingsService.

| Property | Type | Description |
|----------|------|-------------|
| `fullDescription` | `string` | Full description of the app. |
| `language` | `string` | Language localization code (a BCP-47 language tag; for example, "de-AT" for Austrian German). |
| `shortDescription` | `string` | Short description of the app. |
| `title` | `string` | Localized title of the app. |
| `video` | `string` | URL of a promotional YouTube video for the app. |

### `ListingsListResponse`

Response listing all localized listings.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of this response ("androidpublisher#listingsListResponse"). |
| `listings` | `array<Listing>` | All localized listings. |

### `LocalizedText`

Localized text in given language.

| Property | Type | Description |
|----------|------|-------------|
| `language` | `string` | Language localization code (a BCP-47 language tag; for example, "de-AT" for Austrian German). |
| `text` | `string` | The text in the given language. |

### `ManagedProductTaxAndComplianceSettings`

Details about taxation and legal compliance for managed products.

| Property | Type | Description |
|----------|------|-------------|
| `eeaWithdrawalRightType` | `string` | Digital content or service classification for products distributed to users in the European Econo... |
| `isTokenizedDigitalAsset` | `boolean` | Whether this in-app product is declared as a product representing a tokenized digital asset. |
| `productTaxCategoryCode` | `string` | Product tax category code to assign to the in-app product. Product tax category determines the tr... |
| `regionalProductAgeRatingInfos` | `array<RegionalProductAgeRatingInfo>` | Regional age rating information. Currently this field is only supported for region code `US`. |
| `taxRateInfoByRegionCode` | `object` | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode's... |

### `MigrateBasePlanPricesRequest`

Request message for MigrateBasePlanPrices.

| Property | Type | Description |
|----------|------|-------------|
| `basePlanId` | `string` | Required. The unique base plan ID of the base plan to update prices on. |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `packageName` | `string` | Required. Package name of the parent app. Must be equal to the package_name field on the Subscrip... |
| `productId` | `string` | Required. The ID of the subscription to update. Must be equal to the product_id field on the Subs... |
| `regionalPriceMigrations` | `array<RegionalPriceMigrationConfig>` | Required. The regional prices to update. |
| `regionsVersion` | `RegionsVersion` | Required. The version of the available regions being used for the regional_price_migrations. |

### `MigrateBasePlanPricesResponse`

Response message for MigrateBasePlanPrices.

### `ModuleMetadata`

Metadata of a module.

| Property | Type | Description |
|----------|------|-------------|
| `deliveryType` | `string` | Indicates the delivery type (e.g. on-demand) of the module. |
| `dependencies` | `array<string>` | Names of the modules that this module directly depends on. Each module implicitly depends on the ... |
| `moduleType` | `string` | Indicates the type of this feature module. |
| `name` | `string` | Module name. |
| `targeting` | `ModuleTargeting` | The targeting that makes a conditional module installed. Relevant only for Split APKs. |

### `ModuleTargeting`

Targeting on the module level.

| Property | Type | Description |
|----------|------|-------------|
| `deviceFeatureTargeting` | `array<DeviceFeatureTargeting>` | Targeting for device features. |
| `sdkVersionTargeting` | `SdkVersionTargeting` | The sdk version that the variant targets |
| `userCountriesTargeting` | `UserCountriesTargeting` | Countries-level targeting |

### `Money`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `MultiAbi`

Represents a list of ABIs.

| Property | Type | Description |
|----------|------|-------------|
| `abi` | `array<Abi>` | A list of targeted ABIs, as represented by the Android Platform |

### `MultiAbiTargeting`

Targeting based on multiple abis.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<MultiAbi>` | Targeting of other sibling directories that were in the Bundle. For main splits this is targeting... |
| `value` | `array<MultiAbi>` | Value of a multi abi. |

### `OfferDetails`

Offer details information related to a purchase line item.

| Property | Type | Description |
|----------|------|-------------|
| `basePlanId` | `string` | The base plan ID. Present for all base plan and offers. |
| `offerId` | `string` | The offer ID. Only present for discounted offers. |
| `offerTags` | `array<string>` | The latest offer tags associated with the offer. It includes tags inherited from the base plan. |

### `OfferPhase`

Offer phase details.

| Property | Type | Description |
|----------|------|-------------|
| `basePrice` | `BasePriceOfferPhase` | Set when the offer phase is a base plan pricing phase. |
| `freeTrial` | `FreeTrialOfferPhase` | Set when the offer phase is a free trial. |
| `introductoryPrice` | `IntroductoryPriceOfferPhase` | Set when the offer phase is an introductory price offer phase. |
| `prorationPeriod` | `ProrationPeriodOfferPhase` | Set when the offer phase is a proration period. |

### `OfferPhaseDetails`

Details of a pricing phase for the entitlement period funded by this order.

| Property | Type | Description |
|----------|------|-------------|
| `baseDetails` | `BaseDetails` | The order funds a base price period. |
| `freeTrialDetails` | `FreeTrialDetails` | The order funds a free trial period. |
| `introductoryPriceDetails` | `IntroductoryPriceDetails` | The order funds an introductory pricing period. |
| `prorationPeriodDetails` | `ProrationPeriodDetails` | The order funds a proration period. |

### `OfferTag`

Represents a custom tag specified for a product offer.

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `string` | Must conform with RFC-1034. That is, this string can only contain lower-case letters (a-z), numbe... |

### `OneTimeCode`

A single use promotion code.

### `OneTimeExternalTransaction`

Represents a one-time transaction.

| Property | Type | Description |
|----------|------|-------------|
| `externalTransactionToken` | `string` | Input only. Provided during the call to Create. Retrieved from the client when the alternative bi... |

### `OneTimeProduct`

A single one-time product for an app.

| Property | Type | Description |
|----------|------|-------------|
| `listings` | `array<OneTimeProductListing>` | Required. Set of localized title and description data. Must not have duplicate entries with the s... |
| `offerTags` | `array<OfferTag>` | Optional. List of up to 20 custom tags specified for this one-time product, and returned to the a... |
| `packageName` | `string` | Required. Immutable. Package name of the parent app. |
| `productId` | `string` | Required. Immutable. Unique product ID of the product. Unique within the parent app. Product IDs ... |
| `purchaseOptions` | `array<OneTimeProductPurchaseOption>` | Required. The set of purchase options for this one-time product. |
| `regionsVersion` | `RegionsVersion` | Output only. The version of the regions configuration that was used to generate the one-time prod... |
| `restrictedPaymentCountries` | `RestrictedPaymentCountries` | Optional. Countries where the purchase of this one-time product is restricted to payment methods ... |
| `taxAndComplianceSettings` | `OneTimeProductTaxAndComplianceSettings` | Details about taxes and legal compliance. |

### `OneTimeProductBuyPurchaseOption`

A purchase option that can be bought.

| Property | Type | Description |
|----------|------|-------------|
| `legacyCompatible` | `boolean` | Optional. Whether this purchase option will be available in legacy PBL flows that do not support ... |
| `multiQuantityEnabled` | `boolean` | Optional. Whether this purchase option allows multi-quantity. Multi-quantity allows buyer to purc... |

### `OneTimeProductDiscountedOffer`

Configuration specific to discounted offers.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Time when the offer will stop being available. |
| `redemptionLimit` | `string` | Optional. The number of times this offer can be redeemed. If unset or set to 0, allows for unlimi... |
| `startTime` | `string` | Time when the offer will start being available. |

### `OneTimeProductListing`

Regional store listing for a one-time product.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Required. The description of this product in the language of this listing. The maximum length is ... |
| `languageCode` | `string` | Required. The language of this listing, as defined by BCP-47, e.g., "en-US". |
| `title` | `string` | Required. The title of this product in the language of this listing. The maximum length is 55 cha... |

### `OneTimeProductOffer`

A single offer for a one-time product.

| Property | Type | Description |
|----------|------|-------------|
| `discountedOffer` | `OneTimeProductDiscountedOffer` | A discounted offer. |
| `offerId` | `string` | Required. Immutable. The ID of this product offer. Must be unique within the purchase option. It ... |
| `offerTags` | `array<OfferTag>` | Optional. List of up to 20 custom tags specified for this offer, and returned to the app through ... |
| `packageName` | `string` | Required. Immutable. The package name of the app the parent product belongs to. |
| `preOrderOffer` | `OneTimeProductPreOrderOffer` | A pre-order offer. |
| `productId` | `string` | Required. Immutable. The ID of the parent product this offer belongs to. |
| `purchaseOptionId` | `string` | Required. Immutable. The ID of the purchase option to which this offer is an extension. |
| `regionalPricingAndAvailabilityConfigs` | `array<OneTimeProductOfferRegionalPricingAndAvailabilityConfig>` | Set of regional pricing and availability information for this offer. Must not have duplicate entr... |
| `regionsVersion` | `RegionsVersion` | Output only. The version of the regions configuration that was used to generate the one-time prod... |
| `state` | `string` | Output only. The current state of this offer. This field cannot be changed by updating the resour... |

### `OneTimeProductOfferNoPriceOverrideOptions`

Options for one-time product offers without a regional price override.

### `OneTimeProductOfferRegionalPricingAndAvailabilityConfig`

Regional pricing and availability configuration for a one-time product offer.

| Property | Type | Description |
|----------|------|-------------|
| `absoluteDiscount` | `Money` | The absolute value of the discount that is subtracted from the purchase option price. It should b... |
| `availability` | `string` | Required. The availability for this region. |
| `noOverride` | `OneTimeProductOfferNoPriceOverrideOptions` | The price defined in the purchase option for this region will be used. |
| `regionCode` | `string` | Required. Region code this configuration applies to, as defined by ISO 3166-2, e.g., "US". |
| `relativeDiscount` | `number` | The fraction of the purchase option price that the user pays for this offer. For example, if the ... |

### `OneTimeProductPreOrderOffer`

Configuration specific to pre-order offers.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Required. Time when the pre-order will stop being available. |
| `priceChangeBehavior` | `string` | Required. Immutable. Specifies how price changes affect pre-existing pre-orders. |
| `releaseTime` | `string` | Required. Time on which the product associated with the pre-order will be released and the pre-or... |
| `startTime` | `string` | Required. Time when the pre-order will start being available. |

### `OneTimeProductPurchaseOption`

A single purchase option for a one-time product.

| Property | Type | Description |
|----------|------|-------------|
| `buyOption` | `OneTimeProductBuyPurchaseOption` | A purchase option that can be bought. |
| `newRegionsConfig` | `OneTimeProductPurchaseOptionNewRegionsConfig` | Pricing information for any new locations Play may launch in the future. If omitted, the purchase... |
| `offerTags` | `array<OfferTag>` | Optional. List of up to 20 custom tags specified for this purchase option, and returned to the ap... |
| `purchaseOptionId` | `string` | Required. Immutable. The unique identifier of this purchase option. Must be unique within the one... |
| `regionalPricingAndAvailabilityConfigs` | `array<OneTimeProductPurchaseOptionRegionalPricingAndAvailabilityConfig>` | Regional pricing and availability information for this purchase option. |
| `rentOption` | `OneTimeProductRentPurchaseOption` | A purchase option that can be rented. |
| `state` | `string` | Output only. The state of the purchase option, i.e., whether it's active. This field cannot be ch... |
| `taxAndComplianceSettings` | `PurchaseOptionTaxAndComplianceSettings` | Optional. Details about taxes and legal compliance. |

### `OneTimeProductPurchaseOptionNewRegionsConfig`

Pricing information for any new regions Play may launch in the future.

| Property | Type | Description |
|----------|------|-------------|
| `availability` | `string` | Required. The regional availability for the new regions config. When set to AVAILABLE, the pricin... |
| `eurPrice` | `Money` | Required. Price in EUR to use for any new regions Play may launch in. |
| `usdPrice` | `Money` | Required. Price in USD to use for any new regions Play may launch in. |

### `OneTimeProductPurchaseOptionRegionalPricingAndAvailabilityConfig`

Regional pricing and availability configuration for a purchase option.

| Property | Type | Description |
|----------|------|-------------|
| `availability` | `string` | The availability of the purchase option. |
| `price` | `Money` | The price of the purchase option in the specified region. Must be set in the currency that is lin... |
| `regionCode` | `string` | Required. Region code this configuration applies to, as defined by ISO 3166-2, e.g., "US". |

### `OneTimeProductRentPurchaseOption`

A purchase option that can be rented.

| Property | Type | Description |
|----------|------|-------------|
| `expirationPeriod` | `string` | Optional. The amount of time the user has after starting consuming the entitlement before it is r... |
| `rentalPeriod` | `string` | Required. The amount of time a user has the entitlement for. Starts at purchase flow completion. ... |

### `OneTimeProductTaxAndComplianceSettings`

Details about taxation, Google Play policy and legal compliance for one-time products.

| Property | Type | Description |
|----------|------|-------------|
| `isTokenizedDigitalAsset` | `boolean` | Whether this one-time product is declared as a product representing a tokenized digital asset. |
| `productTaxCategoryCode` | `string` | Product tax category code to assign to the one-time product. Product tax category determines the ... |
| `regionalProductAgeRatingInfos` | `array<RegionalProductAgeRatingInfo>` | Regional age rating information. Currently this field is only supported for region code `US`. |
| `regionalTaxConfigs` | `array<RegionalTaxConfig>` | Regional tax configuration. |

### `OneTimePurchaseDetails`

Details of a one-time purchase.

| Property | Type | Description |
|----------|------|-------------|
| `offerId` | `string` | The offer ID of the one-time purchase offer. |
| `preorderDetails` | `PreorderDetails` | The details of a pre-order purchase. Only set if it is a pre-order purchase. Note that this field... |
| `purchaseOptionId` | `string` | ID of the purchase option. This field is set for both purchase options and variant offers. For pu... |
| `quantity` | `integer` | The number of items purchased (for multi-quantity item purchases). |
| `rentalDetails` | `RentalDetails` | The details of a rent purchase. Only set if it is a rent purchase. |

### `Order`

The Order resource encapsulates comprehensive information about a transaction made on Google Play. It includes a variety of attributes that provide details about the order itself, the products purchased, and the history of events related to the order. The Orders APIs provide real-time access to your order data within the Google Play ecosystem. You can retrieve detailed information and metadata for both one-time and recurring orders, including transaction details like charges, taxes, and refunds, as well as metadata such as pricing phases for subscriptions. The Orders APIs let you automate tasks related to order management, reducing the need for manual checks via the Play Developer Console. The following are some of the use cases for this API: + Real-time order data retrieval - Get order details and metadata immediately after a purchase using an order ID. + Order update synchronization - Periodically sync order updates to maintain an up-to-date record of order information. Note: + The Orders API calls count towards your Play Developer API quota, which defaults to 200K daily, and may be insufficient to sync extensive order histories. + A maximum of 1000 orders can be retrieved per call. Using larger page sizes is recommended to minimize quota usage. Check your quota in the Cloud Console and request more if required.

| Property | Type | Description |
|----------|------|-------------|
| `buyerAddress` | `BuyerAddress` | Address information for the customer, for use in tax computation. When Google is the Merchant of ... |
| `createTime` | `string` | The time when the order was created. |
| `developerRevenueInBuyerCurrency` | `Money` | Your revenue for this order in the buyer's currency, including deductions of partial refunds, tax... |
| `lastEventTime` | `string` | The time of the last event that occurred on the order. |
| `lineItems` | `array<LineItem>` | The individual line items making up this order. |
| `orderDetails` | `OrderDetails` | Detailed information about the order at creation time. |
| `orderHistory` | `OrderHistory` | Details about events which modified the order. |
| `orderId` | `string` | The order ID. |
| `pointsDetails` | `PointsDetails` | Play points applied to the order, including offer information, discount rate and point values. |
| `purchaseToken` | `string` | The token provided to the user's device when the subscription or item was purchased. |
| `salesChannel` | `string` | The originating sales channel of the order. |
| `state` | `string` | The state of the order. |
| `tax` | `Money` | The total tax paid as a part of this order. |
| `total` | `Money` | The final amount paid by the customer, taking into account discounts and taxes. |

### `OrderDetails`

Detailed information about the order at creation time.

| Property | Type | Description |
|----------|------|-------------|
| `taxInclusive` | `boolean` | Indicates whether the listed price was tax inclusive or not. |

### `OrderHistory`

Details about events which modified the order.

| Property | Type | Description |
|----------|------|-------------|
| `cancellationEvent` | `CancellationEvent` | Details of when the order was canceled. |
| `partialRefundEvents` | `array<PartialRefundEvent>` | Details of the partial refund events for this order. |
| `processedEvent` | `ProcessedEvent` | Details of when the order was processed. |
| `refundEvent` | `RefundEvent` | Details of when the order was fully refunded. |

### `OtherRecurringProduct`

Details of a recurring external transaction product which doesn't belong to any other more specific category.

### `OtherRegionsBasePlanConfig`

Pricing information for any new locations Play may launch in.

| Property | Type | Description |
|----------|------|-------------|
| `eurPrice` | `Money` | Required. Price in EUR to use for any new locations Play may launch in. |
| `newSubscriberAvailability` | `boolean` | Whether the base plan is available for new subscribers in any new locations Play may launch in. I... |
| `usdPrice` | `Money` | Required. Price in USD to use for any new locations Play may launch in. |

### `OtherRegionsSubscriptionOfferConfig`

Configuration for any new locations Play may launch in specified on a subscription offer.

| Property | Type | Description |
|----------|------|-------------|
| `otherRegionsNewSubscriberAvailability` | `boolean` | Whether the subscription offer in any new locations Play may launch in the future. If not specifi... |

### `OtherRegionsSubscriptionOfferPhaseConfig`

Configuration for any new locations Play may launch in for a single offer phase.

| Property | Type | Description |
|----------|------|-------------|
| `absoluteDiscounts` | `OtherRegionsSubscriptionOfferPhasePrices` | The absolute amount of money subtracted from the base plan price prorated over the phase duration... |
| `free` | `OtherRegionsSubscriptionOfferPhaseFreePriceOverride` | Set to specify this offer is free to obtain. |
| `otherRegionsPrices` | `OtherRegionsSubscriptionOfferPhasePrices` | The absolute price the user pays for this offer phase. The price must not be smaller than the min... |
| `relativeDiscount` | `number` | The fraction of the base plan price prorated over the phase duration that the user pays for this ... |

### `OtherRegionsSubscriptionOfferPhaseFreePriceOverride`

Represents the free price override configuration for any new locations Play may launch for a single offer phase.

### `OtherRegionsSubscriptionOfferPhasePrices`

Pricing information for any new locations Play may launch in.

| Property | Type | Description |
|----------|------|-------------|
| `eurPrice` | `Money` | Required. Price in EUR to use for any new locations Play may launch in. |
| `usdPrice` | `Money` | Required. Price in USD to use for any new locations Play may launch in. |

### `OutOfAppPurchaseContext`

Information specific to an out of app purchase.

| Property | Type | Description |
|----------|------|-------------|
| `expiredExternalAccountIdentifiers` | `ExternalAccountIdentifiers` | User account identifier from the last expired subscription for this SKU. |
| `expiredPurchaseToken` | `string` | The purchase token of the last expired subscription. This purchase token must only be used to hel... |

### `PageInfo`

Information about the current page. List operations that supports paging return only one "page" of results. This protocol buffer message describes the page that has been returned.

| Property | Type | Description |
|----------|------|-------------|
| `resultPerPage` | `integer` | Maximum number of results returned in one page. ! The number of results included in the API respo... |
| `startIndex` | `integer` | Index of the first result returned in the current page. |
| `totalResults` | `integer` | Total number of results available on the backend ! The total number of results in the result set. |

### `PaidAppDetails`

Details of a paid app purchase.

### `PartialRefund`

A partial refund of a transaction.

| Property | Type | Description |
|----------|------|-------------|
| `refundId` | `string` | Required. A unique id distinguishing this partial refund. If the refund is successful, subsequent... |
| `refundPreTaxAmount` | `Price` | Required. The pre-tax amount of the partial refund. Should be less than the remaining pre-tax amo... |

### `PartialRefundEvent`

Details of the partial refund events for this order.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time when the partial refund was created. |
| `processTime` | `string` | The time when the partial refund was processed. |
| `refundDetails` | `RefundDetails` | Details for the partial refund. |
| `state` | `string` | The state of the partial refund. |

### `PausedStateContext`

Information specific to a subscription in paused state.

| Property | Type | Description |
|----------|------|-------------|
| `autoResumeTime` | `string` | Time at which the subscription will be automatically resumed. |

### `PendingCancellation`

This is an indicator of whether there is a pending cancellation on the virtual installment plan. The cancellation will happen only after the user finished all committed payments.

### `PointsDetails`

Details relating to any Play Points applied to an order.

| Property | Type | Description |
|----------|------|-------------|
| `pointsCouponValue` | `Money` | The monetary value of a Play Points coupon. This is the discount the coupon provides, which may n... |
| `pointsDiscountRateMicros` | `string` | The percentage rate which the Play Points promotion reduces the cost by. E.g. for a 100 points fo... |
| `pointsOfferId` | `string` | ID unique to the play points offer in use for this order. |
| `pointsSpent` | `string` | The number of Play Points applied in this order. E.g. for a 100 points for $2 coupon, this is 100... |

### `PreorderDetails`

Details of a pre-order purchase.

### `PreorderOfferDetails`

Offer details information related to a preorder line item.

| Property | Type | Description |
|----------|------|-------------|
| `preorderReleaseTime` | `string` | The time when a preordered item is released for a preorder purchase. |

### `PrepaidBasePlanType`

Represents a base plan that does not automatically renew at the end of the base plan, and must be manually renewed by the user.

| Property | Type | Description |
|----------|------|-------------|
| `billingPeriodDuration` | `string` | Required. Immutable. Subscription period, specified in ISO 8601 format. For a list of acceptable ... |
| `timeExtension` | `string` | Whether users should be able to extend this prepaid base plan in Google Play surfaces. Defaults t... |

### `PrepaidPlan`

Information related to a prepaid plan.

| Property | Type | Description |
|----------|------|-------------|
| `allowExtendAfterTime` | `string` | If present, this is the time after which top up purchases are allowed for the prepaid plan. Will ... |

### `Price`

Definition of a price, i.e. currency and units.

| Property | Type | Description |
|----------|------|-------------|
| `currency` | `string` | 3 letter Currency code, as defined by ISO 4217. See java/com/google/common/money/CurrencyCode.java |
| `priceMicros` | `string` | Price in 1/million of the currency base unit, represented as a string. |

### `PriceStepUpConsentDetails`

Information related to a price step-up that requires user consent.

| Property | Type | Description |
|----------|------|-------------|
| `consentDeadlineTime` | `string` | The deadline by which the user must provide consent. If consent is not provided by this time, the... |
| `newPrice` | `Money` | The new price which requires user consent. |
| `state` | `string` | Output only. The state of the price step-up consent. |

### `ProcessedEvent`

Details of when the order was processed.

| Property | Type | Description |
|----------|------|-------------|
| `eventTime` | `string` | The time when the order was processed. |

### `ProductLineItem`

Contains item-level info for a ProductPurchaseV2.

| Property | Type | Description |
|----------|------|-------------|
| `productId` | `string` | The purchased product ID (for example, 'monthly001'). |
| `productOfferDetails` | `ProductOfferDetails` | The offer details for this item. |

### `ProductOfferDetails`

Offer details information related to a purchase line item.

| Property | Type | Description |
|----------|------|-------------|
| `consumptionState` | `string` | Output only. The consumption state of the purchase. |
| `offerId` | `string` | The offer ID. Only present for offers. |
| `offerTags` | `array<string>` | The latest offer tags associated with the offer. It includes tags inherited from the purchase opt... |
| `offerToken` | `string` | The per-transaction offer token used to make this purchase line item. |
| `preorderOfferDetails` | `PreorderOfferDetails` | Offer details for a preorder offer. This will only be set for preorders. |
| `purchaseOptionId` | `string` | The purchase option ID. |
| `quantity` | `integer` | The quantity associated with the purchase of the inapp product. |
| `refundableQuantity` | `integer` | The quantity eligible for refund, i.e. quantity that hasn't been refunded. The value reflects qua... |
| `rentOfferDetails` | `RentOfferDetails` | Offer details about rent offers. This will only be set for rental line items. |

### `ProductPurchase`

A ProductPurchase resource indicates the status of a user's inapp product purchase.

| Property | Type | Description |
|----------|------|-------------|
| `acknowledgementState` | `integer` | The acknowledgement state of the inapp product. Possible values are: 0. Yet to be acknowledged 1.... |
| `consumptionState` | `integer` | The consumption state of the inapp product. Possible values are: 0. Yet to be consumed 1. Consumed |
| `developerPayload` | `string` | A developer-specified string that contains supplemental information about an order. |
| `kind` | `string` | This kind represents an inappPurchase object in the androidpublisher service. |
| `obfuscatedExternalAccountId` | `string` | An obfuscated version of the id that is uniquely associated with the user's account in your app. ... |
| `obfuscatedExternalProfileId` | `string` | An obfuscated version of the id that is uniquely associated with the user's profile in your app. ... |
| `orderId` | `string` | The order id associated with the purchase of the inapp product. |
| `productId` | `string` | The inapp product SKU. May not be present. |
| `purchaseState` | `integer` | The purchase state of the order. Possible values are: 0. Purchased 1. Canceled 2. Pending |
| `purchaseTimeMillis` | `string` | The time the product was purchased, in milliseconds since the epoch (Jan 1, 1970). |
| `purchaseToken` | `string` | The purchase token generated to identify this purchase. May not be present. |
| `purchaseType` | `integer` | The type of purchase of the inapp product. This field is only set if this purchase was not made u... |
| `quantity` | `integer` | The quantity associated with the purchase of the inapp product. If not present, the quantity is 1. |
| `refundableQuantity` | `integer` | The quantity eligible for refund, i.e. quantity that hasn't been refunded. The value reflects qua... |
| `regionCode` | `string` | ISO 3166-1 alpha-2 billing region code of the user at the time the product was granted. |

### `ProductPurchaseV2`

A ProductPurchaseV2 resource indicates the status of a user's inapp product purchase.

| Property | Type | Description |
|----------|------|-------------|
| `acknowledgementState` | `string` | Output only. The acknowledgement state of the purchase. |
| `kind` | `string` | This kind represents a ProductPurchaseV2 object in the androidpublisher service. |
| `obfuscatedExternalAccountId` | `string` | An obfuscated version of the id that is uniquely associated with the user's account in your app. ... |
| `obfuscatedExternalProfileId` | `string` | An obfuscated version of the id that is uniquely associated with the user's profile in your app. ... |
| `orderId` | `string` | The order id associated with the purchase of the inapp product. May not be set if there is no ord... |
| `productLineItem` | `array<ProductLineItem>` | Contains item-level info for a ProductPurchaseV2. |
| `purchaseCompletionTime` | `string` | The time when the purchase was successful, i.e., when the PurchaseState has changed to PURCHASED.... |
| `purchaseStateContext` | `PurchaseStateContext` | Information about the purchase state of the purchase. |
| `regionCode` | `string` | ISO 3166-1 alpha-2 billing region code of the user at the time the product was granted. |
| `testPurchaseContext` | `TestPurchaseContext` | Information related to test purchases. This will only be set for test purchases. |

### `ProductPurchasesAcknowledgeRequest`

Request for the product.purchases.acknowledge API.

| Property | Type | Description |
|----------|------|-------------|
| `developerPayload` | `string` | Payload to attach to the purchase. |

### `ProrationPeriodDetails`

Details of a proration period. A proration period can be a period calculated during a plan change to cover existing entitlements (For more information, see [Allow users to upgrade, downgrade, or change their subscription](https://developer.android.com/google/play/billing/subscriptions#allow-users-change), or a prorated period to align add-on renewal dates with the base (For more information, see [Rules applicable for items in the purchase](https://developer.android.com/google/play/billing/subscription-with-addons#rules-base-addons)).

| Property | Type | Description |
|----------|------|-------------|
| `originalOfferPhase` | `string` | Represent the original offer phase from the purchased the line item if the proration period conta... |

### `ProrationPeriodOfferPhase`

Details about proration period offer phase.

| Property | Type | Description |
|----------|------|-------------|
| `originalOfferPhaseType` | `string` | The original offer phase type before the proration period. Only set when the proration period is ... |

### `PurchaseOptionTaxAndComplianceSettings`

Details about taxation, Google Play policy and legal compliance for one-time product purchase options.

| Property | Type | Description |
|----------|------|-------------|
| `withdrawalRightType` | `string` | Optional. Digital content or service classification for products distributed to users in eligible... |

### `PurchaseStateContext`

Context about the purchase state.

| Property | Type | Description |
|----------|------|-------------|
| `purchaseState` | `string` | Output only. The purchase state of the purchase. |

### `RecurringExternalTransaction`

Represents a transaction that is part of a recurring series of payments. This can be a subscription or a one-time product with multiple payments (such as preorder).

| Property | Type | Description |
|----------|------|-------------|
| `externalSubscription` | `ExternalSubscription` | Details of an external subscription. |
| `externalTransactionToken` | `string` | Input only. Provided during the call to Create. Retrieved from the client when the alternative bi... |
| `initialExternalTransactionId` | `string` | The external transaction id of the first transaction of this recurring series of transactions. Fo... |
| `migratedTransactionProgram` | `string` | Input only. Provided during the call to Create. Must only be used when migrating a subscription f... |
| `otherRecurringProduct` | `OtherRecurringProduct` | Details of a recurring external transaction product which doesn't belong to any other specific ca... |

### `RefundDetails`

Details for a partial or full refund.

| Property | Type | Description |
|----------|------|-------------|
| `tax` | `Money` | The amount of tax refunded. |
| `total` | `Money` | The total amount refunded, including tax. |

### `RefundEvent`

Details of when the order was fully refunded.

| Property | Type | Description |
|----------|------|-------------|
| `eventTime` | `string` | The time when the order was fully refunded. |
| `refundDetails` | `RefundDetails` | Details for the full refund. |
| `refundReason` | `string` | The reason the order was refunded. |

### `RefundExternalTransactionRequest`

A request to refund an existing external transaction.

| Property | Type | Description |
|----------|------|-------------|
| `fullRefund` | `FullRefund` | A full-amount refund. |
| `partialRefund` | `PartialRefund` | A partial refund. |
| `refundTime` | `string` | Required. The time that the transaction was refunded. |

### `RegionalBasePlanConfig`

Configuration for a base plan specific to a region.

| Property | Type | Description |
|----------|------|-------------|
| `newSubscriberAvailability` | `boolean` | Whether the base plan in the specified region is available for new subscribers. Existing subscrib... |
| `price` | `Money` | The price of the base plan in the specified region. Must be set if the base plan is available to ... |
| `regionCode` | `string` | Required. Region code this configuration applies to, as defined by ISO 3166-2, e.g. "US". |

### `RegionalPriceMigrationConfig`

Configuration for migration of a legacy price cohort.

| Property | Type | Description |
|----------|------|-------------|
| `oldestAllowedPriceVersionTime` | `string` | Required. Subscribers in all legacy price cohorts before this time will be migrated to the curren... |
| `priceIncreaseType` | `string` | Optional. The requested type of price increase |
| `regionCode` | `string` | Required. Region code this configuration applies to, as defined by ISO 3166-2, e.g. "US". |

### `RegionalProductAgeRatingInfo`

Details about the age rating for a specific geographic region.

| Property | Type | Description |
|----------|------|-------------|
| `productAgeRatingTier` | `string` | The age rating tier of a product for the given region. |
| `regionCode` | `string` | Region code this configuration applies to, as defined by ISO 3166-2, e.g. "US". |

### `RegionalSubscriptionOfferConfig`

Configuration for a subscription offer in a single region.

| Property | Type | Description |
|----------|------|-------------|
| `newSubscriberAvailability` | `boolean` | Whether the subscription offer in the specified region is available for new subscribers. Existing... |
| `regionCode` | `string` | Required. Immutable. Region code this configuration applies to, as defined by ISO 3166-2, e.g. "US". |

### `RegionalSubscriptionOfferPhaseConfig`

Configuration for a single phase of a subscription offer in a single region.

| Property | Type | Description |
|----------|------|-------------|
| `absoluteDiscount` | `Money` | The absolute amount of money subtracted from the base plan price prorated over the phase duration... |
| `free` | `RegionalSubscriptionOfferPhaseFreePriceOverride` | Set to specify this offer is free to obtain. |
| `price` | `Money` | The absolute price the user pays for this offer phase. The price must not be smaller than the min... |
| `regionCode` | `string` | Required. Immutable. The region to which this config applies. |
| `relativeDiscount` | `number` | The fraction of the base plan price prorated over the phase duration that the user pays for this ... |

### `RegionalSubscriptionOfferPhaseFreePriceOverride`

Represents the free price override configuration for a single phase of a subscription offer

### `RegionalTaxConfig`

Details about taxation in a given geographical region.

| Property | Type | Description |
|----------|------|-------------|
| `eligibleForStreamingServiceTaxRate` | `boolean` | You must tell us if your app contains streaming products to correctly charge US state and local s... |
| `regionCode` | `string` | Required. Region code this configuration applies to, as defined by ISO 3166-2, e.g. "US". |
| `streamingTaxType` | `string` | To collect communications or amusement taxes in the United States, choose the appropriate tax cat... |
| `taxTier` | `string` | Tax tier to specify reduced tax rate. Developers who sell digital news, magazines, newspapers, bo... |

### `RegionalTaxRateInfo`

Specified details about taxation in a given geographical region.

| Property | Type | Description |
|----------|------|-------------|
| `eligibleForStreamingServiceTaxRate` | `boolean` | You must tell us if your app contains streaming products to correctly charge US state and local s... |
| `streamingTaxType` | `string` | To collect communications or amusement taxes in the United States, choose the appropriate tax cat... |
| `taxTier` | `string` | Tax tier to specify reduced tax rate. Developers who sell digital news, magazines, newspapers, bo... |

### `Regions`

Region targeting data for app recovery action targeting.

| Property | Type | Description |
|----------|------|-------------|
| `regionCode` | `array<string>` | Regions targeted by the recovery action. Region codes are ISO 3166 Alpha-2 country codes. For exa... |

### `RegionsVersion`

The version of the available regions being used for the specified resource.

| Property | Type | Description |
|----------|------|-------------|
| `version` | `string` | Required. A string representing the version of available regions being used for the specified res... |

### `RemoteInAppUpdate`

Object representation for Remote in-app update action type.

| Property | Type | Description |
|----------|------|-------------|
| `isRemoteInAppUpdateRequested` | `boolean` | Required. Set to true if Remote In-App Update action type is needed. |

### `RemoteInAppUpdateData`

Data related to Remote In-App Update action such as recovered user count, affected user count etc.

| Property | Type | Description |
|----------|------|-------------|
| `remoteAppUpdateDataPerBundle` | `array<RemoteInAppUpdateDataPerBundle>` | Data related to the recovery action at bundle level. |

### `RemoteInAppUpdateDataPerBundle`

Data related to the recovery action at bundle level.

| Property | Type | Description |
|----------|------|-------------|
| `recoveredDeviceCount` | `string` | Total number of devices which have been rescued. |
| `totalDeviceCount` | `string` | Total number of devices affected by this recovery action associated with bundle of the app. |
| `versionCode` | `string` | Version Code corresponding to the target bundle. |

### `RentOfferDetails`

Offer details information related to a rental line item.

### `RentalDetails`

Details of a rental purchase.

### `ReplacementCancellation`

Information specific to cancellations caused by subscription replacement.

### `RestrictedPaymentCountries`

Countries where the purchase of this product is restricted to payment methods registered in the same country. If empty, no payment location restrictions are imposed.

| Property | Type | Description |
|----------|------|-------------|
| `regionCodes` | `array<string>` | Required. Region codes to impose payment restrictions on, as defined by ISO 3166-2, e.g. "US". |

### `Review`

An Android app review.

| Property | Type | Description |
|----------|------|-------------|
| `authorName` | `string` | The name of the user who wrote the review. |
| `comments` | `array<Comment>` | A repeated field containing comments for the review. |
| `reviewId` | `string` | Unique identifier for this review. |

### `ReviewReplyResult`

The result of replying/updating a reply to review.

| Property | Type | Description |
|----------|------|-------------|
| `lastEdited` | `Timestamp` | The time at which the reply took effect. |
| `replyText` | `string` | The reply text that was applied. |

### `ReviewsListResponse`

Response listing reviews.

| Property | Type | Description |
|----------|------|-------------|
| `pageInfo` | `PageInfo` | Information about the current page. |
| `reviews` | `array<Review>` | List of reviews. |
| `tokenPagination` | `TokenPagination` | Pagination token, to handle a number of products that is over one page. |

### `ReviewsReplyRequest`

Request to reply to review or update existing reply.

| Property | Type | Description |
|----------|------|-------------|
| `replyText` | `string` | The text to set as the reply. Replies of more than approximately 350 characters will be rejected.... |

### `ReviewsReplyResponse`

Response on status of replying to a review.

| Property | Type | Description |
|----------|------|-------------|
| `result` | `ReviewReplyResult` | The result of replying/updating a reply to review. |

### `RevocationContext`

Revocation context of the purchases.subscriptionsv2.revoke API.

| Property | Type | Description |
|----------|------|-------------|
| `fullRefund` | `RevocationContextFullRefund` | Optional. Used when users should be refunded the full amount of latest charge on each item in the... |
| `itemBasedRefund` | `RevocationContextItemBasedRefund` | Optional. Used when a specific item should be refunded in a subscription with add-on items. |
| `proratedRefund` | `RevocationContextProratedRefund` | Optional. Used when users should be refunded a prorated amount they paid for their subscription b... |

### `RevocationContextFullRefund`

Used to determine if the refund type in the RevocationContext is a full refund.

### `RevocationContextItemBasedRefund`

Used to determine what specific item to revoke in a subscription with multiple items.

| Property | Type | Description |
|----------|------|-------------|
| `productId` | `string` | Required. If the subscription is a subscription with add-ons, the product id of the subscription ... |

### `RevocationContextProratedRefund`

Used to determine if the refund type in the RevocationContext is a prorated refund.

### `RevokeSubscriptionPurchaseRequest`

Request for the purchases.subscriptionsv2.revoke API.

| Property | Type | Description |
|----------|------|-------------|
| `revocationContext` | `RevocationContext` | Required. Additional details around the subscription revocation. |

### `RevokeSubscriptionPurchaseResponse`

Response for the purchases.subscriptionsv2.revoke API.

### `SafetyLabelsUpdateRequest`

Request to update Safety Labels of an app.

| Property | Type | Description |
|----------|------|-------------|
| `safetyLabels` | `string` | Required. Contents of the CSV file containing Data Safety responses. For the format of this file,... |

### `SafetyLabelsUpdateResponse`

Response for SafetyLabelsUpdate rpc.

### `ScreenDensity`

Represents a screen density.

| Property | Type | Description |
|----------|------|-------------|
| `densityAlias` | `string` | Alias for a screen density. |
| `densityDpi` | `integer` | Value for density dpi. |

### `ScreenDensityTargeting`

Targeting based on screen density.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<ScreenDensity>` | Targeting of other sibling directories that were in the Bundle. For main splits this is targeting... |
| `value` | `array<ScreenDensity>` | Value of a screen density. |

### `SdkVersion`

Represents an sdk version.

| Property | Type | Description |
|----------|------|-------------|
| `min` | `integer` | Inclusive minimum value of an sdk version. |

### `SdkVersionTargeting`

Targeting based on sdk version.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<SdkVersion>` | Targeting of other sibling directories that were in the Bundle. For main splits this is targeting... |
| `value` | `array<SdkVersion>` | Value of an sdk version. |

### `SignupPromotion`

The promotion applied on this item when purchased.

| Property | Type | Description |
|----------|------|-------------|
| `oneTimeCode` | `OneTimeCode` | A one-time code was applied. |
| `vanityCode` | `VanityCode` | A vanity code was applied. |

### `SplitApkMetadata`

Holds data specific to Split APKs.

| Property | Type | Description |
|----------|------|-------------|
| `isMasterSplit` | `boolean` | Indicates whether this APK is the main split of the module. |
| `splitId` | `string` | Id of the split. |

### `SplitApkVariant`

Variant is a group of APKs that covers a part of the device configuration space. APKs from multiple variants are never combined on one device.

| Property | Type | Description |
|----------|------|-------------|
| `apkSet` | `array<ApkSet>` | Set of APKs, one set per module. |
| `targeting` | `VariantTargeting` | Variant-level targeting. |
| `variantNumber` | `integer` | Number of the variant, starting at 0 (unless overridden). A device will receive APKs from the fir... |

### `StandaloneApkMetadata`

Holds data specific to Standalone APKs.

| Property | Type | Description |
|----------|------|-------------|
| `fusedModuleName` | `array<string>` | Names of the modules fused in this standalone APK. |

### `SubscribeWithGoogleInfo`

Information associated with purchases made with 'Subscribe with Google'.

| Property | Type | Description |
|----------|------|-------------|
| `emailAddress` | `string` | The email address of the user when the subscription was purchased. |
| `familyName` | `string` | The family name of the user when the subscription was purchased. |
| `givenName` | `string` | The given name of the user when the subscription was purchased. |
| `profileId` | `string` | The Google profile id of the user when the subscription was purchased. |
| `profileName` | `string` | The profile name of the user when the subscription was purchased. |

### `Subscription`

A single subscription for an app.

| Property | Type | Description |
|----------|------|-------------|
| `archived` | `boolean` | Output only. Deprecated: subscription archiving is not supported. |
| `basePlans` | `array<BasePlan>` | The set of base plans for this subscription. Represents the prices and duration of the subscripti... |
| `listings` | `array<SubscriptionListing>` | Required. List of localized listings for this subscription. Must contain at least an entry for th... |
| `packageName` | `string` | Immutable. Package name of the parent app. |
| `productId` | `string` | Immutable. Unique product ID of the product. Unique within the parent app. Product IDs must be co... |
| `restrictedPaymentCountries` | `RestrictedPaymentCountries` | Optional. Countries where the purchase of this subscription is restricted to payment methods regi... |
| `taxAndComplianceSettings` | `SubscriptionTaxAndComplianceSettings` | Details about taxes and legal compliance. |

### `SubscriptionCancelSurveyResult`

Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).

| Property | Type | Description |
|----------|------|-------------|
| `cancelSurveyReason` | `integer` | The cancellation reason the user chose in the survey. Possible values are: 0. Other 1. I don't us... |
| `userInputCancelReason` | `string` | The customized input cancel reason from the user. Only present when cancelReason is 0. |

### `SubscriptionDeferralInfo`

A SubscriptionDeferralInfo contains the data needed to defer a subscription purchase to a future expiry time.

| Property | Type | Description |
|----------|------|-------------|
| `desiredExpiryTimeMillis` | `string` | The desired next expiry time to assign to the subscription, in milliseconds since the Epoch. The ... |
| `expectedExpiryTimeMillis` | `string` | The expected expiry time for the subscription. If the current expiry time for the subscription is... |

### `SubscriptionDetails`

Details of a subscription purchase.

| Property | Type | Description |
|----------|------|-------------|
| `basePlanId` | `string` | The base plan ID of the subscription. |
| `offerId` | `string` | The offer ID for the current subscription offer. |
| `offerPhase` | `string` | The pricing phase for the billing period funded by this order. Deprecated. Use offer_phase_detail... |
| `offerPhaseDetails` | `OfferPhaseDetails` | The pricing phase details for the entitlement period funded by this order. |
| `servicePeriodEndTime` | `string` | The end of the billing period funded by this order. This is a snapshot of the billing/service per... |
| `servicePeriodStartTime` | `string` | The start of the billing period funded by this order. This is a snapshot of the billing/service p... |

### `SubscriptionItemPriceChangeDetails`

Price change related information of a subscription item.

| Property | Type | Description |
|----------|------|-------------|
| `expectedNewPriceChargeTime` | `string` | The renewal time at which the price change will become effective for the user. This is subject to... |
| `newPrice` | `Money` | New recurring price for the subscription item. |
| `priceChangeMode` | `string` | Price change mode specifies how the subscription item price is changing. |
| `priceChangeState` | `string` | State the price change is currently in. |

### `SubscriptionListing`

The consumer-visible metadata of a subscription.

| Property | Type | Description |
|----------|------|-------------|
| `benefits` | `array<string>` | A list of benefits shown to the user on platforms such as the Play Store and in restoration flows... |
| `description` | `string` | The description of this subscription in the language of this listing. Maximum length - 80 charact... |
| `languageCode` | `string` | Required. The language of this listing, as defined by BCP-47, e.g. "en-US". |
| `title` | `string` | Required. The title of this subscription in the language of this listing. Plain text. |

### `SubscriptionOffer`

A single, temporary offer

| Property | Type | Description |
|----------|------|-------------|
| `basePlanId` | `string` | Required. Immutable. The ID of the base plan to which this offer is an extension. |
| `offerId` | `string` | Required. Immutable. Unique ID of this subscription offer. Must be unique within the base plan. |
| `offerTags` | `array<OfferTag>` | List of up to 20 custom tags specified for this offer, and returned to the app through the billin... |
| `otherRegionsConfig` | `OtherRegionsSubscriptionOfferConfig` | The configuration for any new locations Play may launch in the future. |
| `packageName` | `string` | Required. Immutable. The package name of the app the parent subscription belongs to. |
| `phases` | `array<SubscriptionOfferPhase>` | Required. The phases of this subscription offer. Must contain at least one and at most two entrie... |
| `productId` | `string` | Required. Immutable. The ID of the parent subscription this offer belongs to. |
| `regionalConfigs` | `array<RegionalSubscriptionOfferConfig>` | Required. The region-specific configuration of this offer. Must contain at least one entry. |
| `state` | `string` | Output only. The current state of this offer. Can be changed using Activate and Deactivate action... |
| `targeting` | `SubscriptionOfferTargeting` | The requirements that users need to fulfil to be eligible for this offer. Represents the requirem... |

### `SubscriptionOfferPhase`

A single phase of a subscription offer.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Required. The duration of a single recurrence of this phase. Specified in ISO 8601 format. |
| `otherRegionsConfig` | `OtherRegionsSubscriptionOfferPhaseConfig` | Pricing information for any new locations Play may launch in. |
| `recurrenceCount` | `integer` | Required. The number of times this phase repeats. If this offer phase is not free, each recurrenc... |
| `regionalConfigs` | `array<RegionalSubscriptionOfferPhaseConfig>` | Required. The region-specific configuration of this offer phase. This list must contain exactly o... |

### `SubscriptionOfferTargeting`

Defines the rule a user needs to satisfy to receive this offer.

| Property | Type | Description |
|----------|------|-------------|
| `acquisitionRule` | `AcquisitionTargetingRule` | Offer targeting rule for new user acquisition. |
| `upgradeRule` | `UpgradeTargetingRule` | Offer targeting rule for upgrading users' existing plans. |

### `SubscriptionPriceChange`

Contains the price change information for a subscription that can be used to control the user journey for the price change in the app. This can be in the form of seeking confirmation from the user or tailoring the experience for a successful conversion.

| Property | Type | Description |
|----------|------|-------------|
| `newPrice` | `Price` | The new price the subscription will renew with if the price change is accepted by the user. |
| `state` | `integer` | The current state of the price change. Possible values are: 0. Outstanding: State for a pending p... |

### `SubscriptionPurchase`

A SubscriptionPurchase resource indicates the status of a user's subscription purchase.

| Property | Type | Description |
|----------|------|-------------|
| `acknowledgementState` | `integer` | The acknowledgement state of the subscription product. Possible values are: 0. Yet to be acknowle... |
| `autoRenewing` | `boolean` | Whether the subscription will automatically be renewed when it reaches its current expiry time. |
| `autoResumeTimeMillis` | `string` | Time at which the subscription will be automatically resumed, in milliseconds since the Epoch. On... |
| `cancelReason` | `integer` | The reason why a subscription was canceled or is not auto-renewing. Possible values are: 0. User ... |
| `cancelSurveyResult` | `SubscriptionCancelSurveyResult` | Information provided by the user when they complete the subscription cancellation flow (cancellat... |
| `countryCode` | `string` | ISO 3166-1 alpha-2 billing country/region code of the user at the time the subscription was granted. |
| `developerPayload` | `string` | A developer-specified string that contains supplemental information about an order. |
| `emailAddress` | `string` | The email address of the user when the subscription was purchased. Only present for purchases mad... |
| `expiryTimeMillis` | `string` | Time at which the subscription will expire, in milliseconds since the Epoch. |
| `externalAccountId` | `string` | User account identifier in the third-party service. Only present if account linking happened as p... |
| `familyName` | `string` | The family name of the user when the subscription was purchased. Only present for purchases made ... |
| `givenName` | `string` | The given name of the user when the subscription was purchased. Only present for purchases made w... |
| `introductoryPriceInfo` | `IntroductoryPriceInfo` | Introductory price information of the subscription. This is only present when the subscription wa... |
| `kind` | `string` | This kind represents a subscriptionPurchase object in the androidpublisher service. |
| `linkedPurchaseToken` | `string` | The purchase token of the originating purchase if this subscription is one of the following: 0. R... |
| `obfuscatedExternalAccountId` | `string` | An obfuscated version of the id that is uniquely associated with the user's account in your app. ... |
| `obfuscatedExternalProfileId` | `string` | An obfuscated version of the id that is uniquely associated with the user's profile in your app. ... |
| `orderId` | `string` | The order id of the latest recurring order associated with the purchase of the subscription. If t... |
| `paymentState` | `integer` | The payment state of the subscription. Possible values are: 0. Payment pending 1. Payment receive... |
| `priceAmountMicros` | `string` | Price of the subscription, For tax exclusive countries, the price doesn't include tax. For tax in... |
| `priceChange` | `SubscriptionPriceChange` | The latest price change information available. This is present only when there is an upcoming pri... |
| `priceCurrencyCode` | `string` | ISO 4217 currency code for the subscription price. For example, if the price is specified in Brit... |
| `profileId` | `string` | The Google profile id of the user when the subscription was purchased. Only present for purchases... |
| `profileName` | `string` | The profile name of the user when the subscription was purchased. Only present for purchases made... |
| `promotionCode` | `string` | The promotion code applied on this purchase. This field is only set if a vanity code promotion is... |
| `promotionType` | `integer` | The type of promotion applied on this purchase. This field is only set if a promotion is applied ... |
| `purchaseType` | `integer` | The type of purchase of the subscription. This field is only set if this purchase was not made us... |
| `startTimeMillis` | `string` | Time at which the subscription was granted, in milliseconds since the Epoch. |
| `userCancellationTimeMillis` | `string` | The time at which the subscription was canceled by the user, in milliseconds since the epoch. Onl... |

### `SubscriptionPurchaseLineItem`

Item-level info for a subscription purchase.

| Property | Type | Description |
|----------|------|-------------|
| `autoRenewingPlan` | `AutoRenewingPlan` | The item is auto renewing. |
| `deferredItemRemoval` | `DeferredItemRemoval` | Information for deferred item removal. |
| `deferredItemReplacement` | `DeferredItemReplacement` | Information for deferred item replacement. |
| `expiryTime` | `string` | Time at which the subscription expired or will expire unless the access is extended (ex. renews). |
| `itemReplacement` | `ItemReplacement` | Details of the item being replaced. This field is only populated if this item replaced another it... |
| `latestSuccessfulOrderId` | `string` | The order id of the latest successful order associated with this item. Not present if the item is... |
| `offerDetails` | `OfferDetails` | The offer details for this item. |
| `offerPhase` | `OfferPhase` | Current offer phase details for this item. |
| `prepaidPlan` | `PrepaidPlan` | The item is prepaid. |
| `productId` | `string` | The purchased product ID (for example, 'monthly001'). |
| `signupPromotion` | `SignupPromotion` | Promotion details about this item. Only set if a promotion was applied during signup. |

### `SubscriptionPurchaseV2`

Indicates the status of a user's subscription purchase.

| Property | Type | Description |
|----------|------|-------------|
| `acknowledgementState` | `string` | The acknowledgement state of the subscription. |
| `canceledStateContext` | `CanceledStateContext` | Additional context around canceled subscriptions. Only present if the subscription currently has ... |
| `etag` | `string` | Entity tag representing the current state of the subscription. The developer will provide this et... |
| `externalAccountIdentifiers` | `ExternalAccountIdentifiers` | User account identifier in the third-party service. |
| `kind` | `string` | This kind represents a SubscriptionPurchaseV2 object in the androidpublisher service. |
| `latestOrderId` | `string` | Deprecated: Use line_items.latest_successful_order_id instead. The order id of the latest order a... |
| `lineItems` | `array<SubscriptionPurchaseLineItem>` | Item-level info for a subscription purchase. The items in the same purchase should be either all ... |
| `linkedPurchaseToken` | `string` | The purchase token of the old subscription if this subscription is one of the following: * Re-sig... |
| `outOfAppPurchaseContext` | `OutOfAppPurchaseContext` | Additional context for out of app purchases. This information is only present for re-subscription... |
| `pausedStateContext` | `PausedStateContext` | Additional context around paused subscriptions. Only present if the subscription currently has su... |
| `regionCode` | `string` | ISO 3166-1 alpha-2 billing country/region code of the user at the time the subscription was granted. |
| `startTime` | `string` | Time at which the subscription was granted. Not set for pending subscriptions (subscription was c... |
| `subscribeWithGoogleInfo` | `SubscribeWithGoogleInfo` | User profile associated with purchases made with 'Subscribe with Google'. |
| `subscriptionState` | `string` | The current state of the subscription. |
| `testPurchase` | `TestPurchase` | Only present if this subscription purchase is a test purchase. |

### `SubscriptionPurchasesAcknowledgeRequest`

Request for the purchases.subscriptions.acknowledge API.

| Property | Type | Description |
|----------|------|-------------|
| `developerPayload` | `string` | Payload to attach to the purchase. |
| `externalAccountIds` | `ExternalAccountIds` | Optional. User account identifier in your app. |

### `SubscriptionPurchasesDeferRequest`

Request for the purchases.subscriptions.defer API.

| Property | Type | Description |
|----------|------|-------------|
| `deferralInfo` | `SubscriptionDeferralInfo` | The information about the new desired expiry time for the subscription. |

### `SubscriptionPurchasesDeferResponse`

Response for the purchases.subscriptions.defer API.

| Property | Type | Description |
|----------|------|-------------|
| `newExpiryTimeMillis` | `string` | The new expiry time for the subscription in milliseconds since the Epoch. |

### `SubscriptionTaxAndComplianceSettings`

Details about taxation, Google Play policy, and legal compliance for subscription products.

| Property | Type | Description |
|----------|------|-------------|
| `eeaWithdrawalRightType` | `string` | Digital content or service classification for products distributed to users in the European Econo... |
| `isTokenizedDigitalAsset` | `boolean` | Whether this subscription is declared as a product representing a tokenized digital asset. |
| `productTaxCategoryCode` | `string` | Product tax category code to assign to the subscription. Product tax category determines the tran... |
| `regionalProductAgeRatingInfos` | `array<RegionalProductAgeRatingInfo>` | Regional age rating information. Currently this field is only supported for region code `US`. |
| `taxRateInfoByRegionCode` | `object` | A mapping from region code to tax rate details. The keys are region codes as defined by Unicode's... |

### `SystemApkOptions`

Options for system APKs.

| Property | Type | Description |
|----------|------|-------------|
| `rotated` | `boolean` | Whether to use the rotated key for signing the system APK. |
| `uncompressedDexFiles` | `boolean` | Whether system APK was generated with uncompressed dex files. |
| `uncompressedNativeLibraries` | `boolean` | Whether system APK was generated with uncompressed native libraries. |

### `SystemApksListResponse`

Response to list previously created system APK variants.

| Property | Type | Description |
|----------|------|-------------|
| `variants` | `array<Variant>` | All system APK variants created. |

### `SystemFeature`

Representation of a system feature.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the feature. |

### `SystemInitiatedCancellation`

Information specific to cancellations initiated by Google system.

### `SystemOnChip`

Representation of a System-on-Chip (SoC) of an Android device. Can be used to target S+ devices.

| Property | Type | Description |
|----------|------|-------------|
| `manufacturer` | `string` | Required. The designer of the SoC, eg. "Google" Value of build property "ro.soc.manufacturer" htt... |
| `model` | `string` | Required. The model of the SoC, eg. "Tensor" Value of build property "ro.soc.model" https://devel... |

### `Targeting`

Targeting details for a recovery action such as regions, android sdk levels, app versions etc.

| Property | Type | Description |
|----------|------|-------------|
| `allUsers` | `AllUsers` | All users are targeted. |
| `androidSdks` | `AndroidSdks` | Targeting is based on android api levels of devices. |
| `regions` | `Regions` | Targeting is based on the user account region. |
| `versionList` | `AppVersionList` | Target version codes as a list. |
| `versionRange` | `AppVersionRange` | Target version codes as a range. |

### `TargetingInfo`

Targeting information about the generated apks.

| Property | Type | Description |
|----------|------|-------------|
| `assetSliceSet` | `array<AssetSliceSet>` | List of created asset slices. |
| `packageName` | `string` | The package name of this app. |
| `variant` | `array<SplitApkVariant>` | List of the created variants. |

### `TargetingRuleScope`

Defines the scope of subscriptions which a targeting rule can match to target offers to users based on past or current entitlement.

| Property | Type | Description |
|----------|------|-------------|
| `anySubscriptionInApp` | `TargetingRuleScopeAnySubscriptionInApp` | The scope of the current targeting rule is any subscription in the parent app. |
| `specificSubscriptionInApp` | `string` | The scope of the current targeting rule is the subscription with the specified subscription ID. M... |
| `thisSubscription` | `TargetingRuleScopeThisSubscription` | The scope of the current targeting rule is the subscription in which this offer is defined. |

### `TargetingRuleScopeAnySubscriptionInApp`

Represents the targeting rule scope corresponding to any subscription in the parent app.

### `TargetingRuleScopeThisSubscription`

Represents the targeting rule scope corresponding to the subscriptions in which this offer is defined.

### `TargetingUpdate`

Update type for targeting. Note it is always a subset Targeting.

| Property | Type | Description |
|----------|------|-------------|
| `allUsers` | `AllUsers` | All users are targeted. |
| `androidSdks` | `AndroidSdks` | Additional android sdk levels are targeted by the recovery action. |
| `regions` | `Regions` | Additional regions are targeted by the recovery action. |

### `TestPurchase`

Whether this subscription purchase is a test purchase.

### `TestPurchaseContext`

Context about a test purchase.

| Property | Type | Description |
|----------|------|-------------|
| `fopType` | `string` | The fop type of the test purchase. |

### `Testers`

The testers of an app. The resource for TestersService. Note: while it is possible in the Play Console UI to add testers via email lists, email lists are not supported by this resource.

| Property | Type | Description |
|----------|------|-------------|
| `googleGroups` | `array<string>` | All testing Google Groups, as email addresses. |

### `TextureCompressionFormat`

Represents texture compression format.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | Alias for texture compression format. |

### `TextureCompressionFormatTargeting`

Targeting by a texture compression format.

| Property | Type | Description |
|----------|------|-------------|
| `alternatives` | `array<TextureCompressionFormat>` | List of alternative TCFs (TCFs targeted by the sibling splits). |
| `value` | `array<TextureCompressionFormat>` | The list of targeted TCFs. Should not be empty. |

### `Timestamp`

A Timestamp represents a point in time independent of any time zone or local calendar, encoded as a count of seconds and fractions of seconds at nanosecond resolution. The count is relative to an epoch at UTC midnight on January 1, 1970.

| Property | Type | Description |
|----------|------|-------------|
| `nanos` | `integer` | Non-negative fractions of a second at nanosecond resolution. Must be from 0 to 999,999,999 inclus... |
| `seconds` | `string` | Represents seconds of UTC time since Unix epoch. |

### `TokenPagination`

Pagination information returned by a List operation when token pagination is enabled. List operations that supports paging return only one "page" of results. This protocol buffer message describes the page that has been returned. When using token pagination, clients should use the next/previous token to get another page of the result. The presence or absence of next/previous token indicates whether a next/previous page is available and provides a mean of accessing this page. ListRequest.page_token should be set to either next_page_token or previous_page_token to access another page.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Tokens to pass to the standard list field 'page_token'. Whenever available, tokens are preferred ... |
| `previousPageToken` | `string` |  |

### `Track`

A track configuration. The resource for TracksService.

| Property | Type | Description |
|----------|------|-------------|
| `releases` | `array<TrackRelease>` | In a read request, represents all active releases in the track. In an update request, represents ... |
| `track` | `string` | Identifier of the track. Form factor tracks have a special prefix as an identifier, for example `... |

### `TrackConfig`

Configurations of the new track.

| Property | Type | Description |
|----------|------|-------------|
| `formFactor` | `string` | Required. Form factor of the new track. Defaults to the default track. |
| `track` | `string` | Required. Identifier of the new track. For default tracks, this field consists of the track alias... |
| `type` | `string` | Required. Type of the new track. Currently, the only supported value is closedTesting. |

### `TrackCountryAvailability`

Resource for per-track country availability information.

| Property | Type | Description |
|----------|------|-------------|
| `countries` | `array<TrackTargetedCountry>` | A list of one or more countries where artifacts in this track are available. This list includes a... |
| `restOfWorld` | `boolean` | Whether artifacts in this track are available to "rest of the world" countries. |
| `syncWithProduction` | `boolean` | Whether this track's availability is synced with the default production track. See https://suppor... |

### `TrackRelease`

A release within a track.

| Property | Type | Description |
|----------|------|-------------|
| `countryTargeting` | `CountryTargeting` | Restricts a release to a specific set of countries. Note this is only allowed to be set for inPro... |
| `inAppUpdatePriority` | `integer` | In-app update priority of the release. All newly added APKs in the release will be considered at ... |
| `name` | `string` | The release name. Not required to be unique. If not set, the name is generated from the APK's ver... |
| `releaseNotes` | `array<LocalizedText>` | A description of what is new in this release. |
| `status` | `string` | The status of the release. |
| `userFraction` | `number` | Fraction of users who are eligible for a staged release. 0 < fraction < 1. Can only be set when s... |
| `versionCodes` | `array<string>` | Version codes of all APKs in the release. Must include version codes to retain from previous rele... |

### `TrackTargetedCountry`

Representation of a single country where the contents of a track can be made available.

| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `string` | The country that can be targeted, as a two-letter CLDR code. |

### `TracksListResponse`

Response listing all tracks.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of this response ("androidpublisher#tracksListResponse"). |
| `tracks` | `array<Track>` | All tracks (including tracks with no releases). |

### `UpdateBasePlanStateRequest`

Request message to update the state of a subscription base plan.

| Property | Type | Description |
|----------|------|-------------|
| `activateBasePlanRequest` | `ActivateBasePlanRequest` | Activates a base plan. Once activated, base plans will be available to new subscribers. |
| `deactivateBasePlanRequest` | `DeactivateBasePlanRequest` | Deactivates a base plan. Once deactivated, the base plan will become unavailable to new subscribe... |

### `UpdateOneTimeProductOfferRequest`

Request message for UpdateOneTimeProductOffer.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | Optional. If set to true, and the offer with the given package_name, product_id, purchase_option_... |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this offer update. Defaults to latency-sen... |
| `oneTimeProductOffer` | `OneTimeProductOffer` | Required. The one-time product offer to update. |
| `regionsVersion` | `RegionsVersion` | Required. The version of the available regions being used for the offer. |
| `updateMask` | `string` | Required. The list of fields to be updated. |

### `UpdateOneTimeProductOfferStateRequest`

Request message to update the state of a one-time product offer.

| Property | Type | Description |
|----------|------|-------------|
| `activateOneTimeProductOfferRequest` | `ActivateOneTimeProductOfferRequest` | Activates an offer. Once activated, the offer is available to users, as long as its conditions ar... |
| `cancelOneTimeProductOfferRequest` | `CancelOneTimeProductOfferRequest` | Cancels an offer. Once cancelled, the offer is not available to users. Any pending orders related... |
| `deactivateOneTimeProductOfferRequest` | `DeactivateOneTimeProductOfferRequest` | Deactivates an offer. Once deactivated, the offer is no longer available to users. This state tra... |

### `UpdateOneTimeProductRequest`

Request message for UpdateOneTimeProduct.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | Optional. If set to true, and the one-time product with the given package_name and product_id doe... |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product upsert. Defaults to latency-s... |
| `oneTimeProduct` | `OneTimeProduct` | Required. The one-time product to upsert. |
| `regionsVersion` | `RegionsVersion` | Required. The version of the available regions being used for the one-time product. |
| `updateMask` | `string` | Required. The list of fields to be updated. |

### `UpdatePurchaseOptionStateRequest`

Request message to update the state of a one-time product purchase option.

| Property | Type | Description |
|----------|------|-------------|
| `activatePurchaseOptionRequest` | `ActivatePurchaseOptionRequest` | Activates a purchase option. Once activated, the purchase option will be available. |
| `deactivatePurchaseOptionRequest` | `DeactivatePurchaseOptionRequest` | Deactivates a purchase option. Once deactivated, the purchase option will become unavailable. |

### `UpdateSubscriptionOfferRequest`

Request message for UpdateSubscriptionOffer.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | Optional. If set to true, and the subscription offer with the given package_name, product_id, bas... |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `regionsVersion` | `RegionsVersion` | Required. The version of the available regions being used for the subscription_offer. |
| `subscriptionOffer` | `SubscriptionOffer` | Required. The subscription offer to update. |
| `updateMask` | `string` | Required. The list of fields to be updated. |

### `UpdateSubscriptionOfferStateRequest`

Request message to update the state of a subscription offer.

| Property | Type | Description |
|----------|------|-------------|
| `activateSubscriptionOfferRequest` | `ActivateSubscriptionOfferRequest` | Activates an offer. Once activated, the offer will be available to new subscribers. |
| `deactivateSubscriptionOfferRequest` | `DeactivateSubscriptionOfferRequest` | Deactivates an offer. Once deactivated, the offer will become unavailable to new subscribers, but... |

### `UpdateSubscriptionRequest`

Request message for UpdateSubscription.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | Optional. If set to true, and the subscription with the given package_name and product_id doesn't... |
| `latencyTolerance` | `string` | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-s... |
| `regionsVersion` | `RegionsVersion` | Required. The version of the available regions being used for the subscription. |
| `subscription` | `Subscription` | Required. The subscription to update. |
| `updateMask` | `string` | Required. The list of fields to be updated. |

### `UpgradeTargetingRule`

Represents a targeting rule of the form: User currently has {scope} [with billing period {billing_period}].

| Property | Type | Description |
|----------|------|-------------|
| `billingPeriodDuration` | `string` | The specific billing period duration, specified in ISO 8601 format, that a user must be currently... |
| `oncePerUser` | `boolean` | Limit this offer to only once per user. If set to true, a user can never be eligible for this off... |
| `scope` | `TargetingRuleScope` | Required. The scope of subscriptions this rule considers. Only allows "this subscription" and "sp... |

### `User`

A user resource.

| Property | Type | Description |
|----------|------|-------------|
| `accessState` | `string` | Output only. The state of the user's access to the Play Console. |
| `developerAccountPermissions` | `array<string>` | Permissions for the user which apply across the developer account. |
| `email` | `string` | Immutable. The user's email address. |
| `expirationTime` | `string` | The time at which the user's access expires, if set. When setting this value, it must always be i... |
| `grants` | `array<Grant>` | Output only. Per-app permissions for the user. |
| `name` | `string` | Required. Resource name for this user, following the pattern "developers/{developer}/users/{email}". |
| `partial` | `boolean` | Output only. Whether there are more permissions for the user that are not represented here. This ... |

### `UserComment`

User entry from conversation between user and developer.

| Property | Type | Description |
|----------|------|-------------|
| `androidOsVersion` | `integer` | Integer Android SDK version of the user's device at the time the review was written, e.g. 23 is M... |
| `appVersionCode` | `integer` | Integer version code of the app as installed at the time the review was written. May be absent. |
| `appVersionName` | `string` | String version name of the app as installed at the time the review was written. May be absent. |
| `device` | `string` | Codename for the reviewer's device, e.g. klte, flounder. May be absent. |
| `deviceMetadata` | `DeviceMetadata` | Information about the characteristics of the user's device. |
| `lastModified` | `Timestamp` | The last time at which this comment was updated. |
| `originalText` | `string` | Untranslated text of the review, where the review was translated. If the review was not translate... |
| `reviewerLanguage` | `string` | Language code for the reviewer. This is taken from the device settings so is not guaranteed to ma... |
| `starRating` | `integer` | The star rating associated with the review, from 1 to 5. |
| `text` | `string` | The content of the comment, i.e. review body. In some cases users have been able to write a revie... |
| `thumbsDownCount` | `integer` | Number of users who have given this review a thumbs down. |
| `thumbsUpCount` | `integer` | Number of users who have given this review a thumbs up. |

### `UserCountriesTargeting`

Describes an inclusive/exclusive list of country codes that module targets.

| Property | Type | Description |
|----------|------|-------------|
| `countryCodes` | `array<string>` | List of country codes in the two-letter CLDR territory format. |
| `exclude` | `boolean` | Indicates if the list above is exclusive. |

### `UserCountrySet`

A set of user countries. A country set determines what variation of app content gets served to a specific location.

| Property | Type | Description |
|----------|------|-------------|
| `countryCodes` | `array<string>` | List of country codes representing countries. A Country code is represented in ISO 3166 alpha-2 f... |
| `name` | `string` | Country set name. |

### `UserInitiatedCancellation`

Information specific to cancellations initiated by users.

| Property | Type | Description |
|----------|------|-------------|
| `cancelSurveyResult` | `CancelSurveyResult` | Information provided by the user when they complete the subscription cancellation flow (cancellat... |
| `cancelTime` | `string` | The time at which the subscription was canceled by the user. The user might still have access to ... |

### `UsesPermission`

A permission used by this APK.

| Property | Type | Description |
|----------|------|-------------|
| `maxSdkVersion` | `integer` | Optionally, the maximum SDK version for which the permission is required. |
| `name` | `string` | The name of the permission requested. |

### `VanityCode`

A multiple use, predefined promotion code.

| Property | Type | Description |
|----------|------|-------------|
| `promotionCode` | `string` | The promotion code. |

### `Variant`

APK that is suitable for inclusion in a system image. The resource of SystemApksService.

| Property | Type | Description |
|----------|------|-------------|
| `deviceSpec` | `DeviceSpec` | The device spec used to generate the APK. |
| `options` | `SystemApkOptions` | Optional. Options applied to the generated APK. |
| `variantId` | `integer` | Output only. The ID of a previously created system APK variant. |

### `VariantTargeting`

Targeting on the level of variants.

| Property | Type | Description |
|----------|------|-------------|
| `abiTargeting` | `AbiTargeting` | The abi that the variant targets |
| `multiAbiTargeting` | `MultiAbiTargeting` | Multi-api-level targeting |
| `screenDensityTargeting` | `ScreenDensityTargeting` | The screen densities that this variant supports |
| `sdkVersionTargeting` | `SdkVersionTargeting` | The sdk version that the variant targets |
| `textureCompressionFormatTargeting` | `TextureCompressionFormatTargeting` | Texture-compression-format-level targeting |

### `VoidedPurchase`

A VoidedPurchase resource indicates a purchase that was either canceled/refunded/charged-back.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This kind represents a voided purchase object in the androidpublisher service. |
| `orderId` | `string` | The order id which uniquely identifies a one-time purchase, subscription purchase, or subscriptio... |
| `purchaseTimeMillis` | `string` | The time at which the purchase was made, in milliseconds since the epoch (Jan 1, 1970). |
| `purchaseToken` | `string` | The token which uniquely identifies a one-time purchase or subscription. To uniquely identify sub... |
| `voidedQuantity` | `integer` | The voided quantity as the result of a quantity-based partial refund. Voided purchases of quantit... |
| `voidedReason` | `integer` | The reason why the purchase was voided, possible values are: 0. Other 1. Remorse 2. Not_received ... |
| `voidedSource` | `integer` | The initiator of voided purchase, possible values are: 0. User 1. Developer 2. Google |
| `voidedTimeMillis` | `string` | The time at which the purchase was canceled/refunded/charged-back, in milliseconds since the epoc... |

### `VoidedPurchasesListResponse`

Response for the voidedpurchases.list API.

| Property | Type | Description |
|----------|------|-------------|
| `pageInfo` | `PageInfo` | General pagination information. |
| `tokenPagination` | `TokenPagination` | Pagination information for token pagination. |
| `voidedPurchases` | `array<VoidedPurchase>` |  |

