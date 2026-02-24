# Google Civic Information API

> Provides polling places, early vote locations, contest data, election officials, and government representatives for U.S. residential addresses.

## Overview

- **API**: `civicinfo`
- **Version**: `v2`
- **Base URL**: `https://civicinfo.googleapis.com/`
- **Docs**: [https://developers.google.com/civic-information/](https://developers.google.com/civic-information/)

## When to Use

Provides polling places, early vote locations, contest data, election officials,
and government representatives for U.S. residential addresses.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const civicinfo = google.civicinfo('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await civicinfo.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://civicinfo.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

