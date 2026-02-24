# Solar API

> Solar API.

## Overview

- **API**: `solar`
- **Version**: `v1`
- **Base URL**: `https://solar.googleapis.com/`
- **Docs**: [https://developers.google.com/maps/documentation/solar](https://developers.google.com/maps/documentation/solar)

## When to Use

Solar API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const solar = google.solar('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await solar.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://solar.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

