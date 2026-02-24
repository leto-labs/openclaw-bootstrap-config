# Gemini Enterprise for Customer Experience API



## Overview

- **API**: `ces`
- **Version**: `v1`
- **Base URL**: `https://ces.googleapis.com/`
- **Docs**: [https://cloud.google.com/customer-engagement-ai/conversational-agents/ps/reference](https://cloud.google.com/customer-engagement-ai/conversational-agents/ps/reference)

## When to Use

Use the Gemini Enterprise for Customer Experience API for programmatic access to ces functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const ces = google.ces('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await ces.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://ces.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

