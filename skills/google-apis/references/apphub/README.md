# App Hub API

> App Hub lets you build, operate, and manage applications on Google Cloud.

## Overview

- **API**: `apphub`
- **Version**: `v1`
- **Base URL**: `https://apphub.googleapis.com/`
- **Docs**: [https://cloud.google.com/app-hub/docs/](https://cloud.google.com/app-hub/docs/)

## When to Use

App Hub lets you build, operate, and manage applications on Google Cloud.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const apphub = google.apphub('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await apphub.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://apphub.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

