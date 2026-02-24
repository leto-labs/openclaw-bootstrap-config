# Cloud IDS API

> Cloud IDS (Cloud Intrusion Detection System) detects malware, spyware, command-and-control attacks, and other network-based threats. Its security efficacy is industry leading, built with Palo Alto Networks technologies. When you use this product, your organization name and consumption levels will be shared with Palo Alto Networks.

## Overview

- **API**: `ids`
- **Version**: `v1`
- **Base URL**: `https://ids.googleapis.com/`
- **Docs**: [https://cloud.google.com/](https://cloud.google.com/)

## When to Use

Cloud IDS (Cloud Intrusion Detection System) detects malware, spyware, command-
and-control attacks, and other network-based threats. Its security efficacy is
industry leading, built with Palo Alto Networks technologies. When you use this
product, your organization name and consumption levels will be shared with Palo
Alto Networks.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const ids = google.ids('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await ids.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://ids.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

