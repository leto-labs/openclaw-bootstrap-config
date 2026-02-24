# NetApp API

> Google Cloud NetApp Volumes is a fully-managed, cloud-based data storage service that provides advanced data management capabilities and highly scalable performance with global availability.

## Overview

- **API**: `netapp`
- **Version**: `v1`
- **Base URL**: `https://netapp.googleapis.com/`
- **Docs**: [https://cloud.google.com/netapp/](https://cloud.google.com/netapp/)

## When to Use

Google Cloud NetApp Volumes is a fully-managed, cloud-based data storage service
that provides advanced data management capabilities and highly scalable
performance with global availability.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const netapp = google.netapp('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await netapp.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://netapp.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

