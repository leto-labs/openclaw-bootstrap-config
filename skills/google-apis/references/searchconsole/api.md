# Google Search Console API - API Reference

**Version**: `v1` | **Methods**: 11 | **Schemas**: 30

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `searchconsole.urlInspection.index.inspect` | POST | `v1/urlInspection/index:inspect` | Index inspection. |
| `webmasters.searchanalytics.query` | POST | `webmasters/v3/sites/{siteUrl}/searchAnalytics/query` | Query your data with filters and parameters that you define. Returns zero or more rows grouped by... |
| `searchconsole.urlTestingTools.mobileFriendlyTest.run` | POST | `v1/urlTestingTools/mobileFriendlyTest:run` | Runs Mobile-Friendly Test for a given URL. |
| `webmasters.sitemaps.delete` | DELETE | `webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}` | Deletes a sitemap from the Sitemaps report. Does not stop Google from crawling this sitemap or th... |
| `webmasters.sitemaps.get` | GET | `webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}` | Retrieves information about a specific sitemap. |
| `webmasters.sitemaps.list` | GET | `webmasters/v3/sites/{siteUrl}/sitemaps` | Lists the [sitemaps-entries](/webmaster-tools/v3/sitemaps) submitted for this site, or included i... |
| `webmasters.sitemaps.submit` | PUT | `webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}` | Submits a sitemap for a site. |
| `webmasters.sites.delete` | DELETE | `webmasters/v3/sites/{siteUrl}` | Removes a site from the set of the user's Search Console sites. |
| `webmasters.sites.get` | GET | `webmasters/v3/sites/{siteUrl}` | Retrieves information about specific site. |
| `webmasters.sites.list` | GET | `webmasters/v3/sites` | Lists the user's Search Console sites. |
| `webmasters.sites.add` | PUT | `webmasters/v3/sites/{siteUrl}` | Adds a site to the set of the user's sites in Search Console. |

### `searchconsole.urlInspection.index.inspect`

**POST** `v1/urlInspection/index:inspect`

Index inspection.

**Request body**: `InspectUrlIndexRequest`

**Response**: `InspectUrlIndexResponse`

```typescript
const res = await searchconsole.index.inspect({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/webmasters`
- `https://www.googleapis.com/auth/webmasters.readonly`

---

### `webmasters.searchanalytics.query`

**POST** `webmasters/v3/sites/{siteUrl}/searchAnalytics/query`

Query your data with filters and parameters that you define. Returns zero or more rows grouped by the row keys that you define. You must define a date range of one or more days. When date is one of the group by values, any days without data are omitted from the result list. If you need to know which days have data, issue a broad date range query grouped by date for any metric, and see which day rows are returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteUrl` | `string` | path | Yes | The site's URL, including protocol. For example: `http://www.example.com/`. |

**Request body**: `SearchAnalyticsQueryRequest`

**Response**: `SearchAnalyticsQueryResponse`

```typescript
const res = await searchconsole.searchanalytics.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/webmasters`
- `https://www.googleapis.com/auth/webmasters.readonly`

---

### `searchconsole.urlTestingTools.mobileFriendlyTest.run`

**POST** `v1/urlTestingTools/mobileFriendlyTest:run`

Runs Mobile-Friendly Test for a given URL.

**Request body**: `RunMobileFriendlyTestRequest`

**Response**: `RunMobileFriendlyTestResponse`

```typescript
const res = await searchconsole.mobileFriendlyTest.run({
  // parameters
});
```

---

### `webmasters.sitemaps.delete`

**DELETE** `webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}`

Deletes a sitemap from the Sitemaps report. Does not stop Google from crawling this sitemap or the URLs that were previously crawled in the deleted sitemap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteUrl` | `string` | path | Yes | The site's URL, including protocol. For example: `http://www.example.com/`. |
| `feedpath` | `string` | path | Yes | The URL of the actual sitemap. For example: `http://www.example.com/sitemap.xml`. |

```typescript
const res = await searchconsole.sitemaps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/webmasters`

---

### `webmasters.sitemaps.get`

**GET** `webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}`

Retrieves information about a specific sitemap.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteUrl` | `string` | path | Yes | The site's URL, including protocol. For example: `http://www.example.com/`. |
| `feedpath` | `string` | path | Yes | The URL of the actual sitemap. For example: `http://www.example.com/sitemap.xml`. |

**Response**: `WmxSitemap`

```typescript
const res = await searchconsole.sitemaps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/webmasters`
- `https://www.googleapis.com/auth/webmasters.readonly`

---

### `webmasters.sitemaps.list`

**GET** `webmasters/v3/sites/{siteUrl}/sitemaps`

Lists the [sitemaps-entries](/webmaster-tools/v3/sitemaps) submitted for this site, or included in the sitemap index file (if `sitemapIndex` is specified in the request).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteUrl` | `string` | path | Yes | The site's URL, including protocol. For example: `http://www.example.com/`. |
| `sitemapIndex` | `string` | query | No | A URL of a site's sitemap index. For example: `http://www.example.com/sitemapindex.xml`. |

**Response**: `SitemapsListResponse`

```typescript
const res = await searchconsole.sitemaps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/webmasters`
- `https://www.googleapis.com/auth/webmasters.readonly`

---

### `webmasters.sitemaps.submit`

**PUT** `webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}`

Submits a sitemap for a site.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteUrl` | `string` | path | Yes | The site's URL, including protocol. For example: `http://www.example.com/`. |
| `feedpath` | `string` | path | Yes | The URL of the actual sitemap. For example: `http://www.example.com/sitemap.xml`. |

```typescript
const res = await searchconsole.sitemaps.submit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/webmasters`

---

### `webmasters.sites.delete`

**DELETE** `webmasters/v3/sites/{siteUrl}`

Removes a site from the set of the user's Search Console sites.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteUrl` | `string` | path | Yes | The URI of the property as defined in Search Console. **Examples:** `http://www.example.com/` or `sc-domain:example.c... |

```typescript
const res = await searchconsole.sites.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/webmasters`

---

### `webmasters.sites.get`

**GET** `webmasters/v3/sites/{siteUrl}`

Retrieves information about specific site.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteUrl` | `string` | path | Yes | The URI of the property as defined in Search Console. **Examples:** `http://www.example.com/` or `sc-domain:example.c... |

**Response**: `WmxSite`

```typescript
const res = await searchconsole.sites.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/webmasters`
- `https://www.googleapis.com/auth/webmasters.readonly`

---

### `webmasters.sites.list`

**GET** `webmasters/v3/sites`

Lists the user's Search Console sites.

**Response**: `SitesListResponse`

```typescript
const res = await searchconsole.sites.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/webmasters`
- `https://www.googleapis.com/auth/webmasters.readonly`

---

### `webmasters.sites.add`

**PUT** `webmasters/v3/sites/{siteUrl}`

Adds a site to the set of the user's sites in Search Console.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `siteUrl` | `string` | path | Yes | The URL of the site to add. |

```typescript
const res = await searchconsole.sites.add({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/webmasters`

---

## Schemas

### `AmpInspectionResult`

AMP inspection result of the live page or the current information from Google's index, depending on whether you requested a live inspection or not.

| Property | Type | Description |
|----------|------|-------------|
| `ampIndexStatusVerdict` | `string` | Index status of the AMP URL. |
| `ampUrl` | `string` | URL of the AMP that was inspected. If the submitted URL is a desktop page that refers to an AMP v... |
| `indexingState` | `string` | Whether or not the page blocks indexing through a noindex rule. |
| `issues` | `array<AmpIssue>` | A list of zero or more AMP issues found for the inspected URL. |
| `lastCrawlTime` | `string` | Last time this AMP version was crawled by Google. Absent if the URL was never crawled successfully. |
| `pageFetchState` | `string` | Whether or not Google could fetch the AMP. |
| `robotsTxtState` | `string` | Whether or not the page is blocked to Google by a robots.txt rule. |
| `verdict` | `string` | The status of the most severe error on the page. If a page has both warnings and errors, the page... |

### `AmpIssue`

AMP issue.

| Property | Type | Description |
|----------|------|-------------|
| `issueMessage` | `string` | Brief description of this issue. |
| `severity` | `string` | Severity of this issue: WARNING or ERROR. |

### `ApiDataRow`

| Property | Type | Description |
|----------|------|-------------|
| `clicks` | `number` |  |
| `ctr` | `number` |  |
| `impressions` | `number` |  |
| `keys` | `array<string>` |  |
| `position` | `number` |  |

### `ApiDimensionFilter`

A filter test to be applied to each row in the data set, where a match can return the row. Filters are string comparisons, and values and dimension names are not case-sensitive. Individual filters are either AND'ed or OR'ed within their parent filter group, according to the group's group type. You do not need to group by a specified dimension to filter against it.

| Property | Type | Description |
|----------|------|-------------|
| `dimension` | `string` |  |
| `expression` | `string` |  |
| `operator` | `string` |  |

### `ApiDimensionFilterGroup`

A set of dimension value filters to test against each row. Only rows that pass all filter groups will be returned. All results within a filter group are either AND'ed or OR'ed together, depending on the group type selected. All filter groups are AND'ed together.

| Property | Type | Description |
|----------|------|-------------|
| `filters` | `array<ApiDimensionFilter>` |  |
| `groupType` | `string` |  |

### `BlockedResource`

Blocked resource.

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | URL of the blocked resource. |

### `DetectedItems`

Rich Results items grouped by type.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Item>` | List of Rich Results items. |
| `richResultType` | `string` | Rich Results type |

### `Image`

Describe image data.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Image data in format determined by the mime type. Currently, the format will always be "image/png... |
| `mimeType` | `string` | The mime-type of the image data. |

### `IndexStatusInspectionResult`

Results of index status inspection for either the live page or the version in Google's index, depending on whether you requested a live inspection or not. For more information, see the [Index coverage report documentation](https://support.google.com/webmasters/answer/7440203).

| Property | Type | Description |
|----------|------|-------------|
| `coverageState` | `string` | Could Google find and index the page. More details about page indexing appear in 'indexing_state'. |
| `crawledAs` | `string` | Primary crawler that was used by Google to crawl your site. |
| `googleCanonical` | `string` | The URL of the page that Google selected as canonical. If the page was not indexed, this field is... |
| `indexingState` | `string` | Whether or not the page blocks indexing through a noindex rule. |
| `lastCrawlTime` | `string` | Last time this URL was crawled by Google using the [primary crawler](https://support.google.com/w... |
| `pageFetchState` | `string` | Whether or not Google could retrieve the page from your server. Equivalent to ["page fetch"](http... |
| `referringUrls` | `array<string>` | URLs that link to the inspected URL, directly and indirectly. |
| `robotsTxtState` | `string` | Whether or not the page is blocked to Google by a robots.txt rule. |
| `sitemap` | `array<string>` | Any sitemaps that this URL was listed in, as known by Google. Not guaranteed to be an exhaustive ... |
| `userCanonical` | `string` | The URL that your page or site [declares as canonical](https://developers.google.com/search/docs/... |
| `verdict` | `string` | High level verdict about whether the URL *is* indexed (indexed status), or *can be* indexed (live... |

### `InspectUrlIndexRequest`

Index inspection request.

| Property | Type | Description |
|----------|------|-------------|
| `inspectionUrl` | `string` | Required. URL to inspect. Must be under the property specified in "site_url". |
| `languageCode` | `string` | Optional. An [IETF BCP-47](https://en.wikipedia.org/wiki/IETF_language_tag) language code represe... |
| `siteUrl` | `string` | Required. The URL of the property as defined in Search Console. **Examples:** `http://www.example... |

### `InspectUrlIndexResponse`

Index-Status inspection response.

| Property | Type | Description |
|----------|------|-------------|
| `inspectionResult` | `UrlInspectionResult` | URL inspection results. |

### `Item`

A specific rich result found on the page.

| Property | Type | Description |
|----------|------|-------------|
| `issues` | `array<RichResultsIssue>` | A list of zero or more rich result issues found for this instance. |
| `name` | `string` | The user-provided name of this item. |

### `Metadata`

An object that may be returned with your query results, providing context about the state of the data. When you request recent data (using `all` or `hourly_all` for `dataState`), some of the rows returned may represent data that is incomplete, which means that the data is still being collected and processed. This metadata object helps you identify exactly when this starts and ends. All dates and times provided in this object are in the `America/Los_Angeles` time zone. The specific field returned within this object depends on how you've grouped your data in the request. See details in inner fields.

| Property | Type | Description |
|----------|------|-------------|
| `firstIncompleteDate` | `string` | The first date for which the data is still being collected and processed, presented in `YYYY-MM-D... |
| `firstIncompleteHour` | `string` | The first hour for which the data is still being collected and processed, presented in `YYYY-MM-D... |

### `MobileFriendlyIssue`

Mobile-friendly issue.

| Property | Type | Description |
|----------|------|-------------|
| `rule` | `string` | Rule violated. |

### `MobileUsabilityInspectionResult`

Mobile-usability inspection results.

| Property | Type | Description |
|----------|------|-------------|
| `issues` | `array<MobileUsabilityIssue>` | A list of zero or more mobile-usability issues detected for this URL. |
| `verdict` | `string` | High-level mobile-usability inspection result for this URL. |

### `MobileUsabilityIssue`

Mobile-usability issue.

| Property | Type | Description |
|----------|------|-------------|
| `issueType` | `string` | Mobile-usability issue type. |
| `message` | `string` | Additional information regarding the issue. |
| `severity` | `string` | Not returned; reserved for future use. |

### `ResourceIssue`

Information about a resource with issue.

| Property | Type | Description |
|----------|------|-------------|
| `blockedResource` | `BlockedResource` | Describes a blocked resource issue. |

### `RichResultsInspectionResult`

Rich-Results inspection result, including any rich results found at this URL.

| Property | Type | Description |
|----------|------|-------------|
| `detectedItems` | `array<DetectedItems>` | A list of zero or more rich results detected on this page. Rich results that cannot even be parse... |
| `verdict` | `string` | High-level rich results inspection result for this URL. |

### `RichResultsIssue`

Severity and status of a single issue affecting a single rich result instance on a page.

| Property | Type | Description |
|----------|------|-------------|
| `issueMessage` | `string` | Rich Results issue type. |
| `severity` | `string` | Severity of this issue: WARNING, or ERROR. Items with an issue of status ERROR cannot appear with... |

### `RunMobileFriendlyTestRequest`

Mobile-friendly test request.

| Property | Type | Description |
|----------|------|-------------|
| `requestScreenshot` | `boolean` | Whether or not screenshot is requested. Default is false. |
| `url` | `string` | URL for inspection. |

### `RunMobileFriendlyTestResponse`

Mobile-friendly test response, including mobile-friendly issues and resource issues.

| Property | Type | Description |
|----------|------|-------------|
| `mobileFriendliness` | `string` | Test verdict, whether the page is mobile friendly or not. |
| `mobileFriendlyIssues` | `array<MobileFriendlyIssue>` | List of mobile-usability issues. |
| `resourceIssues` | `array<ResourceIssue>` | Information about embedded resources issues. |
| `screenshot` | `Image` | Screenshot of the requested URL. |
| `testStatus` | `TestStatus` | Final state of the test, can be either complete or an error. |

### `SearchAnalyticsQueryRequest`

| Property | Type | Description |
|----------|------|-------------|
| `aggregationType` | `string` | [Optional; Default is \"auto\"] How data is aggregated. If aggregated by property, all data for t... |
| `dataState` | `string` | The data state to be fetched, can be full or all, the latter including full and partial data. |
| `dimensionFilterGroups` | `array<ApiDimensionFilterGroup>` | [Optional] Zero or more filters to apply to the dimension grouping values; for example, 'query co... |
| `dimensions` | `array<string>` | [Optional] Zero or more dimensions to group results by. Dimensions are the group-by values in the... |
| `endDate` | `string` | [Required] End date of the requested date range, in YYYY-MM-DD format, in PST (UTC - 8:00). Must ... |
| `rowLimit` | `integer` | [Optional; Default is 1000] The maximum number of rows to return. Must be a number from 1 to 25,0... |
| `searchType` | `string` | [Optional; Default is \"web\"] The search type to filter for. |
| `startDate` | `string` | [Required] Start date of the requested date range, in YYYY-MM-DD format, in PST time (UTC - 8:00)... |
| `startRow` | `integer` | [Optional; Default is 0] Zero-based index of the first row in the response. Must be a non-negativ... |
| `type` | `string` | Optional. [Optional; Default is \"web\"] Type of report: search type, or either Discover or Gnews. |

### `SearchAnalyticsQueryResponse`

A list of rows, one per result, grouped by key. Metrics in each row are aggregated for all data grouped by that key either by page or property, as specified by the aggregation type parameter.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `Metadata` | An object that may be returned with your query results, providing context about the state of the ... |
| `responseAggregationType` | `string` | How the results were aggregated. |
| `rows` | `array<ApiDataRow>` | A list of rows grouped by the key values in the order given in the query. |

### `SitemapsListResponse`

List of sitemaps.

| Property | Type | Description |
|----------|------|-------------|
| `sitemap` | `array<WmxSitemap>` | Contains detailed information about a specific URL submitted as a [sitemap](https://support.googl... |

### `SitesListResponse`

List of sites with access level information.

| Property | Type | Description |
|----------|------|-------------|
| `siteEntry` | `array<WmxSite>` | Contains permission level information about a Search Console site. For more information, see [Per... |

### `TestStatus`

Final state of the test, including error details if necessary.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Error details if applicable. |
| `status` | `string` | Status of the test. |

### `UrlInspectionResult`

URL inspection result, including all inspection results.

| Property | Type | Description |
|----------|------|-------------|
| `ampResult` | `AmpInspectionResult` | Result of the AMP analysis. Absent if the page is not an AMP page. |
| `indexStatusResult` | `IndexStatusInspectionResult` | Result of the index status analysis. |
| `inspectionResultLink` | `string` | Link to Search Console URL inspection. |
| `mobileUsabilityResult` | `MobileUsabilityInspectionResult` | Result of the Mobile usability analysis. |
| `richResultsResult` | `RichResultsInspectionResult` | Result of the Rich Results analysis. Absent if there are no rich results found. |

### `WmxSite`

Contains permission level information about a Search Console site. For more information, see [Permissions in Search Console](https://support.google.com/webmasters/answer/2451999).

| Property | Type | Description |
|----------|------|-------------|
| `permissionLevel` | `string` | The user's permission level for the site. |
| `siteUrl` | `string` | The URL of the site. |

### `WmxSitemap`

Contains detailed information about a specific URL submitted as a [sitemap](https://support.google.com/webmasters/answer/156184).

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `array<WmxSitemapContent>` | The various content types in the sitemap. |
| `errors` | `string` | Number of errors in the sitemap. These are issues with the sitemap itself that need to be fixed b... |
| `isPending` | `boolean` | If true, the sitemap has not been processed. |
| `isSitemapsIndex` | `boolean` | If true, the sitemap is a collection of sitemaps. |
| `lastDownloaded` | `string` | Date & time in which this sitemap was last downloaded. Date format is in RFC 3339 format (yyyy-mm... |
| `lastSubmitted` | `string` | Date & time in which this sitemap was submitted. Date format is in RFC 3339 format (yyyy-mm-dd). |
| `path` | `string` | The url of the sitemap. |
| `type` | `string` | The type of the sitemap. For example: `rssFeed`. |
| `warnings` | `string` | Number of warnings for the sitemap. These are generally non-critical issues with URLs in the site... |

### `WmxSitemapContent`

Information about the various content types in the sitemap.

| Property | Type | Description |
|----------|------|-------------|
| `indexed` | `string` | *Deprecated; do not use.* |
| `submitted` | `string` | The number of URLs in the sitemap (of the content type). |
| `type` | `string` | The specific type of content in this sitemap. For example: `web`. |

