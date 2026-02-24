# Drive Labels API

> An API for managing Drive Labels

## Overview

- **API**: `drivelabels`
- **Version**: `v2`
- **Base URL**: `https://drivelabels.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/drive/labels](https://developers.google.com/workspace/drive/labels)

## When to Use

An API for managing Drive Labels

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const drivelabels = google.drivelabels('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await drivelabels.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://drivelabels.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

