# Workflow Executions API

> Execute workflows created with Workflows API.

## Overview

- **API**: `workflowexecutions`
- **Version**: `v1`
- **Base URL**: `https://workflowexecutions.googleapis.com/`
- **Docs**: [https://cloud.google.com/workflows](https://cloud.google.com/workflows)

## When to Use

Execute workflows created with Workflows API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const workflowexecutions = google.workflowexecutions('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await workflowexecutions.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://workflowexecutions.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

