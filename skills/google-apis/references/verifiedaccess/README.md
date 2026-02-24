# Chrome Verified Access API

> API for Verified Access chrome extension to provide credential verification for chrome devices connecting to an enterprise network

## Overview

- **API**: `verifiedaccess`
- **Version**: `v2`
- **Base URL**: `https://verifiedaccess.googleapis.com/`
- **Docs**: [https://developers.google.com/chrome/verified-access](https://developers.google.com/chrome/verified-access)

## When to Use

API for Verified Access chrome extension to provide credential verification for
chrome devices connecting to an enterprise network

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const verifiedaccess = google.verifiedaccess('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await verifiedaccess.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://verifiedaccess.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

