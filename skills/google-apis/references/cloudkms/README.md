# Cloud Key Management Service (KMS) API

> Manages keys and performs cryptographic operations in a central cloud service, for direct use by other cloud resources and applications. 

## Overview

- **API**: `cloudkms`
- **Version**: `v1`
- **Base URL**: `https://cloudkms.googleapis.com/`
- **Docs**: [https://cloud.google.com/kms/](https://cloud.google.com/kms/)

## When to Use

Manages keys and performs cryptographic operations in a central cloud service,
for direct use by other cloud resources and applications.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudkms = google.cloudkms('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudkms.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudkms.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

