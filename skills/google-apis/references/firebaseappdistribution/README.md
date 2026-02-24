# Firebase App Distribution API



## Overview

- **API**: `firebaseappdistribution`
- **Version**: `v1`
- **Base URL**: `https://firebaseappdistribution.googleapis.com/`
- **Docs**: [https://firebase.google.com/products/app-distribution](https://firebase.google.com/products/app-distribution)

## When to Use

Use the Firebase App Distribution API for programmatic access to firebaseappdistribution functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebaseappdistribution = google.firebaseappdistribution('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebaseappdistribution.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebaseappdistribution.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

