# Security Token Service API

> The Security Token Service exchanges Google or third-party credentials for a short-lived access token to Google Cloud resources.

## Overview

- **API**: `sts`
- **Version**: `v1`
- **Base URL**: `https://sts.googleapis.com/`
- **Docs**: [http://cloud.google.com/iam/docs/workload-identity-federation](http://cloud.google.com/iam/docs/workload-identity-federation)

## When to Use

The Security Token Service exchanges Google or third-party credentials for a
short-lived access token to Google Cloud resources.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const sts = google.sts('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await sts.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://sts.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

