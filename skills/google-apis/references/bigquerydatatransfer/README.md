# BigQuery Data Transfer API

> Schedule queries or transfer external data from SaaS applications to Google BigQuery on a regular basis.

## Overview

- **API**: `bigquerydatatransfer`
- **Version**: `v1`
- **Base URL**: `https://bigquerydatatransfer.googleapis.com/`
- **Docs**: [https://cloud.google.com/bigquery-transfer/](https://cloud.google.com/bigquery-transfer/)

## When to Use

Schedule queries or transfer external data from SaaS applications to Google
BigQuery on a regular basis.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const bigquerydatatransfer = google.bigquerydatatransfer('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await bigquerydatatransfer.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://bigquerydatatransfer.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

