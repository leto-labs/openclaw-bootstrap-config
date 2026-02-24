# Service Usage API

> Enables services that service consumers want to use on Google Cloud Platform, lists the available or enabled services, or disables services that service consumers no longer use.

## Overview

- **API**: `serviceusage`
- **Version**: `v1`
- **Base URL**: `https://serviceusage.googleapis.com/`
- **Docs**: [https://cloud.google.com/service-usage/](https://cloud.google.com/service-usage/)

## When to Use

Enables services that service consumers want to use on Google Cloud Platform,
lists the available or enabled services, or disables services that service
consumers no longer use.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const serviceusage = google.serviceusage('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await serviceusage.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://serviceusage.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

