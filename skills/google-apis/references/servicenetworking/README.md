# Service Networking API

> Provides automatic management of network configurations necessary for certain services.

## Overview

- **API**: `servicenetworking`
- **Version**: `v1`
- **Base URL**: `https://servicenetworking.googleapis.com/`
- **Docs**: [https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started)

## When to Use

Provides automatic management of network configurations necessary for certain
services.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const servicenetworking = google.servicenetworking('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await servicenetworking.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://servicenetworking.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

