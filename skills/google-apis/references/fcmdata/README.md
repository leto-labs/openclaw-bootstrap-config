# Firebase Cloud Messaging Data API

> Provides additional information about Firebase Cloud Messaging (FCM) message sends and deliveries.

## Overview

- **API**: `fcmdata`
- **Version**: `v1beta1`
- **Base URL**: `https://fcmdata.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/cloud-messaging](https://firebase.google.com/docs/cloud-messaging)

## When to Use

Provides additional information about Firebase Cloud Messaging (FCM) message
sends and deliveries.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const fcmdata = google.fcmdata('v1beta1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await fcmdata.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://fcmdata.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

