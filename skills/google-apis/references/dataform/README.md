# Dataform API

> Service to develop, version control, and operationalize SQL pipelines in BigQuery.

## Overview

- **API**: `dataform`
- **Version**: `v1`
- **Base URL**: `https://dataform.googleapis.com/`
- **Docs**: [https://cloud.google.com/dataform/docs](https://cloud.google.com/dataform/docs)

## When to Use

Service to develop, version control, and operationalize SQL pipelines in
BigQuery.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const dataform = google.dataform('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await dataform.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://dataform.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

