# My Business Lodging API

> The My Business Lodging API enables managing lodging business information on Google. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.

## Overview

- **API**: `mybusinesslodging`
- **Version**: `v1`
- **Base URL**: `https://mybusinesslodging.googleapis.com/`
- **Docs**: [https://developers.google.com/my-business/](https://developers.google.com/my-business/)

## When to Use

The My Business Lodging API enables managing lodging business information on
Google. Note - If you have a quota of 0 after enabling the API, please request
for GBP API access.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const mybusinesslodging = google.mybusinesslodging('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await mybusinesslodging.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://mybusinesslodging.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

