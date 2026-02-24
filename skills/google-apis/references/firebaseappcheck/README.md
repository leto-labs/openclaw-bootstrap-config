# Firebase App Check API

> Firebase App Check works alongside other Firebase services to help protect your backend resources from abuse, such as billing fraud or phishing.

## Overview

- **API**: `firebaseappcheck`
- **Version**: `v1`
- **Base URL**: `https://firebaseappcheck.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/app-check](https://firebase.google.com/docs/app-check)

## When to Use

Firebase App Check works alongside other Firebase services to help protect your
backend resources from abuse, such as billing fraud or phishing.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebaseappcheck = google.firebaseappcheck('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebaseappcheck.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebaseappcheck.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

