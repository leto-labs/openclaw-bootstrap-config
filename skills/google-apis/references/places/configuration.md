# Places API (New) - Configuration

## Enable the API

```bash
gcloud services enable places-backend.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/places-backend.googleapis.com).

**Important**: The API is listed as `Places API (New)` in the Cloud Console. The legacy `Places API` is a separate service. Make sure you enable the correct one. The service name for gcloud is `places-backend.googleapis.com`.

## Billing Requirement

The Places API (New) **requires billing to be enabled** on your Google Cloud project. There is no free tier without billing. However, Google provides a $200/month free credit for Maps Platform APIs.

To enable billing:
1. Go to [Google Cloud Console > Billing](https://console.cloud.google.com/billing)
2. Link a billing account to your project
3. The $200/month credit is applied automatically

## API Key Setup

### Create an API Key

```bash
# Via Cloud Console (recommended):
# APIs & Services > Credentials > Create Credentials > API Key
```

Or via [Google Cloud Console > Credentials](https://console.cloud.google.com/apis/credentials).

### Restrict the API Key (Production)

Always restrict API keys in production:

1. **Application restriction**: Restrict by IP address (server-side), HTTP referrer (web), or app bundle (mobile)
2. **API restriction**: Restrict to `Places API (New)` only

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/cloud-platform` | Full Cloud Platform access (broad -- use narrower scopes when possible) |
| `https://www.googleapis.com/auth/maps-platform.places` | Full Places API access |
| `https://www.googleapis.com/auth/maps-platform.places.textsearch` | Text Search only |
| `https://www.googleapis.com/auth/maps-platform.places.nearbysearch` | Nearby Search only |
| `https://www.googleapis.com/auth/maps-platform.places.details` | Place Details only |
| `https://www.googleapis.com/auth/maps-platform.places.autocomplete` | Autocomplete only |
| `https://www.googleapis.com/auth/maps-platform.places.getphotomedia` | Place Photos only |

**Note**: Scopes are only needed when using OAuth 2.0. API key authentication does not use scopes.

## Authentication Methods

### API Key (most common for Places)

Pass via header (recommended) or query parameter:

```bash
# Header (recommended)
-H 'X-Goog-Api-Key: YOUR_API_KEY'

# Query parameter
?key=YOUR_API_KEY
```

### OAuth 2.0 Bearer Token

For user-context requests or when API key restrictions are insufficient:

```bash
-H 'Authorization: Bearer ACCESS_TOKEN'
```

### Application Default Credentials (ADC)

For server-side applications running on Google Cloud:

```typescript
import { google } from "googleapis";

const auth = new google.auth.GoogleAuth({
  scopes: ["https://www.googleapis.com/auth/maps-platform.places"],
});
```

See `references/auth.md` for detailed OAuth and service account setup.

## Service Endpoint

- **Root URL**: `https://places.googleapis.com/`
- **Service path**: `v1/`
- **Protocol**: REST (JSON) and gRPC

## Field Mask (Required for All Requests)

Every request **must** include a field mask specifying which fields to return. This is passed as:

- **HTTP header**: `X-Goog-FieldMask: places.displayName,places.formattedAddress`
- **Query parameter**: `$fields=places.displayName,places.formattedAddress`

Omitting the field mask returns an error. Using `*` returns all fields but triggers the highest billing SKU.

## Quotas & Limits

| Limit | Value |
|-------|-------|
| Default QPS (queries per second) | Varies by method, typically 600 QPS |
| Max results per page (Text/Nearby Search) | 20 |
| Autocomplete session timeout | 3 minutes of inactivity |
| Photo max dimensions | 4800 x 4800 px |

Check and adjust quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/places-backend.googleapis.com/quotas).
