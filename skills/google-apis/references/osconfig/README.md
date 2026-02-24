# OS Config API

> OS management tools that can be used for patch management, patch compliance, and configuration management on VM instances.

## Overview

- **API**: `osconfig`
- **Version**: `v2`
- **Base URL**: `https://osconfig.googleapis.com/`
- **Docs**: [https://cloud.google.com/compute/docs/osconfig/rest](https://cloud.google.com/compute/docs/osconfig/rest)

## When to Use

OS management tools that can be used for patch management, patch compliance, and
configuration management on VM instances.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const osconfig = google.osconfig('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await osconfig.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://osconfig.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

