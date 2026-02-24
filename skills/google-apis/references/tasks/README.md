# Google Tasks API

> The Google Tasks API lets you manage your tasks and task lists.

## Overview

- **API**: `tasks`
- **Version**: `v1`
- **Base URL**: `https://tasks.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/tasks/](https://developers.google.com/workspace/tasks/)

## When to Use

The Google Tasks API lets you manage your tasks and task lists.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const tasks = google.tasks('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await tasks.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://tasks.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

