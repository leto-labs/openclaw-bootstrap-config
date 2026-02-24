# BigQuery Data Policy API

> Allows users to manage BigQuery data policies.

## Overview

- **API**: `bigquerydatapolicy`
- **Version**: `v2`
- **Base URL**: `https://bigquerydatapolicy.googleapis.com/`
- **Docs**: [https://cloud.google.com/bigquery/docs/column-data-masking](https://cloud.google.com/bigquery/docs/column-data-masking)

## When to Use

Allows users to manage BigQuery data policies.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const bigquerydatapolicy = google.bigquerydatapolicy('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await bigquerydatapolicy.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://bigquerydatapolicy.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

