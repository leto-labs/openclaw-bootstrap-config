# Cloud Dataproc API

> Manages Hadoop-based clusters and jobs on Google Cloud Platform.

## Overview

- **API**: `dataproc`
- **Version**: `v1`
- **Base URL**: `https://dataproc.googleapis.com/`
- **Docs**: [https://cloud.google.com/dataproc/](https://cloud.google.com/dataproc/)

## When to Use

Manages Hadoop-based clusters and jobs on Google Cloud Platform.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const dataproc = google.dataproc('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await dataproc.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://dataproc.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

