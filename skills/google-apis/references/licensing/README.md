# Enterprise License Manager API

> The Google Enterprise License Manager API lets you manage Google Workspace and related licenses for all users of a customer that you manage.

## Overview

- **API**: `licensing`
- **Version**: `v1`
- **Base URL**: `https://licensing.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/admin/licensing/](https://developers.google.com/workspace/admin/licensing/)

## When to Use

The Google Enterprise License Manager API lets you manage Google Workspace and
related licenses for all users of a customer that you manage.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const licensing = google.licensing('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await licensing.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://licensing.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

