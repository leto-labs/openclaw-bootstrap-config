# Service Control API

> Provides admission control and telemetry reporting for services integrated with Service Infrastructure. 

## Overview

- **API**: `servicecontrol`
- **Version**: `v2`
- **Base URL**: `https://servicecontrol.googleapis.com/`
- **Docs**: [https://cloud.google.com/service-control/](https://cloud.google.com/service-control/)

## When to Use

Provides admission control and telemetry reporting for services integrated with
Service Infrastructure.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const servicecontrol = google.servicecontrol('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await servicecontrol.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://servicecontrol.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

