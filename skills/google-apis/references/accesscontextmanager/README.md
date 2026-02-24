# Access Context Manager API

> An API for setting attribute based access control to requests to Google Cloud services. *Warning:* Do not mix *v1alpha* and *v1* API usage in the same access policy. The v1alpha API supports new Access Context Manager features, which may have different attributes or behaviors that are not supported by v1. The practice of mixed API usage within a policy may result in the inability to update that policy, including any access levels or service perimeters belonging to it. It is not recommended to use both v1 and v1alpha for modifying policies with critical service perimeters. Modifications using v1alpha should be limited to policies with non-production/non-critical service perimeters.

## Overview

- **API**: `accesscontextmanager`
- **Version**: `v1`
- **Base URL**: `https://accesscontextmanager.googleapis.com/`
- **Docs**: [https://cloud.google.com/access-context-manager/docs/reference/rest/](https://cloud.google.com/access-context-manager/docs/reference/rest/)

## When to Use

An API for setting attribute based access control to requests to Google Cloud
services. *Warning:* Do not mix *v1alpha* and *v1* API usage in the same access
policy. The v1alpha API supports new Access Context Manager features, which may
have different attributes or behaviors that are not supported by v1. The
practice of mixed API usage within a policy may result in the inability to
update that policy, including any access levels or service perimeters belonging
to it. It is not recommended to use both v1 and v1alpha for modifying policies
with critical service perimeters. Modifications using v1alpha should be limited
to policies with non-production/non-critical service perimeters.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const accesscontextmanager = google.accesscontextmanager('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await accesscontextmanager.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://accesscontextmanager.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

