# Google Play Custom App Publishing API

> API to create and publish custom Android apps

## Overview

- **API**: `playcustomapp`
- **Version**: `v1`
- **Base URL**: `https://playcustomapp.googleapis.com/`
- **Docs**: [https://developers.google.com/android/work/play/custom-app-api/](https://developers.google.com/android/work/play/custom-app-api/)

## When to Use

API to create and publish custom Android apps

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const playcustomapp = google.playcustomapp('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await playcustomapp.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://playcustomapp.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

