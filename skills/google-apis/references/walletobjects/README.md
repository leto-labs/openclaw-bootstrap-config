# Google Wallet API

> API for issuers to save and manage Google Wallet Objects.

## Overview

- **API**: `walletobjects`
- **Version**: `v1`
- **Base URL**: `https://walletobjects.googleapis.com/`
- **Docs**: [https://developers.google.com/pay/passes](https://developers.google.com/pay/passes)

## When to Use

API for issuers to save and manage Google Wallet Objects.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const walletobjects = google.walletobjects('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await walletobjects.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://walletobjects.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

