# Kubernetes Engine API

> Builds and manages container-based applications, powered by the open source Kubernetes technology.

## Overview

- **API**: `container`
- **Version**: `v1`
- **Base URL**: `https://container.googleapis.com/`
- **Docs**: [https://cloud.google.com/kubernetes-engine/docs/](https://cloud.google.com/kubernetes-engine/docs/)

## When to Use

Builds and manages container-based applications, powered by the open source
Kubernetes technology.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const container = google.container('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await container.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://container.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

