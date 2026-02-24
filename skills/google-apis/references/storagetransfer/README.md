# Storage Transfer API

> Transfers data from external data sources to a Google Cloud Storage bucket or between Google Cloud Storage buckets. 

## Overview

- **API**: `storagetransfer`
- **Version**: `v1`
- **Base URL**: `https://storagetransfer.googleapis.com/`
- **Docs**: [https://cloud.google.com/storage-transfer/docs](https://cloud.google.com/storage-transfer/docs)

## When to Use

Transfers data from external data sources to a Google Cloud Storage bucket or
between Google Cloud Storage buckets.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const storagetransfer = google.storagetransfer('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await storagetransfer.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://storagetransfer.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

