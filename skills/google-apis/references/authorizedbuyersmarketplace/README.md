# Authorized Buyers Marketplace API

> The Authorized Buyers Marketplace API lets buyers programmatically discover inventory; propose, retrieve and negotiate deals with publishers.

## Overview

- **API**: `authorizedbuyersmarketplace`
- **Version**: `v1`
- **Base URL**: `https://authorizedbuyersmarketplace.googleapis.com/`
- **Docs**: [https://developers.google.com/authorized-buyers/apis/marketplace/reference/rest/](https://developers.google.com/authorized-buyers/apis/marketplace/reference/rest/)

## When to Use

The Authorized Buyers Marketplace API lets buyers programmatically discover
inventory; propose, retrieve and negotiate deals with publishers.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const authorizedbuyersmarketplace = google.authorizedbuyersmarketplace('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await authorizedbuyersmarketplace.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://authorizedbuyersmarketplace.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

