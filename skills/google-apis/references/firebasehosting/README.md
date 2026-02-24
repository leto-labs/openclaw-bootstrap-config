# Firebase Hosting API

> The Firebase Hosting REST API enables programmatic and customizable management and deployments to your Firebase-hosted sites. Use this REST API to create and manage channels and sites as well as to deploy new or updated hosting configurations and content files.

## Overview

- **API**: `firebasehosting`
- **Version**: `v1`
- **Base URL**: `https://firebasehosting.googleapis.com/`
- **Docs**: [https://firebase.google.com/docs/hosting/](https://firebase.google.com/docs/hosting/)

## When to Use

The Firebase Hosting REST API enables programmatic and customizable management
and deployments to your Firebase-hosted sites. Use this REST API to create and
manage channels and sites as well as to deploy new or updated hosting
configurations and content files.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const firebasehosting = google.firebasehosting('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await firebasehosting.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://firebasehosting.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

