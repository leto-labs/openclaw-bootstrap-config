# Data Portability API

> The Data Portability API lets you build applications that request authorization from a user to move a copy of data from Google services into your application. This enables data portability and facilitates switching services.

## Overview

- **API**: `dataportability`
- **Version**: `v1`
- **Base URL**: `https://dataportability.googleapis.com/`
- **Docs**: [https://developers.google.com/data-portability](https://developers.google.com/data-portability)

## When to Use

The Data Portability API lets you build applications that request authorization
from a user to move a copy of data from Google services into your application.
This enables data portability and facilitates switching services.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const dataportability = google.dataportability('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await dataportability.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://dataportability.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

