# Firebase Dynamic Links API

> Programmatically creates and manages Firebase Dynamic Links.

## Overview

- **API**: `firebasedynamiclinks`
- **Version**: `v1`
- **Base URL**: `https://firebasedynamiclinks.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/dynamic-links/](https://firebase.google.com/docs/dynamic-links/)

## When to Use

Programmatically creates and manages Firebase Dynamic Links.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebasedynamiclinks = google.firebasedynamiclinks('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebasedynamiclinks.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebasedynamiclinks.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

