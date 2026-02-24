# Cloud Storage for Firebase API

> The Cloud Storage for Firebase API enables programmatic management of Cloud Storage buckets for use in Firebase projects

## Overview

- **API**: `firebasestorage`
- **Version**: `v1beta`
- **Base URL**: `https://firebasestorage.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/storage](https://firebase.google.com/docs/storage)

## When to Use

The Cloud Storage for Firebase API enables programmatic management of Cloud
Storage buckets for use in Firebase projects

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebasestorage = google.firebasestorage('v1beta');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebasestorage.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebasestorage.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

