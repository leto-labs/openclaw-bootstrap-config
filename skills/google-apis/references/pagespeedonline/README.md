# PageSpeed Insights API

> The PageSpeed Insights API lets you analyze the performance of your website with a simple API. It offers tailored suggestions for how you can optimize your site, and lets you easily integrate PageSpeed Insights analysis into your development tools and workflow. 

## Overview

- **API**: `pagespeedonline`
- **Version**: `v5`
- **Base URL**: `https://pagespeedonline.googleapis.com/`
- **Docs**: [https://developers.google.com/speed/docs/insights/v5/about](https://developers.google.com/speed/docs/insights/v5/about)

## When to Use

The PageSpeed Insights API lets you analyze the performance of your website with
a simple API. It offers tailored suggestions for how you can optimize your site,
and lets you easily integrate PageSpeed Insights analysis into your development
tools and workflow.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const pagespeedonline = google.pagespeedonline('v5');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await pagespeedonline.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://pagespeedonline.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

