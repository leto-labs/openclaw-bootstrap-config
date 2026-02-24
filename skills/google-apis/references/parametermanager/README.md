# Parameter Manager API

> Parameter Manager is a single source of truth to store, access and manage the lifecycle of your workload parameters. Parameter Manager aims to make management of sensitive application parameters effortless for customers without diminishing focus on security.

## Overview

- **API**: `parametermanager`
- **Version**: `v1`
- **Base URL**: `https://parametermanager.googleapis.com/`
- **Docs**: [https://cloud.google.com/secret-manager/parameter-manager/docs/overview](https://cloud.google.com/secret-manager/parameter-manager/docs/overview)

## When to Use

Parameter Manager is a single source of truth to store, access and manage the
lifecycle of your workload parameters. Parameter Manager aims to make management
of sensitive application parameters effortless for customers without diminishing
focus on security.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const parametermanager = google.parametermanager('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await parametermanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://parametermanager.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

