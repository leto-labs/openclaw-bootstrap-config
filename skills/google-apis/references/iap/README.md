# Cloud Identity-Aware Proxy API

> Controls access to cloud applications running on Google Cloud Platform.

## Overview

- **API**: `iap`
- **Version**: `v1`
- **Base URL**: `https://iap.googleapis.com/`
- **Docs**: [https://cloud.google.com/iap](https://cloud.google.com/iap)

## When to Use

Controls access to cloud applications running on Google Cloud Platform.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const iap = google.iap('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await iap.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://iap.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

