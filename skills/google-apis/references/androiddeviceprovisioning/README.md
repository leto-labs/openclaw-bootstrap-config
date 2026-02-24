# Android Device Provisioning Partner API

> Automates Android zero-touch enrollment for device resellers, customers, and EMMs.

## Overview

- **API**: `androiddeviceprovisioning`
- **Version**: `v1`
- **Base URL**: `https://androiddeviceprovisioning.googleapis.com/`
- **Docs**: [https://developers.google.com/zero-touch/](https://developers.google.com/zero-touch/)

## When to Use

Automates Android zero-touch enrollment for device resellers, customers, and
EMMs.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const androiddeviceprovisioning = google.androiddeviceprovisioning('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await androiddeviceprovisioning.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://androiddeviceprovisioning.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

