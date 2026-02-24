# Smart Device Management API

> Allow select enterprise partners to access, control, and manage Google and Nest devices programmatically.

## Overview

- **API**: `smartdevicemanagement`
- **Version**: `v1`
- **Base URL**: `https://smartdevicemanagement.googleapis.com/`
- **Docs**: [https://developers.google.com/nest/device-access](https://developers.google.com/nest/device-access)

## When to Use

Allow select enterprise partners to access, control, and manage Google and Nest
devices programmatically.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const smartdevicemanagement = google.smartdevicemanagement('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await smartdevicemanagement.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://smartdevicemanagement.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

