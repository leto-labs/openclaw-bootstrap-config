# Policy Simulator API

>  Policy Simulator is a collection of endpoints for creating, running, and viewing a Replay. A `Replay` is a type of simulation that lets you see how your members' access to resources might change if you changed your IAM policy. During a `Replay`, Policy Simulator re-evaluates, or replays, past access attempts under both the current policy and your proposed policy, and compares those results to determine how your members' access might change under the proposed policy.

## Overview

- **API**: `policysimulator`
- **Version**: `v1`
- **Base URL**: `https://policysimulator.googleapis.com/`
- **Docs**: [https://cloud.google.com/iam/docs/simulating-access](https://cloud.google.com/iam/docs/simulating-access)

## When to Use

 Policy Simulator is a collection of endpoints for creating, running, and
viewing a Replay. A `Replay` is a type of simulation that lets you see how your
members' access to resources might change if you changed your IAM policy. During
a `Replay`, Policy Simulator re-evaluates, or replays, past access attempts
under both the current policy and your proposed policy, and compares those
results to determine how your members' access might change under the proposed
policy.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const policysimulator = google.policysimulator('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: [/* see configuration.md */],
});
google.options({ auth });

// Example: list or get
// const res = await policysimulator.someResource.list({ ... });
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://policysimulator.googleapis.com/..."
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

