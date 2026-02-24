# Cloud Scheduler API

> Creates and manages jobs run on a regular recurring schedule.

## Overview

- **API**: `cloudscheduler`
- **Version**: `v1`
- **Base URL**: `https://cloudscheduler.googleapis.com/`
- **Docs**: [https://cloud.google.com/scheduler/](https://cloud.google.com/scheduler/)

## When to Use

Creates and manages jobs run on a regular recurring schedule.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const cloudscheduler = google.cloudscheduler('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await cloudscheduler.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://cloudscheduler.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

