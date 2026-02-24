# App Engine Admin API

> Provisions and manages developers' App Engine applications.

## Overview

- **API**: `appengine`
- **Version**: `v1`
- **Base URL**: `https://appengine.googleapis.com/`
- **Docs**: [https://cloud.google.com/appengine/docs/admin-api/](https://cloud.google.com/appengine/docs/admin-api/)

## When to Use

Provisions and manages developers' App Engine applications.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const appengine = google.appengine('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await appengine.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://appengine.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

