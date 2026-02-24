# Dataflow API

> Manages Google Cloud Dataflow projects on Google Cloud Platform.

## Overview

- **API**: `dataflow`
- **Version**: `v1b3`
- **Base URL**: `https://dataflow.googleapis.com/`
- **Docs**: [https://cloud.google.com/dataflow](https://cloud.google.com/dataflow)

## When to Use

Manages Google Cloud Dataflow projects on Google Cloud Platform.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const dataflow = google.dataflow('v1b3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await dataflow.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://dataflow.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

