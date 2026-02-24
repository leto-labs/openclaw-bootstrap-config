# Street View Publish API

> Publishes 360 photos to Google Maps, along with position, orientation, and connectivity metadata. Apps can offer an interface for positioning, connecting, and uploading user-generated Street View images. 

## Overview

- **API**: `streetviewpublish`
- **Version**: `v1`
- **Base URL**: `https://streetviewpublish.googleapis.com/`
- **Docs**: [https://developers.google.com/streetview/publish/](https://developers.google.com/streetview/publish/)

## When to Use

Publishes 360 photos to Google Maps, along with position, orientation, and
connectivity metadata. Apps can offer an interface for positioning, connecting,
and uploading user-generated Street View images.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const streetviewpublish = google.streetviewpublish('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await streetviewpublish.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://streetviewpublish.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

