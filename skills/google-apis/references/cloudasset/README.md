# Cloud Asset API

> The Cloud Asset API manages the history and inventory of Google Cloud resources.

## Overview

- **API**: `cloudasset`
- **Version**: `v1`
- **Base URL**: `https://cloudasset.googleapis.com/`
- **Docs**: [https://cloud.google.com/asset-inventory/docs/quickstart](https://cloud.google.com/asset-inventory/docs/quickstart)

## When to Use

The Cloud Asset API manages the history and inventory of Google Cloud resources.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudasset = google.cloudasset('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudasset.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudasset.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

