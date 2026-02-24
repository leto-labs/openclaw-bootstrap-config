# AdSense Management API

> The AdSense Management API allows publishers to access their inventory and run earnings and performance reports.

## Overview

- **API**: `adsense`
- **Version**: `v2`
- **Base URL**: `https://adsense.googleapis.com/`
- **Docs**: [https://developers.google.com/adsense/management/](https://developers.google.com/adsense/management/)

## When to Use

The AdSense Management API allows publishers to access their inventory and run
earnings and performance reports.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const adsense = google.adsense('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await adsense.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://adsense.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

