# Firebase Rules API

> Creates and manages rules that determine when a Firebase Rules-enabled service should permit a request. 

## Overview

- **API**: `firebaserules`
- **Version**: `v1`
- **Base URL**: `https://firebaserules.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/storage/security](https://firebase.google.com/docs/storage/security)

## When to Use

Creates and manages rules that determine when a Firebase Rules-enabled service
should permit a request.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebaserules = google.firebaserules('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebaserules.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebaserules.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

