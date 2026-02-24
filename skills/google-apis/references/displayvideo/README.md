# Display & Video 360 API

> Display & Video 360 API allows users to automate complex Display & Video 360 workflows, such as creating insertion orders and setting targeting options for individual line items.

## Overview

- **API**: `displayvideo`
- **Version**: `v4`
- **Base URL**: `https://displayvideo.googleapis.com/`
- **Docs**: [https://developers.google.com/display-video/](https://developers.google.com/display-video/)

## When to Use

Display & Video 360 API allows users to automate complex Display & Video 360
workflows, such as creating insertion orders and setting targeting options for
individual line items.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const displayvideo = google.displayvideo('v4');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await displayvideo.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://displayvideo.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

