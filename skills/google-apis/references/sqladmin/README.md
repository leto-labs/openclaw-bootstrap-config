# Cloud SQL Admin API

> API for Cloud SQL database instance management

## Overview

- **API**: `sqladmin`
- **Version**: `v1`
- **Base URL**: `https://sqladmin.googleapis.com/`
- **Docs**: [https://cloud.google.com/sql/docs](https://cloud.google.com/sql/docs)

## When to Use

API for Cloud SQL database instance management

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const sqladmin = google.sqladmin('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await sqladmin.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://sqladmin.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

