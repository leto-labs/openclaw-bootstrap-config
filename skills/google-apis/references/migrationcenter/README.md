# Migration Center API

> A unified platform that helps you accelerate your end-to-end cloud journey from your current on-premises or cloud environments to Google Cloud.

## Overview

- **API**: `migrationcenter`
- **Version**: `v1`
- **Base URL**: `https://migrationcenter.googleapis.com/`
- **Docs**: [https://cloud.google.com/migration-center](https://cloud.google.com/migration-center)

## When to Use

A unified platform that helps you accelerate your end-to-end cloud journey from
your current on-premises or cloud environments to Google Cloud.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const migrationcenter = google.migrationcenter('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await migrationcenter.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://migrationcenter.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

