# Cloud Spanner API

> Cloud Spanner is a managed, mission-critical, globally consistent and scalable relational database service.

## Overview

- **API**: `spanner`
- **Version**: `v1`
- **Base URL**: `https://spanner.googleapis.com/`
- **Docs**: [https://cloud.google.com/spanner/](https://cloud.google.com/spanner/)

## When to Use

Cloud Spanner is a managed, mission-critical, globally consistent and scalable
relational database service.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const spanner = google.spanner('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await spanner.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://spanner.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

