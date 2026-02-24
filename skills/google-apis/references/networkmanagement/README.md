# Network Management API

> The Network Management API provides a collection of network performance monitoring and diagnostic capabilities.

## Overview

- **API**: `networkmanagement`
- **Version**: `v1`
- **Base URL**: `https://networkmanagement.googleapis.com/`
- **Docs**: [https://cloud.google.com/](https://cloud.google.com/)

## When to Use

The Network Management API provides a collection of network performance
monitoring and diagnostic capabilities.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const networkmanagement = google.networkmanagement('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await networkmanagement.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://networkmanagement.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

