# Backup and DR Service API



## Overview

- **API**: `backupdr`
- **Version**: `v1`
- **Base URL**: `https://backupdr.googleapis.com/`
- **Docs**: [https://cloud.google.com/backup-disaster-recovery](https://cloud.google.com/backup-disaster-recovery)

## When to Use

Use the Backup and DR Service API for programmatic access to backupdr functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const backupdr = google.backupdr('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await backupdr.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://backupdr.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

