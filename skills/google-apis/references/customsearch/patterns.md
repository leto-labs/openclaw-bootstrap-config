# Custom Search API - Common Patterns

## Web Search

Basic web search using the `cse.list` method. Requires an API key (`key`), a Programmable Search Engine ID (`cx`), and a search query (`q`).

```typescript
import { google } from 'googleapis';

const customsearch = google.customsearch('v1');

const res = await customsearch.cse.list({
  key: process.env.GOOGLE_API_KEY,
  cx: process.env.SEARCH_ENGINE_ID,
  q: 'machine learning tutorials',
});

const results = res.data.items || [];
for (const item of results) {
  console.log(`${item.title} - ${item.link}`);
  console.log(`  ${item.snippet}`);
}
```

### curl

```bash
curl "https://www.googleapis.com/customsearch/v1?key=YOUR_API_KEY&cx=YOUR_CX&q=machine+learning+tutorials"
```

## Image Search

Set `searchType=image` to search for images. Use `imgSize`, `imgType`, `imgColorType`, and `imgDominantColor` to refine results.

```typescript
const res = await customsearch.cse.list({
  key: process.env.GOOGLE_API_KEY,
  cx: process.env.SEARCH_ENGINE_ID,
  q: 'sunset over mountains',
  searchType: 'image',
  imgSize: 'large',
  imgType: 'photo',
  imgColorType: 'color',
});

for (const item of res.data.items || []) {
  console.log(`${item.title}`);
  console.log(`  Page: ${item.image?.contextLink}`);
  console.log(`  Image URL: ${item.link}`);
  console.log(`  Thumbnail: ${item.image?.thumbnailLink}`);
  console.log(`  Dimensions: ${item.image?.width}x${item.image?.height}`);
}
```

## Search with Site Restrictions

Use the `siterestrict.list` endpoint when your Programmable Search Engine is configured to search specific sites. This endpoint does not count against your daily query quota in the same way as `cse.list` (it uses a different quota pool).

```typescript
const res = await customsearch.cse.siterestrict.list({
  key: process.env.GOOGLE_API_KEY,
  cx: process.env.SEARCH_ENGINE_ID,
  q: 'API documentation',
});
```

Alternatively, use `siteSearch` and `siteSearchFilter` parameters on the standard `cse.list` to include or exclude a specific site:

```typescript
// Only include results from example.com
const res = await customsearch.cse.list({
  key: process.env.GOOGLE_API_KEY,
  cx: process.env.SEARCH_ENGINE_ID,
  q: 'product reviews',
  siteSearch: 'example.com',
  siteSearchFilter: 'i', // 'i' = include, 'e' = exclude
});
```

## Filtering by Date

Use the `dateRestrict` parameter to limit results by recency.

```typescript
// Results from the last 7 days
const res = await customsearch.cse.list({
  key: process.env.GOOGLE_API_KEY,
  cx: process.env.SEARCH_ENGINE_ID,
  q: 'breaking news',
  dateRestrict: 'd7', // d[N] = days, w[N] = weeks, m[N] = months, y[N] = years
});
```

Supported formats:
- `d[number]` -- results from the specified number of past days (e.g., `d3`)
- `w[number]` -- results from the specified number of past weeks
- `m[number]` -- results from the specified number of past months
- `y[number]` -- results from the specified number of past years

## Pagination

The API returns a maximum of 10 results per request. Use `start` to paginate through results. The API returns at most 100 results total per query (10 pages of 10).

```typescript
const allResults = [];
const RESULTS_PER_PAGE = 10;
const MAX_RESULTS = 100; // API hard limit

for (let start = 1; start <= MAX_RESULTS; start += RESULTS_PER_PAGE) {
  const res = await customsearch.cse.list({
    key: process.env.GOOGLE_API_KEY,
    cx: process.env.SEARCH_ENGINE_ID,
    q: 'typescript best practices',
    start,
    num: RESULTS_PER_PAGE,
  });

  const items = res.data.items || [];
  allResults.push(...items);

  // Stop if there is no next page
  const nextPage = res.data.queries?.nextPage;
  if (!nextPage || nextPage.length === 0) break;
}

console.log(`Fetched ${allResults.length} total results`);
```

You can also use the `queries.nextPage[0].startIndex` from the response to determine the next `start` value:

```typescript
const nextStart = res.data.queries?.nextPage?.[0]?.startIndex;
if (nextStart) {
  // Fetch next page with start=nextStart
}
```

## Getting Search Metadata

The response includes rich metadata about the search itself.

```typescript
const res = await customsearch.cse.list({
  key: process.env.GOOGLE_API_KEY,
  cx: process.env.SEARCH_ENGINE_ID,
  q: 'climate change research',
});

// Total results and search time
const info = res.data.searchInformation;
console.log(`About ${info?.formattedTotalResults} results (${info?.formattedSearchTime} seconds)`);

// Spelling suggestion
if (res.data.spelling) {
  console.log(`Did you mean: ${res.data.spelling.correctedQuery}`);
}

// Search engine context
console.log(`Engine: ${res.data.context?.title}`);

// Query metadata for current request
const currentQuery = res.data.queries?.request?.[0];
console.log(`Query: "${currentQuery?.searchTerms}", results ${currentQuery?.startIndex}-${(currentQuery?.startIndex || 0) + (currentQuery?.count || 0) - 1}`);
```

## Structured Data in Results (PageMap)

Search results may include structured data via the `pagemap` property, which contains metadata extracted from the page (Open Graph, schema.org, metatags, etc.).

```typescript
const res = await customsearch.cse.list({
  key: process.env.GOOGLE_API_KEY,
  cx: process.env.SEARCH_ENGINE_ID,
  q: 'best pizza recipe',
});

for (const item of res.data.items || []) {
  const pagemap = item.pagemap;
  if (!pagemap) continue;

  // Open Graph data
  const og = pagemap.opengraph?.[0];
  if (og) {
    console.log(`OG Title: ${og.title}, OG Image: ${og.image}`);
  }

  // Metatags
  const meta = pagemap.metatags?.[0];
  if (meta) {
    console.log(`Description: ${meta['og:description'] || meta.description}`);
  }

  // Schema.org structured data (e.g., Recipe, Product, Article)
  const recipe = pagemap.recipe?.[0];
  if (recipe) {
    console.log(`Recipe: ${recipe.name}, Cook time: ${recipe.cooktime}`);
  }

  // CSE thumbnails
  const thumbnail = pagemap.cse_thumbnail?.[0];
  if (thumbnail) {
    console.log(`Thumbnail: ${thumbnail.src} (${thumbnail.width}x${thumbnail.height})`);
  }
}
```

## Advanced Query Refinement

Combine multiple parameters for precise control over search results.

```typescript
const res = await customsearch.cse.list({
  key: process.env.GOOGLE_API_KEY,
  cx: process.env.SEARCH_ENGINE_ID,
  q: 'annual report',
  fileType: 'pdf',               // Only PDF files
  lr: 'lang_en',                 // English-language results only
  cr: 'countryUS',               // Results from US
  gl: 'us',                      // Boost US results
  exactTerms: '2024',            // Must contain "2024"
  excludeTerms: 'draft',         // Must not contain "draft"
  safe: 'active',                // SafeSearch enabled
  num: 10,                       // 10 results per page
  sort: 'date',                  // Sort by date
});
```

## Error Handling

```typescript
try {
  const res = await customsearch.cse.list({
    key: process.env.GOOGLE_API_KEY,
    cx: process.env.SEARCH_ENGINE_ID,
    q: 'search query',
  });
} catch (err: any) {
  if (err.code === 429) {
    // Rate limited -- daily quota exceeded
    // Free tier: 100 queries/day, Paid: up to 10K queries/day
  } else if (err.code === 403) {
    // Forbidden -- API not enabled, invalid API key, or billing not set up
  } else if (err.code === 400) {
    // Bad request -- missing required parameter (key, cx, or q)
  }
  console.error(`Custom Search error ${err.code}: ${err.message}`);
}
```
