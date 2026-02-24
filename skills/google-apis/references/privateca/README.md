# Certificate Authority API

> The Certificate Authority Service API is a highly-available, scalable service that enables you to simplify and automate the management of private certificate authorities (CAs) while staying in control of your private keys. 

## Overview

- **API**: `privateca`
- **Version**: `v1`
- **Base URL**: `https://privateca.googleapis.com/`
- **Docs**: [https://cloud.google.com/](https://cloud.google.com/)

## When to Use

The Certificate Authority Service API is a highly-available, scalable service
that enables you to simplify and automate the management of private certificate
authorities (CAs) while staying in control of your private keys.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const privateca = google.privateca('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await privateca.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://privateca.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

