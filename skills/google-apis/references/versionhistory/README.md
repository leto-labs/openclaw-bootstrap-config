# versionhistory.googleapis.com API

> Version History API - Prod

## Overview

- **API**: `versionhistory`
- **Version**: `v1`
- **Base URL**: `https://versionhistory.googleapis.com/`
- **Docs**: [https://developer.chrome.com/docs/web-platform/versionhistory/guide](https://developer.chrome.com/docs/web-platform/versionhistory/guide)

## When to Use

Version History API - Prod

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const versionhistory = google.versionhistory('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await versionhistory.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://versionhistory.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

