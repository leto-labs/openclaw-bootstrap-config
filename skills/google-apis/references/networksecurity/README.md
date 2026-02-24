# Network Security API



## Overview

- **API**: `networksecurity`
- **Version**: `v1`
- **Base URL**: `https://networksecurity.googleapis.com/`
- **Docs**: [https://cloud.google.com/networking](https://cloud.google.com/networking)

## When to Use

Use the Network Security API for programmatic access to networksecurity functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const networksecurity = google.networksecurity('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await networksecurity.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://networksecurity.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

