# Security Posture API

> Defines, assesses, and monitors the overall status of your security in Google Cloud. You can use security postures to evaluate your current cloud security against defined benchmarks and help maintain the level of security that your organization requires. 

## Overview

- **API**: `securityposture`
- **Version**: `v1`
- **Base URL**: `https://securityposture.googleapis.com/`
- **Docs**: [https://cloud.google.com/security-command-center](https://cloud.google.com/security-command-center)

## When to Use

Defines, assesses, and monitors the overall status of your security in Google
Cloud. You can use security postures to evaluate your current cloud security
against defined benchmarks and help maintain the level of security that your
organization requires.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const securityposture = google.securityposture('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await securityposture.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://securityposture.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

