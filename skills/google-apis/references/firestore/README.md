# Cloud Firestore API

> Accesses the NoSQL document database built for automatic scaling, high performance, and ease of application development. 

## Overview

- **API**: `firestore`
- **Version**: `v1`
- **Base URL**: `https://firestore.googleapis.com/`
- **Docs**: [https://cloud.google.com/firestore](https://cloud.google.com/firestore)

## When to Use

Accesses the NoSQL document database built for automatic scaling, high
performance, and ease of application development.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firestore = google.firestore('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firestore.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firestore.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

