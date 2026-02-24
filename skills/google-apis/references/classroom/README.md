# Google Classroom API

> Manages classes, rosters, and invitations in Google Classroom.

## Overview

- **API**: `classroom`
- **Version**: `v1`
- **Base URL**: `https://classroom.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/classroom/](https://developers.google.com/workspace/classroom/)

## When to Use

Manages classes, rosters, and invitations in Google Classroom.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const classroom = google.classroom('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await classroom.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://classroom.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

