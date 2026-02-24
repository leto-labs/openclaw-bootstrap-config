# Pollen API

> The Pollen API. 

## Overview

- **API**: `pollen`
- **Version**: `v1`
- **Base URL**: `https://pollen.googleapis.com/`
- **Docs**: [https://developers.google.com/maps/documentation/pollen](https://developers.google.com/maps/documentation/pollen)

## When to Use

The Pollen API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const pollen = google.pollen('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await pollen.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://pollen.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

