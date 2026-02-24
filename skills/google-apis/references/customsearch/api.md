# Custom Search API - API Reference

**Version**: `v1` | **Methods**: 2 | **Schemas**: 3

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `search.cse.list` | GET | `customsearch/v1` | Returns metadata about the search performed, metadata about the engine used for the search, and t... |
| `search.cse.siterestrict.list` | GET | `customsearch/v1/siterestrict` | Returns metadata about the search performed, metadata about the engine used for the search, and t... |

### `search.cse.list`

**GET** `customsearch/v1`

Returns metadata about the search performed, metadata about the engine used for the search, and the search results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `c2coff` | `string` | query | No | Enables or disables [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/json... |
| `cr` | `string` | query | No | Restricts search results to documents originating in a particular country. You may use [Boolean operators](https://de... |
| `cx` | `string` | query | No | The Programmable Search Engine ID to use for this request. |
| `dateRestrict` | `string` | query | No | Restricts results to URLs based on date. Supported values include: * `d[number]`: requests results from the specified... |
| `enableAlternateSearchHandler` | `boolean` | query | No | Optional. Enables routing of Programmable Search Engine requests to an alternate search handler. |
| `exactTerms` | `string` | query | No | Identifies a phrase that all documents in the search results must contain. |
| `excludeTerms` | `string` | query | No | Identifies a word or phrase that should not appear in any documents in the search results. |
| `fileType` | `string` | query | No | Restricts results to files of a specified extension. A list of file types indexable by Google can be found in Search ... |
| `filter` | `string` | query | No | Controls turning on or off the duplicate content filter. * See [Automatic Filtering](https://developers.google.com/cu... |
| `gl` | `string` | query | No | Geolocation of end user. * The `gl` parameter value is a two-letter country code. The `gl` parameter boosts search re... |
| `googlehost` | `string` | query | No | **Deprecated**. Use the `gl` parameter for a similar effect. The local Google domain (for example, google.com, google... |
| `highRange` | `string` | query | No | Specifies the ending value for a search range. * Use `lowRange` and `highRange` to append an inclusive search range o... |
| `hl` | `string` | query | No | Sets the user interface language. * Explicitly setting this parameter improves the performance and the quality of you... |
| `hq` | `string` | query | No | Appends the specified query terms to the query, as if they were combined with a logical AND operator. |
| `imgColorType` | `string` | query | No | Returns black and white, grayscale, transparent, or color images. Acceptable values are: * `"color"` * `"gray"` * `"m... |
| `imgDominantColor` | `string` | query | No | Returns images of a specific dominant color. Acceptable values are: * `"black"` * `"blue"` * `"brown"` * `"gray"` * `... |
| `imgSize` | `string` | query | No | Returns images of a specified size. Acceptable values are: * `"huge"` * `"icon"` * `"large"` * `"medium"` * `"small"`... |
| `imgType` | `string` | query | No | Returns images of a type. Acceptable values are: * `"clipart"` * `"face"` * `"lineart"` * `"stock"` * `"photo"` * `"a... |
| `linkSite` | `string` | query | No | Specifies that all search results should contain a link to a particular URL. |
| `lowRange` | `string` | query | No | Specifies the starting value for a search range. Use `lowRange` and `highRange` to append an inclusive search range o... |
| `lr` | `string` | query | No | Restricts the search to documents written in a particular language (e.g., `lr=lang_ja`). Acceptable values are: * `"l... |
| `num` | `integer` | query | No | Number of search results to return. * Valid values are integers between 1 and 10, inclusive. |
| `orTerms` | `string` | query | No | Provides additional search terms to check for in a document, where each document in the search results must contain a... |
| `q` | `string` | query | No | Query |
| `relatedSite` | `string` | query | No | Deprecated. |
| `rights` | `string` | query | No | Filters based on licensing. Supported values include: `cc_publicdomain`, `cc_attribute`, `cc_sharealike`, `cc_noncomm... |
| `safe` | `string` | query | No | Search safety level. Acceptable values are: * `"active"`: Enables SafeSearch filtering. * `"off"`: Disables SafeSearc... |
| `searchType` | `string` | query | No | Specifies the search type: `image`. If unspecified, results are limited to webpages. Acceptable values are: * `"image... |
| `siteSearch` | `string` | query | No | Specifies a given site which should always be included or excluded from results (see `siteSearchFilter` parameter, be... |
| `siteSearchFilter` | `string` | query | No | Controls whether to include or exclude results from the site named in the `siteSearch` parameter. Acceptable values a... |
| `snippetLength` | `integer` | query | No | Optional. Maximum length of snippet text, in characters, to be returned with results. Note: this feature is limited t... |
| `sort` | `string` | query | No | The sort expression to apply to the results. The sort parameter specifies that the results be sorted according to the... |
| `start` | `integer` | query | No | The index of the first result to return. The default number of results per page is 10, so `&start=11` would start at ... |

**Response**: `Search`

```typescript
const res = await customsearch.cse.list({
  // parameters
});
```

---

### `search.cse.siterestrict.list`

**GET** `customsearch/v1/siterestrict`

Returns metadata about the search performed, metadata about the engine used for the search, and the search results. Uses a small set of url patterns.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `c2coff` | `string` | query | No | Enables or disables [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/json... |
| `cr` | `string` | query | No | Restricts search results to documents originating in a particular country. You may use [Boolean operators](https://de... |
| `cx` | `string` | query | No | The Programmable Search Engine ID to use for this request. |
| `dateRestrict` | `string` | query | No | Restricts results to URLs based on date. Supported values include: * `d[number]`: requests results from the specified... |
| `enableAlternateSearchHandler` | `boolean` | query | No | Optional. Enables routing of Programmable Search Engine requests to an alternate search handler. |
| `exactTerms` | `string` | query | No | Identifies a phrase that all documents in the search results must contain. |
| `excludeTerms` | `string` | query | No | Identifies a word or phrase that should not appear in any documents in the search results. |
| `fileType` | `string` | query | No | Restricts results to files of a specified extension. A list of file types indexable by Google can be found in Search ... |
| `filter` | `string` | query | No | Controls turning on or off the duplicate content filter. * See [Automatic Filtering](https://developers.google.com/cu... |
| `gl` | `string` | query | No | Geolocation of end user. * The `gl` parameter value is a two-letter country code. The `gl` parameter boosts search re... |
| `googlehost` | `string` | query | No | **Deprecated**. Use the `gl` parameter for a similar effect. The local Google domain (for example, google.com, google... |
| `highRange` | `string` | query | No | Specifies the ending value for a search range. * Use `lowRange` and `highRange` to append an inclusive search range o... |
| `hl` | `string` | query | No | Sets the user interface language. * Explicitly setting this parameter improves the performance and the quality of you... |
| `hq` | `string` | query | No | Appends the specified query terms to the query, as if they were combined with a logical AND operator. |
| `imgColorType` | `string` | query | No | Returns black and white, grayscale, transparent, or color images. Acceptable values are: * `"color"` * `"gray"` * `"m... |
| `imgDominantColor` | `string` | query | No | Returns images of a specific dominant color. Acceptable values are: * `"black"` * `"blue"` * `"brown"` * `"gray"` * `... |
| `imgSize` | `string` | query | No | Returns images of a specified size. Acceptable values are: * `"huge"` * `"icon"` * `"large"` * `"medium"` * `"small"`... |
| `imgType` | `string` | query | No | Returns images of a type. Acceptable values are: * `"clipart"` * `"face"` * `"lineart"` * `"stock"` * `"photo"` * `"a... |
| `linkSite` | `string` | query | No | Specifies that all search results should contain a link to a particular URL. |
| `lowRange` | `string` | query | No | Specifies the starting value for a search range. Use `lowRange` and `highRange` to append an inclusive search range o... |
| `lr` | `string` | query | No | Restricts the search to documents written in a particular language (e.g., `lr=lang_ja`). Acceptable values are: * `"l... |
| `num` | `integer` | query | No | Number of search results to return. * Valid values are integers between 1 and 10, inclusive. |
| `orTerms` | `string` | query | No | Provides additional search terms to check for in a document, where each document in the search results must contain a... |
| `q` | `string` | query | No | Query |
| `relatedSite` | `string` | query | No | Deprecated. |
| `rights` | `string` | query | No | Filters based on licensing. Supported values include: `cc_publicdomain`, `cc_attribute`, `cc_sharealike`, `cc_noncomm... |
| `safe` | `string` | query | No | Search safety level. Acceptable values are: * `"active"`: Enables SafeSearch filtering. * `"off"`: Disables SafeSearc... |
| `searchType` | `string` | query | No | Specifies the search type: `image`. If unspecified, results are limited to webpages. Acceptable values are: * `"image... |
| `siteSearch` | `string` | query | No | Specifies a given site which should always be included or excluded from results (see `siteSearchFilter` parameter, be... |
| `siteSearchFilter` | `string` | query | No | Controls whether to include or exclude results from the site named in the `siteSearch` parameter. Acceptable values a... |
| `snippetLength` | `integer` | query | No | Optional. Maximum length of snippet text, in characters, to be returned with results. Note: this feature is limited t... |
| `sort` | `string` | query | No | The sort expression to apply to the results. The sort parameter specifies that the results be sorted according to the... |
| `start` | `integer` | query | No | The index of the first result to return. The default number of results per page is 10, so `&start=11` would start at ... |

**Response**: `Search`

```typescript
const res = await customsearch.siterestrict.list({
  // parameters
});
```

---

## Schemas

### `Promotion`

Promotion result.

| Property | Type | Description |
|----------|------|-------------|
| `bodyLines` | `array<object>` | An array of block objects for this promotion. |
| `displayLink` | `string` | An abridged version of this search's result URL, e.g. www.example.com. |
| `htmlTitle` | `string` | The title of the promotion, in HTML. |
| `image` | `object` | Image belonging to a promotion. |
| `link` | `string` | The URL of the promotion. |
| `title` | `string` | The title of the promotion. |

### `Result`

A custom search result.

| Property | Type | Description |
|----------|------|-------------|
| `cacheId` | `string` | Indicates the ID of Google's cached version of the search result. |
| `displayLink` | `string` | An abridged version of this search result’s URL, e.g. www.example.com. |
| `fileFormat` | `string` | The file format of the search result. |
| `formattedUrl` | `string` | The URL displayed after the snippet for each search result. |
| `htmlFormattedUrl` | `string` | The HTML-formatted URL displayed after the snippet for each search result. |
| `htmlSnippet` | `string` | The snippet of the search result, in HTML. |
| `htmlTitle` | `string` | The title of the search result, in HTML. |
| `image` | `object` | Image belonging to a custom search result. |
| `kind` | `string` | A unique identifier for the type of current object. For this API, it is `customsearch#result.` |
| `labels` | `array<object>` | Encapsulates all information about refinement labels. |
| `link` | `string` | The full URL to which the search result is pointing, e.g. http://www.example.com/foo/bar. |
| `mime` | `string` | The MIME type of the search result. |
| `pagemap` | `object` | Contains [PageMap](https://developers.google.com/custom-search/docs/structured_data#pagemaps) inf... |
| `snippet` | `string` | The snippet of the search result, in plain text. |
| `title` | `string` | The title of the search result, in plain text. |

### `Search`

Response to a custom search request.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `object` | Metadata and refinements associated with the given search engine, including: * The name of the se... |
| `items` | `array<Result>` | The current set of custom search results. |
| `kind` | `string` | Unique identifier for the type of current object. For this API, it is customsearch#search. |
| `promotions` | `array<Promotion>` | The set of [promotions](https://developers.google.com/custom-search/docs/promotions). Present onl... |
| `queries` | `object` | Query metadata for the previous, current, and next pages of results. |
| `searchInformation` | `object` | Metadata about a search operation. |
| `spelling` | `object` | Spell correction information for a query. |
| `url` | `object` | OpenSearch template and URL. |

