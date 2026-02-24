# Cloud Domains API

> Enables management and configuration of domain names.

## Overview

- **API**: `domains`
- **Version**: `v1`
- **Base URL**: `https://domains.googleapis.com/`
- **Docs**: [https://cloud.google.com/domains/](https://cloud.google.com/domains/)

## When to Use

Enables management and configuration of domain names.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const domains = google.domains('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await domains.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://domains.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

