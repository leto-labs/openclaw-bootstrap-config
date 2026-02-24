# Google Chat API

> The Google Chat API lets you build Chat apps to integrate your services with Google Chat and manage Chat resources such as spaces, members, and messages.

## Overview

- **API**: `chat`
- **Version**: `v1`
- **Base URL**: `https://chat.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/chat](https://developers.google.com/workspace/chat)

## When to Use

The Google Chat API lets you build Chat apps to integrate your services with
Google Chat and manage Chat resources such as spaces, members, and messages.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const chat = google.chat('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await chat.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://chat.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

