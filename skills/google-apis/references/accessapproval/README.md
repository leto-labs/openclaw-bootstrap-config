# Access Approval API

> An API for controlling access to data by Google personnel.

## Overview

- **API**: `accessapproval`
- **Version**: `v1`
- **Base URL**: `https://accessapproval.googleapis.com/`
- **Docs**: [https://cloud.google.com/assured-workloads/access-approval/docs](https://cloud.google.com/assured-workloads/access-approval/docs)

## When to Use

An API for controlling access to data by Google personnel.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const accessapproval = google.accessapproval('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await accessapproval.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://accessapproval.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

