# Ad Exchange Buyer API II

> Accesses the latest features for managing Authorized Buyers accounts, Real-Time Bidding configurations and auction metrics, and Marketplace programmatic deals.

## Overview

- **API**: `adexchangebuyer2`
- **Version**: `v2beta1`
- **Base URL**: `https://adexchangebuyer.googleapis.com/`
- **Docs**: [https://developers.google.com/authorized-buyers/apis/reference/rest/](https://developers.google.com/authorized-buyers/apis/reference/rest/)

## When to Use

Accesses the latest features for managing Authorized Buyers accounts, Real-Time
Bidding configurations and auction metrics, and Marketplace programmatic deals.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const adexchangebuyer2 = google.adexchangebuyer2('v2beta1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await adexchangebuyer2.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://adexchangebuyer.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

