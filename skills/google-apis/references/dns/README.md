# Cloud DNS API



## Overview

- **API**: `dns`
- **Version**: `v1`
- **Base URL**: `https://dns.googleapis.com/`
- **Docs**: [https://cloud.google.com/dns/docs](https://cloud.google.com/dns/docs)

## When to Use

Use the Cloud DNS API for programmatic access to dns functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const dns = google.dns('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await dns.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://dns.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

