# Google Site Verification API

> Verifies ownership of websites or domains with Google.

## Overview

- **API**: `siteVerification`
- **Version**: `v1`
- **Base URL**: `https://www.googleapis.com/siteVerification/v1/`
- **Docs**: [https://developers.google.com/site-verification/](https://developers.google.com/site-verification/)

## When to Use

Verifies ownership of websites or domains with Google.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const siteVerification = google.siteVerification('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await siteVerification.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://www.googleapis.com/siteVerification/v1/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

