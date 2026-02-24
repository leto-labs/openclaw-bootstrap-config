# Cloud Dataplex API

> A unified, intelligent governance solution for data and AI assets.

## Overview

- **API**: `dataplex`
- **Version**: `v1`
- **Base URL**: `https://dataplex.googleapis.com/`
- **Docs**: [https://cloud.google.com/dataplex/docs](https://cloud.google.com/dataplex/docs)

## When to Use

A unified, intelligent governance solution for data and AI assets.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const dataplex = google.dataplex('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await dataplex.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://dataplex.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

