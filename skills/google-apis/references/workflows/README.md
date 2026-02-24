# Workflows API

> Manage workflow definitions. To execute workflows and manage executions, see the Workflows Executions API.

## Overview

- **API**: `workflows`
- **Version**: `v1`
- **Base URL**: `https://workflows.googleapis.com/`
- **Docs**: [https://cloud.google.com/workflows](https://cloud.google.com/workflows)

## When to Use

Manage workflow definitions. To execute workflows and manage executions, see the
Workflows Executions API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const workflows = google.workflows('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await workflows.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://workflows.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

