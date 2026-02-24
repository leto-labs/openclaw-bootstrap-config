# Service Consumer Management API

> Manages the service consumers of a Service Infrastructure service.

## Overview

- **API**: `serviceconsumermanagement`
- **Version**: `v1`
- **Base URL**: `https://serviceconsumermanagement.googleapis.com/`
- **Docs**: [https://cloud.google.com/service-consumer-management/docs/overview](https://cloud.google.com/service-consumer-management/docs/overview)

## When to Use

Manages the service consumers of a Service Infrastructure service.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const serviceconsumermanagement = google.serviceconsumermanagement('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await serviceconsumermanagement.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://serviceconsumermanagement.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

