# Database Migration API

> Manage Cloud Database Migration Service resources on Google Cloud Platform.

## Overview

- **API**: `datamigration`
- **Version**: `v1`
- **Base URL**: `https://datamigration.googleapis.com/`
- **Docs**: [https://cloud.google.com/database-migration/](https://cloud.google.com/database-migration/)

## When to Use

Manage Cloud Database Migration Service resources on Google Cloud Platform.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const datamigration = google.datamigration('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await datamigration.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://datamigration.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

