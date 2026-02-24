# Fact Check Tools API



## Overview

- **API**: `factchecktools`
- **Version**: `v1alpha1`
- **Base URL**: `https://factchecktools.googleapis.com/`
- **Docs**: [https://developers.google.com/fact-check/tools/api/](https://developers.google.com/fact-check/tools/api/)

## When to Use

Use the Fact Check Tools API for programmatic access to factchecktools functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const factchecktools = google.factchecktools('v1alpha1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await factchecktools.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://factchecktools.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

