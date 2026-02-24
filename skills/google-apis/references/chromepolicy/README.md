# Chrome Policy API

> The Chrome Policy API is a suite of services that allows Chrome administrators to control the policies applied to their managed Chrome OS devices and Chrome browsers.

## Overview

- **API**: `chromepolicy`
- **Version**: `v1`
- **Base URL**: `https://chromepolicy.googleapis.com/`
- **Docs**: [http://developers.google.com/chrome/policy](http://developers.google.com/chrome/policy)

## When to Use

The Chrome Policy API is a suite of services that allows Chrome administrators
to control the policies applied to their managed Chrome OS devices and Chrome
browsers.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const chromepolicy = google.chromepolicy('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await chromepolicy.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://chromepolicy.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

