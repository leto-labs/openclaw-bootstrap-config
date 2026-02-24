# My Business Business Information API

> The My Business Business Information API provides an interface for managing business information. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.

## Overview

- **API**: `mybusinessbusinessinformation`
- **Version**: `v1`
- **Base URL**: `https://mybusinessbusinessinformation.googleapis.com/`
- **Docs**: [https://developers.google.com/my-business/](https://developers.google.com/my-business/)

## When to Use

The My Business Business Information API provides an interface for managing
business information. Note - If you have a quota of 0 after enabling the API,
please request for GBP API access.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const mybusinessbusinessinformation = google.mybusinessbusinessinformation('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await mybusinessbusinessinformation.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://mybusinessbusinessinformation.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

