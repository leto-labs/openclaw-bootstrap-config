# Cloud Tasks API

> Manages the execution of large numbers of distributed requests.

## Overview

- **API**: `cloudtasks`
- **Version**: `v2`
- **Base URL**: `https://cloudtasks.googleapis.com/`
- **Docs**: [https://cloud.google.com/tasks/](https://cloud.google.com/tasks/)

## When to Use

Manages the execution of large numbers of distributed requests.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudtasks = google.cloudtasks('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudtasks.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudtasks.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

