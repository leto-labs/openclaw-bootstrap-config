# Android Management API

> The Android Management API provides remote enterprise management of Android devices and apps.

## Overview

- **API**: `androidmanagement`
- **Version**: `v1`
- **Base URL**: `https://androidmanagement.googleapis.com/`
- **Docs**: [https://developers.google.com/android/management](https://developers.google.com/android/management)

## When to Use

The Android Management API provides remote enterprise management of Android
devices and apps.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const androidmanagement = google.androidmanagement('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await androidmanagement.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://androidmanagement.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

