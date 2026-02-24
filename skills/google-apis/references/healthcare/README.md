# Cloud Healthcare API

> Manage, store, and access healthcare data in Google Cloud Platform.

## Overview

- **API**: `healthcare`
- **Version**: `v1`
- **Base URL**: `https://healthcare.googleapis.com/`
- **Docs**: [https://cloud.google.com/healthcare](https://cloud.google.com/healthcare)

## When to Use

Manage, store, and access healthcare data in Google Cloud Platform.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const healthcare = google.healthcare('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await healthcare.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://healthcare.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

