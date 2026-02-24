# Compute Engine API

> Creates and runs virtual machines on Google Cloud Platform.

## Overview

- **API**: `compute`
- **Version**: `v1`
- **Base URL**: `https://compute.googleapis.com/compute/v1/`
- **Docs**: [https://cloud.google.com/compute/](https://cloud.google.com/compute/)

## When to Use

Creates and runs virtual machines on Google Cloud Platform.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const compute = google.compute('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await compute.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://compute.googleapis.com/compute/v1/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

