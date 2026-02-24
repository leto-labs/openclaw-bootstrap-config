# Rapid Migration Assessment API

> The Rapid Migration Assessment service is our first-party migration assessment and planning tool.

## Overview

- **API**: `rapidmigrationassessment`
- **Version**: `v1`
- **Base URL**: `https://rapidmigrationassessment.googleapis.com/`
- **Docs**: [https://cloud.google.com/migration-center](https://cloud.google.com/migration-center)

## When to Use

The Rapid Migration Assessment service is our first-party migration assessment
and planning tool.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const rapidmigrationassessment = google.rapidmigrationassessment('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await rapidmigrationassessment.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://rapidmigrationassessment.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

