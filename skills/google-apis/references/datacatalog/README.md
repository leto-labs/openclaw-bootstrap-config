# Google Cloud Data Catalog API

> A fully managed and highly scalable data discovery and metadata management service. 

## Overview

- **API**: `datacatalog`
- **Version**: `v1`
- **Base URL**: `https://datacatalog.googleapis.com/`
- **Docs**: [https://cloud.google.com/data-catalog/docs/](https://cloud.google.com/data-catalog/docs/)

## When to Use

A fully managed and highly scalable data discovery and metadata management
service.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const datacatalog = google.datacatalog('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await datacatalog.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://datacatalog.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

