# Google Cloud Memorystore for Redis API

> Creates and manages Redis instances on the Google Cloud Platform.

## Overview

- **API**: `redis`
- **Version**: `v1`
- **Base URL**: `https://redis.googleapis.com/`
- **Docs**: [https://cloud.google.com/memorystore/docs/redis/](https://cloud.google.com/memorystore/docs/redis/)

## When to Use

Creates and manages Redis instances on the Google Cloud Platform.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const redis = google.redis('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await redis.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://redis.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

