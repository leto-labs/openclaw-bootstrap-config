# On-Demand Scanning API

> A service to scan container images for vulnerabilities.

## Overview

- **API**: `ondemandscanning`
- **Version**: `v1`
- **Base URL**: `https://ondemandscanning.googleapis.com/`
- **Docs**: [https://cloud.google.com/container-analysis/docs/on-demand-scanning/](https://cloud.google.com/container-analysis/docs/on-demand-scanning/)

## When to Use

A service to scan container images for vulnerabilities.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const ondemandscanning = google.ondemandscanning('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await ondemandscanning.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://ondemandscanning.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

