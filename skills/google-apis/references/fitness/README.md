# Fitness API

> The Fitness API for managing users' fitness tracking data.

## Overview

- **API**: `fitness`
- **Version**: `v1`
- **Base URL**: `https://fitness.googleapis.com/fitness/v1/users/`
- **Docs**: [https://developers.google.com/fit/rest/v1/get-started](https://developers.google.com/fit/rest/v1/get-started)

## When to Use

The Fitness API for managing users' fitness tracking data.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const fitness = google.fitness('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await fitness.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://fitness.googleapis.com/fitness/v1/users/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

