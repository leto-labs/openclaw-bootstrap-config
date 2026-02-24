# Custom Search API

> Searches over a website or collection of websites using Google's Programmable Search Engine.

## Overview

- **API**: `customsearch`
- **Version**: `v1`
- **Base URL**: `https://www.googleapis.com/customsearch/v1`
- **Docs**: [https://developers.google.com/custom-search/v1/overview](https://developers.google.com/custom-search/v1/overview)
- **Auth**: API key only (no OAuth scopes)
- **Status**: Deprecated for new customers; existing customers supported until January 1, 2027.

## When to Use

Use the Custom Search JSON API when you need to programmatically search the web or specific sites and retrieve structured results. Concrete scenarios:

- **Building a site search feature** -- Add Google-quality search to your website or app by searching within your own domain or a curated set of sites.
- **Content aggregation** -- Collect search results on a topic across the web, extracting titles, snippets, URLs, and structured data (PageMap).
- **Image search** -- Find images matching a query with filtering by size, color, type, and dominant color.
- **Competitive research tooling** -- Search for mentions of brands, products, or keywords across the web and track results over time.
- **SEO monitoring** -- Check how pages rank for specific queries across your Programmable Search Engine configuration.
- **Enriching data pipelines** -- Feed search results into an LLM, analytics system, or data warehouse for further processing.
- **Date-restricted searches** -- Find recent content by restricting results to the last N days, weeks, or months.
- **File type search** -- Find specific file types (PDF, DOCX, etc.) matching a query.

**Not a fit for:**
- High-volume search (hard cap at 10K queries/day).
- Deep result sets (maximum 100 results per query).
- Real-time search (results are based on Google's index, not live crawling).
- New projects starting after 2026 (API is closed to new customers).

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const customsearch = google.customsearch('v1');

// Web search -- only requires API key, no OAuth needed
const res = await customsearch.cse.list({
  key: process.env.GOOGLE_API_KEY,
  cx: process.env.SEARCH_ENGINE_ID,  // Programmable Search Engine ID
  q: 'your search query',
});

for (const item of res.data.items || []) {
  console.log(`${item.title}: ${item.link}`);
}
```

### curl

```bash
curl "https://www.googleapis.com/customsearch/v1?key=YOUR_API_KEY&cx=YOUR_CX&q=your+search+query"
```

### Image search (curl)

```bash
curl "https://www.googleapis.com/customsearch/v1?key=YOUR_API_KEY&cx=YOUR_CX&q=sunset&searchType=image&imgSize=large"
```

## Prerequisites

1. **Create a Programmable Search Engine** at [programmablesearchengine.google.com](https://programmablesearchengine.google.com/controlpanel/all) and note the Search Engine ID (`cx`).
2. **Create an API key** at [Google Cloud Console > Credentials](https://console.cloud.google.com/apis/credentials).
3. **Enable the API**: `gcloud services enable customsearch.googleapis.com`

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns (web search, image search, pagination, date filtering, structured data) |
| `gotchas.md` | Pricing tiers, quota limits, common errors, deprecation notice |
