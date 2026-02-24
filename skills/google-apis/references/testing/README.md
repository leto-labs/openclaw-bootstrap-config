# Cloud Testing API

> Allows developers to run automated tests for their mobile applications on Google infrastructure.

## Overview

- **API**: `testing`
- **Version**: `v1`
- **Base URL**: `https://testing.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/test-lab/](https://firebase.google.com/docs/test-lab/)

## When to Use

Allows developers to run automated tests for their mobile applications on Google
infrastructure.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const testing = google.testing('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await testing.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://testing.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

