# Secure Source Manager API

> Regionally deployed, single-tenant managed source code repository hosted on Google Cloud.

## Overview

- **API**: `securesourcemanager`
- **Version**: `v1`
- **Base URL**: `https://securesourcemanager.googleapis.com/`
- **Docs**: [https://cloud.google.com/secure-source-manager](https://cloud.google.com/secure-source-manager)

## When to Use

Regionally deployed, single-tenant managed source code repository hosted on
Google Cloud.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const securesourcemanager = google.securesourcemanager('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await securesourcemanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://securesourcemanager.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

