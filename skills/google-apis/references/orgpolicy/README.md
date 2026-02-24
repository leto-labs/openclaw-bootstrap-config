# Organization Policy API

> The Organization Policy API allows users to configure governance rules on their Google Cloud resources across the resource hierarchy.

## Overview

- **API**: `orgpolicy`
- **Version**: `v2`
- **Base URL**: `https://orgpolicy.googleapis.com/`
- **Docs**: [https://cloud.google.com/orgpolicy/docs/reference/rest/index.html](https://cloud.google.com/orgpolicy/docs/reference/rest/index.html)

## When to Use

The Organization Policy API allows users to configure governance rules on their
Google Cloud resources across the resource hierarchy.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const orgpolicy = google.orgpolicy('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await orgpolicy.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://orgpolicy.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

