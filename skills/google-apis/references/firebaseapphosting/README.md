# Firebase App Hosting API

> Firebase App Hosting streamlines the development and deployment of dynamic Next.js and Angular applications, offering built-in framework support, GitHub integration, and integration with other Firebase products. You can use this API to intervene in the Firebase App Hosting build process and add custom functionality not supported in our default Console & CLI flows, including triggering builds from external CI/CD workflows or deploying from pre-built container images. 

## Overview

- **API**: `firebaseapphosting`
- **Version**: `v1`
- **Base URL**: `https://firebaseapphosting.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/app-hosting](https://firebase.google.com/docs/app-hosting)

## When to Use

Firebase App Hosting streamlines the development and deployment of dynamic
Next.js and Angular applications, offering built-in framework support, GitHub
integration, and integration with other Firebase products. You can use this API
to intervene in the Firebase App Hosting build process and add custom
functionality not supported in our default Console & CLI flows, including
triggering builds from external CI/CD workflows or deploying from pre-built
container images.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebaseapphosting = google.firebaseapphosting('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebaseapphosting.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebaseapphosting.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

