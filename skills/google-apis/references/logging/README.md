# Cloud Logging API

> Writes log entries and manages your Cloud Logging configuration.

## Overview

- **API**: `logging`
- **Version**: `v2`
- **Base URL**: `https://logging.googleapis.com/`
- **Docs**: [https://cloud.google.com/logging/docs/](https://cloud.google.com/logging/docs/)

## When to Use

Writes log entries and manages your Cloud Logging configuration.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const logging = google.logging('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await logging.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://logging.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

