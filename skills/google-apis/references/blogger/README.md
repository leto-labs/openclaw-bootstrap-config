# Blogger API

> The Blogger API provides access to posts, comments and pages of a Blogger blog.

## Overview

- **API**: `blogger`
- **Version**: `v3`
- **Base URL**: `https://blogger.googleapis.com/`
- **Docs**: [https://developers.google.com/blogger/docs/3.0/getting_started](https://developers.google.com/blogger/docs/3.0/getting_started)

## When to Use

The Blogger API provides access to posts, comments and pages of a Blogger blog.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const blogger = google.blogger('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await blogger.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://blogger.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

