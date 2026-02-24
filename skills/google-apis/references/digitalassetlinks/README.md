# Digital Asset Links API

> Discovers relationships between online assets such as websites or mobile apps.

## Overview

- **API**: `digitalassetlinks`
- **Version**: `v1`
- **Base URL**: `https://digitalassetlinks.googleapis.com/`
- **Docs**: [https://developers.google.com/digital-asset-links/](https://developers.google.com/digital-asset-links/)

## When to Use

Discovers relationships between online assets such as websites or mobile apps.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const digitalassetlinks = google.digitalassetlinks('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await digitalassetlinks.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://digitalassetlinks.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

