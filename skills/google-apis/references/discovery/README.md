# API Discovery Service

> Provides information about other Google APIs, such as what APIs are available, the resource, and method details for each API.

## Overview

- **API**: `discovery`
- **Version**: `v1`
- **Base URL**: `https://www.googleapis.com/discovery/v1/`
- **Docs**: [https://developers.google.com/discovery/](https://developers.google.com/discovery/)

## When to Use

Provides information about other Google APIs, such as what APIs are available,
the resource, and method details for each API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const discovery = google.discovery('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await discovery.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://www.googleapis.com/discovery/v1/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

