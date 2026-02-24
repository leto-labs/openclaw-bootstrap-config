# Places API (New) - Common Patterns

## Text Search for Businesses

Find businesses using a natural language query with location bias:

```typescript
const API_KEY = process.env.GOOGLE_MAPS_API_KEY;

async function searchPlaces(query: string, lat: number, lng: number) {
  const res = await fetch("https://places.googleapis.com/v1/places:searchText", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "X-Goog-Api-Key": API_KEY,
      "X-Goog-FieldMask": "places.id,places.displayName,places.formattedAddress,places.rating,places.userRatingCount,places.priceLevel",
    },
    body: JSON.stringify({
      textQuery: query,
      locationBias: {
        circle: {
          center: { latitude: lat, longitude: lng },
          radius: 5000.0,
        },
      },
      pageSize: 10,
      openNow: true,
    }),
  });
  return res.json();
}

const results = await searchPlaces("best sushi restaurant", 37.7749, -122.4194);
for (const place of results.places ?? []) {
  console.log(`${place.displayName.text} (${place.rating}) - ${place.formattedAddress}`);
}
```

## Get Place Details with Specific Fields

Retrieve detailed information about a place by its ID. Use the field mask to control cost:

```typescript
async function getPlaceDetails(placeId: string) {
  const res = await fetch(
    `https://places.googleapis.com/v1/places/${placeId}`,
    {
      headers: {
        "X-Goog-Api-Key": API_KEY,
        // Note: Place Details uses field names WITHOUT the "places." prefix
        "X-Goog-FieldMask": "displayName,formattedAddress,rating,userRatingCount,regularOpeningHours,websiteUri,internationalPhoneNumber,reviews,editorialSummary,photos",
      },
    }
  );
  return res.json();
}

const place = await getPlaceDetails("ChIJN1t_tDeuEmsRUsoyG83frY4");
console.log(place.displayName.text);
console.log(`Rating: ${place.rating} (${place.userRatingCount} reviews)`);
console.log(`Phone: ${place.internationalPhoneNumber}`);
console.log(`Website: ${place.websiteUri}`);

// Display opening hours
if (place.regularOpeningHours?.weekdayDescriptions) {
  for (const day of place.regularOpeningHours.weekdayDescriptions) {
    console.log(day);
  }
}
```

## Autocomplete with Session Tokens (Cost Optimization)

Session tokens group autocomplete requests into a single billing session. Without session tokens, each keystroke is billed separately.

```typescript
import { randomUUID } from "crypto";

// Generate a session token at the start of each user interaction
const sessionToken = randomUUID();

async function autocomplete(input: string, sessionToken: string) {
  const res = await fetch("https://places.googleapis.com/v1/places:autocomplete", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "X-Goog-Api-Key": API_KEY,
    },
    body: JSON.stringify({
      input,
      sessionToken,
      locationBias: {
        circle: {
          center: { latitude: 37.7749, longitude: -122.4194 },
          radius: 10000.0,
        },
      },
      includedPrimaryTypes: ["restaurant"],
    }),
  });
  return res.json();
}

// Multiple autocomplete calls with same session token
const predictions1 = await autocomplete("piz", sessionToken);
const predictions2 = await autocomplete("pizza n", sessionToken);
const predictions3 = await autocomplete("pizza near tim", sessionToken);

// When user selects a result, pass the same session token to Place Details
// This completes the session and bills as one Autocomplete session
const selectedPlaceId = predictions3.suggestions?.[0]?.placePrediction?.placeId;
if (selectedPlaceId) {
  const details = await fetch(
    `https://places.googleapis.com/v1/places/${selectedPlaceId}?sessionToken=${sessionToken}`,
    {
      headers: {
        "X-Goog-Api-Key": API_KEY,
        "X-Goog-FieldMask": "displayName,formattedAddress,location",
      },
    }
  );
  // Session is now complete -- generate a new token for the next interaction
}
```

## Nearby Search with Type Filter

Search for places of a specific type near a location:

```typescript
async function searchNearby(
  lat: number,
  lng: number,
  radiusMeters: number,
  types: string[]
) {
  const res = await fetch("https://places.googleapis.com/v1/places:searchNearby", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "X-Goog-Api-Key": API_KEY,
      "X-Goog-FieldMask": "places.id,places.displayName,places.formattedAddress,places.rating,places.location",
    },
    body: JSON.stringify({
      includedTypes: types,
      maxResultCount: 20,
      rankPreference: "DISTANCE",
      locationRestriction: {
        circle: {
          center: { latitude: lat, longitude: lng },
          radius: radiusMeters,
        },
      },
    }),
  });
  return res.json();
}

// Find gas stations within 2km
const gasStations = await searchNearby(37.7749, -122.4194, 2000, ["gas_station"]);

// Find cafes and bakeries within 500m
const cafes = await searchNearby(37.7749, -122.4194, 500, ["cafe", "bakery"]);
```

## Get Place Photos

Photos are returned as references in Place Details or Search responses. Use the photo reference to fetch the actual image:

```typescript
async function getPlacePhotos(placeId: string, maxPhotos = 5) {
  // Step 1: Get place with photo references
  const placeRes = await fetch(
    `https://places.googleapis.com/v1/places/${placeId}`,
    {
      headers: {
        "X-Goog-Api-Key": API_KEY,
        "X-Goog-FieldMask": "photos",
      },
    }
  );
  const place = await placeRes.json();

  // Step 2: Build photo URLs from references
  const photoUrls: string[] = [];
  for (const photo of (place.photos ?? []).slice(0, maxPhotos)) {
    // photo.name is like "places/PLACE_ID/photos/PHOTO_REF"
    const photoUrl = `https://places.googleapis.com/v1/${photo.name}/media?maxWidthPx=800&key=${API_KEY}`;
    photoUrls.push(photoUrl);
  }
  return photoUrls;
}

const photos = await getPlacePhotos("ChIJN1t_tDeuEmsRUsoyG83frY4");
// Each URL redirects to the actual image -- use directly in <img> tags
```

## Pagination Through Search Results

```typescript
async function searchAllPages(query: string, maxPages = 3) {
  const allPlaces: any[] = [];
  let pageToken: string | undefined;

  for (let page = 0; page < maxPages; page++) {
    const body: any = { textQuery: query, pageSize: 20 };
    if (pageToken) body.pageToken = pageToken;

    const res = await fetch("https://places.googleapis.com/v1/places:searchText", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-Goog-Api-Key": API_KEY,
        "X-Goog-FieldMask": "places.id,places.displayName,nextPageToken",
      },
      body: JSON.stringify(body),
    });

    const data = await res.json();
    allPlaces.push(...(data.places ?? []));

    pageToken = data.nextPageToken;
    if (!pageToken) break;
  }

  return allPlaces;
}
```

## Text Search with Location Restriction

Restrict results to a geographic bounding box:

```typescript
// Find restaurants strictly within New York City
const res = await fetch("https://places.googleapis.com/v1/places:searchText", {
  method: "POST",
  headers: {
    "Content-Type": "application/json",
    "X-Goog-Api-Key": API_KEY,
    "X-Goog-FieldMask": "places.displayName,places.formattedAddress",
  },
  body: JSON.stringify({
    textQuery: "vegetarian food",
    pageSize: 10,
    locationRestriction: {
      rectangle: {
        low: { latitude: 40.477398, longitude: -74.259087 },
        high: { latitude: 40.91618, longitude: -73.70018 },
      },
    },
  }),
});
```

## Error Handling

```typescript
async function placesRequest(url: string, options: RequestInit) {
  const res = await fetch(url, options);

  if (!res.ok) {
    const error = await res.json();
    const code = error.error?.code;
    const message = error.error?.message;

    if (code === 400) {
      // Bad request -- check field mask, required params
      throw new Error(`Invalid request: ${message}`);
    } else if (code === 403) {
      // API not enabled, billing not enabled, or key restricted
      throw new Error(`Permission denied: ${message}`);
    } else if (code === 429) {
      // Rate limited -- implement exponential backoff
      throw new Error(`Rate limited: ${message}`);
    }
    throw new Error(`Places API error ${code}: ${message}`);
  }

  return res.json();
}
```

## Batch Requests (Parallel Fetch)

The Places API (New) does not support batch endpoints, but you can parallelize independent requests:

```typescript
// Fetch details for multiple places in parallel
const placeIds = ["ChIJN1t_tDeuEmsRUsoyG83frY4", "ChIJP3Sa8ziYEmsRUKgyFmh9AQM"];

const details = await Promise.all(
  placeIds.map((id) =>
    fetch(`https://places.googleapis.com/v1/places/${id}`, {
      headers: {
        "X-Goog-Api-Key": API_KEY,
        "X-Goog-FieldMask": "displayName,formattedAddress,rating",
      },
    }).then((r) => r.json())
  )
);
```
