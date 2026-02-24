# Google Play EMM API

> Manages the deployment of apps to Android Enterprise devices.

## Overview

- **API**: `androidenterprise`
- **Version**: `v1`
- **Base URL**: `https://androidenterprise.googleapis.com/`
- **Docs**: [https://developers.google.com/android/work/play/emm-api](https://developers.google.com/android/work/play/emm-api)

## When to Use

Manages the deployment of apps to Android Enterprise devices.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const androidenterprise = google.androidenterprise('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await androidenterprise.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://androidenterprise.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

