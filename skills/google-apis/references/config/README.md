# Infrastructure Manager API

> Creates and manages Google Cloud Platform resources and infrastructure.

## Overview

- **API**: `config`
- **Version**: `v1`
- **Base URL**: `https://config.googleapis.com/`
- **Docs**: [https://cloud.google.com/infrastructure-manager/docs](https://cloud.google.com/infrastructure-manager/docs)

## When to Use

Creates and manages Google Cloud Platform resources and infrastructure.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const config = google.config('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await config.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://config.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

