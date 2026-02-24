# Cloud Deploy API



## Overview

- **API**: `clouddeploy`
- **Version**: `v1`
- **Base URL**: `https://clouddeploy.googleapis.com/`
- **Docs**: [https://cloud.google.com/deploy/](https://cloud.google.com/deploy/)

## When to Use

Use the Cloud Deploy API for programmatic access to clouddeploy functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const clouddeploy = google.clouddeploy('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await clouddeploy.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://clouddeploy.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

