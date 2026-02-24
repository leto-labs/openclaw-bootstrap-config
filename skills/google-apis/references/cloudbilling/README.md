# Cloud Billing API

> Allows developers to manage billing for their Google Cloud Platform projects programmatically.

## Overview

- **API**: `cloudbilling`
- **Version**: `v1`
- **Base URL**: `https://cloudbilling.googleapis.com/`
- **Docs**: [https://cloud.google.com/billing/docs/apis](https://cloud.google.com/billing/docs/apis)

## When to Use

Allows developers to manage billing for their Google Cloud Platform projects
programmatically.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudbilling = google.cloudbilling('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudbilling.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudbilling.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

