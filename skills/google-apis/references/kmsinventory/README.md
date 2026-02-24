# KMS Inventory API



## Overview

- **API**: `kmsinventory`
- **Version**: `v1`
- **Base URL**: `https://kmsinventory.googleapis.com/`
- **Docs**: [https://cloud.google.com/kms/](https://cloud.google.com/kms/)

## When to Use

Use the KMS Inventory API for programmatic access to kmsinventory functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const kmsinventory = google.kmsinventory('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await kmsinventory.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://kmsinventory.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

