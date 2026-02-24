# Cloud Run Functions (Cloud Functions)

> Google Cloud's serverless compute platform for deploying event-driven and HTTP functions. Previously known as Cloud Functions, now built on Cloud Run.

## Overview

- **API**: `cloudfunctions` (v2) / `run` (Cloud Run Admin API)
- **Versions**: Cloud Run functions (latest, built on Cloud Run) and Cloud Run functions (1st gen)
- **Console**: [Cloud Run](https://console.cloud.google.com/run) | [Cloud Functions 1st gen](https://console.cloud.google.com/functions)
- **Docs**: [https://cloud.google.com/functions/docs](https://cloud.google.com/functions/docs)

## When to Use

Use Cloud Run functions when you need to:

- **Run small, single-purpose code** in response to HTTP requests or cloud events without managing servers or containers
- **Build webhooks and API endpoints** -- lightweight HTTP handlers that auto-scale to zero when idle
- **React to cloud events** -- process Pub/Sub messages, respond to Cloud Storage uploads, handle Firestore document changes, or react to Cloud Audit Log events via Eventarc (90+ event sources)
- **Create lightweight data processing pipelines** -- transform data on upload, resize images, transcode media, validate inputs
- **Integrate third-party services** -- receive webhooks from Stripe, GitHub, Slack, or Twilio and trigger downstream GCP actions
- **Run scheduled tasks** -- use Cloud Scheduler + Pub/Sub to trigger periodic jobs (cron-style)
- **Prototype and build MVPs** -- deploy backend logic quickly with zero infrastructure setup
- **Extend Google Workspace** -- build add-ons or automations triggered by Gmail, Calendar, or Sheets events

### When NOT to Use

- **Long-running workloads** (>60 min) -- use Cloud Run services, GKE, or Compute Engine
- **Stateful applications** -- functions are stateless by design; use Cloud Run services with persistent storage
- **High-throughput streaming** -- use Dataflow or Cloud Run services with persistent connections
- **Large deployment artifacts** (>100 MB compressed sources) -- use Cloud Run with container images directly
- **Full container control** -- if you need custom base images, sidecar containers, or GPU access, deploy directly to Cloud Run
- **High-frequency concurrent processing** -- 1st gen only supports 1 concurrent request per instance; 2nd gen supports up to 1000

### Concrete Scenarios

| Scenario | Trigger | Key Feature |
|----------|---------|-------------|
| REST API endpoint | HTTP | Auto-scaling, custom domain support |
| Process uploaded images | Cloud Storage event | Trigger on `finalize` event |
| Fan-out from message queue | Pub/Sub | Automatic message acknowledgment |
| React to Firestore writes | Firestore event (via Eventarc) | Document-level triggers |
| Scheduled report generation | Cloud Scheduler -> Pub/Sub | Cron-style scheduling |
| CI/CD webhook handler | HTTP | GitHub/GitLab push events |
| Slack bot backend | HTTP | Slash command handler |
| IoT data ingestion | Pub/Sub | Process device telemetry |
| Audit log alerting | Cloud Audit Logs (via Eventarc) | React to IAM changes, resource creation |

## Quick Start

### Node.js HTTP Function

```javascript
const functions = require('@google-cloud/functions-framework');

functions.http('helloGET', (req, res) => {
  res.send(`Hello ${req.query.name || 'World'}!`);
});
```

**package.json**:
```json
{
  "dependencies": {
    "@google-cloud/functions-framework": "^3.1.0"
  }
}
```

### Deploy with gcloud (Cloud Run -- recommended)

```bash
gcloud run deploy my-function \
  --source . \
  --function helloGET \
  --base-image nodejs22 \
  --region us-central1 \
  --allow-unauthenticated
```

### Deploy with gcloud (Cloud Functions v2 API -- backward compatible)

```bash
gcloud functions deploy my-function \
  --gen2 \
  --runtime nodejs22 \
  --trigger-http \
  --allow-unauthenticated \
  --region us-central1 \
  --source .
```

### Local Development

```bash
npm install @google-cloud/functions-framework
npx functions-framework --target=helloGET --port=8080
curl http://localhost:8080
```

### curl (Invoke Deployed Function)

```bash
# Authenticated invocation
curl -H "Authorization: Bearer $(gcloud auth print-identity-token)" \
  "$(gcloud run services describe my-function --region us-central1 --format='value(status.url)')"
```

## Key Concepts

- **Functions Framework**: Open-source library for writing portable functions. Available for Node.js, Python, Go, Java, Ruby, PHP, .NET.
- **HTTP Functions**: Triggered by HTTP requests; must return an HTTP response.
- **Event-driven Functions (CloudEvents)**: Triggered by cloud events (Pub/Sub, Storage, Firestore, etc.) via Eventarc.
- **Base Images**: Pre-built runtime environments (e.g., `nodejs22`, `python312`, `go122`) used when deploying from source.
- **Cold Start**: Initialization time when a new instance is created. Mitigate with min instances and lightweight dependencies.
- **Concurrency**: 2nd gen supports up to 1000 concurrent requests per instance; 1st gen supports only 1.
- **Eventarc**: The event routing service for 2nd gen functions, supporting 90+ event sources through Cloud Audit Logs.

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Enable APIs, IAM roles, project setup |
| `patterns.md` | Common workflow patterns with code examples |
| `gotchas.md` | Quotas, limits, common errors, gen1 vs gen2 differences |
