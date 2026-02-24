# Cloud Billing Budget API

> The Cloud Billing Budget API stores Cloud Billing budgets, which define a budget plan and the rules to execute as spend is tracked against that plan.

## Overview

- **API**: `billingbudgets`
- **Version**: `v1`
- **Base URL**: `https://billingbudgets.googleapis.com/`
- **Docs**: [https://cloud.google.com/billing/docs/how-to/budget-api-overview](https://cloud.google.com/billing/docs/how-to/budget-api-overview)

## When to Use

The Cloud Billing Budget API stores Cloud Billing budgets, which define a budget
plan and the rules to execute as spend is tracked against that plan.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const billingbudgets = google.billingbudgets('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await billingbudgets.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://billingbudgets.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

