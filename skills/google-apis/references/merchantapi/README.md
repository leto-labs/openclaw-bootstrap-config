# Merchant API

> Programmatically manage your Merchant Center Accounts.

## Overview

- **API**: `merchantapi`
- **Version**: `reviews_v1beta`
- **Base URL**: `https://merchantapi.googleapis.com/`
- **Docs**: [https://developers.google.com/merchant/api](https://developers.google.com/merchant/api)

## When to Use

Programmatically manage your Merchant Center Accounts.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const merchantapi = google.merchantapi('reviews_v1beta');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await merchantapi.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://merchantapi.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

