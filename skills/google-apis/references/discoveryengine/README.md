# Discovery Engine API

> Discovery Engine API.

## Overview

- **API**: `discoveryengine`
- **Version**: `v1`
- **Base URL**: `https://discoveryengine.googleapis.com/`
- **Docs**: [https://cloud.google.com/generative-ai-app-builder/docs/](https://cloud.google.com/generative-ai-app-builder/docs/)

## When to Use

Discovery Engine API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const discoveryengine = google.discoveryengine('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await discoveryengine.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://discoveryengine.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

