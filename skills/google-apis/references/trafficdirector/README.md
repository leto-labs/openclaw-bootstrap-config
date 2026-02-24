# Traffic Director API



## Overview

- **API**: `trafficdirector`
- **Version**: `v3`
- **Base URL**: `https://trafficdirector.googleapis.com/`
- **Docs**: [https://cloud.google.com/traffic-director](https://cloud.google.com/traffic-director)

## When to Use

Use the Traffic Director API for programmatic access to trafficdirector functionality.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const trafficdirector = google.trafficdirector('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await trafficdirector.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://trafficdirector.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

