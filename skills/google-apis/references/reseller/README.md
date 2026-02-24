# Google Workspace Reseller API

> Perform common functions that are available on the Channel Services console at scale, like placing orders and viewing customer information

## Overview

- **API**: `reseller`
- **Version**: `v1`
- **Base URL**: `https://reseller.googleapis.com/`
- **Docs**: [https://developers.google.com/google-apps/reseller/](https://developers.google.com/google-apps/reseller/)

## When to Use

Perform common functions that are available on the Channel Services console at
scale, like placing orders and viewing customer information

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const reseller = google.reseller('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await reseller.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://reseller.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

