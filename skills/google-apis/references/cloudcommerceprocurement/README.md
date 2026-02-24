# Cloud Commerce Partner Procurement API

> Partner API for the Cloud Commerce Procurement Service.

## Overview

- **API**: `cloudcommerceprocurement`
- **Version**: `v1`
- **Base URL**: `https://cloudcommerceprocurement.googleapis.com/`
- **Docs**: [https://cloud.google.com/marketplace/docs/partners/](https://cloud.google.com/marketplace/docs/partners/)

## When to Use

Partner API for the Cloud Commerce Procurement Service.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudcommerceprocurement = google.cloudcommerceprocurement('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudcommerceprocurement.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudcommerceprocurement.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

