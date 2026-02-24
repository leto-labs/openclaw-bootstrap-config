# Manufacturer Center API

> Public API for managing Manufacturer Center related data.

## Overview

- **API**: `manufacturers`
- **Version**: `v1`
- **Base URL**: `https://manufacturers.googleapis.com/`
- **Docs**: [https://developers.google.com/manufacturers/](https://developers.google.com/manufacturers/)

## When to Use

Public API for managing Manufacturer Center related data.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const manufacturers = google.manufacturers('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await manufacturers.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://manufacturers.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

