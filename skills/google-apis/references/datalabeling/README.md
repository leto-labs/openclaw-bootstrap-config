# Data Labeling API

> Public API for Google Cloud AI Data Labeling Service.

## Overview

- **API**: `datalabeling`
- **Version**: `v1beta1`
- **Base URL**: `https://datalabeling.googleapis.com/`
- **Docs**: [https://cloud.google.com/data-labeling/docs/](https://cloud.google.com/data-labeling/docs/)

## When to Use

Public API for Google Cloud AI Data Labeling Service.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const datalabeling = google.datalabeling('v1beta1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await datalabeling.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://datalabeling.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

