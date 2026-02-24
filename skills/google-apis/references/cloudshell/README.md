# Cloud Shell API

> Allows users to start, configure, and connect to interactive shell sessions running in the cloud. 

## Overview

- **API**: `cloudshell`
- **Version**: `v1`
- **Base URL**: `https://cloudshell.googleapis.com/`
- **Docs**: [https://cloud.google.com/shell/docs/](https://cloud.google.com/shell/docs/)

## When to Use

Allows users to start, configure, and connect to interactive shell sessions
running in the cloud.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudshell = google.cloudshell('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudshell.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudshell.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

