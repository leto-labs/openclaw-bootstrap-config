# reCAPTCHA Enterprise API

> Help protect your website from fraudulent activity, spam, and abuse without creating friction.

## Overview

- **API**: `recaptchaenterprise`
- **Version**: `v1`
- **Base URL**: `https://recaptchaenterprise.googleapis.com/`
- **Docs**: [https://cloud.google.com/recaptcha-enterprise/](https://cloud.google.com/recaptcha-enterprise/)

## When to Use

Help protect your website from fraudulent activity, spam, and abuse without
creating friction.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const recaptchaenterprise = google.recaptchaenterprise('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await recaptchaenterprise.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://recaptchaenterprise.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

