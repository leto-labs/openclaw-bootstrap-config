# Service Management API

> Google Service Management allows service producers to publish their services on Google Cloud Platform so that they can be discovered and used by service consumers.

## Overview

- **API**: `servicemanagement`
- **Version**: `v1`
- **Base URL**: `https://servicemanagement.googleapis.com/`
- **Docs**: [https://cloud.google.com/service-management/](https://cloud.google.com/service-management/)

## When to Use

Google Service Management allows service producers to publish their services on
Google Cloud Platform so that they can be discovered and used by service
consumers.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const servicemanagement = google.servicemanagement('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await servicemanagement.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://servicemanagement.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

