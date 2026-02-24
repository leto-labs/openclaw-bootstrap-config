# Notebooks API

> Notebooks API is used to manage notebook resources in Google Cloud.

## Overview

- **API**: `notebooks`
- **Version**: `v2`
- **Base URL**: `https://notebooks.googleapis.com/`
- **Docs**: [https://cloud.google.com/notebooks/docs/](https://cloud.google.com/notebooks/docs/)

## When to Use

Notebooks API is used to manage notebook resources in Google Cloud.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const notebooks = google.notebooks('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await notebooks.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://notebooks.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

