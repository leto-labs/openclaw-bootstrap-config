# Blockchain Node Engine API



## Overview

- **API**: `blockchainnodeengine`
- **Version**: `v1`
- **Base URL**: `https://blockchainnodeengine.googleapis.com/`
- **Docs**: [https://cloud.google.com/blockchain-node-engine](https://cloud.google.com/blockchain-node-engine)

## When to Use

Use the Blockchain Node Engine API for programmatic access to blockchainnodeengine functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const blockchainnodeengine = google.blockchainnodeengine('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await blockchainnodeengine.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://blockchainnodeengine.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

