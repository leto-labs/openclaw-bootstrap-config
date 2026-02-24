# Secret Manager API

> Stores sensitive data such as API keys, passwords, and certificates. Provides convenience while improving security. 

## Overview

- **API**: `secretmanager`
- **Version**: `v1`
- **Base URL**: `https://secretmanager.googleapis.com/`
- **Docs**: [https://cloud.google.com/secret-manager/](https://cloud.google.com/secret-manager/)

## When to Use

Stores sensitive data such as API keys, passwords, and certificates. Provides
convenience while improving security.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const secretmanager = google.secretmanager('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await secretmanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://secretmanager.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

