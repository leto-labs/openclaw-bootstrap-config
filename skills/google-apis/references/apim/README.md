# API Management API

> Enables users to discover shadow APIs in existing Google Cloud infrastructure.

## Overview

- **API**: `apim`
- **Version**: `v1alpha`
- **Base URL**: `https://apim.googleapis.com/`
- **Docs**: [https://cloud.google.com/apigee/](https://cloud.google.com/apigee/)

## When to Use

Enables users to discover shadow APIs in existing Google Cloud infrastructure.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const apim = google.apim('v1alpha');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await apim.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://apim.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

