# Content API for Shopping

> This API is deprecated. Please use Merchant API instead: https://developers.google.com/merchant/api. 

## Overview

- **API**: `content`
- **Version**: `v2.1`
- **Base URL**: `https://shoppingcontent.googleapis.com/content/v2.1/`
- **Docs**: [https://developers.google.com/shopping-content/v2/](https://developers.google.com/shopping-content/v2/)

## When to Use

This API is deprecated. Please use Merchant API instead:
https://developers.google.com/merchant/api.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const content = google.content('v2.1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await content.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://shoppingcontent.googleapis.com/content/v2.1/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

