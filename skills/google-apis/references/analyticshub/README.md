# Analytics Hub API

> Exchange data and analytics assets securely and efficiently.

## Overview

- **API**: `analyticshub`
- **Version**: `v1`
- **Base URL**: `https://analyticshub.googleapis.com/`
- **Docs**: [https://cloud.google.com/bigquery/docs/analytics-hub-introduction](https://cloud.google.com/bigquery/docs/analytics-hub-introduction)

## When to Use

Exchange data and analytics assets securely and efficiently.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const analyticshub = google.analyticshub('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await analyticshub.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://analyticshub.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

