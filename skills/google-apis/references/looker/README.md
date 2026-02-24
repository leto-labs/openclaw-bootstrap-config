# Looker (Google Cloud core) API



## Overview

- **API**: `looker`
- **Version**: `v1`
- **Base URL**: `https://looker.googleapis.com/`
- **Docs**: [https://cloud.google.com/looker/docs/reference/rest/](https://cloud.google.com/looker/docs/reference/rest/)

## When to Use

Use the Looker (Google Cloud core) API for programmatic access to looker functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const looker = google.looker('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await looker.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://looker.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

