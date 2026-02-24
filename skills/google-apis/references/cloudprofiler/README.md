# Cloud Profiler API

> Manages continuous profiling information.

## Overview

- **API**: `cloudprofiler`
- **Version**: `v2`
- **Base URL**: `https://cloudprofiler.googleapis.com/`
- **Docs**: [https://cloud.google.com/profiler/](https://cloud.google.com/profiler/)

## When to Use

Manages continuous profiling information.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudprofiler = google.cloudprofiler('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudprofiler.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudprofiler.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

