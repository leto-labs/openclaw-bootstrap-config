# CSS API

> Programmatically manage your Comparison Shopping Service (CSS) account data at scale.

## Overview

- **API**: `css`
- **Version**: `v1`
- **Base URL**: `https://css.googleapis.com/`
- **Docs**: [https://developers.google.com/comparison-shopping-services/api/overview](https://developers.google.com/comparison-shopping-services/api/overview)

## When to Use

Programmatically manage your Comparison Shopping Service (CSS) account data at
scale.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const css = google.css('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await css.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://css.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

