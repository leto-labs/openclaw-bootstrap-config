# Essential Contacts API



## Overview

- **API**: `essentialcontacts`
- **Version**: `v1`
- **Base URL**: `https://essentialcontacts.googleapis.com/`
- **Docs**: [https://cloud.google.com/essentialcontacts/docs/](https://cloud.google.com/essentialcontacts/docs/)

## When to Use

Use the Essential Contacts API for programmatic access to essentialcontacts functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const essentialcontacts = google.essentialcontacts('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await essentialcontacts.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://essentialcontacts.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

