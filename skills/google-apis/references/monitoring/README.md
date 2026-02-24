# Cloud Monitoring API

> Manages your Cloud Monitoring data and configurations.

## Overview

- **API**: `monitoring`
- **Version**: `v3`
- **Base URL**: `https://monitoring.googleapis.com/`
- **Docs**: [https://cloud.google.com/monitoring/api/](https://cloud.google.com/monitoring/api/)

## When to Use

Manages your Cloud Monitoring data and configurations.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const monitoring = google.monitoring('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await monitoring.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://monitoring.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

