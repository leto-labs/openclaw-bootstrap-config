# People API

> Provides access to information about profiles and contacts.

## Overview

- **API**: `people`
- **Version**: `v1`
- **Base URL**: `https://people.googleapis.com/`
- **Docs**: [https://developers.google.com/people/](https://developers.google.com/people/)

## When to Use

Provides access to information about profiles and contacts.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const people = google.people('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await people.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://people.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

