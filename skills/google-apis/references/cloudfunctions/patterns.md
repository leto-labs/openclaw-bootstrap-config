# Cloud Run Functions - Common Patterns

## HTTP Functions

### Basic HTTP Handler (Node.js)

```javascript
const functions = require('@google-cloud/functions-framework');

functions.http('myHandler', (req, res) => {
  const name = req.query.name || req.body.name || 'World';
  res.json({ message: `Hello ${name}!` });
});
```

### HTTP Handler with CORS

```javascript
const functions = require('@google-cloud/functions-framework');

functions.http('corsHandler', (req, res) => {
  // Set CORS headers
  res.set('Access-Control-Allow-Origin', '*');

  if (req.method === 'OPTIONS') {
    // Preflight request
    res.set('Access-Control-Allow-Methods', 'GET, POST');
    res.set('Access-Control-Allow-Headers', 'Content-Type');
    res.set('Access-Control-Max-Age', '3600');
    res.status(204).send('');
    return;
  }

  res.json({ message: 'Hello with CORS!' });
});
```

### HTTP Handler (Python)

```python
import functions_framework
from markupsafe import escape

@functions_framework.http
def hello_http(request):
    request_json = request.get_json(silent=True)
    request_args = request.args

    if request_json and "name" in request_json:
        name = request_json["name"]
    elif request_args and "name" in request_args:
        name = request_args["name"]
    else:
        name = "World"
    return f"Hello {escape(name)}!"
```

## Event-Driven Functions

### Pub/Sub Trigger (Node.js -- CloudEvents)

```javascript
const functions = require('@google-cloud/functions-framework');

functions.cloudEvent('helloPubSub', (cloudEvent) => {
  const message = cloudEvent.data.message;
  const data = message.data
    ? Buffer.from(message.data, 'base64').toString()
    : 'No data';
  console.log(`Received message: ${data}`);
});
```

Deploy with Pub/Sub trigger:
```bash
# Using Cloud Run + Eventarc
gcloud run deploy pubsub-function \
  --source . \
  --function helloPubSub \
  --base-image nodejs22 \
  --region us-central1

# Create Eventarc trigger for Pub/Sub
gcloud eventarc triggers create pubsub-trigger \
  --destination-run-service=pubsub-function \
  --destination-run-region=us-central1 \
  --event-filters="type=google.cloud.pubsub.topic.v1.messagePublished" \
  --transport-topic=my-topic \
  --location=us-central1
```

### Pub/Sub Trigger (Python -- CloudEvents)

```python
import functions_framework
import base64

@functions_framework.cloud_event
def hello_pubsub(cloud_event):
    data = base64.b64decode(cloud_event.data["message"]["data"]).decode()
    print(f"Received message: {data}")
```

### Cloud Storage Trigger (Node.js)

```javascript
const functions = require('@google-cloud/functions-framework');

functions.cloudEvent('processFile', (cloudEvent) => {
  const file = cloudEvent.data;
  console.log(`Bucket: ${file.bucket}`);
  console.log(`File: ${file.name}`);
  console.log(`Event type: ${cloudEvent.type}`);
  console.log(`Created: ${file.timeCreated}`);
  console.log(`Updated: ${file.updated}`);
});
```

Deploy with Storage trigger:
```bash
gcloud run deploy process-file \
  --source . \
  --function processFile \
  --base-image nodejs22 \
  --region us-central1

gcloud eventarc triggers create storage-trigger \
  --destination-run-service=process-file \
  --destination-run-region=us-central1 \
  --event-filters="type=google.cloud.storage.object.v1.finalized" \
  --event-filters="bucket=my-bucket" \
  --location=us-central1
```

### Firestore Trigger (Node.js)

```javascript
const functions = require('@google-cloud/functions-framework');

functions.cloudEvent('firestoreHandler', (cloudEvent) => {
  const document = cloudEvent.data;
  console.log(`Function triggered by change to: ${cloudEvent.source}`);

  const oldValue = document.oldValue?.fields || {};
  const newValue = document.value?.fields || {};

  console.log('Old value:', JSON.stringify(oldValue));
  console.log('New value:', JSON.stringify(newValue));
});
```

Deploy with Firestore trigger:
```bash
gcloud eventarc triggers create firestore-trigger \
  --destination-run-service=firestore-handler \
  --destination-run-region=us-central1 \
  --event-filters="type=google.cloud.firestore.document.v1.written" \
  --event-filters="database=(default)" \
  --event-data-content-type="application/protobuf" \
  --location=us-central1
```

## Deploying with gcloud

### Deploy from Source (Cloud Run -- recommended)

```bash
gcloud run deploy FUNCTION_NAME \
  --source . \
  --function ENTRY_POINT \
  --base-image nodejs22 \
  --region us-central1 \
  --allow-unauthenticated
```

Available base images: `nodejs18`, `nodejs20`, `nodejs22`, `python310`, `python311`, `python312`, `go121`, `go122`, `java17`, `java21`, `ruby32`, `ruby33`, `php83`, `dotnet6`, `dotnet8`.

### Deploy with Cloud Functions v2 API (backward compatible)

```bash
gcloud functions deploy FUNCTION_NAME \
  --gen2 \
  --runtime nodejs22 \
  --trigger-http \
  --allow-unauthenticated \
  --region us-central1 \
  --entry-point ENTRY_POINT \
  --source . \
  --memory 256MB \
  --timeout 60s
```

### Deploy 1st Gen Function

```bash
gcloud functions deploy FUNCTION_NAME \
  --no-gen2 \
  --runtime nodejs20 \
  --trigger-http \
  --allow-unauthenticated \
  --region us-central1 \
  --source . \
  --memory 256MB \
  --timeout 60s
```

## Environment Variables and Secrets

### Environment Variables

```bash
# Set environment variables at deploy time
gcloud run deploy my-function \
  --source . \
  --function myHandler \
  --base-image nodejs22 \
  --region us-central1 \
  --set-env-vars "API_KEY=abc123,DB_HOST=10.0.0.1"

# Update environment variables on existing function
gcloud run services update my-function \
  --region us-central1 \
  --update-env-vars "API_KEY=newvalue"
```

Access in code:
```javascript
functions.http('myHandler', (req, res) => {
  const apiKey = process.env.API_KEY;
  const dbHost = process.env.DB_HOST;
  res.json({ configured: !!apiKey });
});
```

### Secret Manager Integration

```bash
# Create a secret
echo -n "my-secret-value" | gcloud secrets create my-secret --data-file=-

# Grant the function's service account access
gcloud secrets add-iam-policy-binding my-secret \
  --member=serviceAccount:PROJECT_NUMBER-compute@developer.gserviceaccount.com \
  --role=roles/secretmanager.secretAccessor

# Mount secret as environment variable
gcloud run deploy my-function \
  --source . \
  --function myHandler \
  --base-image nodejs22 \
  --region us-central1 \
  --set-secrets "MY_SECRET=my-secret:latest"
```

Access in code:
```javascript
functions.http('myHandler', (req, res) => {
  const secret = process.env.MY_SECRET; // Automatically populated
  res.json({ hasSecret: !!secret });
});
```

## VPC Connector (Private Network Access)

```bash
# Create a Serverless VPC Access connector
gcloud compute networks vpc-access connectors create my-connector \
  --region us-central1 \
  --network default \
  --range 10.8.0.0/28

# Deploy function with VPC connector
gcloud run deploy my-function \
  --source . \
  --function myHandler \
  --base-image nodejs22 \
  --region us-central1 \
  --vpc-connector my-connector \
  --vpc-egress all-traffic
```

For 2nd gen, you can also use Direct VPC egress (no connector needed):
```bash
gcloud run deploy my-function \
  --source . \
  --function myHandler \
  --base-image nodejs22 \
  --region us-central1 \
  --network default \
  --subnet default \
  --vpc-egress all-traffic
```

## Local Development and Testing

### Using Functions Framework Locally

**Node.js**:
```bash
npm install @google-cloud/functions-framework
npx functions-framework --target=myHandler --port=8080
```

**Python**:
```bash
pip install functions-framework
functions-framework --target=hello_http --port=8080
```

**Go**:
```bash
FUNCTION_TARGET=HelloHTTP go run ./cmd/main.go
```

### Testing with curl

```bash
# HTTP function
curl http://localhost:8080

# Simulate Pub/Sub CloudEvent
curl -X POST http://localhost:8080 \
  -H "Content-Type: application/cloudevents+json" \
  -d '{
    "specversion": "1.0",
    "type": "google.cloud.pubsub.topic.v1.messagePublished",
    "source": "//pubsub.googleapis.com/projects/my-project/topics/my-topic",
    "id": "1234",
    "data": {
      "message": {
        "data": "'$(echo -n "Hello" | base64)'"
      }
    }
  }'
```

### Unit Testing (Node.js)

```javascript
const { getFunction } = require('@google-cloud/functions-framework/testing');
require('./index.js'); // Load function definitions

describe('helloGET', () => {
  it('should return hello world', async () => {
    const helloGET = getFunction('helloGET');
    const req = { query: {} };
    const res = {
      send: (body) => {
        expect(body).toBe('Hello World!');
      },
    };
    helloGET(req, res);
  });
});
```

## Cold Start Optimization

### Use Global Variables for Expensive Initialization

```javascript
const functions = require('@google-cloud/functions-framework');

// Heavy initialization runs once per instance (cold start only)
const { Firestore } = require('@google-cloud/firestore');
const db = new Firestore();

functions.http('optimizedHandler', async (req, res) => {
  // db is reused across invocations on the same instance
  const doc = await db.collection('users').doc(req.query.id).get();
  res.json(doc.data());
});
```

### Set Minimum Instances

```bash
# Keep at least 1 instance warm (eliminates cold starts for low traffic)
gcloud run deploy my-function \
  --source . \
  --function myHandler \
  --base-image nodejs22 \
  --region us-central1 \
  --min-instances 1

# For variable traffic, set based on baseline load
gcloud run deploy my-function \
  --source . \
  --function myHandler \
  --base-image nodejs22 \
  --region us-central1 \
  --min-instances 3 \
  --max-instances 100
```

### Lazy-Load Dependencies

```javascript
const functions = require('@google-cloud/functions-framework');

// Only import heavy libraries when needed
let vision;
function getVisionClient() {
  if (!vision) {
    const { ImageAnnotatorClient } = require('@google-cloud/vision');
    vision = new ImageAnnotatorClient();
  }
  return vision;
}

functions.http('analyzeImage', async (req, res) => {
  const client = getVisionClient();
  const [result] = await client.labelDetection(req.body.imageUrl);
  res.json(result.labelAnnotations);
});
```

## 1st Gen vs 2nd Gen Deployment Differences

### 1st Gen (Cloud Functions API v1)

```bash
gcloud functions deploy my-function-gen1 \
  --no-gen2 \
  --runtime nodejs20 \
  --trigger-topic my-topic \
  --region us-central1 \
  --memory 256MB \
  --timeout 540s \
  --max-instances 100
```

### 2nd Gen / Latest (Cloud Run)

```bash
gcloud run deploy my-function-gen2 \
  --source . \
  --function myHandler \
  --base-image nodejs22 \
  --region us-central1 \
  --memory 512Mi \
  --timeout 3600s \
  --min-instances 1 \
  --max-instances 100 \
  --concurrency 80
```

## Error Handling

```javascript
const functions = require('@google-cloud/functions-framework');

functions.http('robustHandler', async (req, res) => {
  try {
    const result = await doWork(req.body);
    res.json({ success: true, data: result });
  } catch (err) {
    console.error('Function error:', err);

    if (err.code === 'NOT_FOUND') {
      res.status(404).json({ error: 'Resource not found' });
    } else if (err.code === 'PERMISSION_DENIED') {
      res.status(403).json({ error: 'Access denied' });
    } else {
      // Always return a response to avoid timeout charges
      res.status(500).json({ error: 'Internal server error' });
    }
  }
});
```

### Idempotent Event-Driven Functions

Event-driven functions may be retried. Use idempotency keys:

```javascript
const functions = require('@google-cloud/functions-framework');
const { Firestore } = require('@google-cloud/firestore');

const db = new Firestore();

functions.cloudEvent('idempotentHandler', async (cloudEvent) => {
  const eventId = cloudEvent.id;

  // Check if already processed
  const ref = db.collection('processedEvents').doc(eventId);
  const doc = await ref.get();
  if (doc.exists) {
    console.log(`Event ${eventId} already processed, skipping.`);
    return;
  }

  // Process the event
  await doWork(cloudEvent.data);

  // Mark as processed
  await ref.set({ processedAt: new Date().toISOString() });
});
```
