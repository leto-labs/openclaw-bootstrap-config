# Groups Migration API

> The Groups Migration API allows domain administrators to archive emails into Google groups.

## Overview

- **API**: `groupsmigration`
- **Version**: `v1`
- **Base URL**: `https://groupsmigration.googleapis.com/`
- **Docs**: [https://developers.google.com/google-apps/groups-migration/](https://developers.google.com/google-apps/groups-migration/)

## When to Use

The Groups Migration API allows domain administrators to archive emails into
Google groups.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const groupsmigration = google.groupsmigration('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await groupsmigration.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://groupsmigration.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

