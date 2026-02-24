# Safe Browsing API

> Enables client applications to check web resources (most commonly URLs) against Google-generated lists of unsafe web resources. The Safe Browsing APIs are for non-commercial use only. If you need to use APIs to detect malicious URLs for commercial purposes – meaning “for sale or revenue-generating purposes” – please refer to the Web Risk API.

## Overview

- **API**: `safebrowsing`
- **Version**: `v5`
- **Base URL**: `https://safebrowsing.googleapis.com/`
- **Docs**: [https://developers.google.com/safe-browsing/](https://developers.google.com/safe-browsing/)

## When to Use

Enables client applications to check web resources (most commonly URLs) against
Google-generated lists of unsafe web resources. The Safe Browsing APIs are for
non-commercial use only. If you need to use APIs to detect malicious URLs for
commercial purposes – meaning “for sale or revenue-generating purposes” – please
refer to the Web Risk API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const safebrowsing = google.safebrowsing('v5');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await safebrowsing.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://safebrowsing.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

