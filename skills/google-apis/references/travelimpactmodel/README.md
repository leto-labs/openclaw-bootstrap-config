# Travel Impact Model API

> Travel Impact Model API lets you query travel carbon emission estimates.

## Overview

- **API**: `travelimpactmodel`
- **Version**: `v1`
- **Base URL**: `https://travelimpactmodel.googleapis.com/`
- **Docs**: [https://developers.google.com/travel/impact-model](https://developers.google.com/travel/impact-model)

## When to Use

Travel Impact Model API lets you query travel carbon emission estimates.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const travelimpactmodel = google.travelimpactmodel('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await travelimpactmodel.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://travelimpactmodel.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

