# Cloud Channel API

> The Cloud Channel API enables Google Cloud partners to have a single unified resale platform and APIs across all of Google Cloud including GCP, Workspace, Maps and Chrome.

## Overview

- **API**: `cloudchannel`
- **Version**: `v1`
- **Base URL**: `https://cloudchannel.googleapis.com/`
- **Docs**: [https://cloud.google.com/channel](https://cloud.google.com/channel)

## When to Use

The Cloud Channel API enables Google Cloud partners to have a single unified
resale platform and APIs across all of Google Cloud including GCP, Workspace,
Maps and Chrome.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudchannel = google.cloudchannel('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudchannel.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudchannel.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

