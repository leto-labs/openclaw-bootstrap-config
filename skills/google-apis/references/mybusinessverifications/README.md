# My Business Verifications API

> The My Business Verifications API provides an interface for taking verifications related actions for locations.

## Overview

- **API**: `mybusinessverifications`
- **Version**: `v1`
- **Base URL**: `https://mybusinessverifications.googleapis.com/`
- **Docs**: [https://developers.google.com/my-business/](https://developers.google.com/my-business/)

## When to Use

The My Business Verifications API provides an interface for taking verifications
related actions for locations.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const mybusinessverifications = google.mybusinessverifications('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await mybusinessverifications.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://mybusinessverifications.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

