# Chrome Web Store API

> The Chrome Web Store API provides access to data about apps and extensions, as well as developer tools for managing them.

## Overview

- **API**: `chromewebstore`
- **Version**: `v2`
- **Base URL**: `https://chromewebstore.googleapis.com/`
- **Docs**: [https://developer.chrome.com/docs/webstore/api](https://developer.chrome.com/docs/webstore/api)

## When to Use

The Chrome Web Store API provides access to data about apps and extensions, as
well as developer tools for managing them.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const chromewebstore = google.chromewebstore('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await chromewebstore.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://chromewebstore.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

