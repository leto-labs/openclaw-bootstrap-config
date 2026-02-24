# VM Migration API

> Use the Migrate to Virtual Machines API to programmatically migrate workloads. 

## Overview

- **API**: `vmmigration`
- **Version**: `v1`
- **Base URL**: `https://vmmigration.googleapis.com/`
- **Docs**: [https://cloud.google.com/migrate/virtual-machines](https://cloud.google.com/migrate/virtual-machines)

## When to Use

Use the Migrate to Virtual Machines API to programmatically migrate workloads.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const vmmigration = google.vmmigration('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await vmmigration.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://vmmigration.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

