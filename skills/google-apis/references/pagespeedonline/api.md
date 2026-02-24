# PageSpeed Insights API - API Reference

**Version**: `v5` | **Methods**: 1 | **Schemas**: 20

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `pagespeedonline.pagespeedapi.runpagespeed` | GET | `pagespeedonline/v5/runPagespeed` | Runs PageSpeed analysis on the page at the specified URL, and returns PageSpeed scores, a list of... |

### `pagespeedonline.pagespeedapi.runpagespeed`

**GET** `pagespeedonline/v5/runPagespeed`

Runs PageSpeed analysis on the page at the specified URL, and returns PageSpeed scores, a list of suggestions to make that page faster, and other information.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `url` | `string` | query | Yes | Required. The URL to fetch and analyze |
| `captchaToken` | `string` | query | No | The captcha token passed when filling out a captcha. |
| `category` | `string` | query | No | A Lighthouse category to run; if none are given, only Performance category will be run |
| `locale` | `string` | query | No | The locale used to localize formatted results |
| `strategy` | `string` | query | No | The analysis strategy (desktop or mobile) to use, and desktop is the default |
| `utm_campaign` | `string` | query | No | Campaign name for analytics. |
| `utm_source` | `string` | query | No | Campaign source for analytics. |

**Response**: `PagespeedApiPagespeedResponseV5`

```typescript
const res = await pagespeedonline.pagespeedapi.runpagespeed({
  // parameters
});
```

**Required scopes:**
- `openid`

---

## Schemas

### `AuditRefs`

A light reference to an audit by id, used to group and weight audits in a given category.

| Property | Type | Description |
|----------|------|-------------|
| `acronym` | `string` | The conventional acronym for the audit/metric. |
| `group` | `string` | The category group that the audit belongs to (optional). |
| `id` | `string` | The audit ref id. |
| `relevantAudits` | `array<string>` | Any audit IDs closely relevant to this one. |
| `weight` | `number` | The weight this audit's score has on the overall category score. |

### `Bucket`

A proportion of data in the total distribution, bucketed by a min/max percentage. Each bucket's range is bounded by min <= x < max, In millisecond.

| Property | Type | Description |
|----------|------|-------------|
| `max` | `integer` | Upper bound for a bucket's range. |
| `min` | `integer` | Lower bound for a bucket's range. |
| `proportion` | `number` | The proportion of data in this bucket. |

### `Categories`

The categories in a Lighthouse run.

| Property | Type | Description |
|----------|------|-------------|
| `accessibility` | `LighthouseCategoryV5` | The accessibility category, containing all accessibility related audits. |
| `best-practices` | `LighthouseCategoryV5` | The best practices category, containing all best practices related audits. |
| `performance` | `LighthouseCategoryV5` | The performance category, containing all performance related audits. |
| `pwa` | `LighthouseCategoryV5` | The Progressive-Web-App (PWA) category, containing all pwa related audits. This is deprecated in ... |
| `seo` | `LighthouseCategoryV5` | The Search-Engine-Optimization (SEO) category, containing all seo related audits. |

### `CategoryGroupV5`

Message containing a category

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of what the category is grouping |
| `title` | `string` | The human readable title of the group |

### `ConfigSettings`

Message containing the configuration settings for the Lighthouse run.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | How Lighthouse was run, e.g. from the Chrome extension or from the npm module. |
| `emulatedFormFactor` | `string` | The form factor the emulation should use. This field is deprecated, form_factor should be used in... |
| `formFactor` | `string` | How Lighthouse should interpret this run in regards to scoring performance metrics and skipping m... |
| `locale` | `string` | The locale setting. |
| `onlyCategories` | `any` | List of categories of audits the run should conduct. |

### `Environment`

Message containing environment configuration for a Lighthouse run.

| Property | Type | Description |
|----------|------|-------------|
| `benchmarkIndex` | `number` | The benchmark index number that indicates rough device class. |
| `credits` | `object` | The version of libraries with which these results were generated. Ex: axe-core. |
| `hostUserAgent` | `string` | The user agent string of the version of Chrome used. |
| `networkUserAgent` | `string` | The user agent string that was sent over the network. |

### `I18n`

Message containing the i18n data for the LHR - Version 1.

| Property | Type | Description |
|----------|------|-------------|
| `rendererFormattedStrings` | `RendererFormattedStrings` | Internationalized strings that are formatted to the locale in configSettings. |

### `LhrEntity`

Message containing an Entity.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Optional. An optional category name for the entity. |
| `homepage` | `string` | Optional. An optional homepage URL of the entity. |
| `isFirstParty` | `boolean` | Optional. An optional flag indicating if the entity is the first party. |
| `isUnrecognized` | `boolean` | Optional. An optional flag indicating if the entity is not recognized. |
| `name` | `string` | Required. Name of the entity. |
| `origins` | `array<string>` | Required. A list of URL origin strings that belong to this entity. |

### `LighthouseAuditResultV5`

An audit's result object in a Lighthouse result.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the audit. |
| `details` | `object` | Freeform details section of the audit. |
| `displayValue` | `string` | The value that should be displayed on the UI for this audit. |
| `errorMessage` | `string` | An error message from a thrown error inside the audit. |
| `explanation` | `string` | An explanation of the errors in the audit. |
| `id` | `string` | The audit's id. |
| `metricSavings` | `MetricSavings` | The metric savings of the audit. |
| `numericUnit` | `string` | The unit of the numeric_value field. Used to format the numeric value for display. |
| `numericValue` | `number` | A numeric value that has a meaning specific to the audit, e.g. the number of nodes in the DOM or ... |
| `score` | `any` | The score of the audit, can be null. |
| `scoreDisplayMode` | `string` | The enumerated score display mode. |
| `title` | `string` | The human readable title. |
| `warnings` | `any` | Possible warnings that occurred in the audit, can be null. |

### `LighthouseCategoryV5`

A Lighthouse category.

| Property | Type | Description |
|----------|------|-------------|
| `auditRefs` | `array<AuditRefs>` | An array of references to all the audit members of this category. |
| `description` | `string` | A more detailed description of the category and its importance. |
| `id` | `string` | The string identifier of the category. |
| `manualDescription` | `string` | A description for the manual audits in the category. |
| `score` | `any` | The overall score of the category, the weighted average of all its audits. (The category's score,... |
| `title` | `string` | The human-friendly name of the category. |

### `LighthouseResultV5`

The Lighthouse result object.

| Property | Type | Description |
|----------|------|-------------|
| `audits` | `object` | Map of audits in the LHR. |
| `categories` | `Categories` | Map of categories in the LHR. |
| `categoryGroups` | `object` | Map of category groups in the LHR. |
| `configSettings` | `ConfigSettings` | The configuration settings for this LHR. |
| `entities` | `array<LhrEntity>` | Entity classification data. |
| `environment` | `Environment` | Environment settings that were used when making this LHR. |
| `fetchTime` | `string` | The time that this run was fetched. |
| `finalDisplayedUrl` | `string` | URL displayed on the page after Lighthouse finishes. |
| `finalUrl` | `string` | The final resolved url that was audited. |
| `fullPageScreenshot` | `any` | Screenshot data of the full page, along with node rects relevant to the audit results. |
| `i18n` | `I18n` | The internationalization strings that are required to render the LHR. |
| `lighthouseVersion` | `string` | The lighthouse version that was used to generate this LHR. |
| `mainDocumentUrl` | `string` | URL of the main document request of the final navigation. |
| `requestedUrl` | `string` | The original requested url. |
| `runWarnings` | `array<any>` | List of all run warnings in the LHR. Will always output to at least `[]`. |
| `runtimeError` | `RuntimeError` | A top-level error message that, if present, indicates a serious enough problem that this Lighthou... |
| `stackPacks` | `array<StackPack>` | The Stack Pack advice strings. |
| `timing` | `Timing` | Timing information for this LHR. |
| `userAgent` | `string` | The user agent that was used to run this LHR. |

### `MetricSavings`

The metric savings of the audit.

| Property | Type | Description |
|----------|------|-------------|
| `CLS` | `number` | Optional. Optional numeric value representing the audit's savings for the CLS metric. |
| `FCP` | `number` | Optional. Optional numeric value representing the audit's savings for the FCP metric. |
| `INP` | `number` | Optional. Optional numeric value representing the audit's savings for the INP metric. |
| `LCP` | `number` | Optional. Optional numeric value representing the audit's savings for the LCP metric. |
| `TBT` | `number` | Optional. Optional numeric value representing the audit's savings for the TBT metric. |

### `PagespeedApiLoadingExperienceV5`

The CrUX loading experience object that contains CrUX data breakdowns.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The url, pattern or origin which the metrics are on. |
| `initial_url` | `string` | The requested URL, which may differ from the resolved "id". |
| `metrics` | `object` | The map of . |
| `origin_fallback` | `boolean` | True if the result is an origin fallback from a page, false otherwise. |
| `overall_category` | `string` | The human readable speed "category" of the id. |

### `PagespeedApiPagespeedResponseV5`

The Pagespeed API response object.

| Property | Type | Description |
|----------|------|-------------|
| `analysisUTCTimestamp` | `string` | The UTC timestamp of this analysis. |
| `captchaResult` | `string` | The captcha verify result |
| `id` | `string` | Canonicalized and final URL for the document, after following page redirects (if any). |
| `kind` | `string` | Kind of result. |
| `lighthouseResult` | `LighthouseResultV5` | Lighthouse response for the audit url as an object. |
| `loadingExperience` | `PagespeedApiLoadingExperienceV5` | Metrics of end users' page loading experience. |
| `originLoadingExperience` | `PagespeedApiLoadingExperienceV5` | Metrics of the aggregated page loading experience of the origin |
| `version` | `PagespeedVersion` | The version of PageSpeed used to generate these results. |

### `PagespeedVersion`

The Pagespeed Version object.

| Property | Type | Description |
|----------|------|-------------|
| `major` | `string` | The major version number of PageSpeed used to generate these results. |
| `minor` | `string` | The minor version number of PageSpeed used to generate these results. |

### `RendererFormattedStrings`

Message holding the formatted strings used in the renderer.

| Property | Type | Description |
|----------|------|-------------|
| `auditGroupExpandTooltip` | `string` | The tooltip text on an expandable chevron icon. |
| `calculatorLink` | `string` | Text link pointing to the Lighthouse scoring calculator. This link immediately follows a sentence... |
| `crcInitialNavigation` | `string` | The label for the initial request in a critical request chain. |
| `crcLongestDurationLabel` | `string` | The label for values shown in the summary of critical request chains. |
| `dropdownCopyJSON` | `string` | Option in a dropdown menu that copies the Lighthouse JSON object to the system clipboard. |
| `dropdownDarkTheme` | `string` | Option in a dropdown menu that toggles the themeing of the report between Light(default) and Dark... |
| `dropdownPrintExpanded` | `string` | Option in a dropdown menu that opens a full Lighthouse report in a print dialog. |
| `dropdownPrintSummary` | `string` | Option in a dropdown menu that opens a small, summary report in a print dialog. |
| `dropdownSaveGist` | `string` | Option in a dropdown menu that saves the current report as a new GitHub Gist. |
| `dropdownSaveHTML` | `string` | Option in a dropdown menu that saves the Lighthouse report HTML locally to the system as a '.html... |
| `dropdownSaveJSON` | `string` | Option in a dropdown menu that saves the Lighthouse JSON object to the local system as a '.json' ... |
| `dropdownViewer` | `string` | Option in a dropdown menu that opens the current report in the Lighthouse Viewer Application. |
| `errorLabel` | `string` | The label shown next to an audit or metric that has had an error. |
| `errorMissingAuditInfo` | `string` | The error string shown next to an erroring audit. |
| `footerIssue` | `string` | Label for button to create an issue against the Lighthouse GitHub project. |
| `labDataTitle` | `string` | The title of the lab data performance category. |
| `lsPerformanceCategoryDescription` | `string` | The disclaimer shown under performance explaining that the network can vary. |
| `manualAuditsGroupTitle` | `string` | The heading shown above a list of audits that were not computerd in the run. |
| `notApplicableAuditsGroupTitle` | `string` | The heading shown above a list of audits that do not apply to a page. |
| `opportunityResourceColumnLabel` | `string` | The heading for the estimated page load savings opportunity of an audit. |
| `opportunitySavingsColumnLabel` | `string` | The heading for the estimated page load savings of opportunity audits. |
| `passedAuditsGroupTitle` | `string` | The heading that is shown above a list of audits that are passing. |
| `runtimeDesktopEmulation` | `string` | Descriptive explanation for emulation setting when emulating a generic desktop form factor, as op... |
| `runtimeMobileEmulation` | `string` | Descriptive explanation for emulation setting when emulating a Nexus 5X mobile device. |
| `runtimeNoEmulation` | `string` | Descriptive explanation for emulation setting when no device emulation is set. |
| `runtimeSettingsAxeVersion` | `string` | Label for a row in a table that shows the version of the Axe library used |
| `runtimeSettingsBenchmark` | `string` | Label for a row in a table that shows the estimated CPU power of the machine running Lighthouse. ... |
| `runtimeSettingsCPUThrottling` | `string` | Label for a row in a table that describes the CPU throttling conditions that were used during a L... |
| `runtimeSettingsChannel` | `string` | Label for a row in a table that shows in what tool Lighthouse is being run (e.g. The lighthouse C... |
| `runtimeSettingsDevice` | `string` | Label for a row in a table that describes the kind of device that was emulated for the Lighthouse... |
| `runtimeSettingsFetchTime` | `string` | Label for a row in a table that shows the time at which a Lighthouse run was conducted; formatted... |
| `runtimeSettingsNetworkThrottling` | `string` | Label for a row in a table that describes the network throttling conditions that were used during... |
| `runtimeSettingsTitle` | `string` | Title of the Runtime settings table in a Lighthouse report. Runtime settings are the environment ... |
| `runtimeSettingsUA` | `string` | Label for a row in a table that shows the User Agent that was detected on the Host machine that r... |
| `runtimeSettingsUANetwork` | `string` | Label for a row in a table that shows the User Agent that was used to send out all network reques... |
| `runtimeSettingsUrl` | `string` | Label for a row in a table that shows the URL that was audited during a Lighthouse run. |
| `runtimeUnknown` | `string` | Descriptive explanation for a runtime setting that is set to an unknown value. |
| `scorescaleLabel` | `string` | The label that explains the score gauges scale (0-49, 50-89, 90-100). |
| `showRelevantAudits` | `string` | Label preceding a radio control for filtering the list of audits. The radio choices are various p... |
| `snippetCollapseButtonLabel` | `string` | The label for the button to show only a few lines of a snippet |
| `snippetExpandButtonLabel` | `string` | The label for the button to show all lines of a snippet |
| `thirdPartyResourcesLabel` | `string` | This label is for a filter checkbox above a table of items |
| `throttlingProvided` | `string` | Descriptive explanation for environment throttling that was provided by the runtime environment i... |
| `toplevelWarningsMessage` | `string` | The label shown preceding important warnings that may have invalidated an entire report. |
| `varianceDisclaimer` | `string` | The disclaimer shown below a performance metric value. |
| `viewTreemapLabel` | `string` | Label for a button that opens the Treemap App |
| `warningAuditsGroupTitle` | `string` | The heading that is shown above a list of audits that have warnings |
| `warningHeader` | `string` | The label shown above a bulleted list of warnings. |

### `RuntimeError`

Message containing a runtime error config.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The enumerated Lighthouse Error code. |
| `message` | `string` | A human readable message explaining the error code. |

### `StackPack`

Message containing Stack Pack information.

| Property | Type | Description |
|----------|------|-------------|
| `descriptions` | `object` | The stack pack advice strings. |
| `iconDataURL` | `string` | The stack pack icon data uri. |
| `id` | `string` | The stack pack id. |
| `title` | `string` | The stack pack title. |

### `Timing`

Message containing the performance timing data for the Lighthouse run.

| Property | Type | Description |
|----------|------|-------------|
| `total` | `number` | The total duration of Lighthouse's run. |

### `UserPageLoadMetricV5`

A CrUX metric object for a single metric and form factor.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | The category of the specific time metric. |
| `distributions` | `array<Bucket>` | Metric distributions. Proportions should sum up to 1. |
| `formFactor` | `string` | Identifies the form factor of the metric being collected. |
| `median` | `integer` | The median number of the metric, in millisecond. |
| `metricId` | `string` | Identifies the type of the metric. |
| `percentile` | `integer` | We use this field to store certain percentile value for this metric. For v4, this field contains ... |

