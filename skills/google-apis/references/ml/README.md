# AI Platform Training & Prediction API

> An API to enable creating and using machine learning models.

## Overview

- **API**: `ml`
- **Version**: `v1`
- **Base URL**: `https://ml.googleapis.com/`
- **Docs**: [https://cloud.google.com/ml/](https://cloud.google.com/ml/)

## When to Use

An API to enable creating and using machine learning models.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const ml = google.ml('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await ml.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://ml.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

