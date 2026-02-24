# GKE Hub API



## Overview

- **API**: `gkehub`
- **Version**: `v2`
- **Base URL**: `https://gkehub.googleapis.com/`
- **Docs**: [https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster)

## When to Use

Use the GKE Hub API for programmatic access to gkehub functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const gkehub = google.gkehub('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await gkehub.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://gkehub.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

