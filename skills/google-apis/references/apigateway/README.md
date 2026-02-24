# API Gateway API



## Overview

- **API**: `apigateway`
- **Version**: `v1`
- **Base URL**: `https://apigateway.googleapis.com/`
- **Docs**: [https://cloud.google.com/api-gateway/docs](https://cloud.google.com/api-gateway/docs)

## When to Use

Use the API Gateway API for programmatic access to apigateway functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const apigateway = google.apigateway('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await apigateway.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://apigateway.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

