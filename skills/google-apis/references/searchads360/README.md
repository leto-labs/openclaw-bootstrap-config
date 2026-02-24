# Search Ads 360 Reporting API

> The Search Ads 360 API allows developers to automate downloading reports from Search Ads 360.

## Overview

- **API**: `searchads360`
- **Version**: `v0`
- **Base URL**: `https://searchads360.googleapis.com/`
- **Docs**: [https://developers.google.com/search-ads/reporting](https://developers.google.com/search-ads/reporting)

## When to Use

The Search Ads 360 API allows developers to automate downloading reports from
Search Ads 360.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const searchads360 = google.searchads360('v0');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await searchads360.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://searchads360.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

