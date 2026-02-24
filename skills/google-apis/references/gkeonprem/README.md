# GKE On-Prem API



## Overview

- **API**: `gkeonprem`
- **Version**: `v1`
- **Base URL**: `https://gkeonprem.googleapis.com/`
- **Docs**: [https://cloud.google.com/anthos/clusters/docs/on-prem/](https://cloud.google.com/anthos/clusters/docs/on-prem/)

## When to Use

Use the GKE On-Prem API for programmatic access to gkeonprem functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const gkeonprem = google.gkeonprem('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await gkeonprem.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://gkeonprem.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

