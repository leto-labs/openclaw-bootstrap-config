# Chrome Management API

> The Chrome Management API is a suite of services that allows Chrome administrators to view, manage and gain insights on their Chrome OS and Chrome Browser devices.

## Overview

- **API**: `chromemanagement`
- **Version**: `v1`
- **Base URL**: `https://chromemanagement.googleapis.com/`
- **Docs**: [https://developers.google.com/chrome/management/](https://developers.google.com/chrome/management/)

## When to Use

The Chrome Management API is a suite of services that allows Chrome
administrators to view, manage and gain insights on their Chrome OS and Chrome
Browser devices.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const chromemanagement = google.chromemanagement('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await chromemanagement.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://chromemanagement.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

