# Google Workspace Alert Center API

> Manages alerts on issues affecting your domain. Note: The current version of this API (v1beta1) is available to all Google Workspace customers. 

## Overview

- **API**: `alertcenter`
- **Version**: `v1beta1`
- **Base URL**: `https://alertcenter.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/admin/alertcenter/](https://developers.google.com/workspace/admin/alertcenter/)

## When to Use

Manages alerts on issues affecting your domain. Note: The current version of
this API (v1beta1) is available to all Google Workspace customers.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const alertcenter = google.alertcenter('v1beta1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await alertcenter.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://alertcenter.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

