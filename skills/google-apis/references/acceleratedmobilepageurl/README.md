# Accelerated Mobile Pages (AMP) URL API

> Retrieves the list of AMP URLs (and equivalent AMP Cache URLs) for a given list of public URL(s). 

## Overview

- **API**: `acceleratedmobilepageurl`
- **Version**: `v1`
- **Base URL**: `https://acceleratedmobilepageurl.googleapis.com/`
- **Docs**: [https://developers.google.com/amp/cache/](https://developers.google.com/amp/cache/)

## When to Use

Retrieves the list of AMP URLs (and equivalent AMP Cache URLs) for a given list
of public URL(s).

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const acceleratedmobilepageurl = google.acceleratedmobilepageurl('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await acceleratedmobilepageurl.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://acceleratedmobilepageurl.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

