# Places Aggregate API

> Places Aggregate API.

## Overview

- **API**: `areainsights`
- **Version**: `v1`
- **Base URL**: `https://areainsights.googleapis.com/`
- **Docs**: [https://developers.google.com/maps/documentation/places-aggregate/overview](https://developers.google.com/maps/documentation/places-aggregate/overview)

## When to Use

Places Aggregate API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const areainsights = google.areainsights('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await areainsights.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://areainsights.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

