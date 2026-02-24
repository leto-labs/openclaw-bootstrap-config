# Datastream API



## Overview

- **API**: `datastream`
- **Version**: `v1`
- **Base URL**: `https://datastream.googleapis.com/`
- **Docs**: [https://cloud.google.com/datastream/](https://cloud.google.com/datastream/)

## When to Use

Use the Datastream API for programmatic access to datastream functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const datastream = google.datastream('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await datastream.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://datastream.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

