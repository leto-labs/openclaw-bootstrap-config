# Business Profile Performance API

> The Business Profile Performance API allows merchants to fetch performance reports about their business profile on Google. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.

## Overview

- **API**: `businessprofileperformance`
- **Version**: `v1`
- **Base URL**: `https://businessprofileperformance.googleapis.com/`
- **Docs**: [https://developers.google.com/my-business/](https://developers.google.com/my-business/)

## When to Use

The Business Profile Performance API allows merchants to fetch performance
reports about their business profile on Google. Note - If you have a quota of 0
after enabling the API, please request for GBP API access.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const businessprofileperformance = google.businessprofileperformance('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await businessprofileperformance.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://businessprofileperformance.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

