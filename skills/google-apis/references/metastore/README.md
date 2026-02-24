# Dataproc Metastore API

> The Dataproc Metastore API is used to manage the lifecycle and configuration of metastore services.

## Overview

- **API**: `metastore`
- **Version**: `v1`
- **Base URL**: `https://metastore.googleapis.com/`
- **Docs**: [https://cloud.google.com/dataproc-metastore/docs](https://cloud.google.com/dataproc-metastore/docs)

## When to Use

The Dataproc Metastore API is used to manage the lifecycle and configuration of
metastore services.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const metastore = google.metastore('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await metastore.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://metastore.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

