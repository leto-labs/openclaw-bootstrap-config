# DoubleClick Bid Manager API

> DoubleClick Bid Manager API allows users to manage and create campaigns and reports.

## Overview

- **API**: `doubleclickbidmanager`
- **Version**: `v2`
- **Base URL**: `https://doubleclickbidmanager.googleapis.com/v2/`
- **Docs**: [https://developers.google.com/bid-manager/](https://developers.google.com/bid-manager/)

## When to Use

DoubleClick Bid Manager API allows users to manage and create campaigns and
reports.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const doubleclickbidmanager = google.doubleclickbidmanager('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await doubleclickbidmanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://doubleclickbidmanager.googleapis.com/v2/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

