# Recommendations AI (Beta)

> Note that we now highly recommend new customers to use Retail API, which incorporates the GA version of the Recommendations AI funtionalities. To enable Retail API, please visit https://console.cloud.google.com/apis/library/retail.googleapis.com. The Recommendations AI service enables customers to build end-to-end personalized recommendation systems without requiring a high level of expertise in machine learning, recommendation system, or Google Cloud.

## Overview

- **API**: `recommendationengine`
- **Version**: `v1beta1`
- **Base URL**: `https://recommendationengine.googleapis.com/`
- **Docs**: [https://cloud.google.com/recommendations-ai/docs](https://cloud.google.com/recommendations-ai/docs)

## When to Use

Note that we now highly recommend new customers to use Retail API, which
incorporates the GA version of the Recommendations AI funtionalities. To enable
Retail API, please visit
https://console.cloud.google.com/apis/library/retail.googleapis.com. The
Recommendations AI service enables customers to build end-to-end personalized
recommendation systems without requiring a high level of expertise in machine
learning, recommendation system, or Google Cloud.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const recommendationengine = google.recommendationengine('v1beta1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await recommendationengine.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://recommendationengine.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

