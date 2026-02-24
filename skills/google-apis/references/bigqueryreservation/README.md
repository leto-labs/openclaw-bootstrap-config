# BigQuery Reservation API

> A service to modify your BigQuery reservations.

## Overview

- **API**: `bigqueryreservation`
- **Version**: `v1`
- **Base URL**: `https://bigqueryreservation.googleapis.com/`
- **Docs**: [https://cloud.google.com/bigquery/](https://cloud.google.com/bigquery/)

## When to Use

A service to modify your BigQuery reservations.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const bigqueryreservation = google.bigqueryreservation('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await bigqueryreservation.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://bigqueryreservation.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

