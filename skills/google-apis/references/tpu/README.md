# Cloud TPU API

> TPU API provides customers with access to Google TPU technology.

## Overview

- **API**: `tpu`
- **Version**: `v2`
- **Base URL**: `https://tpu.googleapis.com/`
- **Docs**: [https://cloud.google.com/tpu/](https://cloud.google.com/tpu/)

## When to Use

TPU API provides customers with access to Google TPU technology.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const tpu = google.tpu('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await tpu.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://tpu.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

