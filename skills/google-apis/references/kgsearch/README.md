# Knowledge Graph Search API

> Searches the Google Knowledge Graph for entities.

## Overview

- **API**: `kgsearch`
- **Version**: `v1`
- **Base URL**: `https://kgsearch.googleapis.com/`
- **Docs**: [https://developers.google.com/knowledge-graph/](https://developers.google.com/knowledge-graph/)

## When to Use

Searches the Google Knowledge Graph for entities.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const kgsearch = google.kgsearch('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await kgsearch.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://kgsearch.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

