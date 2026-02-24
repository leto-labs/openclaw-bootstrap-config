# Google Play Integrity API

> The Play Integrity API helps you check that you're interacting with your genuine app on a genuine Android device powered by Google Play services. The Play Integrity API has replaced SafetyNet Attestation and Android Device Verification.

## Overview

- **API**: `playintegrity`
- **Version**: `v1`
- **Base URL**: `https://playintegrity.googleapis.com/`
- **Docs**: [https://developer.android.com/google/play/integrity](https://developer.android.com/google/play/integrity)

## When to Use

The Play Integrity API helps you check that you're interacting with your genuine
app on a genuine Android device powered by Google Play services. The Play
Integrity API has replaced SafetyNet Attestation and Android Device
Verification.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const playintegrity = google.playintegrity('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await playintegrity.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://playintegrity.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

