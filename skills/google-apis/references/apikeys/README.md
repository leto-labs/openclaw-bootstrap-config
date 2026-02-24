# API Keys API

> Manages the API keys associated with developer projects.

## Overview

- **API**: `apikeys`
- **Version**: `v2`
- **Base URL**: `https://apikeys.googleapis.com/`
- **Docs**: [https://cloud.google.com/api-keys/docs](https://cloud.google.com/api-keys/docs)

## When to Use

Manages the API keys associated with developer projects.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const apikeys = google.apikeys('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await apikeys.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://apikeys.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

