# Google Meet API

> Create and manage meetings in Google Meet.

## Overview

- **API**: `meet`
- **Version**: `v2`
- **Base URL**: `https://meet.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/meet/api](https://developers.google.com/workspace/meet/api)

## When to Use

Create and manage meetings in Google Meet.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const meet = google.meet('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await meet.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://meet.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

