# Google OAuth2 API

> Obtains end-user authorization grants for use with other Google APIs.

## Overview

- **API**: `oauth2`
- **Version**: `v2`
- **Base URL**: `https://www.googleapis.com/`
- **Docs**: [https://developers.google.com/identity/protocols/oauth2/](https://developers.google.com/identity/protocols/oauth2/)

## When to Use

Obtains end-user authorization grants for use with other Google APIs.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const oauth2 = google.oauth2('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await oauth2.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://www.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

