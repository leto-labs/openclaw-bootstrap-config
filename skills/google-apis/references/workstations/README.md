# Cloud Workstations API

> Allows administrators to create managed developer environments in the cloud. 

## Overview

- **API**: `workstations`
- **Version**: `v1`
- **Base URL**: `https://workstations.googleapis.com/`
- **Docs**: [https://cloud.google.com/workstations](https://cloud.google.com/workstations)

## When to Use

Allows administrators to create managed developer environments in the cloud.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const workstations = google.workstations('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await workstations.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://workstations.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

