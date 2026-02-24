# Google Cloud Support API

> Manages Google Cloud technical support cases for Customer Care support offerings. 

## Overview

- **API**: `cloudsupport`
- **Version**: `v2`
- **Base URL**: `https://cloudsupport.googleapis.com/`
- **Docs**: [https://cloud.google.com/support/docs/apis](https://cloud.google.com/support/docs/apis)

## When to Use

Manages Google Cloud technical support cases for Customer Care support
offerings.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudsupport = google.cloudsupport('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudsupport.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudsupport.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

