# VMware Engine API

> The Google VMware Engine API lets you programmatically manage VMware environments.

## Overview

- **API**: `vmwareengine`
- **Version**: `v1`
- **Base URL**: `https://vmwareengine.googleapis.com/`
- **Docs**: [https://cloud.google.com/solutions/vmware-as-a-service](https://cloud.google.com/solutions/vmware-as-a-service)

## When to Use

The Google VMware Engine API lets you programmatically manage VMware
environments.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const vmwareengine = google.vmwareengine('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await vmwareengine.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://vmwareengine.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

