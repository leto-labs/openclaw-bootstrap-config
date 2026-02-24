# Threat Intelligence API

> threatintelligence.googleapis.com API.

## Overview

- **API**: `threatintelligence`
- **Version**: `v1beta`
- **Base URL**: `https://threatintelligence.googleapis.com/`
- **Docs**: [https://docs.cloud.google.com/threatintelligence/](https://docs.cloud.google.com/threatintelligence/)

## When to Use

threatintelligence.googleapis.com API.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const threatintelligence = google.threatintelligence('v1beta');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await threatintelligence.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://threatintelligence.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

