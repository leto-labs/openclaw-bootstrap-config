# Firebase Dynamic Links API - API Reference

**Version**: `v1` | **Methods**: 5 | **Schemas**: 23

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firebasedynamiclinks.installAttribution` | POST | `v1/installAttribution` | Get iOS strong/weak-match info for post-install attribution. |
| `firebasedynamiclinks.reopenAttribution` | POST | `v1/reopenAttribution` | Get iOS reopen attribution for app universal link open deeplinking. |
| `firebasedynamiclinks.getLinkStats` | GET | `v1/{dynamicLink}/linkStats` | Fetches analytics stats of a short Dynamic Link for a given duration. Metrics include number of c... |
| `firebasedynamiclinks.managedShortLinks.create` | POST | `v1/managedShortLinks:create` | Creates a managed short Dynamic Link given either a valid long Dynamic Link or details such as Dy... |
| `firebasedynamiclinks.shortLinks.create` | POST | `v1/shortLinks` | Creates a short Dynamic Link given either a valid long Dynamic Link or details such as Dynamic Li... |

### `firebasedynamiclinks.installAttribution`

**POST** `v1/installAttribution`

Get iOS strong/weak-match info for post-install attribution.

**Request body**: `GetIosPostInstallAttributionRequest`

**Response**: `GetIosPostInstallAttributionResponse`

```typescript
const res = await firebasedynamiclinks.installAttribution({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/firebase`

---

### `firebasedynamiclinks.reopenAttribution`

**POST** `v1/reopenAttribution`

Get iOS reopen attribution for app universal link open deeplinking.

**Request body**: `GetIosReopenAttributionRequest`

**Response**: `GetIosReopenAttributionResponse`

```typescript
const res = await firebasedynamiclinks.reopenAttribution({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/firebase`

---

### `firebasedynamiclinks.getLinkStats`

**GET** `v1/{dynamicLink}/linkStats`

Fetches analytics stats of a short Dynamic Link for a given duration. Metrics include number of clicks, redirects, installs, app first opens, and app reopens.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dynamicLink` | `string` | path | Yes | Dynamic Link URL. e.g. https://abcd.app.goo.gl/wxyz |
| `durationDays` | `string` | query | No | The span of time requested in days. |
| `sdkVersion` | `string` | query | No | Google SDK version. Version takes the form "$major.$minor.$patch" |

**Response**: `DynamicLinkStats`

```typescript
const res = await firebasedynamiclinks.getLinkStats({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/firebase`

---

### `firebasedynamiclinks.managedShortLinks.create`

**POST** `v1/managedShortLinks:create`

Creates a managed short Dynamic Link given either a valid long Dynamic Link or details such as Dynamic Link domain, Android and iOS app information. The created short Dynamic Link will not expire. This differs from CreateShortDynamicLink in the following ways: - The request will also contain a name for the link (non unique name for the front end). - The response must be authenticated with an auth token (generated with the admin service account). - The link will appear in the FDL list of links in the console front end. The Dynamic Link domain in the request must be owned by requester's Firebase project.

**Request body**: `CreateManagedShortLinkRequest`

**Response**: `CreateManagedShortLinkResponse`

```typescript
const res = await firebasedynamiclinks.managedShortLinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/firebase`

---

### `firebasedynamiclinks.shortLinks.create`

**POST** `v1/shortLinks`

Creates a short Dynamic Link given either a valid long Dynamic Link or details such as Dynamic Link domain, Android and iOS app information. The created short Dynamic Link will not expire. Repeated calls with the same long Dynamic Link or Dynamic Link information will produce the same short Dynamic Link. The Dynamic Link domain in the request must be owned by requester's Firebase project.

**Request body**: `CreateShortDynamicLinkRequest`

**Response**: `CreateShortDynamicLinkResponse`

```typescript
const res = await firebasedynamiclinks.shortLinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/firebase`

---

## Schemas

### `AnalyticsInfo`

Tracking parameters supported by Dynamic Link.

| Property | Type | Description |
|----------|------|-------------|
| `googlePlayAnalytics` | `GooglePlayAnalytics` | Google Play Campaign Measurements. |
| `itunesConnectAnalytics` | `ITunesConnectAnalytics` | iTunes Connect App Analytics. |

### `AndroidInfo`

Android related attributes to the Dynamic Link.

| Property | Type | Description |
|----------|------|-------------|
| `androidFallbackLink` | `string` | Link to open on Android if the app is not installed. |
| `androidLink` | `string` | If specified, this overrides the ‘link’ parameter on Android. |
| `androidMinPackageVersionCode` | `string` | Minimum version code for the Android app. If the installed app’s version code is lower, then the ... |
| `androidPackageName` | `string` | Android package name of the app. |

### `CreateManagedShortLinkRequest`

Request to create a managed Short Dynamic Link.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicLinkInfo` | `DynamicLinkInfo` | Information about the Dynamic Link to be shortened. [Learn more](https://firebase.google.com/docs... |
| `longDynamicLink` | `string` | Full long Dynamic Link URL with desired query parameters specified. For example, "https://sample.... |
| `name` | `string` | Link name to associate with the link. It's used for marketer to identify manually-created links i... |
| `sdkVersion` | `string` | Google SDK version. Version takes the form "$major.$minor.$patch" |
| `suffix` | `Suffix` | Short Dynamic Link suffix. Optional. |

### `CreateManagedShortLinkResponse`

Response to create a short Dynamic Link.

| Property | Type | Description |
|----------|------|-------------|
| `managedShortLink` | `ManagedShortLink` | Short Dynamic Link value. e.g. https://abcd.app.goo.gl/wxyz |
| `previewLink` | `string` | Preview link to show the link flow chart. (debug info.) |
| `warning` | `array<DynamicLinkWarning>` | Information about potential warnings on link creation. |

### `CreateShortDynamicLinkRequest`

Request to create a short Dynamic Link.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicLinkInfo` | `DynamicLinkInfo` | Information about the Dynamic Link to be shortened. [Learn more](https://firebase.google.com/docs... |
| `longDynamicLink` | `string` | Full long Dynamic Link URL with desired query parameters specified. For example, "https://sample.... |
| `sdkVersion` | `string` | Google SDK version. Version takes the form "$major.$minor.$patch" |
| `suffix` | `Suffix` | Short Dynamic Link suffix. Optional. |

### `CreateShortDynamicLinkResponse`

Response to create a short Dynamic Link.

| Property | Type | Description |
|----------|------|-------------|
| `previewLink` | `string` | Preview link to show the link flow chart. (debug info.) |
| `shortLink` | `string` | Short Dynamic Link value. e.g. https://abcd.app.goo.gl/wxyz |
| `warning` | `array<DynamicLinkWarning>` | Information about potential warnings on link creation. |

### `DesktopInfo`

Desktop related attributes to the Dynamic Link.

| Property | Type | Description |
|----------|------|-------------|
| `desktopFallbackLink` | `string` | Link to open on desktop. |

### `DeviceInfo`

Signals associated with the device making the request.

| Property | Type | Description |
|----------|------|-------------|
| `deviceModelName` | `string` | Device model name. |
| `languageCode` | `string` | Device language code setting. |
| `languageCodeFromWebview` | `string` | Device language code setting obtained by executing JavaScript code in WebView. |
| `languageCodeRaw` | `string` | Device language code raw setting. iOS does returns language code in different format than iOS Web... |
| `screenResolutionHeight` | `string` | Device display resolution height. |
| `screenResolutionWidth` | `string` | Device display resolution width. |
| `timezone` | `string` | Device timezone setting. |

### `DynamicLinkEventStat`

Dynamic Link event stat.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The number of times this event occurred. |
| `event` | `string` | Link event. |
| `platform` | `string` | Requested platform. |

### `DynamicLinkInfo`

Information about a Dynamic Link.

| Property | Type | Description |
|----------|------|-------------|
| `analyticsInfo` | `AnalyticsInfo` | Parameters used for tracking. See all tracking parameters in the [documentation](https://firebase... |
| `androidInfo` | `AndroidInfo` | Android related information. See Android related parameters in the [documentation](https://fireba... |
| `desktopInfo` | `DesktopInfo` | Desktop related information. See desktop related parameters in the [documentation](https://fireba... |
| `domainUriPrefix` | `string` | E.g. https://maps.app.goo.gl, https://maps.page.link, https://g.co/maps More examples can be foun... |
| `dynamicLinkDomain` | `string` | Dynamic Links domain that the project owns, e.g. abcd.app.goo.gl [Learn more](https://firebase.go... |
| `iosInfo` | `IosInfo` | iOS related information. See iOS related parameters in the [documentation](https://firebase.googl... |
| `link` | `string` | The link your app will open, You can specify any URL your app can handle. This link must be a wel... |
| `navigationInfo` | `NavigationInfo` | Information of navigation behavior of a Firebase Dynamic Links. |
| `socialMetaTagInfo` | `SocialMetaTagInfo` | Parameters for social meta tag params. Used to set meta tag data for link previews on social sites. |

### `DynamicLinkStats`

Analytics stats of a Dynamic Link for a given timeframe.

| Property | Type | Description |
|----------|------|-------------|
| `linkEventStats` | `array<DynamicLinkEventStat>` | Dynamic Link event stats. |
| `warnings` | `array<DynamicLinkWarning>` | Optional warnings associated this API request. |

### `DynamicLinkWarning`

Dynamic Links warning messages.

| Property | Type | Description |
|----------|------|-------------|
| `warningCode` | `string` | The warning code. |
| `warningDocumentLink` | `string` | The document describing the warning, and helps resolve. |
| `warningMessage` | `string` | The warning message to help developers improve their requests. |

### `GetIosPostInstallAttributionRequest`

Request for iSDK to execute strong match flow for post-install attribution. This is meant for iOS requests only. Requests from other platforms will not be honored.

| Property | Type | Description |
|----------|------|-------------|
| `appInstallationTime` | `string` | App installation epoch time (https://en.wikipedia.org/wiki/Unix_time). This is a client signal fo... |
| `bundleId` | `string` | APP bundle ID. |
| `device` | `DeviceInfo` | Device information. |
| `iosVersion` | `string` | iOS version, ie: 9.3.5. Consider adding "build". |
| `retrievalMethod` | `string` | App post install attribution retrieval information. Disambiguates mechanism (iSDK or developer in... |
| `sdkVersion` | `string` | Google SDK version. Version takes the form "$major.$minor.$patch" |
| `uniqueMatchLinkToCheck` | `string` | Possible unique matched link that server need to check before performing device heuristics match.... |
| `visualStyle` | `string` | Strong match page information. Disambiguates between default UI and custom page to present when s... |

### `GetIosPostInstallAttributionResponse`

Response for iSDK to execute strong match flow for post-install attribution. Information of the resolved FDL link.

| Property | Type | Description |
|----------|------|-------------|
| `appMinimumVersion` | `string` | The minimum version for app, specified by dev through ?imv= parameter. Return to iSDK to allow ap... |
| `attributionConfidence` | `string` | The confidence of the returned attribution. |
| `deepLink` | `string` | The deep-link attributed post-install via one of several techniques (device heuristics, copy uniq... |
| `externalBrowserDestinationLink` | `string` | User-agent specific custom-scheme URIs for iSDK to open. This will be set according to the user-a... |
| `fallbackLink` | `string` | The link to navigate to update the app if min version is not met. This is either (in order): 1) f... |
| `invitationId` | `string` | Invitation ID attributed post-install via one of several techniques (device heuristics, copy uniq... |
| `isStrongMatchExecutable` | `boolean` | Instruction for iSDK to attemmpt to perform strong match. For instance, if browser does not suppo... |
| `matchMessage` | `string` | Describes why match failed, ie: "discarded due to low confidence". This message will be publicly ... |
| `requestIpVersion` | `string` | Which IP version the request was made from. |
| `requestedLink` | `string` | Entire FDL (short or long) attributed post-install via one of several techniques (device heuristi... |
| `resolvedLink` | `string` | The entire FDL, expanded from a short link. It is the same as the requested_link, if it is long. ... |
| `utmCampaign` | `string` | Scion campaign value to be propagated by iSDK to Scion at post-install. |
| `utmContent` | `string` | Scion content value to be propagated by iSDK to Scion at app-reopen. |
| `utmMedium` | `string` | Scion medium value to be propagated by iSDK to Scion at post-install. |
| `utmSource` | `string` | Scion source value to be propagated by iSDK to Scion at post-install. |
| `utmTerm` | `string` | Scion term value to be propagated by iSDK to Scion at app-reopen. |

### `GetIosReopenAttributionRequest`

Request for iSDK to get reopen attribution for app universal link open deeplinking. This endpoint is meant for only iOS requests.

| Property | Type | Description |
|----------|------|-------------|
| `bundleId` | `string` | APP bundle ID. |
| `requestedLink` | `string` | FDL link to be verified from an app universal link open. The FDL link can be one of: 1) short FDL... |
| `sdkVersion` | `string` | Google SDK version. Version takes the form "$major.$minor.$patch" |

### `GetIosReopenAttributionResponse`

Response for iSDK to get reopen attribution for app universal link open deeplinking. This endpoint is meant for only iOS requests.

| Property | Type | Description |
|----------|------|-------------|
| `deepLink` | `string` | The deep-link attributed the app universal link open. For both regular FDL links and invite FDL l... |
| `invitationId` | `string` | Optional invitation ID, for only invite typed requested FDL links. |
| `iosMinAppVersion` | `string` | FDL input value of the "&imv=" parameter, minimum app version to be returned to Google Firebase S... |
| `resolvedLink` | `string` | The entire FDL, expanded from a short link. It is the same as the requested_link, if it is long. |
| `utmCampaign` | `string` | Scion campaign value to be propagated by iSDK to Scion at app-reopen. |
| `utmContent` | `string` | Scion content value to be propagated by iSDK to Scion at app-reopen. |
| `utmMedium` | `string` | Scion medium value to be propagated by iSDK to Scion at app-reopen. |
| `utmSource` | `string` | Scion source value to be propagated by iSDK to Scion at app-reopen. |
| `utmTerm` | `string` | Scion term value to be propagated by iSDK to Scion at app-reopen. |
| `warning` | `array<DynamicLinkWarning>` | Optional warnings associated this API request. |

### `GooglePlayAnalytics`

Parameters for Google Play Campaign Measurements. [Learn more](https://developers.google.com/analytics/devguides/collection/android/v4/campaigns#campaign-params)

| Property | Type | Description |
|----------|------|-------------|
| `gclid` | `string` | Deprecated; FDL SDK does not process nor log it. |
| `utmCampaign` | `string` | Campaign name; used for keyword analysis to identify a specific product promotion or strategic ca... |
| `utmContent` | `string` | Campaign content; used for A/B testing and content-targeted ads to differentiate ads or links tha... |
| `utmMedium` | `string` | Campaign medium; used to identify a medium such as email or cost-per-click. |
| `utmSource` | `string` | Campaign source; used to identify a search engine, newsletter, or other source. |
| `utmTerm` | `string` | Campaign term; used with paid search to supply the keywords for ads. |

### `ITunesConnectAnalytics`

Parameters for iTunes Connect App Analytics.

| Property | Type | Description |
|----------|------|-------------|
| `at` | `string` | Affiliate token used to create affiliate-coded links. |
| `ct` | `string` | Campaign text that developers can optionally add to any link in order to track sales from a speci... |
| `mt` | `string` | iTune media types, including music, podcasts, audiobooks and so on. |
| `pt` | `string` | Provider token that enables analytics for Dynamic Links from within iTunes Connect. |

### `IosInfo`

iOS related attributes to the Dynamic Link..

| Property | Type | Description |
|----------|------|-------------|
| `iosAppStoreId` | `string` | iOS App Store ID. |
| `iosBundleId` | `string` | iOS bundle ID of the app. |
| `iosCustomScheme` | `string` | Custom (destination) scheme to use for iOS. By default, we’ll use the bundle ID as the custom sch... |
| `iosFallbackLink` | `string` | Link to open on iOS if the app is not installed. |
| `iosIpadBundleId` | `string` | iPad bundle ID of the app. |
| `iosIpadFallbackLink` | `string` | If specified, this overrides the ios_fallback_link value on iPads. |
| `iosMinimumVersion` | `string` | iOS minimum version. |

### `ManagedShortLink`

Managed Short Link.

| Property | Type | Description |
|----------|------|-------------|
| `creationTime` | `string` | Creation timestamp of the short link. |
| `flaggedAttribute` | `array<string>` | Attributes that have been flagged about this short url. |
| `info` | `DynamicLinkInfo` | Full Dyamic Link info |
| `link` | `string` | Short durable link url, for example, "https://sample.app.goo.gl/xyz123". Required. |
| `linkName` | `string` | Link name defined by the creator. Required. |
| `visibility` | `string` | Visibility status of link. |

### `NavigationInfo`

Information of navigation behavior.

| Property | Type | Description |
|----------|------|-------------|
| `enableForcedRedirect` | `boolean` | If this option is on, FDL click will be forced to redirect rather than show an interstitial page. |

### `SocialMetaTagInfo`

Parameters for social meta tag params. Used to set meta tag data for link previews on social sites.

| Property | Type | Description |
|----------|------|-------------|
| `socialDescription` | `string` | A short description of the link. Optional. |
| `socialImageLink` | `string` | An image url string. Optional. |
| `socialTitle` | `string` | Title to be displayed. Optional. |

### `Suffix`

Short Dynamic Link suffix.

| Property | Type | Description |
|----------|------|-------------|
| `customSuffix` | `string` | Only applies to Option.CUSTOM. |
| `option` | `string` | Suffix option. |

