# Google Marketing Platform Admin API

> The Google Marketing Platform Admin API allows for programmatic access to the Google Marketing Platform configuration data. You can use the Google Marketing Platform Admin API to manage links between your Google Marketing Platform organization and Google Analytics accounts, and to set the service level of your GA4 properties.

## Overview

- **API**: `marketingplatformadmin`
- **Version**: `v1alpha`
- **Base URL**: `https://marketingplatformadmin.googleapis.com/`
- **Docs**: [https://developers.google.com/analytics/devguides/config/gmp/v1](https://developers.google.com/analytics/devguides/config/gmp/v1)

## When to Use

The Google Marketing Platform Admin API allows for programmatic access to the
Google Marketing Platform configuration data. You can use the Google Marketing
Platform Admin API to manage links between your Google Marketing Platform
organization and Google Analytics accounts, and to set the service level of your
GA4 properties.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const marketingplatformadmin = google.marketingplatformadmin('v1alpha');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await marketingplatformadmin.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://marketingplatformadmin.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

