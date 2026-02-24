# Google API Client Libraries

## Quick Decision Tree

```
Which client to use?
├─ Node.js/TypeScript project → googleapis npm
├─ Cloud Platform CLI tasks → gcloud
├─ Quick testing / language-agnostic → curl
├─ Python project → google-api-python-client
├─ Go project → google.golang.org/api
└─ Java project → google-api-java-client
```

## googleapis npm (Primary)

The universal Google APIs client for Node.js. Covers all 300+ APIs.

### Install

```bash
npm install googleapis
# Or for a single API (smaller bundle):
npm install @googleapis/gmail
npm install @googleapis/sheets
npm install @googleapis/drive
```

### Basic usage

```typescript
import { google } from "googleapis";

// Setup auth (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ["https://www.googleapis.com/auth/gmail.readonly"],
});
google.options({ auth });

// Use any API
const gmail = google.gmail("v1");
const res = await gmail.users.messages.list({ userId: "me", maxResults: 10 });
console.log(res.data.messages);
```

### Per-API packages

```typescript
// Smaller bundle — only imports one API
import { gmail } from "@googleapis/gmail";
const client = gmail({ version: "v1", auth });
```

### Key patterns

**Request/Response**: All methods return `GaxiosResponse<T>` with `.data`, `.status`, `.headers`.

```typescript
const res = await gmail.users.messages.get({
  userId: "me",
  id: "msg-id",
  format: "full",
});
// res.data = the message object
// res.status = 200
```

**Media upload**:

```typescript
import fs from "fs";

const res = await drive.files.create({
  requestBody: { name: "photo.jpg", mimeType: "image/jpeg" },
  media: {
    mimeType: "image/jpeg",
    body: fs.createReadStream("photo.jpg"),
  },
});
```

**Media download**:

```typescript
const res = await drive.files.get(
  { fileId: "file-id", alt: "media" },
  { responseType: "stream" }
);
res.data.pipe(fs.createWriteStream("output.jpg"));
```

**Fields parameter** (partial response — reduces payload):

```typescript
const res = await gmail.users.messages.list({
  userId: "me",
  maxResults: 10,
  fields: "messages(id,threadId),nextPageToken",
});
```

**Batch requests**:

```typescript
// googleapis doesn't have a built-in batch helper.
// Use Promise.all for parallel independent requests:
const [msgs, labels] = await Promise.all([
  gmail.users.messages.list({ userId: "me" }),
  gmail.users.labels.list({ userId: "me" }),
]);
```

## gcloud CLI

For Cloud Platform APIs. Pre-installed on Cloud Shell, available locally.

### Install

```bash
# macOS
brew install google-cloud-sdk

# Or via installer
curl https://sdk.cloud.google.com | bash
```

### Auth

```bash
gcloud auth login                           # Interactive login
gcloud auth application-default login       # ADC for local dev
gcloud config set project PROJECT_ID        # Set default project
```

### Common commands

```bash
# Storage
gcloud storage ls gs://bucket-name
gcloud storage cp local-file gs://bucket/path

# Compute
gcloud compute instances list
gcloud compute instances create my-vm --zone=us-central1-a

# Cloud Run
gcloud run deploy my-service --source .

# Cloud Functions
gcloud functions deploy my-func --runtime=nodejs20 --trigger-http

# BigQuery
bq query --use_legacy_sql=false 'SELECT * FROM dataset.table LIMIT 10'

# Pub/Sub
gcloud pubsub topics create my-topic
gcloud pubsub subscriptions create my-sub --topic=my-topic

# Get access token for curl
gcloud auth print-access-token
```

## curl (REST)

For quick testing and language-agnostic reference.

### Pattern

```bash
# GET
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://{service}.googleapis.com/{path}"

# POST with JSON body
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  -d '{"key": "value"}' \
  "https://{service}.googleapis.com/{path}"

# With API key (public data)
curl "https://{service}.googleapis.com/{path}?key=${API_KEY}"
```

### Discovery-based URL pattern

Most Google APIs follow:
```
https://{service}.googleapis.com/{basePath}/{resource}/{method}
```

Check each API's `api.md` for exact paths.

## TypeScript Types

googleapis provides full TypeScript types:

```typescript
import { gmail_v1 } from "googleapis";

// Use schema types
type Message = gmail_v1.Schema$Message;
type Label = gmail_v1.Schema$Label;

// Use params types
type ListParams = gmail_v1.Params$Resource$Users$Messages$List;
```

## Error Handling

All clients throw errors with `.code` (HTTP status) and `.message`:

```typescript
import { GaxiosError } from "gaxios";

try {
  await gmail.users.messages.get({ userId: "me", id: "bad-id" });
} catch (err) {
  if (err instanceof GaxiosError) {
    console.error(err.code);    // 404
    console.error(err.message); // "Not Found"
    console.error(err.response?.data?.error); // Full error object
  }
}
```
