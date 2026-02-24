# Contact Center AI Platform API



## Overview

- **API**: `contactcenteraiplatform`
- **Version**: `v1alpha1`
- **Base URL**: `https://contactcenteraiplatform.googleapis.com/`
- **Docs**: [https://cloud.google.com/solutions/contact-center-ai-platform](https://cloud.google.com/solutions/contact-center-ai-platform)

## When to Use

Use the Contact Center AI Platform API for programmatic access to contactcenteraiplatform functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const contactcenteraiplatform = google.contactcenteraiplatform('v1alpha1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await contactcenteraiplatform.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://contactcenteraiplatform.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

