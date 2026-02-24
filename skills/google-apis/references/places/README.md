# Places API (New)

> Search for places, retrieve place details, autocomplete addresses, and access place photos from Google's comprehensive place database.

## Overview

- **API**: `places`
- **Version**: `v1`
- **Base URL**: `https://places.googleapis.com/`
- **Docs**: [https://developers.google.com/maps/documentation/places/web-service/overview](https://developers.google.com/maps/documentation/places/web-service/overview)

## When to Use

Use the Places API (New) when you need to:

- **Search for places by text query** -- find restaurants, shops, or addresses using natural language queries like "pizza in New York"
- **Search nearby places** -- discover places within a radius of a geographic point, filtered by type or keyword
- **Get place details** -- retrieve comprehensive information about a specific place (address, phone, hours, reviews, photos)
- **Autocomplete user input** -- provide type-ahead suggestions as users type place names or addresses
- **Display place photos** -- access millions of user-contributed and Google-sourced photos for any place

### Concrete Scenarios

| Scenario | Key Methods |
|----------|-------------|
| Store locator that finds nearby branches | `places:searchNearby` with `includedTypes` |
| Restaurant finder with ratings and prices | `places:searchText` with `minRating`, `priceLevels` |
| Address autocomplete in a booking form | `places:autocomplete` with session tokens |
| Business profile page with hours and reviews | `places/{placeId}` (Place Details) with field mask |
| Photo gallery for a destination | `places/{placeId}/photos/{photoRef}/media` |
| Trip planner showing POIs along a route | `places:searchText` with `locationBias` |

## Quick Start

### curl (API Key)

```bash
# Text Search -- find vegetarian restaurants in Sydney
curl -X POST -d '{
  "textQuery": "Spicy Vegetarian Food in Sydney, Australia"
}' \
  -H 'Content-Type: application/json' \
  -H 'X-Goog-Api-Key: YOUR_API_KEY' \
  -H 'X-Goog-FieldMask: places.displayName,places.formattedAddress,places.priceLevel' \
  'https://places.googleapis.com/v1/places:searchText'
```

### Node.js (fetch with API Key)

```typescript
const API_KEY = process.env.GOOGLE_MAPS_API_KEY;

const res = await fetch("https://places.googleapis.com/v1/places:searchText", {
  method: "POST",
  headers: {
    "Content-Type": "application/json",
    "X-Goog-Api-Key": API_KEY,
    "X-Goog-FieldMask": "places.displayName,places.formattedAddress,places.rating",
  },
  body: JSON.stringify({
    textQuery: "coffee shops in San Francisco",
    pageSize: 10,
  }),
});

const data = await res.json();
for (const place of data.places ?? []) {
  console.log(`${place.displayName.text} - ${place.formattedAddress} (${place.rating})`);
}
```

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const places = google.places("v1");

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ["https://www.googleapis.com/auth/maps-platform.places"],
});
google.options({ auth });

const res = await places.places.searchText({
  requestBody: {
    textQuery: "coffee shops in San Francisco",
    pageSize: 10,
  },
  // Field mask is required
  fields: "places.displayName,places.formattedAddress,places.rating",
});
```

## Key Concepts

- **Place ID**: A stable, unique identifier for a place (e.g., `ChIJN1t_tDeuEmsRUsoyG83frY4`). Obtained from search results, usable across all Google Maps APIs.
- **Field Mask**: Required header (`X-Goog-FieldMask`) or query param (`$fields`) that controls which fields are returned. Directly affects billing -- request only what you need.
- **SKU Tiers**: Fields are grouped into pricing tiers (Essentials ID Only, Pro, Enterprise, Enterprise + Atmosphere). More fields = higher cost per request.
- **Session Tokens**: Unique tokens that group autocomplete requests into a single billing session. Start a new session per user interaction.
- **Places API (New) vs Legacy**: The "New" version uses `places.googleapis.com` with REST/gRPC, field masks, and simplified pricing. Legacy uses `maps.googleapis.com/maps/api/place/`.

## Resource Types

| Resource | Description |
|----------|-------------|
| **Place** | Core resource with name, address, location, types, photos, reviews, hours |
| **Photo** | Place photo with attribution, width/height metadata |
| **Review** | User review with rating, text, author, time |
| **AutocompleteSuggestion** | Predicted place or query completion |

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | API key setup, enable API, billing requirements, auth scopes |
| `api.md` | Full method reference with parameters and field masks |
| `patterns.md` | Common workflow patterns with code examples |
| `gotchas.md` | Pricing tiers, field mask pitfalls, migration notes |
