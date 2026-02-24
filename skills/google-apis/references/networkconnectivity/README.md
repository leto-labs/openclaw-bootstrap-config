# Network Connectivity API

> This API enables connectivity with and between Google Cloud resources.

## Overview

- **API**: `networkconnectivity`
- **Version**: `v1`
- **Base URL**: `https://networkconnectivity.googleapis.com/`
- **Docs**: [https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest)

## When to Use

This API enables connectivity with and between Google Cloud resources.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const networkconnectivity = google.networkconnectivity('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await networkconnectivity.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://networkconnectivity.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

