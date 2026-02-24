# Recommender API



## Overview

- **API**: `recommender`
- **Version**: `v1`
- **Base URL**: `https://recommender.googleapis.com/`
- **Docs**: [https://cloud.google.com/recommender/docs/](https://cloud.google.com/recommender/docs/)

## When to Use

Use the Recommender API for programmatic access to recommender functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const recommender = google.recommender('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await recommender.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://recommender.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

