# Transcoder API

> This API converts video files into formats suitable for consumer distribution. For more information, see the Transcoder API overview. 

## Overview

- **API**: `transcoder`
- **Version**: `v1`
- **Base URL**: `https://transcoder.googleapis.com/`
- **Docs**: [https://cloud.google.com/transcoder/docs/](https://cloud.google.com/transcoder/docs/)

## When to Use

This API converts video files into formats suitable for consumer distribution.
For more information, see the Transcoder API overview.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const transcoder = google.transcoder('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await transcoder.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://transcoder.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

