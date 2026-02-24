# Address Validation API

> The Address Validation API allows developers to verify the accuracy of addresses. Given an address, it returns information about the correctness of the components of the parsed address, a geocode, and a verdict on the deliverability of the parsed address.

## Overview

- **API**: `addressvalidation`
- **Version**: `v1`
- **Base URL**: `https://addressvalidation.googleapis.com/`
- **Docs**: [https://developers.google.com/maps/documentation/addressvalidation](https://developers.google.com/maps/documentation/addressvalidation)

## When to Use

The Address Validation API allows developers to verify the accuracy of
addresses. Given an address, it returns information about the correctness of the
components of the parsed address, a geocode, and a verdict on the deliverability
of the parsed address.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const addressvalidation = google.addressvalidation('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await addressvalidation.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://addressvalidation.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

