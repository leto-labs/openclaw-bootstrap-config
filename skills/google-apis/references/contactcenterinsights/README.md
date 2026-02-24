# Contact Center AI Insights API



## Overview

- **API**: `contactcenterinsights`
- **Version**: `v1`
- **Base URL**: `https://contactcenterinsights.googleapis.com/`
- **Docs**: [https://cloud.google.com/contact-center/insights/docs](https://cloud.google.com/contact-center/insights/docs)

## When to Use

Use the Contact Center AI Insights API for programmatic access to contactcenterinsights functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const contactcenterinsights = google.contactcenterinsights('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await contactcenterinsights.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://contactcenterinsights.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

