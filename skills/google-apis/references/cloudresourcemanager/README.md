# Cloud Resource Manager API

> Creates, reads, and updates metadata for Google Cloud Platform resource containers.

## Overview

- **API**: `cloudresourcemanager`
- **Version**: `v3`
- **Base URL**: `https://cloudresourcemanager.googleapis.com/`
- **Docs**: [https://cloud.google.com/resource-manager](https://cloud.google.com/resource-manager)

## When to Use

Creates, reads, and updates metadata for Google Cloud Platform resource
containers.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudresourcemanager = google.cloudresourcemanager('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudresourcemanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudresourcemanager.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

