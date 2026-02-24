# AdMob API

> The AdMob API allows publishers to programmatically get information about their AdMob account. 

## Overview

- **API**: `admob`
- **Version**: `v1`
- **Base URL**: `https://admob.googleapis.com/`
- **Docs**: [https://developers.google.com/admob/api/](https://developers.google.com/admob/api/)

## When to Use

The AdMob API allows publishers to programmatically get information about their
AdMob account.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const admob = google.admob('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await admob.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://admob.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

