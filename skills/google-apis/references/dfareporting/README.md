# Campaign Manager 360 API

> Build applications to efficiently manage large or complex trafficking, reporting, and attribution workflows for Campaign Manager 360.

## Overview

- **API**: `dfareporting`
- **Version**: `v5`
- **Base URL**: `https://dfareporting.googleapis.com/dfareporting/v5/`
- **Docs**: [https://developers.google.com/doubleclick-advertisers/](https://developers.google.com/doubleclick-advertisers/)

## When to Use

Build applications to efficiently manage large or complex trafficking,
reporting, and attribution workflows for Campaign Manager 360.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const dfareporting = google.dfareporting('v5');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await dfareporting.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://dfareporting.googleapis.com/dfareporting/v5/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

