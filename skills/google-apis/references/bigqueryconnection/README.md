# BigQuery Connection API

> Allows users to manage BigQuery connections to external data sources.

## Overview

- **API**: `bigqueryconnection`
- **Version**: `v1`
- **Base URL**: `https://bigqueryconnection.googleapis.com/`
- **Docs**: [https://cloud.google.com/bigquery/docs/connections-api-intro](https://cloud.google.com/bigquery/docs/connections-api-intro)

## When to Use

Allows users to manage BigQuery connections to external data sources.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const bigqueryconnection = google.bigqueryconnection('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await bigqueryconnection.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://bigqueryconnection.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

