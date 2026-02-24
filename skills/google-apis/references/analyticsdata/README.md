# Google Analytics Data API

> Accesses report data in Google Analytics. Warning: Creating multiple Customer Applications, Accounts, or Projects to simulate or act as a single Customer Application, Account, or Project (respectively) or to circumvent Service-specific usage limits or quotas is a direct violation of Google Cloud Platform Terms of Service as well as Google APIs Terms of Service. These actions can result in immediate termination of your GCP project(s) without any warning. 

## Overview

- **API**: `analyticsdata`
- **Version**: `v1beta`
- **Base URL**: `https://analyticsdata.googleapis.com/`
- **Docs**: [https://developers.google.com/analytics/devguides/reporting/data/v1/](https://developers.google.com/analytics/devguides/reporting/data/v1/)

## When to Use

Accesses report data in Google Analytics. Warning: Creating multiple Customer
Applications, Accounts, or Projects to simulate or act as a single Customer
Application, Account, or Project (respectively) or to circumvent Service-
specific usage limits or quotas is a direct violation of Google Cloud Platform
Terms of Service as well as Google APIs Terms of Service. These actions can
result in immediate termination of your GCP project(s) without any warning.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const analyticsdata = google.analyticsdata('v1beta');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await analyticsdata.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://analyticsdata.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

