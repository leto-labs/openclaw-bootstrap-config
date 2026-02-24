# Connectors API

> Enables users to create and manage connections to Google Cloud services and third-party business applications using the Connectors interface.

## Overview

- **API**: `connectors`
- **Version**: `v2`
- **Base URL**: `https://connectors.googleapis.com/`
- **Docs**: [https://cloud.google.com/apigee/docs/api-platform/connectors/about-connectors](https://cloud.google.com/apigee/docs/api-platform/connectors/about-connectors)

## When to Use

Enables users to create and manage connections to Google Cloud services and
third-party business applications using the Connectors interface.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const connectors = google.connectors('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await connectors.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://connectors.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

