# Cloud Runtime Configuration API

> The Runtime Configurator allows you to dynamically configure and expose variables through Google Cloud Platform. In addition, you can also set Watchers and Waiters that will watch for changes to your data and return based on certain conditions.

## Overview

- **API**: `runtimeconfig`
- **Version**: `v1`
- **Base URL**: `https://runtimeconfig.googleapis.com/`
- **Docs**: [https://cloud.google.com/deployment-manager/runtime-configurator/](https://cloud.google.com/deployment-manager/runtime-configurator/)

## When to Use

The Runtime Configurator allows you to dynamically configure and expose
variables through Google Cloud Platform. In addition, you can also set Watchers
and Waiters that will watch for changes to your data and return based on certain
conditions.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const runtimeconfig = google.runtimeconfig('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await runtimeconfig.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://runtimeconfig.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

