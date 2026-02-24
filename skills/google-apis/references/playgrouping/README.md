# Google Play Grouping API

> playgrouping.googleapis.com API.

## Overview

- **API**: `playgrouping`
- **Version**: `v1alpha1`
- **Base URL**: `https://playgrouping.googleapis.com/`
- **Docs**: [https://cloud.google.com/playgrouping/](https://cloud.google.com/playgrouping/)

## When to Use

playgrouping.googleapis.com API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const playgrouping = google.playgrouping('v1alpha1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await playgrouping.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://playgrouping.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

