# API hub API



## Overview

- **API**: `apihub`
- **Version**: `v1`
- **Base URL**: `https://apihub.googleapis.com/`
- **Docs**: [https://cloud.google.com/apigee/docs/api-hub/what-is-api-hub](https://cloud.google.com/apigee/docs/api-hub/what-is-api-hub)

## When to Use

Use the API hub API for programmatic access to apihub functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const apihub = google.apihub('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await apihub.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://apihub.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

