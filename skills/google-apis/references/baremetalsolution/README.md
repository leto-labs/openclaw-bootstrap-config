# Bare Metal Solution API

> Provides ways to manage Bare Metal Solution hardware installed in a regional extension located near a Google Cloud data center.

## Overview

- **API**: `baremetalsolution`
- **Version**: `v2`
- **Base URL**: `https://baremetalsolution.googleapis.com/`
- **Docs**: [https://cloud.google.com/bare-metal](https://cloud.google.com/bare-metal)

## When to Use

Provides ways to manage Bare Metal Solution hardware installed in a regional
extension located near a Google Cloud data center.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const baremetalsolution = google.baremetalsolution('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await baremetalsolution.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://baremetalsolution.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

