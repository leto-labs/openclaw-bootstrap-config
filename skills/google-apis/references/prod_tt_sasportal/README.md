# SAS Portal API (Testing)



## Overview

- **API**: `prod_tt_sasportal`
- **Version**: `v1alpha1`
- **Base URL**: `https://prod-tt-sasportal.googleapis.com/`
- **Docs**: [https://developers.google.com/spectrum-access-system/](https://developers.google.com/spectrum-access-system/)

## When to Use

Use the SAS Portal API (Testing) for programmatic access to prod_tt_sasportal functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const prod_tt_sasportal = google.prod_tt_sasportal('v1alpha1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await prod_tt_sasportal.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://prod-tt-sasportal.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

