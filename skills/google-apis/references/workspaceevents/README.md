# Google Workspace Events API

> The Google Workspace Events API lets you subscribe to events and manage change notifications across Google Workspace applications.

## Overview

- **API**: `workspaceevents`
- **Version**: `v1`
- **Base URL**: `https://workspaceevents.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/events](https://developers.google.com/workspace/events)

## When to Use

The Google Workspace Events API lets you subscribe to events and manage change
notifications across Google Workspace applications.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const workspaceevents = google.workspaceevents('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await workspaceevents.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://workspaceevents.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

