# Google Workspace Marketplace API

> Lets your Google Workspace Marketplace applications integrate with Google's installtion and licensing services. 

## Overview

- **API**: `appsmarket`
- **Version**: `v2`
- **Base URL**: `https://appsmarket.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/marketplace](https://developers.google.com/workspace/marketplace)

## When to Use

Lets your Google Workspace Marketplace applications integrate with Google's
installtion and licensing services.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const appsmarket = google.appsmarket('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await appsmarket.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://appsmarket.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

