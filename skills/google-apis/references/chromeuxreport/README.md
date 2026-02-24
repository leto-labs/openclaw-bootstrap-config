# Chrome UX Report API

> The Chrome UX Report API lets you view real user experience data for millions of websites. 

## Overview

- **API**: `chromeuxreport`
- **Version**: `v1`
- **Base URL**: `https://chromeuxreport.googleapis.com/`
- **Docs**: [https://developers.google.com/web/tools/chrome-user-experience-report/api/reference](https://developers.google.com/web/tools/chrome-user-experience-report/api/reference)

## When to Use

The Chrome UX Report API lets you view real user experience data for millions of
websites.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const chromeuxreport = google.chromeuxreport('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await chromeuxreport.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://chromeuxreport.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

