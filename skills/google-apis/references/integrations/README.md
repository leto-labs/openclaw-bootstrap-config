# Application Integration API



## Overview

- **API**: `integrations`
- **Version**: `v1`
- **Base URL**: `https://integrations.googleapis.com/`
- **Docs**: [https://cloud.google.com/application-integration](https://cloud.google.com/application-integration)

## When to Use

Use the Application Integration API for programmatic access to integrations functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const integrations = google.integrations('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await integrations.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://integrations.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

