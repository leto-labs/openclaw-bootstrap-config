# Payments Reseller Subscription API



## Overview

- **API**: `paymentsresellersubscription`
- **Version**: `v1`
- **Base URL**: `https://paymentsresellersubscription.googleapis.com/`
- **Docs**: [https://developers.google.com/payments/reseller/subscription/](https://developers.google.com/payments/reseller/subscription/)

## When to Use

Use the Payments Reseller Subscription API for programmatic access to paymentsresellersubscription functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const paymentsresellersubscription = google.paymentsresellersubscription('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await paymentsresellersubscription.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://paymentsresellersubscription.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

