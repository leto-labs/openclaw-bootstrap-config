# Search Ads 360 Reporting API - API Reference

**Version**: `v0` | **Methods**: 6 | **Schemas**: 166

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `searchads360.searchAds360Fields.search` | POST | `v0/searchAds360Fields:search` | Returns all fields that match the search [query](/search-ads/reporting/concepts/field-service#use... |
| `searchads360.searchAds360Fields.get` | GET | `v0/{+resourceName}` | Returns just the requested field. List of thrown errors: [AuthenticationError]() [AuthorizationEr... |
| `searchads360.customers.listAccessibleCustomers` | GET | `v0/customers:listAccessibleCustomers` | Returns resource names of customers directly accessible by the user authenticating the call. List... |
| `searchads360.customers.searchAds360.search` | POST | `v0/customers/{+customerId}/searchAds360:search` | Returns all rows that match the search query. List of thrown errors: [AuthenticationError]() [Aut... |
| `searchads360.customers.customColumns.list` | GET | `v0/customers/{+customerId}/customColumns` | Returns all the custom columns associated with the customer in full detail. |
| `searchads360.customers.customColumns.get` | GET | `v0/{+resourceName}` | Returns the requested custom column in full detail. |

### `searchads360.searchAds360Fields.search`

**POST** `v0/searchAds360Fields:search`

Returns all fields that match the search [query](/search-ads/reporting/concepts/field-service#use_a_query_to_get_field_details). List of thrown errors: [AuthenticationError]() [AuthorizationError]() [HeaderError]() [InternalError]() [QueryError]() [QuotaError]() [RequestError]()

**Request body**: `GoogleAdsSearchads360V0Services__SearchSearchAds360FieldsRequest`

**Response**: `GoogleAdsSearchads360V0Services__SearchSearchAds360FieldsResponse`

```typescript
const res = await searchads360.searchAds360Fields.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `searchads360.searchAds360Fields.get`

**GET** `v0/{+resourceName}`

Returns just the requested field. List of thrown errors: [AuthenticationError]() [AuthorizationError]() [HeaderError]() [InternalError]() [QuotaError]() [RequestError]()

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. The resource name of the field to get. |

**Response**: `GoogleAdsSearchads360V0Resources__SearchAds360Field`

```typescript
const res = await searchads360.searchAds360Fields.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `searchads360.customers.listAccessibleCustomers`

**GET** `v0/customers:listAccessibleCustomers`

Returns resource names of customers directly accessible by the user authenticating the call. List of thrown errors: [AuthenticationError]() [AuthorizationError]() [HeaderError]() [InternalError]() [QuotaError]() [RequestError]()

**Response**: `GoogleAdsSearchads360V0Services__ListAccessibleCustomersResponse`

```typescript
const res = await searchads360.customers.listAccessibleCustomers({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `searchads360.customers.searchAds360.search`

**POST** `v0/customers/{+customerId}/searchAds360:search`

Returns all rows that match the search query. List of thrown errors: [AuthenticationError]() [AuthorizationError]() [HeaderError]() [InternalError]() [QueryError]() [QuotaError]() [RequestError]()

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | Required. The ID of the customer being queried. |

**Request body**: `GoogleAdsSearchads360V0Services__SearchSearchAds360Request`

**Response**: `GoogleAdsSearchads360V0Services__SearchSearchAds360Response`

```typescript
const res = await searchads360.searchAds360.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `searchads360.customers.customColumns.list`

**GET** `v0/customers/{+customerId}/customColumns`

Returns all the custom columns associated with the customer in full detail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | path | Yes | Required. The ID of the customer to apply the CustomColumn list operation to. |

**Response**: `GoogleAdsSearchads360V0Services__ListCustomColumnsResponse`

```typescript
const res = await searchads360.customColumns.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

### `searchads360.customers.customColumns.get`

**GET** `v0/{+resourceName}`

Returns the requested custom column in full detail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Required. The resource name of the custom column to fetch. |

**Response**: `GoogleAdsSearchads360V0Resources__CustomColumn`

```typescript
const res = await searchads360.customColumns.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/doubleclicksearch`

---

## Schemas

### `GoogleAdsSearchads360V0Common__AdScheduleInfo`

Represents an AdSchedule criterion. AdSchedule is specified as the day of the week and a time interval within which ads will be shown. No more than six AdSchedules can be added for the same day.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | Day of the week the schedule applies to. This field is required for CREATE operations and is proh... |
| `endHour` | `integer` | Ending hour in 24 hour time; 24 signifies end of the day. This field must be between 0 and 24, in... |
| `endMinute` | `string` | Minutes after the end hour at which this schedule ends. The schedule is exclusive of the end minu... |
| `startHour` | `integer` | Starting hour in 24 hour time. This field must be between 0 and 23, inclusive. This field is requ... |
| `startMinute` | `string` | Minutes after the start hour at which this schedule starts. This field is required for CREATE ope... |

### `GoogleAdsSearchads360V0Common__AdTextAsset`

A text asset used inside an ad.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | Asset text. |

### `GoogleAdsSearchads360V0Common__AgeRangeInfo`

An age range criterion.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Type of the age range. |

### `GoogleAdsSearchads360V0Common__AssetInteractionTarget`

An AssetInteractionTarget segment.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | The asset resource name. |
| `interactionOnThisAsset` | `boolean` | Only used with CustomerAsset, CampaignAsset and AdGroupAsset metrics. Indicates whether the inter... |

### `GoogleAdsSearchads360V0Common__AssetUsage`

Contains the usage information of the asset.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | Resource name of the asset. |
| `servedAssetFieldType` | `string` | The served field type of the asset. |

### `GoogleAdsSearchads360V0Common__AudienceInfo`

An audience criterion.

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | The Audience resource name. |

### `GoogleAdsSearchads360V0Common__BusinessProfileLocation`

Business Profile location data synced from the linked Business Profile account.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `array<string>` | Advertiser specified label for the location on the Business Profile account. This is synced from ... |
| `listingId` | `string` | Listing ID of this Business Profile location. This is synced from the linked Business Profile acc... |
| `storeCode` | `string` | Business Profile store code of this location. This is synced from the Business Profile account. |

### `GoogleAdsSearchads360V0Common__CallToActionAsset`

A call to action asset.

| Property | Type | Description |
|----------|------|-------------|
| `callToAction` | `string` | Call to action. |

### `GoogleAdsSearchads360V0Common__CustomParameter`

A mapping that can be used by custom parameter tags in a `tracking_url_template`, `final_urls`, or `mobile_final_urls`.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The key matching the parameter tag name. |
| `value` | `string` | The value to be substituted. |

### `GoogleAdsSearchads360V0Common__DeviceInfo`

A device criterion.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Type of the device. |

### `GoogleAdsSearchads360V0Common__EnhancedCpc`

An automated bidding strategy that raises bids for clicks that seem more likely to lead to a conversion and lowers them for clicks where they seem less likely. This bidding strategy is deprecated and cannot be created anymore. Use ManualCpc with enhanced_cpc_enabled set to true for equivalent functionality.

### `GoogleAdsSearchads360V0Common__FinalAppUrl`

A URL for deep linking into an app for the given operating system.

| Property | Type | Description |
|----------|------|-------------|
| `osType` | `string` | The operating system targeted by this URL. Required. |
| `url` | `string` | The app deep link URL. Deep links specify a location in an app that corresponds to the content yo... |

### `GoogleAdsSearchads360V0Common__FrequencyCapEntry`

A rule specifying the maximum number of times an ad (or some set of ads) can be shown to a user over a particular time period.

### `GoogleAdsSearchads360V0Common__GenderInfo`

A gender criterion.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Type of the gender. |

### `GoogleAdsSearchads360V0Common__ImageAsset`

An Image asset.

| Property | Type | Description |
|----------|------|-------------|
| `fileSize` | `string` | File size of the image asset in bytes. |
| `fullSize` | `GoogleAdsSearchads360V0Common__ImageDimension` | Metadata for this image at its original size. |
| `mimeType` | `string` | MIME type of the image asset. |

### `GoogleAdsSearchads360V0Common__ImageDimension`

Metadata for an image at a certain size, either original or resized.

| Property | Type | Description |
|----------|------|-------------|
| `heightPixels` | `string` | Height of the image. |
| `url` | `string` | A URL that returns the image with this height and width. |
| `widthPixels` | `string` | Width of the image. |

### `GoogleAdsSearchads360V0Common__Keyword`

A Keyword criterion segment.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupCriterion` | `string` | The AdGroupCriterion resource name. |
| `info` | `GoogleAdsSearchads360V0Common__KeywordInfo` | Keyword info. |

### `GoogleAdsSearchads360V0Common__KeywordInfo`

A keyword criterion.

| Property | Type | Description |
|----------|------|-------------|
| `matchType` | `string` | The match type of the keyword. |
| `text` | `string` | The text of the keyword (at most 80 characters and 10 words). |

### `GoogleAdsSearchads360V0Common__LanguageInfo`

A language criterion.

| Property | Type | Description |
|----------|------|-------------|
| `languageConstant` | `string` | The language constant resource name. |

### `GoogleAdsSearchads360V0Common__ListingGroupInfo`

A listing group criterion.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Type of the listing group. |

### `GoogleAdsSearchads360V0Common__LocationGroupInfo`

A radius around a list of locations specified through a feed.

| Property | Type | Description |
|----------|------|-------------|
| `feedItemSets` | `array<string>` | FeedItemSets whose FeedItems are targeted. If multiple IDs are specified, then all items that app... |
| `geoTargetConstants` | `array<string>` | Geo target constant(s) restricting the scope of the geographic area within the feed. Currently on... |
| `radius` | `string` | Distance in units specifying the radius around targeted locations. This is required and must be s... |
| `radiusUnits` | `string` | Unit of the radius. Miles and meters are supported for geo target constants. Milli miles and mete... |

### `GoogleAdsSearchads360V0Common__LocationInfo`

A location criterion.

| Property | Type | Description |
|----------|------|-------------|
| `geoTargetConstant` | `string` | The geo target constant resource name. |

### `GoogleAdsSearchads360V0Common__ManualCpa`

Manual bidding strategy that allows advertiser to set the bid per advertiser-specified action.

### `GoogleAdsSearchads360V0Common__ManualCpc`

Manual click-based bidding where user pays per click.

| Property | Type | Description |
|----------|------|-------------|
| `enhancedCpcEnabled` | `boolean` | Whether bids are to be enhanced based on conversion optimizer data. |

### `GoogleAdsSearchads360V0Common__ManualCpm`

Manual impression-based bidding where user pays per thousand impressions.

### `GoogleAdsSearchads360V0Common__MaximizeConversionValue`

An automated bidding strategy to help get the most conversion value for your campaigns while spending your budget.

| Property | Type | Description |
|----------|------|-------------|
| `cpcBidCeilingMicros` | `string` | Maximum bid limit that can be set by the bid strategy. The limit applies to all keywords managed ... |
| `cpcBidFloorMicros` | `string` | Minimum bid limit that can be set by the bid strategy. The limit applies to all keywords managed ... |
| `targetRoas` | `number` | The target return on ad spend (ROAS) option. If set, the bid strategy will maximize revenue while... |

### `GoogleAdsSearchads360V0Common__MaximizeConversions`

An automated bidding strategy to help get the most conversions for your campaigns while spending your budget.

| Property | Type | Description |
|----------|------|-------------|
| `cpcBidCeilingMicros` | `string` | Maximum bid limit that can be set by the bid strategy. The limit applies to all keywords managed ... |
| `cpcBidFloorMicros` | `string` | Minimum bid limit that can be set by the bid strategy. The limit applies to all keywords managed ... |
| `targetCpaMicros` | `string` | The target cost-per-action (CPA) option. This is the average amount that you would like to spend ... |

### `GoogleAdsSearchads360V0Common__Metrics`

Metrics data.

| Property | Type | Description |
|----------|------|-------------|
| `absoluteTopImpressionPercentage` | `number` | Search absolute top impression share is the percentage of your Search ad impressions that are sho... |
| `allConversions` | `number` | The total number of conversions. This includes all conversions regardless of the value of include... |
| `allConversionsByConversionDate` | `number` | The total number of conversions. This includes all conversions regardless of the value of include... |
| `allConversionsFromClickToCall` | `number` | The number of times people clicked the "Call" button to call a store during or after clicking an ... |
| `allConversionsFromDirections` | `number` | The number of times people clicked a "Get directions" button to navigate to a store after clickin... |
| `allConversionsFromInteractionsRate` | `number` | All conversions from interactions (as oppose to view through conversions) divided by the number o... |
| `allConversionsFromInteractionsValuePerInteraction` | `number` | The value of all conversions from interactions divided by the total number of interactions. |
| `allConversionsFromMenu` | `number` | The number of times people clicked a link to view a store's menu after clicking an ad. This metri... |
| `allConversionsFromOrder` | `number` | The number of times people placed an order at a store after clicking an ad. This metric applies t... |
| `allConversionsFromOtherEngagement` | `number` | The number of other conversions (for example, posting a review or saving a location for a store) ... |
| `allConversionsFromStoreVisit` | `number` | Estimated number of times people visited a store after clicking an ad. This metric applies to fee... |
| `allConversionsFromStoreWebsite` | `number` | The number of times that people were taken to a store's URL after clicking an ad. This metric app... |
| `allConversionsValue` | `number` | The value of all conversions. |
| `allConversionsValueByConversionDate` | `number` | The value of all conversions. When this column is selected with date, the values in date column m... |
| `allConversionsValuePerCost` | `number` | The value of all conversions divided by the total cost of ad interactions (such as clicks for tex... |
| `averageCartSize` | `number` | Average cart size is the average number of products in each order attributed to your ads. How it ... |
| `averageCost` | `number` | The average amount you pay per interaction. This amount is the total cost of your ads divided by ... |
| `averageCpc` | `number` | The total cost of all clicks divided by the total number of clicks received. This metric is a mon... |
| `averageCpm` | `number` | Average cost-per-thousand impressions (CPM). This metric is a monetary value and returned in the ... |
| `averageImpressionFrequencyPerUser` | `number` | The average number of times a unique user saw your ad during the requested time period. This metr... |
| `averageOrderValueMicros` | `string` | Average order value is the average revenue you made per order attributed to your ads. How it work... |
| `averageQualityScore` | `number` | The average quality score. |
| `clicks` | `string` | The number of clicks. |
| `clientAccountConversions` | `number` | The number of client account conversions. This only includes conversion actions which include_in_... |
| `clientAccountConversionsValue` | `number` | The value of client account conversions. This only includes conversion actions which include_in_c... |
| `clientAccountCrossSellCostOfGoodsSoldMicros` | `string` | Client account cross-sell cost of goods sold (COGS) is the total cost of products sold as a resul... |
| `clientAccountCrossSellGrossProfitMicros` | `string` | Client account cross-sell gross profit is the profit you made from products sold as a result of a... |
| `clientAccountCrossSellRevenueMicros` | `string` | Client account cross-sell revenue is the total amount you made from products sold as a result of ... |
| `clientAccountCrossSellUnitsSold` | `number` | Client account cross-sell units sold is the total number of products sold as a result of advertis... |
| `clientAccountLeadCostOfGoodsSoldMicros` | `string` | Client account lead cost of goods sold (COGS) is the total cost of products sold as a result of a... |
| `clientAccountLeadGrossProfitMicros` | `string` | Client account lead gross profit is the profit you made from products sold as a result of adverti... |
| `clientAccountLeadRevenueMicros` | `string` | Client account lead revenue is the total amount you made from products sold as a result of advert... |
| `clientAccountLeadUnitsSold` | `number` | Client account lead units sold is the total number of products sold as a result of advertising th... |
| `clientAccountViewThroughConversions` | `string` | The total number of view-through conversions. These happen when a customer sees an image or rich ... |
| `contentBudgetLostImpressionShare` | `number` | The estimated percent of times that your ad was eligible to show on the Display Network but didn'... |
| `contentImpressionShare` | `number` | The impressions you've received on the Display Network divided by the estimated number of impress... |
| `contentRankLostImpressionShare` | `number` | The estimated percentage of impressions on the Display Network that your ads didn't receive due t... |
| `conversionCustomMetrics` | `array<GoogleAdsSearchads360V0Common__Value>` | The conversion custom metrics. |
| `conversions` | `number` | The number of conversions. This only includes conversion actions which include_in_conversions_met... |
| `conversionsByConversionDate` | `number` | The sum of conversions by conversion date for biddable conversion types. Can be fractional due to... |
| `conversionsFromInteractionsRate` | `number` | Average biddable conversions (from interaction) per conversion eligible interaction. Shows how of... |
| `conversionsFromInteractionsValuePerInteraction` | `number` | The value of conversions from interactions divided by the number of ad interactions. This only in... |
| `conversionsValue` | `number` | The sum of conversion values for the conversions included in the "conversions" field. This metric... |
| `conversionsValueByConversionDate` | `number` | The sum of biddable conversions value by conversion date. When this column is selected with date,... |
| `conversionsValuePerCost` | `number` | The value of biddable conversion divided by the total cost of conversion eligible interactions. |
| `costMicros` | `string` | The sum of your cost-per-click (CPC) and cost-per-thousand impressions (CPM) costs during this pe... |
| `costOfGoodsSoldMicros` | `string` | Cost of goods sold (COGS) is the total cost of the products you sold in orders attributed to your... |
| `costPerAllConversions` | `number` | The cost of ad interactions divided by all conversions. |
| `costPerConversion` | `number` | Average conversion eligible cost per biddable conversion. |
| `costPerCurrentModelAttributedConversion` | `number` | The cost of ad interactions divided by current model attributed conversions. This only includes c... |
| `crossDeviceConversions` | `number` | Conversions from when a customer clicks on an ad on one device, then converts on a different devi... |
| `crossDeviceConversionsByConversionDate` | `number` | The number of cross-device conversions by conversion date. Details for the by_conversion_date col... |
| `crossDeviceConversionsValue` | `number` | The sum of the value of cross-device conversions. |
| `crossDeviceConversionsValueByConversionDate` | `number` | The sum of cross-device conversions value by conversion date. Details for the by_conversion_date ... |
| `crossSellCostOfGoodsSoldMicros` | `string` | Cross-sell cost of goods sold (COGS) is the total cost of products sold as a result of advertisin... |
| `crossSellGrossProfitMicros` | `string` | Cross-sell gross profit is the profit you made from products sold as a result of advertising a di... |
| `crossSellRevenueMicros` | `string` | Cross-sell revenue is the total amount you made from products sold as a result of advertising a d... |
| `crossSellUnitsSold` | `number` | Cross-sell units sold is the total number of products sold as a result of advertising a different... |
| `ctr` | `number` | The number of clicks your ad receives (Clicks) divided by the number of times your ad is shown (I... |
| `generalInvalidClickRate` | `number` | The percentage of clicks that have been filtered out of your total number of clicks (filtered + n... |
| `generalInvalidClicks` | `string` | Number of general invalid clicks. These are a subset of your invalid clicks that are detected thr... |
| `grossProfitMargin` | `number` | Gross profit margin is the percentage gross profit you made from orders attributed to your ads, a... |
| `grossProfitMicros` | `string` | Gross profit is the profit you made from orders attributed to your ads minus the cost of goods so... |
| `historicalCreativeQualityScore` | `string` | The creative historical quality score. |
| `historicalLandingPageQualityScore` | `string` | The quality of historical landing page experience. |
| `historicalQualityScore` | `string` | The historical quality score. |
| `historicalSearchPredictedCtr` | `string` | The historical search predicted click through rate (CTR). |
| `impressions` | `string` | Count of how often your ad has appeared on a search results page or website on the Google Network. |
| `interactionEventTypes` | `array<string>` | The types of payable and free interactions. |
| `interactionRate` | `number` | How often people interact with your ad after it is shown to them. This is the number of interacti... |
| `interactions` | `string` | The number of interactions. An interaction is the main user action associated with an ad format-c... |
| `invalidClickRate` | `number` | The percentage of clicks filtered out of your total number of clicks (filtered + non-filtered cli... |
| `invalidClicks` | `string` | Number of clicks Google considers illegitimate and doesn't charge you for. |
| `leadCostOfGoodsSoldMicros` | `string` | Lead cost of goods sold (COGS) is the total cost of products sold as a result of advertising the ... |
| `leadGrossProfitMicros` | `string` | Lead gross profit is the profit you made from products sold as a result of advertising the same p... |
| `leadRevenueMicros` | `string` | Lead revenue is the total amount you made from products sold as a result of advertising the same ... |
| `leadUnitsSold` | `number` | Lead units sold is the total number of products sold as a result of advertising the same product.... |
| `mobileFriendlyClicksPercentage` | `number` | The percentage of mobile clicks that go to a mobile-friendly page. |
| `orders` | `number` | Orders is the total number of purchase conversions you received attributed to your ads. How it wo... |
| `rawEventConversionMetrics` | `array<GoogleAdsSearchads360V0Common__Value>` | The raw event conversion metrics. |
| `revenueMicros` | `string` | Revenue is the total amount you made from orders attributed to your ads. How it works: You report... |
| `searchAbsoluteTopImpressionShare` | `number` | The percentage of the customer's Shopping or Search ad impressions that are shown in the most pro... |
| `searchBudgetLostAbsoluteTopImpressionShare` | `number` | The number estimating how often your ad wasn't the very first ad among the top ads in the search ... |
| `searchBudgetLostImpressionShare` | `number` | The estimated percent of times that your ad was eligible to show on the Search Network but didn't... |
| `searchBudgetLostTopImpressionShare` | `number` | The number estimating how often your ad didn't show adjacent to the top organic search results du... |
| `searchClickShare` | `number` | The number of clicks you've received on the Search Network divided by the estimated number of cli... |
| `searchExactMatchImpressionShare` | `number` | The impressions you've received divided by the estimated number of impressions you were eligible ... |
| `searchImpressionShare` | `number` | The impressions you've received on the Search Network divided by the estimated number of impressi... |
| `searchRankLostAbsoluteTopImpressionShare` | `number` | The number estimating how often your ad wasn't the very first ad among the top ads in the search ... |
| `searchRankLostImpressionShare` | `number` | The estimated percentage of impressions on the Search Network that your ads didn't receive due to... |
| `searchRankLostTopImpressionShare` | `number` | The number estimating how often your ad didn't show adjacent to the top organic search results du... |
| `searchTopImpressionShare` | `number` | The impressions you've received among the top ads compared to the estimated number of impressions... |
| `topImpressionPercentage` | `number` | The percent of your ad impressions that are shown adjacent to the top organic search results. |
| `uniqueUsers` | `string` | The number of unique users who saw your ad during the requested time period. This metric cannot b... |
| `unitsSold` | `number` | Units sold is the total number of products sold from orders attributed to your ads. How it works:... |
| `valuePerAllConversions` | `number` | The value of all conversions divided by the number of all conversions. |
| `valuePerAllConversionsByConversionDate` | `number` | The value of all conversions divided by the number of all conversions. When this column is select... |
| `valuePerConversion` | `number` | The value of biddable conversion divided by the number of biddable conversions. Shows how much, o... |
| `valuePerConversionsByConversionDate` | `number` | Biddable conversions value by conversion date divided by biddable conversions by conversion date.... |
| `visits` | `number` | Clicks that Search Ads 360 has successfully recorded and forwarded to an advertiser's landing page. |

### `GoogleAdsSearchads360V0Common__MobileAppAsset`

An asset representing a mobile app.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | Required. A string that uniquely identifies a mobile application. It should just contain the plat... |
| `appStore` | `string` | Required. The application store that distributes this specific app. |

### `GoogleAdsSearchads360V0Common__PercentCpc`

A bidding strategy where bids are a fraction of the advertised price for some good or service.

| Property | Type | Description |
|----------|------|-------------|
| `cpcBidCeilingMicros` | `string` | Maximum bid limit that can be set by the bid strategy. This is an optional field entered by the a... |
| `enhancedCpcEnabled` | `boolean` | Adjusts the bid for each auction upward or downward, depending on the likelihood of a conversion.... |

### `GoogleAdsSearchads360V0Common__RealTimeBiddingSetting`

Settings for Real-Time Bidding, a feature only available for campaigns targeting the Ad Exchange network.

| Property | Type | Description |
|----------|------|-------------|
| `optIn` | `boolean` | Whether the campaign is opted in to real-time bidding. |

### `GoogleAdsSearchads360V0Common__SearchAds360ExpandedDynamicSearchAdInfo`

An expanded dynamic search ad.

| Property | Type | Description |
|----------|------|-------------|
| `adTrackingId` | `string` | The tracking id of the ad. |
| `description1` | `string` | The first line of the ad's description. |
| `description2` | `string` | The second line of the ad's description. |

### `GoogleAdsSearchads360V0Common__SearchAds360ExpandedTextAdInfo`

A Search Ads 360 expanded text ad.

| Property | Type | Description |
|----------|------|-------------|
| `adTrackingId` | `string` | The tracking id of the ad. |
| `description1` | `string` | The first line of the ad's description. |
| `description2` | `string` | The second line of the ad's description. |
| `headline` | `string` | The headline of the ad. |
| `headline2` | `string` | The second headline of the ad. |
| `headline3` | `string` | The third headline of the ad. |
| `path1` | `string` | Text appended to the auto-generated visible URL with a delimiter. |
| `path2` | `string` | Text appended to path1 with a delimiter. |

### `GoogleAdsSearchads360V0Common__SearchAds360ProductAdInfo`

A Search Ads 360 product ad.

### `GoogleAdsSearchads360V0Common__SearchAds360ResponsiveSearchAdInfo`

A Search Ads 360 responsive search ad.

| Property | Type | Description |
|----------|------|-------------|
| `adTrackingId` | `string` | The tracking id of the ad. |
| `descriptions` | `array<GoogleAdsSearchads360V0Common__AdTextAsset>` | List of text assets for descriptions. When the ad serves the descriptions will be selected from t... |
| `headlines` | `array<GoogleAdsSearchads360V0Common__AdTextAsset>` | List of text assets for headlines. When the ad serves the headlines will be selected from this list. |
| `path1` | `string` | Text appended to the auto-generated visible URL with a delimiter. |
| `path2` | `string` | Text appended to path1 with a delimiter. |

### `GoogleAdsSearchads360V0Common__SearchAds360TextAdInfo`

A Search Ads 360 text ad.

| Property | Type | Description |
|----------|------|-------------|
| `adTrackingId` | `string` | The tracking id of the ad. |
| `description1` | `string` | The first line of the ad's description. |
| `description2` | `string` | The second line of the ad's description. |
| `displayMobileUrl` | `string` | The displayed mobile URL of the ad. |
| `displayUrl` | `string` | The displayed URL of the ad. |
| `headline` | `string` | The headline of the ad. |

### `GoogleAdsSearchads360V0Common__Segments`

Segment only fields.

| Property | Type | Description |
|----------|------|-------------|
| `adNetworkType` | `string` | Ad network type. |
| `assetInteractionTarget` | `GoogleAdsSearchads360V0Common__AssetInteractionTarget` | Only used with CustomerAsset, CampaignAsset and AdGroupAsset metrics. Indicates whether the inter... |
| `conversionAction` | `string` | Resource name of the conversion action. |
| `conversionActionCategory` | `string` | Conversion action category. |
| `conversionActionName` | `string` | Conversion action name. |
| `conversionCustomDimensions` | `array<GoogleAdsSearchads360V0Common__Value>` | The conversion custom dimensions. |
| `date` | `string` | Date to which metrics apply. yyyy-MM-dd format, for example, 2018-04-17. |
| `dayOfWeek` | `string` | Day of the week, for example, MONDAY. |
| `device` | `string` | Device to which metrics apply. |
| `geoTargetCity` | `string` | Resource name of the geo target constant that represents a city. |
| `geoTargetCountry` | `string` | Resource name of the geo target constant that represents a country. |
| `geoTargetMetro` | `string` | Resource name of the geo target constant that represents a metro. |
| `geoTargetPostalCode` | `string` | Resource name of the geo target constant that represents a postal code. |
| `geoTargetRegion` | `string` | Resource name of the geo target constant that represents a region. |
| `hour` | `integer` | Hour of day as a number between 0 and 23, inclusive. |
| `keyword` | `GoogleAdsSearchads360V0Common__Keyword` | Keyword criterion. |
| `month` | `string` | Month as represented by the date of the first day of a month. Formatted as yyyy-MM-dd. |
| `productBiddingCategoryLevel1` | `string` | Bidding category (level 1) of the product. |
| `productBiddingCategoryLevel2` | `string` | Bidding category (level 2) of the product. |
| `productBiddingCategoryLevel3` | `string` | Bidding category (level 3) of the product. |
| `productBiddingCategoryLevel4` | `string` | Bidding category (level 4) of the product. |
| `productBiddingCategoryLevel5` | `string` | Bidding category (level 5) of the product. |
| `productBrand` | `string` | Brand of the product. |
| `productChannel` | `string` | Channel of the product. |
| `productChannelExclusivity` | `string` | Channel exclusivity of the product. |
| `productCondition` | `string` | Condition of the product. |
| `productCountry` | `string` | Resource name of the geo target constant for the country of sale of the product. |
| `productCustomAttribute0` | `string` | Custom attribute 0 of the product. |
| `productCustomAttribute1` | `string` | Custom attribute 1 of the product. |
| `productCustomAttribute2` | `string` | Custom attribute 2 of the product. |
| `productCustomAttribute3` | `string` | Custom attribute 3 of the product. |
| `productCustomAttribute4` | `string` | Custom attribute 4 of the product. |
| `productItemId` | `string` | Item ID of the product. |
| `productLanguage` | `string` | Resource name of the language constant for the language of the product. |
| `productSoldBiddingCategoryLevel1` | `string` | Bidding category (level 1) of the product sold. |
| `productSoldBiddingCategoryLevel2` | `string` | Bidding category (level 2) of the product sold. |
| `productSoldBiddingCategoryLevel3` | `string` | Bidding category (level 3) of the product sold. |
| `productSoldBiddingCategoryLevel4` | `string` | Bidding category (level 4) of the product sold. |
| `productSoldBiddingCategoryLevel5` | `string` | Bidding category (level 5) of the product sold. |
| `productSoldBrand` | `string` | Brand of the product sold. |
| `productSoldCondition` | `string` | Condition of the product sold. |
| `productSoldCustomAttribute0` | `string` | Custom attribute 0 of the product sold. |
| `productSoldCustomAttribute1` | `string` | Custom attribute 1 of the product sold. |
| `productSoldCustomAttribute2` | `string` | Custom attribute 2 of the product sold. |
| `productSoldCustomAttribute3` | `string` | Custom attribute 3 of the product sold. |
| `productSoldCustomAttribute4` | `string` | Custom attribute 4 of the product sold. |
| `productSoldItemId` | `string` | Item ID of the product sold. |
| `productSoldTitle` | `string` | Title of the product sold. |
| `productSoldTypeL1` | `string` | Type (level 1) of the product sold. |
| `productSoldTypeL2` | `string` | Type (level 2) of the product sold. |
| `productSoldTypeL3` | `string` | Type (level 3) of the product sold. |
| `productSoldTypeL4` | `string` | Type (level 4) of the product sold. |
| `productSoldTypeL5` | `string` | Type (level 5) of the product sold. |
| `productStoreId` | `string` | Store ID of the product. |
| `productTitle` | `string` | Title of the product. |
| `productTypeL1` | `string` | Type (level 1) of the product. |
| `productTypeL2` | `string` | Type (level 2) of the product. |
| `productTypeL3` | `string` | Type (level 3) of the product. |
| `productTypeL4` | `string` | Type (level 4) of the product. |
| `productTypeL5` | `string` | Type (level 5) of the product. |
| `quarter` | `string` | Quarter as represented by the date of the first day of a quarter. Uses the calendar year for quar... |
| `rawEventConversionDimensions` | `array<GoogleAdsSearchads360V0Common__Value>` | The raw event conversion dimensions. |
| `week` | `string` | Week as defined as Monday through Sunday, and represented by the date of Monday. Formatted as yyy... |
| `year` | `integer` | Year, formatted as yyyy. |

### `GoogleAdsSearchads360V0Common__TargetCpa`

An automated bid strategy that sets bids to help get as many conversions as possible at the target cost-per-acquisition (CPA) you set.

| Property | Type | Description |
|----------|------|-------------|
| `cpcBidCeilingMicros` | `string` | Maximum bid limit that can be set by the bid strategy. The limit applies to all keywords managed ... |
| `cpcBidFloorMicros` | `string` | Minimum bid limit that can be set by the bid strategy. The limit applies to all keywords managed ... |
| `targetCpaMicros` | `string` | Average CPA target. This target should be greater than or equal to minimum billable unit based on... |

### `GoogleAdsSearchads360V0Common__TargetCpm`

Target CPM (cost per thousand impressions) is an automated bidding strategy that sets bids to optimize performance given the target CPM you set.

### `GoogleAdsSearchads360V0Common__TargetImpressionShare`

An automated bidding strategy that sets bids so that a certain percentage of search ads are shown at the top of the first page (or other targeted location).

| Property | Type | Description |
|----------|------|-------------|
| `cpcBidCeilingMicros` | `string` | The highest CPC bid the automated bidding system is permitted to specify. This is a required fiel... |
| `location` | `string` | The targeted location on the search results page. |
| `locationFractionMicros` | `string` | The chosen fraction of ads to be shown in the targeted location in micros. For example, 1% equals... |

### `GoogleAdsSearchads360V0Common__TargetOutrankShare`

An automated bidding strategy that sets bids based on the target fraction of auctions where the advertiser should outrank a specific competitor. This strategy is deprecated.

| Property | Type | Description |
|----------|------|-------------|
| `cpcBidCeilingMicros` | `string` | Maximum bid limit that can be set by the bid strategy. The limit applies to all keywords managed ... |

### `GoogleAdsSearchads360V0Common__TargetRestriction`

The list of per-targeting-dimension targeting settings.

| Property | Type | Description |
|----------|------|-------------|
| `bidOnly` | `boolean` | Indicates whether to restrict your ads to show only for the criteria you have selected for this t... |
| `targetingDimension` | `string` | The targeting dimension that these settings apply to. |

### `GoogleAdsSearchads360V0Common__TargetRoas`

An automated bidding strategy that helps you maximize revenue while averaging a specific target return on ad spend (ROAS).

| Property | Type | Description |
|----------|------|-------------|
| `cpcBidCeilingMicros` | `string` | Maximum bid limit that can be set by the bid strategy. The limit applies to all keywords managed ... |
| `cpcBidFloorMicros` | `string` | Minimum bid limit that can be set by the bid strategy. The limit applies to all keywords managed ... |
| `targetRoas` | `number` | Required. The chosen revenue (based on conversion data) per unit of spend. Value must be between ... |

### `GoogleAdsSearchads360V0Common__TargetSpend`

An automated bid strategy that sets your bids to help get as many clicks as possible within your budget.

| Property | Type | Description |
|----------|------|-------------|
| `cpcBidCeilingMicros` | `string` | Maximum bid limit that can be set by the bid strategy. The limit applies to all keywords managed ... |
| `targetSpendMicros` | `string` | Deprecated: The spend target under which to maximize clicks. A TargetSpend bidder will attempt to... |

### `GoogleAdsSearchads360V0Common__TargetingSetting`

Settings for the targeting-related features, at the campaign and ad group levels. For more details about the targeting setting, visit https://support.google.com/google-ads/answer/7365594

| Property | Type | Description |
|----------|------|-------------|
| `targetRestrictions` | `array<GoogleAdsSearchads360V0Common__TargetRestriction>` | The per-targeting-dimension setting to restrict the reach of your campaign or ad group. |

### `GoogleAdsSearchads360V0Common__TextAsset`

A Text asset.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | Text content of the text asset. |

### `GoogleAdsSearchads360V0Common__TextLabel`

A type of label displaying text on a colored background.

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `string` | Background color of the label in HEX format. This string must match the regular expression '^\#([... |
| `description` | `string` | A short description of the label. The length must be no more than 200 characters. |

### `GoogleAdsSearchads360V0Common__UnifiedCallAsset`

A unified call asset.

| Property | Type | Description |
|----------|------|-------------|
| `adScheduleTargets` | `array<GoogleAdsSearchads360V0Common__AdScheduleInfo>` | List of non-overlapping schedules specifying all time intervals for which the asset may serve. Th... |
| `callConversionAction` | `string` | The conversion action to attribute a call conversion to. If not set, the default conversion actio... |
| `callConversionReportingState` | `string` | Output only. Indicates whether this CallAsset should use its own call conversion setting, follow ... |
| `callOnly` | `boolean` | Whether the call only shows the phone number without a link to the website. Applies to Microsoft ... |
| `callTrackingEnabled` | `boolean` | Whether the call should be enabled on call tracking. Applies to Microsoft Ads. |
| `countryCode` | `string` | Two-letter country code of the phone number. Examples: 'US', 'us'. |
| `endDate` | `string` | Last date of when this asset is effective and still serving, in yyyy-MM-dd format. |
| `phoneNumber` | `string` | The advertiser's raw phone number. Examples: '1234567890', '(123)456-7890' |
| `startDate` | `string` | Start date of when this asset is effective and can begin serving, in yyyy-MM-dd format. |
| `useSearcherTimeZone` | `boolean` | Whether to show the call extension in search user's time zone. Applies to Microsoft Ads. |

### `GoogleAdsSearchads360V0Common__UnifiedCalloutAsset`

A unified callout asset.

| Property | Type | Description |
|----------|------|-------------|
| `adScheduleTargets` | `array<GoogleAdsSearchads360V0Common__AdScheduleInfo>` | List of non-overlapping schedules specifying all time intervals for which the asset may serve. Th... |
| `calloutText` | `string` | The callout text. The length of this string should be between 1 and 25, inclusive. |
| `endDate` | `string` | Last date of when this asset is effective and still serving, in yyyy-MM-dd format. |
| `startDate` | `string` | Start date of when this asset is effective and can begin serving, in yyyy-MM-dd format. |
| `useSearcherTimeZone` | `boolean` | Whether to show the asset in search user's time zone. Applies to Microsoft Ads. |

### `GoogleAdsSearchads360V0Common__UnifiedLocationAsset`

A unified location asset.

| Property | Type | Description |
|----------|------|-------------|
| `businessProfileLocations` | `array<GoogleAdsSearchads360V0Common__BusinessProfileLocation>` | The list of business locations for the customer. This will only be returned if the Location Asset... |
| `locationOwnershipType` | `string` | The type of location ownership. If the type is BUSINESS_OWNER, it will be served as a location ex... |
| `placeId` | `string` | Place IDs uniquely identify a place in the Google Places database and on Google Maps. This field ... |

### `GoogleAdsSearchads360V0Common__UnifiedPageFeedAsset`

A Unified Page Feed asset.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `array<string>` | Labels used to group the page urls. |
| `pageUrl` | `string` | The webpage that advertisers want to target. |

### `GoogleAdsSearchads360V0Common__UnifiedSitelinkAsset`

A unified sitelink asset.

| Property | Type | Description |
|----------|------|-------------|
| `adScheduleTargets` | `array<GoogleAdsSearchads360V0Common__AdScheduleInfo>` | List of non-overlapping schedules specifying all time intervals for which the asset may serve. Th... |
| `description1` | `string` | First line of the description for the sitelink. If set, the length should be between 1 and 35, in... |
| `description2` | `string` | Second line of the description for the sitelink. If set, the length should be between 1 and 35, i... |
| `endDate` | `string` | Last date of when this asset is effective and still serving, in yyyy-MM-dd format. |
| `linkText` | `string` | URL display text for the sitelink. The length of this string should be between 1 and 25, inclusive. |
| `mobilePreferred` | `boolean` | Whether the preference is for the sitelink asset to be displayed on mobile devices. Applies to Mi... |
| `startDate` | `string` | Start date of when this asset is effective and can begin serving, in yyyy-MM-dd format. |
| `trackingId` | `string` | ID used for tracking clicks for the sitelink asset. This is a Yahoo! Japan only field. |
| `useSearcherTimeZone` | `boolean` | Whether to show the sitelink asset in search user's time zone. Applies to Microsoft Ads. |

### `GoogleAdsSearchads360V0Common__UserListInfo`

A User List criterion. Represents a user list that is defined by the advertiser to be targeted.

| Property | Type | Description |
|----------|------|-------------|
| `userList` | `string` | The User List resource name. |

### `GoogleAdsSearchads360V0Common__Value`

A generic data container.

| Property | Type | Description |
|----------|------|-------------|
| `booleanValue` | `boolean` | A boolean. |
| `doubleValue` | `number` | A double. |
| `floatValue` | `number` | A float. |
| `int64Value` | `string` | An int64. |
| `stringValue` | `string` | A string. |

### `GoogleAdsSearchads360V0Common__WebpageConditionInfo`

Logical expression for targeting webpages of an advertiser's website.

| Property | Type | Description |
|----------|------|-------------|
| `argument` | `string` | Argument of webpage targeting condition. |
| `operand` | `string` | Operand of webpage targeting condition. |
| `operator` | `string` | Operator of webpage targeting condition. |

### `GoogleAdsSearchads360V0Common__WebpageInfo`

Represents a criterion for targeting webpages of an advertiser's website.

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `array<GoogleAdsSearchads360V0Common__WebpageConditionInfo>` | Conditions, or logical expressions, for webpage targeting. The list of webpage targeting conditio... |
| `coveragePercentage` | `number` | Website criteria coverage percentage. This is the computed percentage of website coverage based o... |
| `criterionName` | `string` | The name of the criterion that is defined by this parameter. The name value will be used for iden... |

### `GoogleAdsSearchads360V0Common__YoutubeVideoAsset`

A YouTube asset.

| Property | Type | Description |
|----------|------|-------------|
| `youtubeVideoId` | `string` | YouTube video id. This is the 11 character string value used in the YouTube video URL. |
| `youtubeVideoTitle` | `string` | YouTube video title. |

### `GoogleAdsSearchads360V0Errors_ErrorLocation_FieldPathElement`

A part of a field path.

| Property | Type | Description |
|----------|------|-------------|
| `fieldName` | `string` | The name of a field or a oneof |
| `index` | `integer` | If field_name is a repeated field, this is the element that failed |

### `GoogleAdsSearchads360V0Errors__ErrorCode`

The error reason represented by type and enum.

| Property | Type | Description |
|----------|------|-------------|
| `authenticationError` | `string` | Indicates failure to properly authenticate user. |
| `authorizationError` | `string` | An error encountered when trying to authorize a user. |
| `conversionCustomVariableError` | `string` | The reasons for the conversion custom variable error |
| `customColumnError` | `string` | The reasons for the custom column error |
| `dateError` | `string` | The reasons for the date error |
| `dateRangeError` | `string` | The reasons for the date range error |
| `distinctError` | `string` | The reasons for the distinct error |
| `headerError` | `string` | The reasons for the header error. |
| `internalError` | `string` | An unexpected server-side error. |
| `invalidParameterError` | `string` | The reasons for invalid parameter errors. |
| `queryError` | `string` | An error with the query |
| `quotaError` | `string` | An error with the amount of quota remaining. |
| `requestError` | `string` | An error caused by the request |
| `sizeLimitError` | `string` | The reasons for the size limit error |

### `GoogleAdsSearchads360V0Errors__ErrorDetails`

Additional error details.

| Property | Type | Description |
|----------|------|-------------|
| `quotaErrorDetails` | `GoogleAdsSearchads360V0Errors__QuotaErrorDetails` | Details on the quota error, including the scope (account or developer), the rate bucket name and ... |
| `unpublishedErrorCode` | `string` | The error code that should have been returned, but wasn't. This is used when the error code is no... |

### `GoogleAdsSearchads360V0Errors__ErrorLocation`

Describes the part of the request proto that caused the error.

| Property | Type | Description |
|----------|------|-------------|
| `fieldPathElements` | `array<GoogleAdsSearchads360V0Errors_ErrorLocation_FieldPathElement>` | A field path that indicates which field was invalid in the request. |

### `GoogleAdsSearchads360V0Errors__QuotaErrorDetails`

Additional quota error details when there is QuotaError.

| Property | Type | Description |
|----------|------|-------------|
| `rateName` | `string` | The high level description of the quota bucket. Examples are "Get requests for standard access" o... |
| `rateScope` | `string` | The rate scope of the quota limit. |
| `retryDelay` | `string` | Backoff period that customers should wait before sending next request. |

### `GoogleAdsSearchads360V0Errors__SearchAds360Error`

Search Ads 360-specific error.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `GoogleAdsSearchads360V0Errors__ErrorDetails` | Additional error details, which are returned by certain error codes. Most error codes do not incl... |
| `errorCode` | `GoogleAdsSearchads360V0Errors__ErrorCode` | An enum value that indicates which error occurred. |
| `location` | `GoogleAdsSearchads360V0Errors__ErrorLocation` | Describes the part of the request proto that caused the error. |
| `message` | `string` | A human-readable description of the error. |
| `trigger` | `GoogleAdsSearchads360V0Common__Value` | The value that triggered the error. |

### `GoogleAdsSearchads360V0Errors__SearchAds360Failure`

Describes how a Search Ads 360 API call failed. It's returned inside google.rpc.Status.details when a call fails.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<GoogleAdsSearchads360V0Errors__SearchAds360Error>` | The list of errors that occurred. |
| `requestId` | `string` | The unique ID of the request that is used for debugging purposes. |

### `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_MaximizeConversionValue`

An automated bidding strategy to help get the most conversion value for your campaigns while spending your budget.

| Property | Type | Description |
|----------|------|-------------|
| `targetRoas` | `number` | Output only. The target return on ad spend (ROAS) option. If set, the bid strategy will maximize ... |

### `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_MaximizeConversions`

An automated bidding strategy to help get the most conversions for your campaigns while spending your budget.

| Property | Type | Description |
|----------|------|-------------|
| `targetCpa` | `string` | Output only. The target cost per acquisition (CPA) option. This is the average amount that you wo... |
| `targetCpaMicros` | `string` | Output only. The target cost per acquisition (CPA) option. This is the average amount that you wo... |

### `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetCpa`

An automated bid strategy that sets bids to help get as many conversions as possible at the target cost-per-acquisition (CPA) you set.

| Property | Type | Description |
|----------|------|-------------|
| `targetCpaMicros` | `string` | Output only. Average CPA target. This target should be greater than or equal to minimum billable ... |

### `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetImpressionShare`

An automated bidding strategy that sets bids so that a certain percentage of search ads are shown at the top of the first page (or other targeted location).

| Property | Type | Description |
|----------|------|-------------|
| `cpcBidCeilingMicros` | `string` | Output only. The highest CPC bid the automated bidding system is permitted to specify. This is a ... |
| `location` | `string` | Output only. The targeted location on the search results page. |
| `locationFractionMicros` | `string` | The chosen fraction of ads to be shown in the targeted location in micros. For example, 1% equals... |

### `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetRoas`

An automated bidding strategy that helps you maximize revenue while averaging a specific target return on ad spend (ROAS).

| Property | Type | Description |
|----------|------|-------------|
| `targetRoas` | `number` | Output only. The chosen revenue (based on conversion data) per unit of spend. |

### `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetSpend`

An automated bid strategy that sets your bids to help get as many clicks as possible within your budget.

| Property | Type | Description |
|----------|------|-------------|
| `cpcBidCeilingMicros` | `string` | Output only. Maximum bid limit that can be set by the bid strategy. The limit applies to all keyw... |
| `targetSpendMicros` | `string` | Output only. The spend target under which to maximize clicks. A TargetSpend bidder will attempt t... |

### `GoogleAdsSearchads360V0Resources_AdGroupCriterion_PositionEstimates`

Estimates for criterion bids at various positions.

| Property | Type | Description |
|----------|------|-------------|
| `topOfPageCpcMicros` | `string` | Output only. The estimate of the CPC bid required for ad to be displayed at the top of the first ... |

### `GoogleAdsSearchads360V0Resources_AdGroupCriterion_QualityInfo`

A container for ad group criterion quality information.

| Property | Type | Description |
|----------|------|-------------|
| `qualityScore` | `integer` | Output only. The quality score. This field may not be populated if Google does not have enough in... |

### `GoogleAdsSearchads360V0Resources_Campaign_DynamicSearchAdsSetting`

The setting for controlling Dynamic Search Ads (DSA).

| Property | Type | Description |
|----------|------|-------------|
| `domainName` | `string` | Required. The Internet domain name that this setting represents, for example, "google.com" or "ww... |
| `languageCode` | `string` | Required. The language code specifying the language of the domain, for example, "en". |
| `useSuppliedUrlsOnly` | `boolean` | Whether the campaign uses advertiser supplied URLs exclusively. |

### `GoogleAdsSearchads360V0Resources_Campaign_GeoTargetTypeSetting`

Represents a collection of settings related to ads geotargeting.

| Property | Type | Description |
|----------|------|-------------|
| `negativeGeoTargetType` | `string` | The setting used for negative geotargeting in this particular campaign. |
| `positiveGeoTargetType` | `string` | The setting used for positive geotargeting in this particular campaign. |

### `GoogleAdsSearchads360V0Resources_Campaign_NetworkSettings`

The network settings for the campaign.

| Property | Type | Description |
|----------|------|-------------|
| `targetContentNetwork` | `boolean` | Whether ads will be served on specified placements in the Google Display Network. Placements are ... |
| `targetGoogleSearch` | `boolean` | Whether ads will be served with google.com search results. |
| `targetPartnerSearchNetwork` | `boolean` | Whether ads will be served on the Google Partner Network. This is available only to some select G... |
| `targetSearchNetwork` | `boolean` | Whether ads will be served on partner sites in the Google Search Network (requires `target_google... |

### `GoogleAdsSearchads360V0Resources_Campaign_OptimizationGoalSetting`

Optimization goal setting for this campaign, which includes a set of optimization goal types.

| Property | Type | Description |
|----------|------|-------------|
| `optimizationGoalTypes` | `array<string>` | The list of optimization goal types. |

### `GoogleAdsSearchads360V0Resources_Campaign_SelectiveOptimization`

Selective optimization setting for this campaign, which includes a set of conversion actions to optimize this campaign towards. This feature only applies to app campaigns that use MULTI_CHANNEL as AdvertisingChannelType and APP_CAMPAIGN or APP_CAMPAIGN_FOR_ENGAGEMENT as AdvertisingChannelSubType.

| Property | Type | Description |
|----------|------|-------------|
| `conversionActions` | `array<string>` | The selected set of resource names for conversion actions for optimizing this campaign. |

### `GoogleAdsSearchads360V0Resources_Campaign_ShoppingSetting`

The setting for Shopping campaigns. Defines the universe of products that can be advertised by the campaign, and how this campaign interacts with other Shopping campaigns.

| Property | Type | Description |
|----------|------|-------------|
| `campaignPriority` | `integer` | Priority of the campaign. Campaigns with numerically higher priorities take precedence over those... |
| `enableLocal` | `boolean` | Whether to include local products. |
| `feedLabel` | `string` | Feed label of products to include in the campaign. Valid feed labels may contain a maximum of 20 ... |
| `merchantId` | `string` | Immutable. ID of the Merchant Center account. This field is required for create operations. This ... |
| `salesCountry` | `string` | Sales country of products to include in the campaign. |
| `useVehicleInventory` | `boolean` | Immutable. Whether to target Vehicle Listing inventory. |

### `GoogleAdsSearchads360V0Resources_Campaign_TrackingSetting`

Campaign-level settings for tracking information.

| Property | Type | Description |
|----------|------|-------------|
| `trackingUrl` | `string` | Output only. The url used for dynamic tracking. |

### `GoogleAdsSearchads360V0Resources_ConversionAction_AttributionModelSettings`

Settings related to this conversion action's attribution model.

| Property | Type | Description |
|----------|------|-------------|
| `attributionModel` | `string` | The attribution model type of this conversion action. |
| `dataDrivenModelStatus` | `string` | Output only. The status of the data-driven attribution model for the conversion action. |

### `GoogleAdsSearchads360V0Resources_ConversionAction_FloodlightSettings`

Settings related to a Floodlight conversion action.

| Property | Type | Description |
|----------|------|-------------|
| `activityGroupTag` | `string` | Output only. String used to identify a Floodlight activity group when reporting conversions. |
| `activityId` | `string` | Output only. ID of the Floodlight activity in DoubleClick Campaign Manager (DCM). |
| `activityTag` | `string` | Output only. String used to identify a Floodlight activity when reporting conversions. |

### `GoogleAdsSearchads360V0Resources_ConversionAction_ValueSettings`

Settings related to the value for conversion events associated with this conversion action.

| Property | Type | Description |
|----------|------|-------------|
| `alwaysUseDefaultValue` | `boolean` | Controls whether the default value and default currency code are used in place of the value and c... |
| `defaultCurrencyCode` | `string` | The currency code to use when conversion events for this conversion action are sent with an inval... |
| `defaultValue` | `number` | The value to use when conversion events for this conversion action are sent with an invalid, disa... |

### `GoogleAdsSearchads360V0Resources_ConversionCustomVariable_FloodlightConversionCustomVariableInfo`

Information for Search Ads 360 Floodlight Conversion Custom Variables.

| Property | Type | Description |
|----------|------|-------------|
| `floodlightVariableDataType` | `string` | Output only. Floodlight variable data type defined in Search Ads 360. |
| `floodlightVariableType` | `string` | Output only. Floodlight variable type defined in Search Ads 360. |

### `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductBiddingCategory`

One element of a bidding category at a certain level. Top-level categories are at level 1, their children at level 2, and so on. We currently support up to 5 levels. The user must specify a dimension type that indicates the level of the category. All cases of the same subdivision must have the same dimension type (category level).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of the product bidding category. This ID is equivalent to the google_product_category ID as de... |
| `level` | `string` | Indicates the level of the category in the taxonomy. |

### `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductBrand`

Brand of the product.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | String value of the product brand. |

### `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductChannel`

Locality of a product offer.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | Value of the locality. |

### `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductCondition`

Condition of a product offer.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | Value of the condition. |

### `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductCustomAttribute`

Custom attribute of a product offer.

| Property | Type | Description |
|----------|------|-------------|
| `index` | `string` | Indicates the index of the custom attribute. |
| `value` | `string` | String value of the product custom attribute. |

### `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductItemId`

Item id of a product offer.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Value of the id. |

### `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductType`

Type of a product offer.

| Property | Type | Description |
|----------|------|-------------|
| `level` | `string` | Level of the type. |
| `value` | `string` | Value of the type. |

### `GoogleAdsSearchads360V0Resources__AccessibleBiddingStrategy`

Represents a view of BiddingStrategies owned by and shared with the customer. In contrast to BiddingStrategy, this resource includes strategies owned by managers of the customer and shared with this customer - in addition to strategies owned by this customer. This resource does not provide metrics and only exposes a limited subset of the BiddingStrategy attributes.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Output only. The ID of the bidding strategy. |
| `maximizeConversionValue` | `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_MaximizeConversionValue` | Output only. An automated bidding strategy to help get the most conversion value for your campaig... |
| `maximizeConversions` | `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_MaximizeConversions` | Output only. An automated bidding strategy to help get the most conversions for your campaigns wh... |
| `name` | `string` | Output only. The name of the bidding strategy. |
| `ownerCustomerId` | `string` | Output only. The ID of the Customer which owns the bidding strategy. |
| `ownerDescriptiveName` | `string` | Output only. descriptive_name of the Customer which owns the bidding strategy. |
| `resourceName` | `string` | Output only. The resource name of the accessible bidding strategy. AccessibleBiddingStrategy reso... |
| `targetCpa` | `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetCpa` | Output only. A bidding strategy that sets bids to help get as many conversions as possible at the... |
| `targetImpressionShare` | `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetImpressionShare` | Output only. A bidding strategy that automatically optimizes towards a chosen percentage of impre... |
| `targetRoas` | `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetRoas` | Output only. A bidding strategy that helps you maximize revenue while averaging a specific target... |
| `targetSpend` | `GoogleAdsSearchads360V0Resources_AccessibleBiddingStrategy_TargetSpend` | Output only. A bid strategy that sets your bids to help get as many clicks as possible within you... |
| `type` | `string` | Output only. The type of the bidding strategy. |

### `GoogleAdsSearchads360V0Resources__Ad`

An ad.

| Property | Type | Description |
|----------|------|-------------|
| `displayUrl` | `string` | The URL that appears in the ad description for some ad formats. |
| `expandedDynamicSearchAd` | `GoogleAdsSearchads360V0Common__SearchAds360ExpandedDynamicSearchAdInfo` | Immutable. Details pertaining to an expanded dynamic search ad. |
| `expandedTextAd` | `GoogleAdsSearchads360V0Common__SearchAds360ExpandedTextAdInfo` | Immutable. Details pertaining to an expanded text ad. |
| `finalAppUrls` | `array<GoogleAdsSearchads360V0Common__FinalAppUrl>` | A list of final app URLs that will be used on mobile if the user has the specific app installed. |
| `finalMobileUrls` | `array<string>` | The list of possible final mobile URLs after all cross-domain redirects for the ad. |
| `finalUrlSuffix` | `string` | The suffix to use when constructing a final URL. |
| `finalUrls` | `array<string>` | The list of possible final URLs after all cross-domain redirects for the ad. |
| `id` | `string` | Output only. The ID of the ad. |
| `name` | `string` | Immutable. The name of the ad. This is only used to be able to identify the ad. It does not need ... |
| `productAd` | `GoogleAdsSearchads360V0Common__SearchAds360ProductAdInfo` | Immutable. Details pertaining to a product ad. |
| `resourceName` | `string` | Immutable. The resource name of the ad. Ad resource names have the form: `customers/{customer_id}... |
| `responsiveSearchAd` | `GoogleAdsSearchads360V0Common__SearchAds360ResponsiveSearchAdInfo` | Immutable. Details pertaining to a responsive search ad. |
| `textAd` | `GoogleAdsSearchads360V0Common__SearchAds360TextAdInfo` | Immutable. Details pertaining to a text ad. |
| `trackingUrlTemplate` | `string` | The URL template for constructing a tracking URL. |
| `type` | `string` | Output only. The type of ad. |

### `GoogleAdsSearchads360V0Resources__AdGroup`

An ad group.

| Property | Type | Description |
|----------|------|-------------|
| `adRotationMode` | `string` | The ad rotation mode of the ad group. |
| `cpcBidMicros` | `string` | The maximum CPC (cost-per-click) bid. |
| `creationTime` | `string` | Output only. The timestamp when this ad_group was created. The timestamp is in the customer's tim... |
| `effectiveLabels` | `array<string>` | Output only. The resource names of effective labels attached to this ad group. An effective label... |
| `endDate` | `string` | Output only. Date when the ad group ends serving ads. By default, the ad group ends on the ad gro... |
| `engineId` | `string` | Output only. ID of the ad group in the external engine account. This field is for non-Google Ads ... |
| `engineStatus` | `string` | Output only. The Engine Status for ad group. |
| `finalUrlSuffix` | `string` | URL template for appending params to Final URL. |
| `id` | `string` | Output only. The ID of the ad group. |
| `labels` | `array<string>` | Output only. The resource names of labels attached to this ad group. |
| `languageCode` | `string` | Output only. The language of the ads and keywords in an ad group. This field is only available fo... |
| `lastModifiedTime` | `string` | Output only. The datetime when this ad group was last modified. The datetime is in the customer's... |
| `name` | `string` | The name of the ad group. This field is required and should not be empty when creating new ad gro... |
| `resourceName` | `string` | Immutable. The resource name of the ad group. Ad group resource names have the form: `customers/{... |
| `startDate` | `string` | Output only. Date when this ad group starts serving ads. By default, the ad group starts now or t... |
| `status` | `string` | The status of the ad group. |
| `targetingSetting` | `GoogleAdsSearchads360V0Common__TargetingSetting` | Setting for targeting related features. |
| `trackingUrlTemplate` | `string` | The URL template for constructing a tracking URL. |
| `type` | `string` | Immutable. The type of the ad group. |

### `GoogleAdsSearchads360V0Resources__AdGroupAd`

An ad group ad.

| Property | Type | Description |
|----------|------|-------------|
| `ad` | `GoogleAdsSearchads360V0Resources__Ad` | Immutable. The ad. |
| `creationTime` | `string` | Output only. The timestamp when this ad_group_ad was created. The datetime is in the customer's t... |
| `effectiveLabels` | `array<string>` | Output only. The resource names of effective labels attached to this ad. An effective label is a ... |
| `engineId` | `string` | Output only. ID of the ad in the external engine account. This field is for Search Ads 360 accoun... |
| `engineStatus` | `string` | Output only. Additional status of the ad in the external engine account. Possible statuses (depen... |
| `labels` | `array<string>` | Output only. The resource names of labels attached to this ad group ad. |
| `lastModifiedTime` | `string` | Output only. The datetime when this ad group ad was last modified. The datetime is in the custome... |
| `resourceName` | `string` | Immutable. The resource name of the ad. Ad group ad resource names have the form: `customers/{cus... |
| `status` | `string` | The status of the ad. |

### `GoogleAdsSearchads360V0Resources__AdGroupAdEffectiveLabel`

A relationship between an ad group ad and an effective label. An effective label is a label inherited or directly assigned to this ad group ad.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupAd` | `string` | Immutable. The ad group ad to which the effective label is attached. |
| `label` | `string` | Immutable. The effective label assigned to the ad group ad. |
| `ownerCustomerId` | `string` | Output only. The ID of the Customer which owns the effective label. |
| `resourceName` | `string` | Immutable. The resource name of the ad group ad effective label. Ad group ad effective label reso... |

### `GoogleAdsSearchads360V0Resources__AdGroupAdLabel`

A relationship between an ad group ad and a label.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupAd` | `string` | Immutable. The ad group ad to which the label is attached. |
| `label` | `string` | Immutable. The label assigned to the ad group ad. |
| `ownerCustomerId` | `string` | Output only. The ID of the Customer which owns the label. |
| `resourceName` | `string` | Immutable. The resource name of the ad group ad label. Ad group ad label resource names have the ... |

### `GoogleAdsSearchads360V0Resources__AdGroupAsset`

A link between an ad group and an asset.

| Property | Type | Description |
|----------|------|-------------|
| `adGroup` | `string` | Required. Immutable. The ad group to which the asset is linked. |
| `asset` | `string` | Required. Immutable. The asset which is linked to the ad group. |
| `resourceName` | `string` | Immutable. The resource name of the ad group asset. AdGroupAsset resource names have the form: `c... |
| `status` | `string` | Status of the ad group asset. |

### `GoogleAdsSearchads360V0Resources__AdGroupAssetSet`

AdGroupAssetSet is the linkage between an ad group and an asset set. Creating an AdGroupAssetSet links an asset set with an ad group.

| Property | Type | Description |
|----------|------|-------------|
| `adGroup` | `string` | Immutable. The ad group to which this asset set is linked. |
| `assetSet` | `string` | Immutable. The asset set which is linked to the ad group. |
| `resourceName` | `string` | Immutable. The resource name of the ad group asset set. Ad group asset set resource names have th... |
| `status` | `string` | Output only. The status of the ad group asset set. Read-only. |

### `GoogleAdsSearchads360V0Resources__AdGroupAudienceView`

An ad group audience view. Includes performance data from interests and remarketing lists for Display Network and YouTube Network ads, and remarketing lists for search ads (RLSA), aggregated at the audience level.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Output only. The resource name of the ad group audience view. Ad group audience view resource nam... |

### `GoogleAdsSearchads360V0Resources__AdGroupBidModifier`

Represents an ad group bid modifier.

| Property | Type | Description |
|----------|------|-------------|
| `bidModifier` | `number` | The modifier for the bid when the criterion matches. The modifier must be in the range: 0.1 - 10.... |
| `device` | `GoogleAdsSearchads360V0Common__DeviceInfo` | Immutable. A device criterion. |
| `resourceName` | `string` | Immutable. The resource name of the ad group bid modifier. Ad group bid modifier resource names h... |

### `GoogleAdsSearchads360V0Resources__AdGroupCriterion`

An ad group criterion. The ad_group_criterion report only returns criteria that were explicitly added to the ad group.

| Property | Type | Description |
|----------|------|-------------|
| `adGroup` | `string` | Immutable. The ad group to which the criterion belongs. |
| `ageRange` | `GoogleAdsSearchads360V0Common__AgeRangeInfo` | Immutable. Age range. |
| `bidModifier` | `number` | The modifier for the bid when the criterion matches. The modifier must be in the range: 0.1 - 10.... |
| `cpcBidMicros` | `string` | The CPC (cost-per-click) bid. |
| `creationTime` | `string` | Output only. The timestamp when this ad group criterion was created. The timestamp is in the cust... |
| `criterionId` | `string` | Output only. The ID of the criterion. |
| `effectiveCpcBidMicros` | `string` | Output only. The effective CPC (cost-per-click) bid. |
| `effectiveLabels` | `array<string>` | Output only. The resource names of effective labels attached to this ad group criterion. An effec... |
| `engineId` | `string` | Output only. ID of the ad group criterion in the external engine account. This field is for non-G... |
| `engineStatus` | `string` | Output only. The Engine Status for ad group criterion. |
| `finalMobileUrls` | `array<string>` | The list of possible final mobile URLs after all cross-domain redirects. |
| `finalUrlSuffix` | `string` | URL template for appending params to final URL. |
| `finalUrls` | `array<string>` | The list of possible final URLs after all cross-domain redirects for the ad. |
| `gender` | `GoogleAdsSearchads360V0Common__GenderInfo` | Immutable. Gender. |
| `keyword` | `GoogleAdsSearchads360V0Common__KeywordInfo` | Immutable. Keyword. |
| `labels` | `array<string>` | Output only. The resource names of labels attached to this ad group criterion. |
| `lastModifiedTime` | `string` | Output only. The datetime when this ad group criterion was last modified. The datetime is in the ... |
| `listingGroup` | `GoogleAdsSearchads360V0Common__ListingGroupInfo` | Immutable. Listing group. |
| `location` | `GoogleAdsSearchads360V0Common__LocationInfo` | Immutable. Location. |
| `negative` | `boolean` | Immutable. Whether to target (`false`) or exclude (`true`) the criterion. This field is immutable... |
| `positionEstimates` | `GoogleAdsSearchads360V0Resources_AdGroupCriterion_PositionEstimates` | Output only. Estimates for criterion bids at various positions. |
| `qualityInfo` | `GoogleAdsSearchads360V0Resources_AdGroupCriterion_QualityInfo` | Output only. Information regarding the quality of the criterion. |
| `resourceName` | `string` | Immutable. The resource name of the ad group criterion. Ad group criterion resource names have th... |
| `status` | `string` | The status of the criterion. This is the status of the ad group criterion entity, set by the clie... |
| `trackingUrlTemplate` | `string` | The URL template for constructing a tracking URL. |
| `type` | `string` | Output only. The type of the criterion. |
| `urlCustomParameters` | `array<GoogleAdsSearchads360V0Common__CustomParameter>` | The list of mappings used to substitute custom parameter tags in a `tracking_url_template`, `fina... |
| `userList` | `GoogleAdsSearchads360V0Common__UserListInfo` | Immutable. User List. |
| `webpage` | `GoogleAdsSearchads360V0Common__WebpageInfo` | Immutable. Webpage |

### `GoogleAdsSearchads360V0Resources__AdGroupCriterionEffectiveLabel`

A relationship between an ad group criterion and an effective label. An effective label is a label inherited or directly assigned to this ad group criterion.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupCriterion` | `string` | Immutable. The ad group criterion to which the effective label is attached. |
| `label` | `string` | Immutable. The effective label assigned to the ad group criterion. |
| `ownerCustomerId` | `string` | Output only. The ID of the Customer which owns the effective label. |
| `resourceName` | `string` | Immutable. The resource name of the ad group criterion effective label. Ad group criterion effect... |

### `GoogleAdsSearchads360V0Resources__AdGroupCriterionLabel`

A relationship between an ad group criterion and a label.

| Property | Type | Description |
|----------|------|-------------|
| `adGroupCriterion` | `string` | Immutable. The ad group criterion to which the label is attached. |
| `label` | `string` | Immutable. The label assigned to the ad group criterion. |
| `ownerCustomerId` | `string` | Output only. The ID of the Customer which owns the label. |
| `resourceName` | `string` | Immutable. The resource name of the ad group criterion label. Ad group criterion label resource n... |

### `GoogleAdsSearchads360V0Resources__AdGroupEffectiveLabel`

A relationship between an ad group and an effective label. An effective label is a label inherited or directly assigned to this ad group.

| Property | Type | Description |
|----------|------|-------------|
| `adGroup` | `string` | Immutable. The ad group to which the effective label is attached. |
| `label` | `string` | Immutable. The effective label assigned to the ad group. |
| `ownerCustomerId` | `string` | Output only. The ID of the Customer which owns the effective label. |
| `resourceName` | `string` | Immutable. The resource name of the ad group effective label. Ad group effective label resource n... |

### `GoogleAdsSearchads360V0Resources__AdGroupLabel`

A relationship between an ad group and a label.

| Property | Type | Description |
|----------|------|-------------|
| `adGroup` | `string` | Immutable. The ad group to which the label is attached. |
| `label` | `string` | Immutable. The label assigned to the ad group. |
| `ownerCustomerId` | `string` | Output only. The ID of the Customer which owns the label. |
| `resourceName` | `string` | Immutable. The resource name of the ad group label. Ad group label resource names have the form: ... |

### `GoogleAdsSearchads360V0Resources__AgeRangeView`

An age range view.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Output only. The resource name of the age range view. Age range view resource names have the form... |

### `GoogleAdsSearchads360V0Resources__Asset`

Asset is a part of an ad which can be shared across multiple ads. It can be an image (ImageAsset), a video (YoutubeVideoAsset), etc. Assets are immutable and cannot be removed. To stop an asset from serving, remove the asset from the entity that is using it.

| Property | Type | Description |
|----------|------|-------------|
| `callAsset` | `GoogleAdsSearchads360V0Common__UnifiedCallAsset` | Output only. A unified call asset. |
| `callToActionAsset` | `GoogleAdsSearchads360V0Common__CallToActionAsset` | Immutable. A call to action asset. |
| `calloutAsset` | `GoogleAdsSearchads360V0Common__UnifiedCalloutAsset` | Output only. A unified callout asset. |
| `creationTime` | `string` | Output only. The timestamp when this asset was created. The timestamp is in the customer's time z... |
| `engineStatus` | `string` | Output only. The Engine Status for an asset. |
| `finalMobileUrls` | `array<string>` | A list of possible final mobile URLs after all cross domain redirects. |
| `finalUrlSuffix` | `string` | URL template for appending params to landing page URLs served with parallel tracking. |
| `finalUrls` | `array<string>` | A list of possible final URLs after all cross domain redirects. |
| `id` | `string` | Output only. The ID of the asset. |
| `imageAsset` | `GoogleAdsSearchads360V0Common__ImageAsset` | Output only. An image asset. |
| `lastModifiedTime` | `string` | Output only. The datetime when this asset was last modified. The datetime is in the customer's ti... |
| `locationAsset` | `GoogleAdsSearchads360V0Common__UnifiedLocationAsset` | Output only. A unified location asset. |
| `mobileAppAsset` | `GoogleAdsSearchads360V0Common__MobileAppAsset` | A mobile app asset. |
| `name` | `string` | Optional name of the asset. |
| `pageFeedAsset` | `GoogleAdsSearchads360V0Common__UnifiedPageFeedAsset` | Output only. A unified page feed asset. |
| `resourceName` | `string` | Immutable. The resource name of the asset. Asset resource names have the form: `customers/{custom... |
| `sitelinkAsset` | `GoogleAdsSearchads360V0Common__UnifiedSitelinkAsset` | Output only. A unified sitelink asset. |
| `status` | `string` | Output only. The status of the asset. |
| `textAsset` | `GoogleAdsSearchads360V0Common__TextAsset` | Output only. A text asset. |
| `trackingUrlTemplate` | `string` | URL template for constructing a tracking URL. |
| `type` | `string` | Output only. Type of the asset. |
| `urlCustomParameters` | `array<GoogleAdsSearchads360V0Common__CustomParameter>` | A list of mappings to be used for substituting URL custom parameter tags in the tracking_url_temp... |
| `youtubeVideoAsset` | `GoogleAdsSearchads360V0Common__YoutubeVideoAsset` | Immutable. A YouTube video asset. |

### `GoogleAdsSearchads360V0Resources__AssetGroup`

An asset group. AssetGroupAsset is used to link an asset to the asset group. AssetGroupSignal is used to associate a signal to an asset group.

| Property | Type | Description |
|----------|------|-------------|
| `adStrength` | `string` | Output only. Overall ad strength of this asset group. |
| `campaign` | `string` | Immutable. The campaign with which this asset group is associated. The asset which is linked to t... |
| `finalMobileUrls` | `array<string>` | A list of final mobile URLs after all cross domain redirects. In performance max, by default, the... |
| `finalUrls` | `array<string>` | A list of final URLs after all cross domain redirects. In performance max, by default, the urls a... |
| `id` | `string` | Output only. The ID of the asset group. |
| `name` | `string` | Required. Name of the asset group. Required. It must have a minimum length of 1 and maximum lengt... |
| `path1` | `string` | First part of text that may appear appended to the url displayed in the ad. |
| `path2` | `string` | Second part of text that may appear appended to the url displayed in the ad. This field can only ... |
| `resourceName` | `string` | Immutable. The resource name of the asset group. Asset group resource names have the form: `custo... |
| `status` | `string` | The status of the asset group. |

### `GoogleAdsSearchads360V0Resources__AssetGroupAsset`

AssetGroupAsset is the link between an asset and an asset group. Adding an AssetGroupAsset links an asset with an asset group.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | Immutable. The asset which this asset group asset is linking. |
| `assetGroup` | `string` | Immutable. The asset group which this asset group asset is linking. |
| `fieldType` | `string` | The description of the placement of the asset within the asset group. For example: HEADLINE, YOUT... |
| `resourceName` | `string` | Immutable. The resource name of the asset group asset. Asset group asset resource name have the f... |
| `status` | `string` | The status of the link between an asset and asset group. |

### `GoogleAdsSearchads360V0Resources__AssetGroupAssetCombinationData`

Asset group asset combination data

| Property | Type | Description |
|----------|------|-------------|
| `assetCombinationServedAssets` | `array<GoogleAdsSearchads360V0Common__AssetUsage>` | Output only. Served assets. |

### `GoogleAdsSearchads360V0Resources__AssetGroupListingGroupFilter`

AssetGroupListingGroupFilter represents a listing group filter tree node in an asset group.

| Property | Type | Description |
|----------|------|-------------|
| `assetGroup` | `string` | Immutable. The asset group which this asset group listing group filter is part of. |
| `caseValue` | `GoogleAdsSearchads360V0Resources__ListingGroupFilterDimension` | Dimension value with which this listing group is refining its parent. Undefined for the root group. |
| `id` | `string` | Output only. The ID of the ListingGroupFilter. |
| `parentListingGroupFilter` | `string` | Immutable. Resource name of the parent listing group subdivision. Null for the root listing group... |
| `path` | `GoogleAdsSearchads360V0Resources__ListingGroupFilterDimensionPath` | Output only. The path of dimensions defining this listing group filter. |
| `resourceName` | `string` | Immutable. The resource name of the asset group listing group filter. Asset group listing group f... |
| `type` | `string` | Immutable. Type of a listing group filter node. |
| `vertical` | `string` | Immutable. The vertical the current node tree represents. All nodes in the same tree must belong ... |

### `GoogleAdsSearchads360V0Resources__AssetGroupSignal`

AssetGroupSignal represents a signal in an asset group. The existence of a signal tells the performance max campaign who's most likely to convert. Performance Max uses the signal to look for new people with similar or stronger intent to find conversions across Search, Display, Video, and more.

| Property | Type | Description |
|----------|------|-------------|
| `assetGroup` | `string` | Immutable. The asset group which this asset group signal belongs to. |
| `audience` | `GoogleAdsSearchads360V0Common__AudienceInfo` | Immutable. The audience signal to be used by the performance max campaign. |
| `resourceName` | `string` | Immutable. The resource name of the asset group signal. Asset group signal resource name have the... |

### `GoogleAdsSearchads360V0Resources__AssetGroupTopCombinationView`

A view on the usage of asset group asset top combinations.

| Property | Type | Description |
|----------|------|-------------|
| `assetGroupTopCombinations` | `array<GoogleAdsSearchads360V0Resources__AssetGroupAssetCombinationData>` | Output only. The top combinations of assets that served together. |
| `resourceName` | `string` | Output only. The resource name of the asset group top combination view. AssetGroup Top Combinatio... |

### `GoogleAdsSearchads360V0Resources__AssetSet`

An asset set representing a collection of assets. Use AssetSetAsset to link an asset to the asset set.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Output only. The ID of the asset set. |
| `resourceName` | `string` | Immutable. The resource name of the asset set. Asset set resource names have the form: `customers... |

### `GoogleAdsSearchads360V0Resources__AssetSetAsset`

AssetSetAsset is the link between an asset and an asset set. Adding an AssetSetAsset links an asset with an asset set.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | Immutable. The asset which this asset set asset is linking to. |
| `assetSet` | `string` | Immutable. The asset set which this asset set asset is linking to. |
| `resourceName` | `string` | Immutable. The resource name of the asset set asset. Asset set asset resource names have the form... |
| `status` | `string` | Output only. The status of the asset set asset. Read-only. |

### `GoogleAdsSearchads360V0Resources__Audience`

Audience is an effective targeting option that lets you intersect different segment attributes, such as detailed demographics and affinities, to create audiences that represent sections of your target segments.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of this audience. |
| `id` | `string` | Output only. ID of the audience. |
| `name` | `string` | Required. Name of the audience. It should be unique across all audiences. It must have a minimum ... |
| `resourceName` | `string` | Immutable. The resource name of the audience. Audience names have the form: `customers/{customer_... |

### `GoogleAdsSearchads360V0Resources__BiddingStrategy`

A bidding strategy.

| Property | Type | Description |
|----------|------|-------------|
| `campaignCount` | `string` | Output only. The number of campaigns attached to this bidding strategy. This field is read-only. |
| `currencyCode` | `string` | Immutable. The currency used by the bidding strategy (ISO 4217 three-letter code). For bidding st... |
| `effectiveCurrencyCode` | `string` | Output only. The currency used by the bidding strategy (ISO 4217 three-letter code). For bidding ... |
| `enhancedCpc` | `GoogleAdsSearchads360V0Common__EnhancedCpc` | A bidding strategy that raises bids for clicks that seem more likely to lead to a conversion and ... |
| `id` | `string` | Output only. The ID of the bidding strategy. |
| `maximizeConversionValue` | `GoogleAdsSearchads360V0Common__MaximizeConversionValue` | An automated bidding strategy to help get the most conversion value for your campaigns while spen... |
| `maximizeConversions` | `GoogleAdsSearchads360V0Common__MaximizeConversions` | An automated bidding strategy to help get the most conversions for your campaigns while spending ... |
| `name` | `string` | The name of the bidding strategy. All bidding strategies within an account must be named distinct... |
| `nonRemovedCampaignCount` | `string` | Output only. The number of non-removed campaigns attached to this bidding strategy. This field is... |
| `resourceName` | `string` | Immutable. The resource name of the bidding strategy. Bidding strategy resource names have the fo... |
| `status` | `string` | Output only. The status of the bidding strategy. This field is read-only. |
| `targetCpa` | `GoogleAdsSearchads360V0Common__TargetCpa` | A bidding strategy that sets bids to help get as many conversions as possible at the target cost-... |
| `targetImpressionShare` | `GoogleAdsSearchads360V0Common__TargetImpressionShare` | A bidding strategy that automatically optimizes towards a chosen percentage of impressions. |
| `targetOutrankShare` | `GoogleAdsSearchads360V0Common__TargetOutrankShare` | A bidding strategy that sets bids based on the target fraction of auctions where the advertiser s... |
| `targetRoas` | `GoogleAdsSearchads360V0Common__TargetRoas` | A bidding strategy that helps you maximize revenue while averaging a specific target Return On Ad... |
| `targetSpend` | `GoogleAdsSearchads360V0Common__TargetSpend` | A bid strategy that sets your bids to help get as many clicks as possible within your budget. |
| `type` | `string` | Output only. The type of the bidding strategy. Create a bidding strategy by setting the bidding s... |

### `GoogleAdsSearchads360V0Resources__Campaign`

A campaign.

| Property | Type | Description |
|----------|------|-------------|
| `accessibleBiddingStrategy` | `string` | Output only. Resource name of AccessibleBiddingStrategy, a read-only view of the unrestricted att... |
| `adServingOptimizationStatus` | `string` | The ad serving optimization status of the campaign. |
| `advertisingChannelSubType` | `string` | Immutable. Optional refinement to `advertising_channel_type`. Must be a valid sub-type of the par... |
| `advertisingChannelType` | `string` | Immutable. The primary serving target for ads within the campaign. The targeting options can be r... |
| `biddingStrategy` | `string` | The resource name of the portfolio bidding strategy used by the campaign. |
| `biddingStrategySystemStatus` | `string` | Output only. The system status of the campaign's bidding strategy. |
| `biddingStrategyType` | `string` | Output only. The type of bidding strategy. A bidding strategy can be created by setting either th... |
| `campaignBudget` | `string` | The resource name of the campaign budget of the campaign. |
| `createTime` | `string` | Output only. The timestamp when this campaign was created. The timestamp is in the customer's tim... |
| `creationTime` | `string` | Output only. The timestamp when this campaign was created. The timestamp is in the customer's tim... |
| `dynamicSearchAdsSetting` | `GoogleAdsSearchads360V0Resources_Campaign_DynamicSearchAdsSetting` | The setting for controlling Dynamic Search Ads (DSA). |
| `effectiveLabels` | `array<string>` | Output only. The resource names of effective labels attached to this campaign. An effective label... |
| `endDate` | `string` | The last day of the campaign in serving customer's timezone in YYYY-MM-DD format. On create, defa... |
| `engineId` | `string` | Output only. ID of the campaign in the external engine account. This field is for non-Google Ads ... |
| `excludedParentAssetFieldTypes` | `array<string>` | The asset field types that should be excluded from this campaign. Asset links with these field ty... |
| `feedTypes` | `array<string>` | Output only. Types of feeds that are attached directly to this campaign. |
| `finalUrlSuffix` | `string` | Suffix used to append query parameters to landing pages that are served with parallel tracking. |
| `frequencyCaps` | `array<GoogleAdsSearchads360V0Common__FrequencyCapEntry>` | A list that limits how often each user will see this campaign's ads. |
| `geoTargetTypeSetting` | `GoogleAdsSearchads360V0Resources_Campaign_GeoTargetTypeSetting` | The setting for ads geotargeting. |
| `id` | `string` | Output only. The ID of the campaign. |
| `labels` | `array<string>` | Output only. The resource names of labels attached to this campaign. |
| `lastModifiedTime` | `string` | Output only. The datetime when this campaign was last modified. The datetime is in the customer's... |
| `manualCpa` | `GoogleAdsSearchads360V0Common__ManualCpa` | Standard Manual CPA bidding strategy. Manual bidding strategy that allows advertiser to set the b... |
| `manualCpc` | `GoogleAdsSearchads360V0Common__ManualCpc` | Standard Manual CPC bidding strategy. Manual click-based bidding where user pays per click. |
| `manualCpm` | `GoogleAdsSearchads360V0Common__ManualCpm` | Standard Manual CPM bidding strategy. Manual impression-based bidding where user pays per thousan... |
| `maximizeConversionValue` | `GoogleAdsSearchads360V0Common__MaximizeConversionValue` | Standard Maximize Conversion Value bidding strategy that automatically sets bids to maximize reve... |
| `maximizeConversions` | `GoogleAdsSearchads360V0Common__MaximizeConversions` | Standard Maximize Conversions bidding strategy that automatically maximizes number of conversions... |
| `name` | `string` | The name of the campaign. This field is required and should not be empty when creating new campai... |
| `networkSettings` | `GoogleAdsSearchads360V0Resources_Campaign_NetworkSettings` | The network settings for the campaign. |
| `optimizationGoalSetting` | `GoogleAdsSearchads360V0Resources_Campaign_OptimizationGoalSetting` | Optimization goal setting for this campaign, which includes a set of optimization goal types. |
| `percentCpc` | `GoogleAdsSearchads360V0Common__PercentCpc` | Standard Percent Cpc bidding strategy where bids are a fraction of the advertised price for some ... |
| `realTimeBiddingSetting` | `GoogleAdsSearchads360V0Common__RealTimeBiddingSetting` | Settings for Real-Time Bidding, a feature only available for campaigns targeting the Ad Exchange ... |
| `resourceName` | `string` | Immutable. The resource name of the campaign. Campaign resource names have the form: `customers/{... |
| `selectiveOptimization` | `GoogleAdsSearchads360V0Resources_Campaign_SelectiveOptimization` | Selective optimization setting for this campaign, which includes a set of conversion actions to o... |
| `servingStatus` | `string` | Output only. The ad serving status of the campaign. |
| `shoppingSetting` | `GoogleAdsSearchads360V0Resources_Campaign_ShoppingSetting` | The setting for controlling Shopping campaigns. |
| `startDate` | `string` | The date when campaign started in serving customer's timezone in YYYY-MM-DD format. |
| `status` | `string` | The status of the campaign. When a new campaign is added, the status defaults to ENABLED. |
| `targetCpa` | `GoogleAdsSearchads360V0Common__TargetCpa` | Standard Target CPA bidding strategy that automatically sets bids to help get as many conversions... |
| `targetCpm` | `GoogleAdsSearchads360V0Common__TargetCpm` | A bidding strategy that automatically optimizes cost per thousand impressions. |
| `targetImpressionShare` | `GoogleAdsSearchads360V0Common__TargetImpressionShare` | Target Impression Share bidding strategy. An automated bidding strategy that sets bids to achieve... |
| `targetRoas` | `GoogleAdsSearchads360V0Common__TargetRoas` | Standard Target ROAS bidding strategy that automatically maximizes revenue while averaging a spec... |
| `targetSpend` | `GoogleAdsSearchads360V0Common__TargetSpend` | Standard Target Spend bidding strategy that automatically sets your bids to help get as many clic... |
| `trackingSetting` | `GoogleAdsSearchads360V0Resources_Campaign_TrackingSetting` | Output only. Campaign-level settings for tracking information. |
| `trackingUrlTemplate` | `string` | The URL template for constructing a tracking URL. |
| `urlCustomParameters` | `array<GoogleAdsSearchads360V0Common__CustomParameter>` | The list of mappings used to substitute custom parameter tags in a `tracking_url_template`, `fina... |
| `urlExpansionOptOut` | `boolean` | Represents opting out of URL expansion to more targeted URLs. If opted out (true), only the final... |

### `GoogleAdsSearchads360V0Resources__CampaignAsset`

A link between a Campaign and an Asset.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | Immutable. The asset which is linked to the campaign. |
| `campaign` | `string` | Immutable. The campaign to which the asset is linked. |
| `resourceName` | `string` | Immutable. The resource name of the campaign asset. CampaignAsset resource names have the form: `... |
| `status` | `string` | Output only. Status of the campaign asset. |

### `GoogleAdsSearchads360V0Resources__CampaignAssetSet`

CampaignAssetSet is the linkage between a campaign and an asset set. Adding a CampaignAssetSet links an asset set with a campaign.

| Property | Type | Description |
|----------|------|-------------|
| `assetSet` | `string` | Immutable. The asset set which is linked to the campaign. |
| `campaign` | `string` | Immutable. The campaign to which this asset set is linked. |
| `resourceName` | `string` | Immutable. The resource name of the campaign asset set. Asset set asset resource names have the f... |
| `status` | `string` | Output only. The status of the campaign asset set asset. Read-only. |

### `GoogleAdsSearchads360V0Resources__CampaignAudienceView`

A campaign audience view. Includes performance data from interests and remarketing lists for Display Network and YouTube Network ads, and remarketing lists for search ads (RLSA), aggregated by campaign and audience criterion. This view only includes audiences attached at the campaign level.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Output only. The resource name of the campaign audience view. Campaign audience view resource nam... |

### `GoogleAdsSearchads360V0Resources__CampaignBudget`

A campaign budget.

| Property | Type | Description |
|----------|------|-------------|
| `amountMicros` | `string` | The amount of the budget, in the local currency for the account. Amount is specified in micros, w... |
| `deliveryMethod` | `string` | The delivery method that determines the rate at which the campaign budget is spent. Defaults to S... |
| `period` | `string` | Immutable. Period over which to spend the budget. Defaults to DAILY if not specified. |
| `resourceName` | `string` | Immutable. The resource name of the campaign budget. Campaign budget resource names have the form... |

### `GoogleAdsSearchads360V0Resources__CampaignCriterion`

A campaign criterion.

| Property | Type | Description |
|----------|------|-------------|
| `ageRange` | `GoogleAdsSearchads360V0Common__AgeRangeInfo` | Immutable. Age range. |
| `bidModifier` | `number` | The modifier for the bids when the criterion matches. The modifier must be in the range: 0.1 - 10... |
| `criterionId` | `string` | Output only. The ID of the criterion. This field is ignored during mutate. |
| `device` | `GoogleAdsSearchads360V0Common__DeviceInfo` | Immutable. Device. |
| `displayName` | `string` | Output only. The display name of the criterion. This field is ignored for mutates. |
| `gender` | `GoogleAdsSearchads360V0Common__GenderInfo` | Immutable. Gender. |
| `keyword` | `GoogleAdsSearchads360V0Common__KeywordInfo` | Immutable. Keyword. |
| `language` | `GoogleAdsSearchads360V0Common__LanguageInfo` | Immutable. Language. |
| `lastModifiedTime` | `string` | Output only. The datetime when this campaign criterion was last modified. The datetime is in the ... |
| `location` | `GoogleAdsSearchads360V0Common__LocationInfo` | Immutable. Location. |
| `locationGroup` | `GoogleAdsSearchads360V0Common__LocationGroupInfo` | Immutable. Location Group |
| `negative` | `boolean` | Immutable. Whether to target (`false`) or exclude (`true`) the criterion. |
| `resourceName` | `string` | Immutable. The resource name of the campaign criterion. Campaign criterion resource names have th... |
| `status` | `string` | The status of the criterion. |
| `type` | `string` | Output only. The type of the criterion. |
| `userList` | `GoogleAdsSearchads360V0Common__UserListInfo` | Immutable. User List. |
| `webpage` | `GoogleAdsSearchads360V0Common__WebpageInfo` | Immutable. Webpage. |

### `GoogleAdsSearchads360V0Resources__CampaignEffectiveLabel`

Represents a relationship between a campaign and an effective label. An effective label is a label inherited or directly assigned to this campaign.

| Property | Type | Description |
|----------|------|-------------|
| `campaign` | `string` | Immutable. The campaign to which the effective label is attached. |
| `label` | `string` | Immutable. The effective label assigned to the campaign. |
| `ownerCustomerId` | `string` | Output only. The ID of the Customer which owns the effective label. |
| `resourceName` | `string` | Immutable. Name of the resource. CampaignEffectivelabel resource names have the form: `customers/... |

### `GoogleAdsSearchads360V0Resources__CampaignLabel`

Represents a relationship between a campaign and a label.

| Property | Type | Description |
|----------|------|-------------|
| `campaign` | `string` | Immutable. The campaign to which the label is attached. |
| `label` | `string` | Immutable. The label assigned to the campaign. |
| `ownerCustomerId` | `string` | Output only. The ID of the Customer which owns the label. |
| `resourceName` | `string` | Immutable. Name of the resource. Campaign label resource names have the form: `customers/{owner_c... |

### `GoogleAdsSearchads360V0Resources__CartDataSalesView`

Cart data sales view.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Output only. The resource name of the Cart data sales view. Cart data sales view resource names h... |

### `GoogleAdsSearchads360V0Resources__Conversion`

A conversion.

| Property | Type | Description |
|----------|------|-------------|
| `adId` | `string` | Output only. Ad ID. A value of 0 indicates that the ad is unattributed. |
| `advertiserConversionId` | `string` | Output only. For offline conversions, this is an ID provided by advertisers. If an advertiser doe... |
| `assetFieldType` | `string` | Output only. Asset field type of the conversion event. |
| `assetId` | `string` | Output only. ID of the asset which was interacted with during the conversion event. |
| `attributionType` | `string` | Output only. What the conversion is attributed to: Visit or Keyword+Ad. |
| `clickId` | `string` | Output only. A unique string, for the visit that the conversion is attributed to, that is passed ... |
| `conversionDateTime` | `string` | Output only. The timestamp of the conversion event. |
| `conversionLastModifiedDateTime` | `string` | Output only. The timestamp of the last time the conversion was modified. |
| `conversionQuantity` | `string` | Output only. The quantity of items recorded by the conversion, as determined by the qty url param... |
| `conversionRevenueMicros` | `string` | Output only. The adjusted revenue in micros for the conversion event. This will always be in the ... |
| `conversionVisitDateTime` | `string` | Output only. The timestamp of the visit that the conversion is attributed to. |
| `criterionId` | `string` | Output only. Search Ads 360 criterion ID. A value of 0 indicates that the criterion is unattributed. |
| `floodlightOrderId` | `string` | Output only. The Floodlight order ID provided by the advertiser for the conversion. |
| `floodlightOriginalRevenue` | `string` | Output only. The original, unchanged revenue associated with the Floodlight event (in the currenc... |
| `id` | `string` | Output only. The ID of the conversion |
| `merchantId` | `string` | Output only. The Search Ads 360 inventory account ID containing the product that was clicked on. ... |
| `productChannel` | `string` | Output only. The sales channel of the product that was clicked on: Online or Local. |
| `productCountryCode` | `string` | Output only. The country (ISO-3166-format) registered for the inventory feed that contains the pr... |
| `productId` | `string` | Output only. The ID of the product clicked on. |
| `productLanguageCode` | `string` | Output only. The language (ISO-639-1) that has been set for the Merchant Center feed containing d... |
| `productStoreId` | `string` | Output only. The store in the Local Inventory Ad that was clicked on. This should match the store... |
| `resourceName` | `string` | Output only. The resource name of the conversion. Conversion resource names have the form: `custo... |
| `status` | `string` | Output only. The status of the conversion, either ENABLED or REMOVED.. |
| `visitId` | `string` | Output only. The Search Ads 360 visit ID that the conversion is attributed to. |

### `GoogleAdsSearchads360V0Resources__ConversionAction`

A conversion action.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | App ID for an app conversion action. |
| `attributionModelSettings` | `GoogleAdsSearchads360V0Resources_ConversionAction_AttributionModelSettings` | Settings related to this conversion action's attribution model. |
| `category` | `string` | The category of conversions reported for this conversion action. |
| `clickThroughLookbackWindowDays` | `string` | The maximum number of days that may elapse between an interaction (for example, a click) and a co... |
| `creationTime` | `string` | Output only. Timestamp of the Floodlight activity's creation, formatted in ISO 8601. |
| `floodlightSettings` | `GoogleAdsSearchads360V0Resources_ConversionAction_FloodlightSettings` | Output only. Floodlight settings for Floodlight conversion types. |
| `id` | `string` | Output only. The ID of the conversion action. |
| `includeInClientAccountConversionsMetric` | `boolean` | Whether this conversion action should be included in the "client_account_conversions" metric. |
| `includeInConversionsMetric` | `boolean` | Output only. Whether this conversion action should be included in the "conversions" metric. |
| `name` | `string` | The name of the conversion action. This field is required and should not be empty when creating n... |
| `ownerCustomer` | `string` | Output only. The resource name of the conversion action owner customer, or null if this is a syst... |
| `primaryForGoal` | `boolean` | If a conversion action's primary_for_goal bit is false, the conversion action is non-biddable for... |
| `resourceName` | `string` | Immutable. The resource name of the conversion action. Conversion action resource names have the ... |
| `status` | `string` | The status of this conversion action for conversion event accrual. |
| `type` | `string` | Immutable. The type of this conversion action. |
| `valueSettings` | `GoogleAdsSearchads360V0Resources_ConversionAction_ValueSettings` | Settings related to the value for conversion events associated with this conversion action. |

### `GoogleAdsSearchads360V0Resources__ConversionCustomVariable`

A conversion custom variable. See "About custom Floodlight metrics and dimensions in the new Search Ads 360" at https://support.google.com/sa360/answer/13567857

| Property | Type | Description |
|----------|------|-------------|
| `cardinality` | `string` | Output only. Cardinality of the conversion custom variable. |
| `customColumnIds` | `array<string>` | Output only. The IDs of custom columns that use this conversion custom variable. |
| `family` | `string` | Output only. Family of the conversion custom variable. |
| `floodlightConversionCustomVariableInfo` | `GoogleAdsSearchads360V0Resources_ConversionCustomVariable_FloodlightConversionCustomVariableInfo` | Output only. Fields for Search Ads 360 floodlight conversion custom variables. |
| `id` | `string` | Output only. The ID of the conversion custom variable. |
| `name` | `string` | Required. The name of the conversion custom variable. Name should be unique. The maximum length o... |
| `ownerCustomer` | `string` | Output only. The resource name of the customer that owns the conversion custom variable. |
| `resourceName` | `string` | Immutable. The resource name of the conversion custom variable. Conversion custom variable resour... |
| `status` | `string` | The status of the conversion custom variable for conversion event accrual. |
| `tag` | `string` | Required. Immutable. The tag of the conversion custom variable. Tag should be unique and consist ... |

### `GoogleAdsSearchads360V0Resources__ConversionTrackingSetting`

A collection of customer-wide settings related to Search Ads 360 Conversion Tracking.

| Property | Type | Description |
|----------|------|-------------|
| `acceptedCustomerDataTerms` | `boolean` | Output only. Whether the customer has accepted customer data terms. If using cross-account conver... |
| `conversionTrackingId` | `string` | Output only. The conversion tracking id used for this account. This id doesn't indicate whether t... |
| `conversionTrackingStatus` | `string` | Output only. Conversion tracking status. It indicates whether the customer is using conversion tr... |
| `crossAccountConversionTrackingId` | `string` | Output only. The conversion tracking id of the customer's manager. This is set when the customer ... |
| `enhancedConversionsForLeadsEnabled` | `boolean` | Output only. Whether the customer is opted-in for enhanced conversions for leads. If using cross-... |
| `googleAdsConversionCustomer` | `string` | Output only. The resource name of the customer where conversions are created and managed. This fi... |
| `googleAdsCrossAccountConversionTrackingId` | `string` | Output only. The conversion tracking id of the customer's manager. This is set when the customer ... |

### `GoogleAdsSearchads360V0Resources__CustomColumn`

A custom column. See Search Ads 360 custom column at https://support.google.com/sa360/answer/9633916

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. User-defined description of the custom column. |
| `id` | `string` | Output only. ID of the custom column. |
| `name` | `string` | Output only. User-defined name of the custom column. |
| `queryable` | `boolean` | Output only. True when the custom column is available to be used in the query of SearchAds360Serv... |
| `referencedSystemColumns` | `array<string>` | Output only. The list of the referenced system columns of this custom column. For example, A cust... |
| `referencesAttributes` | `boolean` | Output only. True when the custom column is referring to one or more attributes. |
| `referencesMetrics` | `boolean` | Output only. True when the custom column is referring to one or more metrics. |
| `renderType` | `string` | Output only. How the result value of the custom column should be interpreted. |
| `resourceName` | `string` | Immutable. The resource name of the custom column. Custom column resource names have the form: `c... |
| `valueType` | `string` | Output only. The type of the result value of the custom column. |

### `GoogleAdsSearchads360V0Resources__Customer`

A customer.

| Property | Type | Description |
|----------|------|-------------|
| `accountLevel` | `string` | Output only. The account level of the customer: Manager, Sub-manager, Associate manager, Service ... |
| `accountStatus` | `string` | Output only. Account status, for example, Enabled, Paused, Removed, etc. |
| `accountType` | `string` | Output only. Engine account type, for example, Google Ads, Microsoft Advertising, Yahoo Japan, Ba... |
| `associateManagerDescriptiveName` | `string` | Output only. The descriptive name of the associate manager. |
| `associateManagerId` | `string` | Output only. The customer ID of the associate manager. A 0 value indicates that the customer has ... |
| `autoTaggingEnabled` | `boolean` | Whether auto-tagging is enabled for the customer. |
| `conversionTrackingSetting` | `GoogleAdsSearchads360V0Resources__ConversionTrackingSetting` | Output only. Conversion tracking setting for a customer. |
| `creationTime` | `string` | Output only. The timestamp when this customer was created. The timestamp is in the customer's tim... |
| `currencyCode` | `string` | Immutable. The currency in which the account operates. A subset of the currency codes from the IS... |
| `descriptiveName` | `string` | Optional, non-unique descriptive name of the customer. |
| `doubleClickCampaignManagerSetting` | `GoogleAdsSearchads360V0Resources__DoubleClickCampaignManagerSetting` | Output only. DoubleClick Campaign Manager (DCM) setting for a manager customer. |
| `engineId` | `string` | Output only. ID of the account in the external engine account. |
| `finalUrlSuffix` | `string` | The URL template for appending params to the final URL. |
| `id` | `string` | Output only. The ID of the customer. |
| `lastModifiedTime` | `string` | Output only. The datetime when this customer was last modified. The datetime is in the customer's... |
| `manager` | `boolean` | Output only. Whether the customer is a manager. |
| `managerDescriptiveName` | `string` | Output only. The descriptive name of the manager. |
| `managerId` | `string` | Output only. The customer ID of the manager. A 0 value indicates that the customer has no SA360 m... |
| `resourceName` | `string` | Immutable. The resource name of the customer. Customer resource names have the form: `customers/{... |
| `status` | `string` | Output only. The status of the customer. |
| `subManagerDescriptiveName` | `string` | Output only. The descriptive name of the sub manager. |
| `subManagerId` | `string` | Output only. The customer ID of the sub manager. A 0 value indicates that the customer has no sub... |
| `timeZone` | `string` | Immutable. The local timezone ID of the customer. |
| `trackingUrlTemplate` | `string` | The URL template for constructing a tracking URL out of parameters. |

### `GoogleAdsSearchads360V0Resources__CustomerAsset`

A link between a customer and an asset.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | Required. Immutable. The asset which is linked to the customer. |
| `resourceName` | `string` | Immutable. The resource name of the customer asset. CustomerAsset resource names have the form: `... |
| `status` | `string` | Status of the customer asset. |

### `GoogleAdsSearchads360V0Resources__CustomerAssetSet`

CustomerAssetSet is the linkage between a customer and an asset set. Adding a CustomerAssetSet links an asset set with a customer.

| Property | Type | Description |
|----------|------|-------------|
| `assetSet` | `string` | Immutable. The asset set which is linked to the customer. |
| `customer` | `string` | Immutable. The customer to which this asset set is linked. |
| `resourceName` | `string` | Immutable. The resource name of the customer asset set. Asset set asset resource names have the f... |
| `status` | `string` | Output only. The status of the customer asset set asset. Read-only. |

### `GoogleAdsSearchads360V0Resources__CustomerClient`

A link between the given customer and a client customer. CustomerClients only exist for manager customers. All direct and indirect client customers are included, as well as the manager itself.

| Property | Type | Description |
|----------|------|-------------|
| `appliedLabels` | `array<string>` | Output only. The resource names of the labels owned by the requesting customer that are applied t... |
| `clientCustomer` | `string` | Output only. The resource name of the client-customer which is linked to the given customer. Read... |
| `currencyCode` | `string` | Output only. Currency code (for example, 'USD', 'EUR') for the client. Read only. |
| `descriptiveName` | `string` | Output only. Descriptive name for the client. Read only. |
| `hidden` | `boolean` | Output only. Specifies whether this is a hidden account. Read only. |
| `id` | `string` | Output only. The ID of the client customer. Read only. |
| `level` | `string` | Output only. Distance between given customer and client. For self link, the level value will be 0... |
| `manager` | `boolean` | Output only. Identifies if the client is a manager. Read only. |
| `resourceName` | `string` | Output only. The resource name of the customer client. CustomerClient resource names have the for... |
| `status` | `string` | Output only. The status of the client customer. Read only. |
| `testAccount` | `boolean` | Output only. Identifies if the client is a test account. Read only. |
| `timeZone` | `string` | Output only. Common Locale Data Repository (CLDR) string representation of the time zone of the c... |

### `GoogleAdsSearchads360V0Resources__CustomerManagerLink`

Represents customer-manager link relationship.

| Property | Type | Description |
|----------|------|-------------|
| `managerCustomer` | `string` | Output only. The manager customer linked to the customer. |
| `managerLinkId` | `string` | Output only. ID of the customer-manager link. This field is read only. |
| `resourceName` | `string` | Immutable. Name of the resource. CustomerManagerLink resource names have the form: `customers/{cu... |
| `startTime` | `string` | Output only. The timestamp when the CustomerManagerLink was created. The timestamp is in the cust... |
| `status` | `string` | Status of the link between the customer and the manager. |

### `GoogleAdsSearchads360V0Resources__DoubleClickCampaignManagerSetting`

DoubleClick Campaign Manager (DCM) setting for a manager customer.

| Property | Type | Description |
|----------|------|-------------|
| `advertiserId` | `string` | Output only. ID of the Campaign Manager advertiser associated with this customer. |
| `networkId` | `string` | Output only. ID of the Campaign Manager network associated with this customer. |
| `timeZone` | `string` | Output only. Time zone of the Campaign Manager network associated with this customer in IANA Time... |

### `GoogleAdsSearchads360V0Resources__DynamicSearchAdsSearchTermView`

A dynamic search ads search term view.

| Property | Type | Description |
|----------|------|-------------|
| `landingPage` | `string` | Output only. The dynamically selected landing page URL of the impression. This field is read-only. |
| `resourceName` | `string` | Output only. The resource name of the dynamic search ads search term view. Dynamic search ads sea... |

### `GoogleAdsSearchads360V0Resources__GenderView`

A gender view. The gender_view resource reflects the effective serving state, rather than what criteria were added. An ad group without gender criteria by default shows to all genders, so all genders appear in gender_view with stats.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Output only. The resource name of the gender view. Gender view resource names have the form: `cus... |

### `GoogleAdsSearchads360V0Resources__GeoTargetConstant`

A geo target constant.

| Property | Type | Description |
|----------|------|-------------|
| `canonicalName` | `string` | Output only. The fully qualified English name, consisting of the target's name and that of its pa... |
| `countryCode` | `string` | Output only. The ISO-3166-1 alpha-2 country code that is associated with the target. |
| `id` | `string` | Output only. The ID of the geo target constant. |
| `name` | `string` | Output only. Geo target constant English name. |
| `parentGeoTarget` | `string` | Output only. The resource name of the parent geo target constant. Geo target constant resource na... |
| `resourceName` | `string` | Output only. The resource name of the geo target constant. Geo target constant resource names hav... |
| `status` | `string` | Output only. Geo target constant status. |
| `targetType` | `string` | Output only. Geo target constant target type. |

### `GoogleAdsSearchads360V0Resources__KeywordView`

A keyword view.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Output only. The resource name of the keyword view. Keyword view resource names have the form: `c... |

### `GoogleAdsSearchads360V0Resources__Label`

A label.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Output only. ID of the label. Read only. |
| `name` | `string` | The name of the label. This field is required and should not be empty when creating a new label. ... |
| `resourceName` | `string` | Immutable. Name of the resource. Label resource names have the form: `customers/{owner_customer_i... |
| `status` | `string` | Output only. Status of the label. Read only. |
| `textLabel` | `GoogleAdsSearchads360V0Common__TextLabel` | A type of label displaying text on a colored background. |

### `GoogleAdsSearchads360V0Resources__LanguageConstant`

A language.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Output only. The language code, for example, "en_US", "en_AU", "es", "fr", etc. |
| `id` | `string` | Output only. The ID of the language constant. |
| `name` | `string` | Output only. The full name of the language in English, for example, "English (US)", "Spanish", etc. |
| `resourceName` | `string` | Output only. The resource name of the language constant. Language constant resource names have th... |
| `targetable` | `boolean` | Output only. Whether the language is targetable. |

### `GoogleAdsSearchads360V0Resources__ListingGroupFilterDimension`

Listing dimensions for the asset group listing group filter.

| Property | Type | Description |
|----------|------|-------------|
| `productBiddingCategory` | `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductBiddingCategory` | Bidding category of a product offer. |
| `productBrand` | `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductBrand` | Brand of a product offer. |
| `productChannel` | `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductChannel` | Locality of a product offer. |
| `productCondition` | `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductCondition` | Condition of a product offer. |
| `productCustomAttribute` | `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductCustomAttribute` | Custom attribute of a product offer. |
| `productItemId` | `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductItemId` | Item id of a product offer. |
| `productType` | `GoogleAdsSearchads360V0Resources_ListingGroupFilterDimension_ProductType` | Type of a product offer. |

### `GoogleAdsSearchads360V0Resources__ListingGroupFilterDimensionPath`

The path defining of dimensions defining a listing group filter.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<GoogleAdsSearchads360V0Resources__ListingGroupFilterDimension>` | Output only. The complete path of dimensions through the listing group filter hierarchy (excludin... |

### `GoogleAdsSearchads360V0Resources__LocationView`

A location view summarizes the performance of campaigns by a Location criterion.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Output only. The resource name of the location view. Location view resource names have the form: ... |

### `GoogleAdsSearchads360V0Resources__ProductBiddingCategoryConstant`

A Product Bidding Category.

| Property | Type | Description |
|----------|------|-------------|
| `countryCode` | `string` | Output only. Two-letter upper-case country code of the product bidding category. |
| `id` | `string` | Output only. ID of the product bidding category. This ID is equivalent to the google_product_cate... |
| `languageCode` | `string` | Output only. Language code of the product bidding category. |
| `level` | `string` | Output only. Level of the product bidding category. |
| `localizedName` | `string` | Output only. Display value of the product bidding category localized according to language_code. |
| `productBiddingCategoryConstantParent` | `string` | Output only. Resource name of the parent product bidding category. |
| `resourceName` | `string` | Output only. The resource name of the product bidding category. Product bidding category resource... |
| `status` | `string` | Output only. Status of the product bidding category. |

### `GoogleAdsSearchads360V0Resources__ProductGroupView`

A product group view.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Output only. The resource name of the product group view. Product group view resource names have ... |

### `GoogleAdsSearchads360V0Resources__SearchAds360Field`

A field or resource (artifact) used by SearchAds360Service.

| Property | Type | Description |
|----------|------|-------------|
| `attributeResources` | `array<string>` | Output only. The names of all resources that are selectable with the described artifact. Fields f... |
| `category` | `string` | Output only. The category of the artifact. |
| `dataType` | `string` | Output only. This field determines the operators that can be used with the artifact in WHERE clau... |
| `enumValues` | `array<string>` | Output only. Values the artifact can assume if it is a field of type ENUM. This field is only set... |
| `filterable` | `boolean` | Output only. Whether the artifact can be used in a WHERE clause in search queries. |
| `isRepeated` | `boolean` | Output only. Whether the field artifact is repeated. |
| `metrics` | `array<string>` | Output only. This field lists the names of all metrics that are selectable with the described art... |
| `name` | `string` | Output only. The name of the artifact. |
| `resourceName` | `string` | Output only. The resource name of the artifact. Artifact resource names have the form: `SearchAds... |
| `segments` | `array<string>` | Output only. This field lists the names of all artifacts, whether a segment or another resource, ... |
| `selectable` | `boolean` | Output only. Whether the artifact can be used in a SELECT clause in search queries. |
| `selectableWith` | `array<string>` | Output only. The names of all resources, segments, and metrics that are selectable with the descr... |
| `sortable` | `boolean` | Output only. Whether the artifact can be used in a ORDER BY clause in search queries. |
| `typeUrl` | `string` | Output only. The URL of proto describing the artifact's data type. |

### `GoogleAdsSearchads360V0Resources__ShoppingPerformanceView`

Shopping performance view. Provides Shopping campaign and Performance Max campaign statistics aggregated at several product dimension levels. Product dimension values from Merchant Center such as brand, category, custom attributes, product condition, and product type will reflect the state of each dimension as of the date and time when the corresponding event was recorded. The number of impressions and clicks that `shopping_performance_view` returns stats for may be different from campaign reports. `shopping_performance_view` shows impressions and clicks on products appearing in ads, while campaign reports show impressions and clicks on the ads themselves. Depending on the format, an ad can show from zero to several products, so the numbers may not match. In Search Ads 360 UI, you can query impressions and clicks of products appearing in ads by selecting a column from "Product attributes" in the report editor. For example, selecting the "Brand" column is equivalent to selecting `segments.product_brand`.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Output only. The resource name of the Shopping performance view. Shopping performance view resour... |

### `GoogleAdsSearchads360V0Resources__UserList`

A user list. This is a list of users a customer may target.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Output only. Id of the user list. |
| `name` | `string` | Name of this user list. Depending on its access_reason, the user list name may not be unique (for... |
| `resourceName` | `string` | Immutable. The resource name of the user list. User list resource names have the form: `customers... |
| `type` | `string` | Output only. Type of this list. This field is read-only. |

### `GoogleAdsSearchads360V0Resources__UserLocationView`

A user location view. User Location View includes all metrics aggregated at the country level, one row per country. It reports metrics at the actual physical location of the user by targeted or not targeted location. If other segment fields are used, you may get more than one row per country.

| Property | Type | Description |
|----------|------|-------------|
| `countryCriterionId` | `string` | Output only. Criterion Id for the country. |
| `resourceName` | `string` | Output only. The resource name of the user location view. UserLocation view resource names have t... |
| `targetingLocation` | `boolean` | Output only. Indicates whether location was targeted or not. |

### `GoogleAdsSearchads360V0Resources__Visit`

A visit.

| Property | Type | Description |
|----------|------|-------------|
| `adId` | `string` | Output only. Ad ID. A value of 0 indicates that the ad is unattributed. |
| `assetFieldType` | `string` | Output only. Asset field type of the visit event. |
| `assetId` | `string` | Output only. ID of the asset which was interacted with during the visit event. |
| `clickId` | `string` | Output only. A unique string for each visit that is passed to the landing page as the click id UR... |
| `criterionId` | `string` | Output only. Search Ads 360 keyword ID. A value of 0 indicates that the keyword is unattributed. |
| `id` | `string` | Output only. The ID of the visit. |
| `merchantId` | `string` | Output only. The Search Ads 360 inventory account ID containing the product that was clicked on. ... |
| `productChannel` | `string` | Output only. The sales channel of the product that was clicked on: Online or Local. |
| `productCountryCode` | `string` | Output only. The country (ISO-3166 format) registered for the inventory feed that contains the pr... |
| `productId` | `string` | Output only. The ID of the product clicked on. |
| `productLanguageCode` | `string` | Output only. The language (ISO-639-1) that has been set for the Merchant Center feed containing d... |
| `productStoreId` | `string` | Output only. The store in the Local Inventory Ad that was clicked on. This should match the store... |
| `resourceName` | `string` | Output only. The resource name of the visit. Visit resource names have the form: `customers/{cust... |
| `visitDateTime` | `string` | Output only. The timestamp of the visit event. The timestamp is in the customer's time zone and i... |

### `GoogleAdsSearchads360V0Resources__WebpageView`

A webpage view.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Output only. The resource name of the webpage view. Webpage view resource names have the form: `c... |

### `GoogleAdsSearchads360V0Services__ConversionCustomDimensionHeader`

Message for conversion custom dimension header.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The conversion custom dimension ID. |
| `name` | `string` | The user defined name of the conversion custom dimension. |

### `GoogleAdsSearchads360V0Services__ConversionCustomMetricHeader`

Message for conversion custom metric header.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The conversion custom metric ID. |
| `name` | `string` | The user defined name of the conversion custom metric. |

### `GoogleAdsSearchads360V0Services__CustomColumnHeader`

Message for custom column header.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The custom column ID. |
| `name` | `string` | The user defined name of the custom column. |
| `referencesMetrics` | `boolean` | True when the custom column references metrics. |

### `GoogleAdsSearchads360V0Services__ListAccessibleCustomersResponse`

Response message for CustomerService.ListAccessibleCustomers.

| Property | Type | Description |
|----------|------|-------------|
| `resourceNames` | `array<string>` | Resource name of customers directly accessible by the user authenticating the call. |

### `GoogleAdsSearchads360V0Services__ListCustomColumnsResponse`

Response message for fetching all custom columns associated with a customer.

| Property | Type | Description |
|----------|------|-------------|
| `customColumns` | `array<GoogleAdsSearchads360V0Resources__CustomColumn>` | The CustomColumns owned by the provided customer. |

### `GoogleAdsSearchads360V0Services__RawEventConversionDimensionHeader`

Message for raw event conversion dimension header.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The conversion custom variable ID. |
| `name` | `string` | The user defined name of the raw event dimension. |

### `GoogleAdsSearchads360V0Services__RawEventConversionMetricHeader`

Message for raw event conversion metric header.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The conversion custom variable ID. |
| `name` | `string` | The user defined name of the raw event metric. |

### `GoogleAdsSearchads360V0Services__SearchAds360Row`

A returned row from the query.

| Property | Type | Description |
|----------|------|-------------|
| `accessibleBiddingStrategy` | `GoogleAdsSearchads360V0Resources__AccessibleBiddingStrategy` | The accessible bidding strategy referenced in the query. |
| `adGroup` | `GoogleAdsSearchads360V0Resources__AdGroup` | The ad group referenced in the query. |
| `adGroupAd` | `GoogleAdsSearchads360V0Resources__AdGroupAd` | The ad referenced in the query. |
| `adGroupAdEffectiveLabel` | `GoogleAdsSearchads360V0Resources__AdGroupAdEffectiveLabel` | The ad group ad effective label referenced in the query. |
| `adGroupAdLabel` | `GoogleAdsSearchads360V0Resources__AdGroupAdLabel` | The ad group ad label referenced in the query. |
| `adGroupAsset` | `GoogleAdsSearchads360V0Resources__AdGroupAsset` | The ad group asset referenced in the query. |
| `adGroupAssetSet` | `GoogleAdsSearchads360V0Resources__AdGroupAssetSet` | The ad group asset set referenced in the query. |
| `adGroupAudienceView` | `GoogleAdsSearchads360V0Resources__AdGroupAudienceView` | The ad group audience view referenced in the query. |
| `adGroupBidModifier` | `GoogleAdsSearchads360V0Resources__AdGroupBidModifier` | The bid modifier referenced in the query. |
| `adGroupCriterion` | `GoogleAdsSearchads360V0Resources__AdGroupCriterion` | The criterion referenced in the query. |
| `adGroupCriterionEffectiveLabel` | `GoogleAdsSearchads360V0Resources__AdGroupCriterionEffectiveLabel` | The ad group criterion effective label referenced in the query. |
| `adGroupCriterionLabel` | `GoogleAdsSearchads360V0Resources__AdGroupCriterionLabel` | The ad group criterion label referenced in the query. |
| `adGroupEffectiveLabel` | `GoogleAdsSearchads360V0Resources__AdGroupEffectiveLabel` | The ad group effective label referenced in the query. |
| `adGroupLabel` | `GoogleAdsSearchads360V0Resources__AdGroupLabel` | The ad group label referenced in the query. |
| `ageRangeView` | `GoogleAdsSearchads360V0Resources__AgeRangeView` | The age range view referenced in the query. |
| `asset` | `GoogleAdsSearchads360V0Resources__Asset` | The asset referenced in the query. |
| `assetGroup` | `GoogleAdsSearchads360V0Resources__AssetGroup` | The asset group referenced in the query. |
| `assetGroupAsset` | `GoogleAdsSearchads360V0Resources__AssetGroupAsset` | The asset group asset referenced in the query. |
| `assetGroupListingGroupFilter` | `GoogleAdsSearchads360V0Resources__AssetGroupListingGroupFilter` | The asset group listing group filter referenced in the query. |
| `assetGroupSignal` | `GoogleAdsSearchads360V0Resources__AssetGroupSignal` | The asset group signal referenced in the query. |
| `assetGroupTopCombinationView` | `GoogleAdsSearchads360V0Resources__AssetGroupTopCombinationView` | The asset group top combination view referenced in the query. |
| `assetSet` | `GoogleAdsSearchads360V0Resources__AssetSet` | The asset set referenced in the query. |
| `assetSetAsset` | `GoogleAdsSearchads360V0Resources__AssetSetAsset` | The asset set asset referenced in the query. |
| `audience` | `GoogleAdsSearchads360V0Resources__Audience` | The Audience referenced in the query. |
| `biddingStrategy` | `GoogleAdsSearchads360V0Resources__BiddingStrategy` | The bidding strategy referenced in the query. |
| `campaign` | `GoogleAdsSearchads360V0Resources__Campaign` | The campaign referenced in the query. |
| `campaignAsset` | `GoogleAdsSearchads360V0Resources__CampaignAsset` | The campaign asset referenced in the query. |
| `campaignAssetSet` | `GoogleAdsSearchads360V0Resources__CampaignAssetSet` | The campaign asset set referenced in the query. |
| `campaignAudienceView` | `GoogleAdsSearchads360V0Resources__CampaignAudienceView` | The campaign audience view referenced in the query. |
| `campaignBudget` | `GoogleAdsSearchads360V0Resources__CampaignBudget` | The campaign budget referenced in the query. |
| `campaignCriterion` | `GoogleAdsSearchads360V0Resources__CampaignCriterion` | The campaign criterion referenced in the query. |
| `campaignEffectiveLabel` | `GoogleAdsSearchads360V0Resources__CampaignEffectiveLabel` | The campaign effective label referenced in the query. |
| `campaignLabel` | `GoogleAdsSearchads360V0Resources__CampaignLabel` | The campaign label referenced in the query. |
| `cartDataSalesView` | `GoogleAdsSearchads360V0Resources__CartDataSalesView` | The cart data sales view referenced in the query. |
| `conversion` | `GoogleAdsSearchads360V0Resources__Conversion` | The event level conversion referenced in the query. |
| `conversionAction` | `GoogleAdsSearchads360V0Resources__ConversionAction` | The conversion action referenced in the query. |
| `conversionCustomVariable` | `GoogleAdsSearchads360V0Resources__ConversionCustomVariable` | The conversion custom variable referenced in the query. |
| `customColumns` | `array<GoogleAdsSearchads360V0Common__Value>` | The custom columns. |
| `customer` | `GoogleAdsSearchads360V0Resources__Customer` | The customer referenced in the query. |
| `customerAsset` | `GoogleAdsSearchads360V0Resources__CustomerAsset` | The customer asset referenced in the query. |
| `customerAssetSet` | `GoogleAdsSearchads360V0Resources__CustomerAssetSet` | The customer asset set referenced in the query. |
| `customerClient` | `GoogleAdsSearchads360V0Resources__CustomerClient` | The CustomerClient referenced in the query. |
| `customerManagerLink` | `GoogleAdsSearchads360V0Resources__CustomerManagerLink` | The CustomerManagerLink referenced in the query. |
| `dynamicSearchAdsSearchTermView` | `GoogleAdsSearchads360V0Resources__DynamicSearchAdsSearchTermView` | The dynamic search ads search term view referenced in the query. |
| `genderView` | `GoogleAdsSearchads360V0Resources__GenderView` | The gender view referenced in the query. |
| `geoTargetConstant` | `GoogleAdsSearchads360V0Resources__GeoTargetConstant` | The geo target constant referenced in the query. |
| `keywordView` | `GoogleAdsSearchads360V0Resources__KeywordView` | The keyword view referenced in the query. |
| `label` | `GoogleAdsSearchads360V0Resources__Label` | The label referenced in the query. |
| `languageConstant` | `GoogleAdsSearchads360V0Resources__LanguageConstant` | The language constant referenced in the query. |
| `locationView` | `GoogleAdsSearchads360V0Resources__LocationView` | The location view referenced in the query. |
| `metrics` | `GoogleAdsSearchads360V0Common__Metrics` | The metrics. |
| `productBiddingCategoryConstant` | `GoogleAdsSearchads360V0Resources__ProductBiddingCategoryConstant` | The Product Bidding Category referenced in the query. |
| `productGroupView` | `GoogleAdsSearchads360V0Resources__ProductGroupView` | The product group view referenced in the query. |
| `segments` | `GoogleAdsSearchads360V0Common__Segments` | The segments. |
| `shoppingPerformanceView` | `GoogleAdsSearchads360V0Resources__ShoppingPerformanceView` | The shopping performance view referenced in the query. |
| `userList` | `GoogleAdsSearchads360V0Resources__UserList` | The user list referenced in the query. |
| `userLocationView` | `GoogleAdsSearchads360V0Resources__UserLocationView` | The user location view referenced in the query. |
| `visit` | `GoogleAdsSearchads360V0Resources__Visit` | The event level visit referenced in the query. |
| `webpageView` | `GoogleAdsSearchads360V0Resources__WebpageView` | The webpage view referenced in the query. |

### `GoogleAdsSearchads360V0Services__SearchSearchAds360FieldsRequest`

Request message for SearchAds360FieldService.SearchSearchAds360Fields.

| Property | Type | Description |
|----------|------|-------------|
| `pageSize` | `integer` | Number of elements to retrieve in a single page. When too large a page is requested, the server m... |
| `pageToken` | `string` | Token of the page to retrieve. If not specified, the first page of results will be returned. Use ... |
| `query` | `string` | Required. The query string. |

### `GoogleAdsSearchads360V0Services__SearchSearchAds360FieldsResponse`

Response message for SearchAds360FieldService.SearchSearchAds360Fields.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Pagination token used to retrieve the next page of results. Pass the content of this string as th... |
| `results` | `array<GoogleAdsSearchads360V0Resources__SearchAds360Field>` | The list of fields that matched the query. |
| `totalResultsCount` | `string` | Total number of results that match the query ignoring the LIMIT clause. |

### `GoogleAdsSearchads360V0Services__SearchSearchAds360Request`

Request message for SearchAds360Service.Search.

| Property | Type | Description |
|----------|------|-------------|
| `pageSize` | `integer` | Number of elements to retrieve in a single page. When too large a page is requested, the server m... |
| `pageToken` | `string` | Token of the page to retrieve. If not specified, the first page of results will be returned. Use ... |
| `query` | `string` | Required. The query string. |
| `returnTotalResultsCount` | `boolean` | If true, the total number of results that match the query ignoring the LIMIT clause will be inclu... |
| `summaryRowSetting` | `string` | Determines whether a summary row will be returned. By default, summary row is not returned. If re... |
| `validateOnly` | `boolean` | If true, the request is validated but not executed. |

### `GoogleAdsSearchads360V0Services__SearchSearchAds360Response`

Response message for SearchAds360Service.Search.

| Property | Type | Description |
|----------|------|-------------|
| `conversionCustomDimensionHeaders` | `array<GoogleAdsSearchads360V0Services__ConversionCustomDimensionHeader>` | The headers of the conversion custom dimensions in the results. |
| `conversionCustomMetricHeaders` | `array<GoogleAdsSearchads360V0Services__ConversionCustomMetricHeader>` | The headers of the conversion custom metrics in the results. |
| `customColumnHeaders` | `array<GoogleAdsSearchads360V0Services__CustomColumnHeader>` | The headers of the custom columns in the results. |
| `fieldMask` | `string` | FieldMask that represents what fields were requested by the user. |
| `nextPageToken` | `string` | Pagination token used to retrieve the next page of results. Pass the content of this string as th... |
| `rawEventConversionDimensionHeaders` | `array<GoogleAdsSearchads360V0Services__RawEventConversionDimensionHeader>` | The headers of the raw event conversion dimensions in the results. |
| `rawEventConversionMetricHeaders` | `array<GoogleAdsSearchads360V0Services__RawEventConversionMetricHeader>` | The headers of the raw event conversion metrics in the results. |
| `results` | `array<GoogleAdsSearchads360V0Services__SearchAds360Row>` | The list of rows that matched the query. |
| `summaryRow` | `GoogleAdsSearchads360V0Services__SearchAds360Row` | Summary row that contains summary of metrics in results. Summary of metrics means aggregation of ... |
| `totalResultsCount` | `string` | Total number of results that match the query ignoring the LIMIT clause. |

