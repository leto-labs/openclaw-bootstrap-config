# Cloud OS Login API

> You can use OS Login to manage access to your VM instances using IAM roles.

## Overview

- **API**: `oslogin`
- **Version**: `v1`
- **Base URL**: `https://oslogin.googleapis.com/`
- **Docs**: [https://cloud.google.com/compute/docs/oslogin/](https://cloud.google.com/compute/docs/oslogin/)

## When to Use

You can use OS Login to manage access to your VM instances using IAM roles.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const oslogin = google.oslogin('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await oslogin.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://oslogin.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

