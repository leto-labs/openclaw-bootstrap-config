# Drive Activity API

> Provides a historical view of activity in Google Drive.

## Overview

- **API**: `driveactivity`
- **Version**: `v2`
- **Base URL**: `https://driveactivity.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/drive/activity/](https://developers.google.com/workspace/drive/activity/)

## When to Use

Provides a historical view of activity in Google Drive.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const driveactivity = google.driveactivity('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await driveactivity.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://driveactivity.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

