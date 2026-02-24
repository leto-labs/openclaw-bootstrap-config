# Cloud Controls Partner API

> Provides insights about your customers and their Assured Workloads based on your Sovereign Controls by Partners offering.

## Overview

- **API**: `cloudcontrolspartner`
- **Version**: `v1`
- **Base URL**: `https://cloudcontrolspartner.googleapis.com/`
- **Docs**: [https://cloud.google.com/sovereign-controls-by-partners/docs/sovereign-partners/reference/rest](https://cloud.google.com/sovereign-controls-by-partners/docs/sovereign-partners/reference/rest)

## When to Use

Provides insights about your customers and their Assured Workloads based on your
Sovereign Controls by Partners offering.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudcontrolspartner = google.cloudcontrolspartner('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudcontrolspartner.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudcontrolspartner.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

