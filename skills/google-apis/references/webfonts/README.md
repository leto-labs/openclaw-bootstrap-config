# Web Fonts Developer API

> The Google Web Fonts Developer API lets you retrieve information about web fonts served by Google.

## Overview

- **API**: `webfonts`
- **Version**: `v1`
- **Base URL**: `https://webfonts.googleapis.com/`
- **Docs**: [https://developers.google.com/fonts/docs/developer_api](https://developers.google.com/fonts/docs/developer_api)

## When to Use

The Google Web Fonts Developer API lets you retrieve information about web fonts
served by Google.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const webfonts = google.webfonts('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await webfonts.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://webfonts.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

