# Custom Search API - Gotchas & Troubleshooting

## Deprecation Notice

The Custom Search JSON API is not available for new customers as of 2026. Existing customers can continue using it until the service discontinuation on **January 1, 2027**. Plan accordingly and evaluate alternatives (e.g., Google Search API via Vertex AI, third-party search APIs).

## Pricing and Quotas

| Tier | Queries/Day | Cost |
|------|-------------|------|
| Free | 100 | $0 |
| Paid | Up to 10,000 | $5 per 1,000 queries |

- The free tier provides **100 queries per day** at no cost.
- To exceed 100 queries/day, you must [enable billing](https://cloud.google.com/billing/docs/how-to/manage-billing-account) in the API Console.
- Paid tier costs **$5 per 1,000 queries**, up to a maximum of **10,000 queries per day**.
- There is no way to increase the 10K/day limit; it is a hard cap.
- Check your usage at [Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/customsearch.googleapis.com/quotas).

## Result Limits

- **Max 10 results per request**: The `num` parameter accepts values 1-10 only.
- **Max 100 results per query**: Even with pagination (using `start`), the API returns at most 100 results total. Requesting `start` > 91 (with `num=10`) will return no results.
- **No deep pagination**: Unlike standard Google Search, you cannot access results beyond position 100.

## Required Parameters

Every request must include all three of these parameters:

| Parameter | Description | Where to get it |
|-----------|-------------|-----------------|
| `key` | Your API key | [Google Cloud Console > Credentials](https://console.cloud.google.com/apis/credentials) |
| `cx` | Programmable Search Engine ID | [Programmable Search Engine Control Panel](https://programmablesearchengine.google.com/controlpanel/all) |
| `q` | Search query string | Your application |

Missing any of these returns a `400 Bad Request` error.

## Search Engine ID (cx) Gotchas

- The `cx` value format can vary (e.g., `017576662512468239146:omuauf_lfve` or `8ac1ab64606d234f1`).
- You must create a Programmable Search Engine before using the API -- there is no "default" search engine.
- The search engine configuration (which sites to search, whole-web vs. specific sites) is set in the [control panel](https://programmablesearchengine.google.com/controlpanel/all), not via API parameters.
- To search the entire web, ensure the search engine is configured with "Search the entire web" enabled.

## API Key vs. OAuth

- This API uses **API key authentication only** -- there are no OAuth scopes.
- Do not use OAuth/service accounts for Custom Search; they are not required and add unnecessary complexity.
- The API key should be restricted to the Custom Search API in the Cloud Console for security.
- Never expose your API key in client-side JavaScript in production. Use a server-side proxy.

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check that `key`, `cx`, and `q` are all provided. Verify `num` is 1-10 and `start` is 1-100. |
| 403 | Forbidden / quota exceeded | API not enabled, API key invalid, daily quota reached, or billing not set up. |
| 429 | Rate limited | Daily query limit exceeded. Wait until quota resets (midnight Pacific Time). |
| 500 | Server error | Retry with exponential backoff. |
| 503 | Service unavailable | Retry with exponential backoff. |

### Specific 403 sub-errors

- `dailyLimitExceeded` -- You hit the 100/day free tier or 10K/day paid limit.
- `keyInvalid` -- The API key is malformed or revoked.
- `accessNotConfigured` -- The Custom Search API is not enabled for this project.

## Exponential Backoff

Google APIs require exponential backoff for retries:

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      if (i === maxRetries - 1 || ![429, 500, 503].includes(err.code)) throw err;
      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error('Unreachable');
}
```

## Google API Error Response Format

All Google APIs return errors in this format:

```json
{
  "error": {
    "code": 403,
    "message": "Daily Limit Exceeded",
    "status": "PERMISSION_DENIED",
    "errors": [{ "domain": "usageLimits", "reason": "dailyLimitExceeded", "message": "Daily Limit Exceeded" }]
  }
}
```

## Tips

- Always enable `customsearch.googleapis.com` in your GCP project before making calls.
- Use the `fields` parameter to request only needed fields -- reduces response size and latency (e.g., `fields=items(title,link,snippet)`).
- The `siterestrict` endpoint (`cse.siterestrict.list`) uses a different quota pool and is preferred when your search engine is configured for specific sites.
- Set `hl` (interface language) to improve result quality and performance for non-English searches.
- The `dateRestrict` parameter filters by when Google indexed the page, not necessarily when the content was published.
- The `sort` parameter supports `sort=date` to sort by date, but this may reduce relevance of results.
- Monitor usage through the [Cloud Console API Dashboard](https://console.cloud.google.com/apis/dashboard) or via [Google Cloud Operations](https://cloud.google.com/products/operations) with filter `service = 'customsearch.googleapis.com'`.
- Quota resets daily at midnight Pacific Time.
