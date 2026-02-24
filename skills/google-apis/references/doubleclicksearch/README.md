# Search Ads 360 API

> The Search Ads 360 API allows developers to automate uploading conversions and downloading reports from Search Ads 360.

## Overview

- **API**: `doubleclicksearch`
- **Version**: `v2`
- **Base URL**: `https://doubleclicksearch.googleapis.com/`
- **Docs**: [https://developers.google.com/search-ads](https://developers.google.com/search-ads)

## When to Use

The Search Ads 360 API allows developers to automate uploading conversions and
downloading reports from Search Ads 360.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const doubleclicksearch = google.doubleclicksearch('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await doubleclicksearch.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://doubleclicksearch.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

