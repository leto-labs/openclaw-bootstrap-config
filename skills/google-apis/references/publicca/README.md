# Public Certificate Authority API

> The Public Certificate Authority API may be used to create and manage ACME external account binding keys associated with Google Trust Services' publicly trusted certificate authority. 

## Overview

- **API**: `publicca`
- **Version**: `v1`
- **Base URL**: `https://publicca.googleapis.com/`
- **Docs**: [https://cloud.google.com/public-certificate-authority/docs](https://cloud.google.com/public-certificate-authority/docs)

## When to Use

The Public Certificate Authority API may be used to create and manage ACME
external account binding keys associated with Google Trust Services' publicly
trusted certificate authority.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const publicca = google.publicca('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await publicca.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://publicca.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

