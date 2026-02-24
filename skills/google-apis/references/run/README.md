# Cloud Run Admin API

> Deploy and manage user provided container images that scale automatically based on incoming requests. The Cloud Run Admin API v1 follows the Knative Serving API specification, while v2 is aligned with Google Cloud AIP-based API standards, as described in https://google.aip.dev/.

## Overview

- **API**: `run`
- **Version**: `v2`
- **Base URL**: `https://run.googleapis.com/`
- **Docs**: [https://cloud.google.com/run/](https://cloud.google.com/run/)

## When to Use

Cloud Run is a fully managed platform for running containerized code on Google's infrastructure. Use it when you need to:

- **Deploy a web app or API without managing servers** -- REST APIs, GraphQL endpoints, gRPC services, or full-stack web applications with automatic HTTPS, TLS, and a stable `*.run.app` URL.
- **Run event-driven microservices** -- Respond to Pub/Sub push messages, Eventarc triggers, or Cloud Tasks callbacks with automatic scale-to-zero when idle.
- **Process background jobs on a schedule or ad hoc** -- Use Cloud Run jobs for database migrations, report generation, batch image processing, or data pipeline steps that run to completion.
- **Host AI/ML inference** -- Serve models (with optional NVIDIA L4 GPU support) behind an autoscaling HTTP endpoint.
- **Deploy a worker pool for pull-based workloads** -- Run Kafka consumers, Pub/Sub pull subscribers, or RabbitMQ consumers that do not need an HTTP endpoint.
- **Deploy directly from source code** -- Supports Go, Node.js, Python, Java, .NET, and Ruby with automatic containerization via Cloud Build and Buildpacks.
- **Prototype quickly with pay-per-use billing** -- Scale to zero means no cost when idle; generous free tier included.

### When NOT to Use

- Long-running stateful workloads that need persistent local disk (use GKE or Compute Engine).
- Workloads requiring more than 8 vCPUs or 32 GiB memory per instance.
- Sub-millisecond latency requirements where cold starts are unacceptable and minimum instances would be too costly.
- Workloads requiring Windows containers (Cloud Run supports Linux only).

## Resource Types

Cloud Run provides three resource types:

| Resource | Description | Scaling |
|----------|-------------|---------|
| **Service** | Responds to HTTP requests via a stable HTTPS endpoint. Stateless instances autoscale based on request volume or CPU utilization. | Automatic (0 to 1000+ instances) |
| **Job** | Executes tasks that run to completion, manually or on a schedule. Supports parallel array jobs (up to 10,000 tasks). | Manual / array parallelism |
| **Worker Pool** | Always-on background workloads for pull-based processing (Kafka, Pub/Sub pull, RabbitMQ). No HTTP endpoint. | Manual (you control instance count) |

## Quick Start

### Deploy from source (gcloud CLI)

```bash
# Enable required APIs
gcloud services enable run.googleapis.com cloudbuild.googleapis.com

# Deploy from source -- Cloud Run builds the container for you
gcloud run deploy my-service --source . --region us-central1 --allow-unauthenticated

# Deploy a pre-built container image
gcloud run deploy my-service \
  --image us-docker.pkg.dev/PROJECT_ID/REPO/IMAGE:TAG \
  --region us-central1
```

### googleapis (Node.js) -- Admin API

```typescript
import { google } from "googleapis";

const run = google.run('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ["https://www.googleapis.com/auth/cloud-platform"],
});
google.options({ auth });

// List services in a region
const res = await run.projects.locations.services.list({
  parent: "projects/PROJECT_ID/locations/us-central1",
});
console.log(res.data.services);
```

### curl

```bash
# List services via Admin API
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://run.googleapis.com/v2/projects/PROJECT_ID/locations/us-central1/services"

# Get a specific service
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://run.googleapis.com/v2/projects/PROJECT_ID/locations/us-central1/services/my-service"
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

