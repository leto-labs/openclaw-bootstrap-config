# HomeGraph API



## Overview

- **API**: `homegraph`
- **Version**: `v1`
- **Base URL**: `https://homegraph.googleapis.com/`
- **Docs**: [https://developers.home.google.com/cloud-to-cloud/get-started](https://developers.home.google.com/cloud-to-cloud/get-started)

## When to Use

Use the HomeGraph API for programmatic access to homegraph functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const homegraph = google.homegraph('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await homegraph.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://homegraph.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

