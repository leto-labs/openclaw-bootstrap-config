# Google Search Console API

> The Search Console API provides access to both Search Console data (verified users only) and to public information on an URL basis (anyone)

## Overview

- **API**: `searchconsole`
- **Version**: `v1`
- **Base URL**: `https://searchconsole.googleapis.com/`
- **Docs**: [https://developers.google.com/webmaster-tools/about](https://developers.google.com/webmaster-tools/about)

## When to Use

The Search Console API provides access to both Search Console data (verified
users only) and to public information on an URL basis (anyone)

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const searchconsole = google.searchconsole('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await searchconsole.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://searchconsole.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

