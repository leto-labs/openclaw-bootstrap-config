# Apps Script API

> Manages and executes Google Apps Script projects. 

## Overview

- **API**: `script`
- **Version**: `v1`
- **Base URL**: `https://script.googleapis.com/`
- **Docs**: [https://developers.google.com/apps-script/api/](https://developers.google.com/apps-script/api/)

## When to Use

Manages and executes Google Apps Script projects.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const script = google.script('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await script.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://script.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

