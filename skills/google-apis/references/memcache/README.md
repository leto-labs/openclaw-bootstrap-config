# Cloud Memorystore for Memcached API

> Google Cloud Memorystore for Memcached API is used for creating and managing Memcached instances in GCP.

## Overview

- **API**: `memcache`
- **Version**: `v1`
- **Base URL**: `https://memcache.googleapis.com/`
- **Docs**: [https://cloud.google.com/memorystore/](https://cloud.google.com/memorystore/)

## When to Use

Google Cloud Memorystore for Memcached API is used for creating and managing
Memcached instances in GCP.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const memcache = google.memcache('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await memcache.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://memcache.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

