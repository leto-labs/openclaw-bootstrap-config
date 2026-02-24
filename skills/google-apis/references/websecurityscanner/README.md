# Web Security Scanner API

> Scans your Compute and App Engine apps for common web vulnerabilities.

## Overview

- **API**: `websecurityscanner`
- **Version**: `v1`
- **Base URL**: `https://websecurityscanner.googleapis.com/`
- **Docs**: [https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/](https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/)

## When to Use

Scans your Compute and App Engine apps for common web vulnerabilities.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const websecurityscanner = google.websecurityscanner('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await websecurityscanner.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://websecurityscanner.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

