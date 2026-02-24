# Cloud Text-to-Speech API

> Synthesizes natural-sounding speech by applying powerful neural network models.

## Overview

- **API**: `texttospeech`
- **Version**: `v1`
- **Base URL**: `https://texttospeech.googleapis.com/`
- **Docs**: [https://cloud.google.com/text-to-speech/](https://cloud.google.com/text-to-speech/)

## When to Use

Synthesizes natural-sounding speech by applying powerful neural network models.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const texttospeech = google.texttospeech('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await texttospeech.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://texttospeech.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

