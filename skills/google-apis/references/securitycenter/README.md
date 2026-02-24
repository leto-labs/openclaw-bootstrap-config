# Security Command Center API

> Security Command Center API provides access to temporal views of assets and findings within an organization.

## Overview

- **API**: `securitycenter`
- **Version**: `v1`
- **Base URL**: `https://securitycenter.googleapis.com/`
- **Docs**: [https://cloud.google.com/security-command-center](https://cloud.google.com/security-command-center)

## When to Use

Security Command Center API provides access to temporal views of assets and
findings within an organization.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const securitycenter = google.securitycenter('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await securitycenter.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://securitycenter.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

