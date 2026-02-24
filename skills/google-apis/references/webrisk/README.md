# Web Risk API



## Overview

- **API**: `webrisk`
- **Version**: `v1`
- **Base URL**: `https://webrisk.googleapis.com/`
- **Docs**: [https://cloud.google.com/web-risk/](https://cloud.google.com/web-risk/)

## When to Use

Use the Web Risk API for programmatic access to webrisk functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const webrisk = google.webrisk('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await webrisk.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://webrisk.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

