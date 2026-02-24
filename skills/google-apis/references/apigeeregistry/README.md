# Apigee Registry API



## Overview

- **API**: `apigeeregistry`
- **Version**: `v1`
- **Base URL**: `https://apigeeregistry.googleapis.com/`
- **Docs**: [https://cloud.google.com/apigee/docs/api-hub/what-is-api-hub](https://cloud.google.com/apigee/docs/api-hub/what-is-api-hub)

## When to Use

Use the Apigee Registry API for programmatic access to apigeeregistry functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const apigeeregistry = google.apigeeregistry('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await apigeeregistry.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://apigeeregistry.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

