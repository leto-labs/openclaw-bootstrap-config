# Certificate Manager API



## Overview

- **API**: `certificatemanager`
- **Version**: `v1`
- **Base URL**: `https://certificatemanager.googleapis.com/`
- **Docs**: [https://cloud.google.com/certificate-manager](https://cloud.google.com/certificate-manager)

## When to Use

Use the Certificate Manager API for programmatic access to certificatemanager functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const certificatemanager = google.certificatemanager('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await certificatemanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://certificatemanager.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

