# Advisory Notifications API

> An API for accessing Advisory Notifications in Google Cloud

## Overview

- **API**: `advisorynotifications`
- **Version**: `v1`
- **Base URL**: `https://advisorynotifications.googleapis.com/`
- **Docs**: [https://cloud.google.com/advisory-notifications](https://cloud.google.com/advisory-notifications)

## When to Use

An API for accessing Advisory Notifications in Google Cloud

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const advisorynotifications = google.advisorynotifications('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await advisorynotifications.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://advisorynotifications.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

