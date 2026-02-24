# Google Play Android Developer API

> Lets Android application developers access their Google Play accounts. At a high level, the expected workflow is to "insert" an Edit, make changes as necessary, and then "commit" it. 

## Overview

- **API**: `androidpublisher`
- **Version**: `v3`
- **Base URL**: `https://androidpublisher.googleapis.com/`
- **Docs**: [https://developers.google.com/android-publisher](https://developers.google.com/android-publisher)

## When to Use

Lets Android application developers access their Google Play accounts. At a high
level, the expected workflow is to "insert" an Edit, make changes as necessary,
and then "commit" it.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const androidpublisher = google.androidpublisher('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await androidpublisher.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://androidpublisher.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

