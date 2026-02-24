# Developer Connect API

> Connect third-party source code management to Google

## Overview

- **API**: `developerconnect`
- **Version**: `v1`
- **Base URL**: `https://developerconnect.googleapis.com/`
- **Docs**: [http://cloud.google.com/developer-connect/docs/overview](http://cloud.google.com/developer-connect/docs/overview)

## When to Use

Connect third-party source code management to Google

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const developerconnect = google.developerconnect('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await developerconnect.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://developerconnect.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

