# Firebase Realtime Database Management API

> The Firebase Realtime Database API enables programmatic provisioning and management of Realtime Database instances.

## Overview

- **API**: `firebasedatabase`
- **Version**: `v1beta`
- **Base URL**: `https://firebasedatabase.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/reference/rest/database/database-management/rest/](https://firebase.google.com/docs/reference/rest/database/database-management/rest/)

## When to Use

The Firebase Realtime Database API enables programmatic provisioning and
management of Realtime Database instances.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebasedatabase = google.firebasedatabase('v1beta');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebasedatabase.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebasedatabase.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

