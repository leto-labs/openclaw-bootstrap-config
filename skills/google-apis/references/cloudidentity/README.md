# Cloud Identity API

> API for provisioning and managing identity resources.

## Overview

- **API**: `cloudidentity`
- **Version**: `v1`
- **Base URL**: `https://cloudidentity.googleapis.com/`
- **Docs**: [https://cloud.google.com/identity/](https://cloud.google.com/identity/)

## When to Use

API for provisioning and managing identity resources.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudidentity = google.cloudidentity('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudidentity.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudidentity.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

