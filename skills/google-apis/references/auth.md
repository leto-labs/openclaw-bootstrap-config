# Google APIs Authentication

## Quick Decision Tree

```
Which auth method?
├─ User's personal data (Gmail, Drive, Calendar) → OAuth2
├─ Server-to-server / background jobs → Service Account
├─ Public data only (Maps, YouTube public) → API Key
├─ Running on GCP (Cloud Run, GCE, GKE) → ADC (automatic)
├─ Workspace admin acting as users → Service Account + Domain-Wide Delegation
└─ Local development → ADC via gcloud auth
```

## OAuth2 (User Consent)

For accessing user data. Requires user to grant consent in browser.

### Setup

1. Create OAuth 2.0 Client ID in [Cloud Console > Credentials](https://console.cloud.google.com/apis/credentials)
2. Configure OAuth consent screen (scopes, authorized domains)
3. Download `credentials.json`

### googleapis (Node.js)

```typescript
import { google } from "googleapis";
import { authenticate } from "@google-cloud/local-auth";
import path from "path";

// One-time: get user consent
const auth = await authenticate({
  keyfilePath: path.join(__dirname, "credentials.json"),
  scopes: ["https://www.googleapis.com/auth/gmail.readonly"],
});

// Save auth.credentials to token.json for reuse
google.options({ auth });
```

### Refresh tokens

```typescript
const oauth2Client = new google.auth.OAuth2(
  CLIENT_ID,
  CLIENT_SECRET,
  REDIRECT_URI
);
oauth2Client.setCredentials({ refresh_token: REFRESH_TOKEN });
google.options({ auth: oauth2Client });
// Token auto-refreshes
```

### curl

```bash
# Get access token from refresh token
TOKEN=$(curl -s -X POST https://oauth2.googleapis.com/token \
  -d "client_id=${CLIENT_ID}" \
  -d "client_secret=${CLIENT_SECRET}" \
  -d "refresh_token=${REFRESH_TOKEN}" \
  -d "grant_type=refresh_token" | jq -r '.access_token')

curl -H "Authorization: Bearer ${TOKEN}" \
  "https://www.googleapis.com/gmail/v1/users/me/messages"
```

## Service Account (Server-to-Server)

For backend services, CI/CD, automation. No user interaction needed.

### Setup

1. Create Service Account in [Cloud Console > IAM](https://console.cloud.google.com/iam-admin/serviceaccounts)
2. Grant appropriate roles
3. Download JSON key file

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const auth = new google.auth.GoogleAuth({
  keyFile: "service-account.json",
  scopes: ["https://www.googleapis.com/auth/cloud-platform"],
});
google.options({ auth });
```

### Domain-Wide Delegation (Workspace)

For service accounts acting as Workspace users:

1. Enable domain-wide delegation on the service account
2. In Workspace Admin > Security > API Controls > Domain-wide Delegation, add the client ID with required scopes

```typescript
const auth = new google.auth.GoogleAuth({
  keyFile: "service-account.json",
  scopes: ["https://www.googleapis.com/auth/gmail.readonly"],
  clientOptions: { subject: "user@example.com" }, // impersonate this user
});
```

### gcloud

```bash
gcloud auth activate-service-account --key-file=service-account.json
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://www.googleapis.com/..."
```

## API Key

For public data only. No user auth needed.

### Setup

1. Create API Key in [Cloud Console > Credentials](https://console.cloud.google.com/apis/credentials)
2. Restrict key to specific APIs and IPs/referrers

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const youtube = google.youtube({ version: "v3", auth: API_KEY });
const res = await youtube.search.list({ part: ["snippet"], q: "cats" });
```

### curl

```bash
curl "https://www.googleapis.com/youtube/v3/search?part=snippet&q=cats&key=${API_KEY}"
```

## Application Default Credentials (ADC)

Auto-detects credentials from the environment. Works on GCP, local dev, and CI.

### How ADC resolves

1. `GOOGLE_APPLICATION_CREDENTIALS` env var → uses that JSON key
2. `gcloud auth application-default login` → uses user credentials
3. GCP metadata server → uses attached service account (Cloud Run, GCE, GKE)

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

// ADC auto-resolves — no explicit key file needed
const auth = new google.auth.GoogleAuth({
  scopes: ["https://www.googleapis.com/auth/cloud-platform"],
});
google.options({ auth });
```

### Local development

```bash
# Login for ADC (one-time)
gcloud auth application-default login

# Or point to a key file
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/service-account.json"
```

## Scopes Reference

Common scope patterns:

| Pattern | Access Level |
|---------|-------------|
| `...auth/gmail.readonly` | Read-only Gmail |
| `...auth/gmail.modify` | Read + write Gmail (no delete) |
| `...auth/gmail.compose` | Send only |
| `...auth/drive.readonly` | Read-only Drive |
| `...auth/drive.file` | Files created by your app |
| `...auth/drive` | Full Drive access |
| `...auth/spreadsheets.readonly` | Read-only Sheets |
| `...auth/spreadsheets` | Full Sheets access |
| `...auth/calendar.readonly` | Read-only Calendar |
| `...auth/calendar` | Full Calendar access |
| `...auth/cloud-platform` | Full Cloud Platform access |

**Principle of least privilege**: Always request the narrowest scope that works. See each API's `configuration.md` for its specific scopes.
