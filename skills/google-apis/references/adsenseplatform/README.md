# AdSense Platform API



## Overview

- **API**: `adsenseplatform`
- **Version**: `v1`
- **Base URL**: `https://adsenseplatform.googleapis.com/`
- **Docs**: [https://developers.google.com/adsense/platforms/](https://developers.google.com/adsense/platforms/)

## When to Use

Use the AdSense Platform API for programmatic access to adsenseplatform functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const adsenseplatform = google.adsenseplatform('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await adsenseplatform.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://adsenseplatform.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

