# Air Quality API

> The Air Quality API.

## Overview

- **API**: `airquality`
- **Version**: `v1`
- **Base URL**: `https://airquality.googleapis.com/`
- **Docs**: [https://developers.google.com/maps/documentation/air-quality](https://developers.google.com/maps/documentation/air-quality)

## When to Use

The Air Quality API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const airquality = google.airquality('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await airquality.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://airquality.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

