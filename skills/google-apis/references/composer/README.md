# Cloud Composer API

> Manages Apache Airflow environments on Google Cloud Platform.

## Overview

- **API**: `composer`
- **Version**: `v1`
- **Base URL**: `https://composer.googleapis.com/`
- **Docs**: [https://cloud.google.com/composer/](https://cloud.google.com/composer/)

## When to Use

Manages Apache Airflow environments on Google Cloud Platform.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const composer = google.composer('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await composer.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://composer.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

