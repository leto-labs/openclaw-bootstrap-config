# Cloud Video Intelligence API

> Detects objects, explicit content, and scene changes in videos. It also specifies the region for annotation and transcribes speech to text. Supports both asynchronous API and streaming API.

## Overview

- **API**: `videointelligence`
- **Version**: `v1`
- **Base URL**: `https://videointelligence.googleapis.com/`
- **Docs**: [https://cloud.google.com/video-intelligence/docs/](https://cloud.google.com/video-intelligence/docs/)

## When to Use

Detects objects, explicit content, and scene changes in videos. It also
specifies the region for annotation and transcribes speech to text. Supports
both asynchronous API and streaming API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const videointelligence = google.videointelligence('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await videointelligence.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://videointelligence.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

