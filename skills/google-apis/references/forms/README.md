# Google Forms API

> Reads and writes Google Forms and responses.

## Overview

- **API**: `forms`
- **Version**: `v1`
- **Base URL**: `https://forms.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/forms/api](https://developers.google.com/workspace/forms/api)

## When to Use

Reads and writes Google Forms and responses.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const forms = google.forms('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await forms.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://forms.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

