# Eventarc API

> Build event-driven applications on Google Cloud Platform.

## Overview

- **API**: `eventarc`
- **Version**: `v1`
- **Base URL**: `https://eventarc.googleapis.com/`
- **Docs**: [https://cloud.google.com/eventarc](https://cloud.google.com/eventarc)

## When to Use

Build event-driven applications on Google Cloud Platform.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const eventarc = google.eventarc('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await eventarc.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://eventarc.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

