# Web Search Indexing API

> Notifies Google Web Search when your web pages change.

## Overview

- **API**: `indexing`
- **Version**: `v3`
- **Base URL**: `https://indexing.googleapis.com/`
- **Docs**: [https://developers.google.com/search/apis/indexing-api/](https://developers.google.com/search/apis/indexing-api/)

## When to Use

Notifies Google Web Search when your web pages change.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const indexing = google.indexing('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await indexing.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://indexing.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

