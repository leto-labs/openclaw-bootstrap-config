# Cloud Datastore API

> Accesses the schemaless NoSQL database to provide fully managed, robust, scalable storage for your application. 

## Overview

- **API**: `datastore`
- **Version**: `v1`
- **Base URL**: `https://datastore.googleapis.com/`
- **Docs**: [https://cloud.google.com/datastore/](https://cloud.google.com/datastore/)

## When to Use

Accesses the schemaless NoSQL database to provide fully managed, robust,
scalable storage for your application.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const datastore = google.datastore('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await datastore.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://datastore.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

