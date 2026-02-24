# Google Analytics API

> Views and manages your Google Analytics data.

## Overview

- **API**: `analytics`
- **Version**: `v3`
- **Base URL**: `https://analytics.googleapis.com/analytics/v3/`
- **Docs**: [https://developers.google.com/analytics/](https://developers.google.com/analytics/)

## When to Use

Views and manages your Google Analytics data.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const analytics = google.analytics('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await analytics.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://analytics.googleapis.com/analytics/v3/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

