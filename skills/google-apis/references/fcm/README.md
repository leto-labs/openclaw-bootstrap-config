# Firebase Cloud Messaging API

> FCM send API that provides a cross-platform messaging solution to reliably deliver messages.

## Overview

- **API**: `fcm`
- **Version**: `v1`
- **Base URL**: `https://fcm.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/cloud-messaging](https://firebase.google.com/docs/cloud-messaging)

## When to Use

FCM send API that provides a cross-platform messaging solution to reliably
deliver messages.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const fcm = google.fcm('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await fcm.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://fcm.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

