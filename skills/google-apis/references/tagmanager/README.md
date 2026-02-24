# Tag Manager API

> This API allows clients to access and modify container and tag configuration.

## Overview

- **API**: `tagmanager`
- **Version**: `v2`
- **Base URL**: `https://tagmanager.googleapis.com/`
- **Docs**: [https://developers.google.com/tag-manager](https://developers.google.com/tag-manager)

## When to Use

This API allows clients to access and modify container and tag configuration.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const tagmanager = google.tagmanager('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await tagmanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://tagmanager.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

