# Places API (New) - Gotchas & Troubleshooting

## Field Mask is Required (Not Optional)

Every request **must** include a field mask. Omitting it returns an error. This is the most common mistake when starting with the Places API (New).

```bash
# Wrong -- no field mask
curl -X POST -d '{"textQuery":"pizza"}' \
  -H 'Content-Type: application/json' \
  -H 'X-Goog-Api-Key: KEY' \
  'https://places.googleapis.com/v1/places:searchText'
# Returns error: "FieldMask is required"

# Correct
curl -X POST -d '{"textQuery":"pizza"}' \
  -H 'Content-Type: application/json' \
  -H 'X-Goog-Api-Key: KEY' \
  -H 'X-Goog-FieldMask: places.displayName,places.formattedAddress' \
  'https://places.googleapis.com/v1/places:searchText'
```

## Field Mask Prefix Differences

Search endpoints (Text Search, Nearby Search) and Place Details use **different field mask prefixes**:

```bash
# Search endpoints: prefix fields with "places."
X-Goog-FieldMask: places.displayName,places.formattedAddress,places.rating

# Place Details (GET /v1/places/{id}): NO "places." prefix
X-Goog-FieldMask: displayName,formattedAddress,rating
```

Getting this wrong returns empty responses (not errors).

## Pricing by Field (SKU Tiers)

The fields you request determine the billing SKU. Requesting `*` (all fields) always triggers the most expensive tier.

| SKU Tier | Example Fields | Approximate Cost |
|----------|---------------|------------------|
| **Essentials (ID Only)** | `places.id`, `places.name` | ~$0 per request |
| **Pro** | `places.displayName`, `places.formattedAddress`, `places.location`, `places.types` | ~$0.032 per request |
| **Enterprise** | `places.rating`, `places.websiteUri`, `places.regularOpeningHours`, `places.internationalPhoneNumber` | ~$0.035 per request |
| **Enterprise + Atmosphere** | `places.reviews`, `places.editorialSummary`, `places.delivery`, `places.servesBeer` | ~$0.040 per request |

**Cost optimization**: Request the minimum fields you need. Adding even one field from a higher tier upgrades the entire request to that tier.

## Session Tokens for Autocomplete

Without session tokens, **each autocomplete keystroke is billed as a separate request**. With session tokens, an entire autocomplete interaction (multiple keystrokes + final Place Details) is billed as a single session.

```typescript
// Generate a new token for each user interaction
const sessionToken = crypto.randomUUID();

// Use the same token for all autocomplete calls in this interaction
await autocomplete("piz", sessionToken);
await autocomplete("pizza", sessionToken);

// Complete the session by passing the token to Place Details
await getPlaceDetails(placeId, sessionToken);
// Now generate a NEW token for the next interaction
```

**Session token rules**:
- A session begins with the first autocomplete request using the token
- The session ends when you call Place Details with the same token, or after 3 minutes of inactivity
- If you do not call Place Details, the session is still billed as an autocomplete session
- Reusing a token across multiple sessions causes incorrect billing

## Places API (New) vs Legacy Places API

| Aspect | Places API (New) | Legacy Places API |
|--------|------------------|-------------------|
| **Base URL** | `places.googleapis.com` | `maps.googleapis.com/maps/api/place/` |
| **Protocol** | REST + gRPC, JSON body, POST for search | REST, query params, GET requests |
| **Field control** | Field mask (header/param) | `fields` query param (optional) |
| **Pricing model** | SKU tiers based on requested fields | Per-request flat rate per endpoint |
| **Response format** | JSON only, camelCase fields | JSON or XML |
| **Pagination** | `pageSize` + `pageToken` in request body | `pagetoken` query param |
| **Auth header** | `X-Goog-Api-Key` | `key` query param |

**Migration note**: The `places.name` field in the New API returns the resource name (`places/PLACE_ID`), not the display name. Use `places.displayName` for the human-readable name.

## Billing Must Be Enabled

The Places API (New) **will not work** without billing enabled on your Cloud project, even within the free tier. You will get a 403 error:

```json
{
  "error": {
    "code": 403,
    "message": "This API project is not authorized to use this API.",
    "status": "PERMISSION_DENIED"
  }
}
```

Fix: Enable billing at [Google Cloud Console > Billing](https://console.cloud.google.com/billing). The $200/month free Maps Platform credit still applies.

## Rate Limits

- Default: ~600 QPS (queries per second) for most methods
- Check quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/places-backend.googleapis.com/quotas)
- 429 errors require exponential backoff with jitter

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check field mask syntax, required params, and body format |
| 400 | FieldMask is required | Add `X-Goog-FieldMask` header |
| 403 | API not enabled | Enable `Places API (New)` in Cloud Console |
| 403 | Billing not enabled | Link a billing account to your project |
| 403 | API key restricted | Check key restrictions match the API and caller IP/referrer |
| 404 | Place not found | Place ID may be invalid or the place no longer exists |
| 429 | Rate limited | Implement exponential backoff with jitter |

## Exponential Backoff

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
  throw new Error("Unreachable");
}
```

## locationBias vs locationRestriction

- **`locationBias`**: Results are likely near the specified area but can be outside it. Use for "prefer results near here" behavior.
- **`locationRestriction`**: Results must be within the specified area. Use for "only results in this area" behavior.
- You **cannot use both** in the same request.
- `locationRestriction` only works for categorical queries (e.g., "restaurants"), not specific addresses.

## Using `*` as Field Mask

Using `X-Goog-FieldMask: *` returns all available fields but:
1. Triggers the **highest billing tier** for every request
2. Returns much larger responses (slower)
3. Is only useful during development/debugging

In production, always specify exact fields you need.

## Photo References Expire

Photo references obtained from Place Details or Search responses are **not permanent**. They can change when Google updates place data. Always fetch fresh photo references rather than caching them long-term.

## Text Search Query Limitations

Text Search is not designed for:
- Queries with multiple places/roads/cities in one string
- P.O. Box addresses
- Lat/lng coordinates (use Geocoding API instead)
- Non-geospatial questions ("How many boats in Ventura Harbor?")
- Historical/obsolete place names

## Google API Error Response Format

```json
{
  "error": {
    "code": 403,
    "message": "The caller does not have permission",
    "status": "PERMISSION_DENIED",
    "errors": [{ "domain": "global", "reason": "forbidden" }]
  }
}
```

## Tips

- Always enable `places-backend.googleapis.com` (not `places.googleapis.com` which is the legacy API) in your GCP project
- Use the narrowest field mask possible to minimize billing costs
- Generate a new session token for each autocomplete interaction
- For server-side applications, restrict API keys to your server's IP addresses
- Place IDs are stable and can be cached. Photo references are not stable.
- The `places.name` field is the resource name, not the display name -- use `places.displayName`
