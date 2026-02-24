# Local Services API



## Overview

- **API**: `localservices`
- **Version**: `v1`
- **Base URL**: `https://localservices.googleapis.com/`
- **Docs**: [https://ads.google.com/local-services-ads/](https://ads.google.com/local-services-ads/)

## When to Use

Use the Local Services API for programmatic access to localservices functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const localservices = google.localservices('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await localservices.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://localservices.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

