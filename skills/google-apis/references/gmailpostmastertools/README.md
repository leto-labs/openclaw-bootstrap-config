# Gmail Postmaster Tools API

> The Postmaster Tools API is a RESTful API that provides programmatic access to email traffic metrics (like spam reports, delivery errors etc) otherwise available through the Gmail Postmaster Tools UI currently.

## Overview

- **API**: `gmailpostmastertools`
- **Version**: `v2`
- **Base URL**: `https://gmailpostmastertools.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/gmail/postmaster](https://developers.google.com/workspace/gmail/postmaster)

## When to Use

The Postmaster Tools API is a RESTful API that provides programmatic access to
email traffic metrics (like spam reports, delivery errors etc) otherwise
available through the Gmail Postmaster Tools UI currently.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const gmailpostmastertools = google.gmailpostmastertools('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await gmailpostmastertools.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://gmailpostmastertools.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

