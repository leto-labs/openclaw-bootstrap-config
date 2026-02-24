# Firebase ML API

> Access custom machine learning models hosted via Firebase ML.

## Overview

- **API**: `firebaseml`
- **Version**: `v1`
- **Base URL**: `https://firebaseml.googleapis.com/`
- **Docs**: [https://firebase.google.com](https://firebase.google.com)

## When to Use

Access custom machine learning models hosted via Firebase ML.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebaseml = google.firebaseml('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebaseml.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebaseml.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

