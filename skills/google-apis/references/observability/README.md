# Observability API

> Provides functionality for configuring the observability scope, which controls the log, metric, and trace data that you can view.

## Overview

- **API**: `observability`
- **Version**: `v1`
- **Base URL**: `https://observability.googleapis.com/`
- **Docs**: [https://cloud.google.com/stackdriver/docs/](https://cloud.google.com/stackdriver/docs/)

## When to Use

Provides functionality for configuring the observability scope, which controls
the log, metric, and trace data that you can view.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const observability = google.observability('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await observability.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://observability.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

