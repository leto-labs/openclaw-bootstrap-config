# Cloud Translation API

> Integrates text translation into your website or application.

## Overview

- **API**: `translate`
- **Version**: `v3`
- **Base URL**: `https://translation.googleapis.com/`
- **Docs**: [https://cloud.google.com/translate/docs/quickstarts](https://cloud.google.com/translate/docs/quickstarts)

## When to Use

Integrates text translation into your website or application.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const translate = google.translate('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await translate.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://translation.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

