# Service Directory API

> Service Directory is a platform for discovering, publishing, and connecting services. 

## Overview

- **API**: `servicedirectory`
- **Version**: `v1`
- **Base URL**: `https://servicedirectory.googleapis.com/`
- **Docs**: [https://cloud.google.com/service-directory](https://cloud.google.com/service-directory)

## When to Use

Service Directory is a platform for discovering, publishing, and connecting
services.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const servicedirectory = google.servicedirectory('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await servicedirectory.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://servicedirectory.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

