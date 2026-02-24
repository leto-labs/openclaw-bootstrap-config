# Cloud Bigtable Admin API

> Administer your Cloud Bigtable tables and instances.

## Overview

- **API**: `bigtableadmin`
- **Version**: `v2`
- **Base URL**: `https://bigtableadmin.googleapis.com/`
- **Docs**: [https://cloud.google.com/bigtable/](https://cloud.google.com/bigtable/)

## When to Use

Administer your Cloud Bigtable tables and instances.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const bigtableadmin = google.bigtableadmin('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await bigtableadmin.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://bigtableadmin.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

