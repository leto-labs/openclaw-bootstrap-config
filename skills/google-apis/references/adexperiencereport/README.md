# Ad Experience Report API

> Views Ad Experience Report data, and gets a list of sites that have a significant number of annoying ads.

## Overview

- **API**: `adexperiencereport`
- **Version**: `v1`
- **Base URL**: `https://adexperiencereport.googleapis.com/`
- **Docs**: [https://developers.google.com/ad-experience-report/](https://developers.google.com/ad-experience-report/)

## When to Use

Views Ad Experience Report data, and gets a list of sites that have a
significant number of annoying ads.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const adexperiencereport = google.adexperiencereport('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await adexperiencereport.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://adexperiencereport.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

