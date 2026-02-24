# Firebase Management API

> The Firebase Management API enables programmatic setup and management of Firebase projects, including a project's Firebase resources and Firebase apps.

## Overview

- **API**: `firebase`
- **Version**: `v1beta1`
- **Base URL**: `https://firebase.googleapis.com/`
- **Docs**: [https://firebase.google.com](https://firebase.google.com)

## When to Use

The Firebase Management API enables programmatic setup and management of
Firebase projects, including a project's Firebase resources and Firebase apps.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebase = google.firebase('v1beta1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebase.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebase.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

