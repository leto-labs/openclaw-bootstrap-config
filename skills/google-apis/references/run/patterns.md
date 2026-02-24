# Cloud Run Admin API - Common Patterns

## Standard Patterns

### Pagination

Most `list` methods support pagination with `pageToken`/`nextPageToken`:

```typescript
let pageToken: string | undefined;
const allItems = [];
do {
  const res = await api.resource.list({ pageToken, maxResults: 100 });
  allItems.push(...(res.data.items || []));
  pageToken = res.data.nextPageToken;
} while (pageToken);
```

### Create / Insert

```typescript
const res = await api.resource.create({
  requestBody: { /* fields */ },
});
```

### Get by ID

```typescript
const res = await api.resource.get({ id: 'resource-id' });
```

### Update / Patch

```typescript
const res = await api.resource.patch({
  id: 'resource-id',
  requestBody: { /* updated fields */ },
});
```

### Delete

```typescript
const res = await api.resource.delete({ id: 'resource-id' });
```

## Error Handling

```typescript
try {
  const res = await api.resource.method({ ... });
} catch (err: any) {
  if (err.code === 429) {
    // Rate limited — implement exponential backoff
  } else if (err.code === 403) {
    // Permission denied — check scopes and API enablement
  } else if (err.code === 404) {
    // Not found
  }
  console.error(err.message);
}
```

## Batch Requests

For multiple independent operations, use batch requests to reduce round trips:

```typescript
// googleapis supports batching via gaxios or manual HTTP batch
// See references/googleapis-client.md for batch patterns
```

---

## Cloud Run Deployment Patterns (gcloud CLI)

The following patterns cover common Cloud Run operations via the `gcloud` CLI, which is the primary way most developers interact with Cloud Run.

### Deploy from Source Code

Build and deploy directly from source -- Cloud Run uses Cloud Build and Buildpacks to containerize automatically. Supports Go, Node.js, Python, Java, .NET, and Ruby.

```bash
# From the project root directory
gcloud run deploy my-service \
  --source . \
  --region us-central1 \
  --allow-unauthenticated
```

If a `Dockerfile` is present, Cloud Run uses it. Otherwise, it auto-detects the language and uses Google Cloud Buildpacks.

### Deploy a Pre-built Container Image

```bash
# Deploy from Artifact Registry
gcloud run deploy my-service \
  --image us-docker.pkg.dev/PROJECT_ID/my-repo/my-image:v1.2.0 \
  --region us-central1

# Deploy from Docker Hub (public images)
gcloud run deploy my-service \
  --image docker.io/library/nginx:latest \
  --region us-central1
```

### Environment Variables

```bash
# Set environment variables at deploy time
gcloud run deploy my-service \
  --image IMAGE_URL \
  --set-env-vars "DATABASE_URL=postgres://...,NODE_ENV=production" \
  --region us-central1

# Update environment variables on an existing service
gcloud run services update my-service \
  --update-env-vars "LOG_LEVEL=debug" \
  --region us-central1
```

### Secrets from Secret Manager

Mount secrets as environment variables or files without baking them into the container:

```bash
# Mount secret as environment variable
gcloud run deploy my-service \
  --image IMAGE_URL \
  --set-secrets "DB_PASSWORD=my-db-password:latest" \
  --region us-central1

# Mount secret as a file (mounted at /secrets/my-key)
gcloud run deploy my-service \
  --image IMAGE_URL \
  --set-secrets "/secrets/my-key=my-secret-name:latest" \
  --region us-central1

# Multiple secrets
gcloud run deploy my-service \
  --image IMAGE_URL \
  --set-secrets "API_KEY=api-key-secret:latest,DB_PASS=db-password:latest" \
  --region us-central1
```

The service account must have `roles/secretmanager.secretAccessor` on the secret.

### Custom Domains

```bash
# Map a custom domain (requires domain verification)
gcloud run domain-mappings create \
  --service my-service \
  --domain my-app.example.com \
  --region us-central1

# List domain mappings
gcloud run domain-mappings list --region us-central1
```

Alternatively, use a global external Application Load Balancer for advanced routing, CDN, and WAF.

### Traffic Splitting and Gradual Rollouts

```bash
# Deploy a new revision without routing traffic to it
gcloud run deploy my-service \
  --image IMAGE_URL \
  --no-traffic \
  --region us-central1

# Split traffic: 90% to current, 10% to the new revision
gcloud run services update-traffic my-service \
  --to-revisions my-service-00002-abc=10 \
  --region us-central1

# Route 100% traffic to the latest revision
gcloud run services update-traffic my-service \
  --to-latest \
  --region us-central1

# Rollback: send all traffic to a known-good revision
gcloud run services update-traffic my-service \
  --to-revisions my-service-00001-xyz=100 \
  --region us-central1
```

### Min/Max Instances

```bash
# Set minimum instances (prevents cold starts, increases cost)
gcloud run deploy my-service \
  --image IMAGE_URL \
  --min-instances 1 \
  --region us-central1

# Set maximum instances (cap scaling to prevent runaway costs)
gcloud run deploy my-service \
  --image IMAGE_URL \
  --max-instances 100 \
  --region us-central1

# Both together
gcloud run deploy my-service \
  --image IMAGE_URL \
  --min-instances 2 \
  --max-instances 50 \
  --region us-central1
```

### CPU and Memory Configuration

```bash
# Set CPU and memory
gcloud run deploy my-service \
  --image IMAGE_URL \
  --cpu 2 \
  --memory 1Gi \
  --region us-central1

# CPU always allocated (not just during requests)
gcloud run deploy my-service \
  --image IMAGE_URL \
  --cpu 2 \
  --memory 1Gi \
  --no-cpu-throttling \
  --region us-central1
```

### VPC Connector (Access Private Resources)

Connect Cloud Run to resources in your VPC (Cloud SQL private IP, Memorystore, internal services):

```bash
# Create a Serverless VPC Access connector
gcloud compute networks vpc-access connectors create my-connector \
  --region us-central1 \
  --network default \
  --range 10.8.0.0/28

# Deploy with VPC connector
gcloud run deploy my-service \
  --image IMAGE_URL \
  --vpc-connector my-connector \
  --region us-central1

# Or use Direct VPC egress (no connector needed, simpler)
gcloud run deploy my-service \
  --image IMAGE_URL \
  --network default \
  --subnet default \
  --region us-central1
```

### Cloud SQL Connection

```bash
# Deploy with Cloud SQL instance connection
gcloud run deploy my-service \
  --image IMAGE_URL \
  --set-cloudsql-instances PROJECT_ID:REGION:INSTANCE_NAME \
  --set-env-vars "DB_HOST=/cloudsql/PROJECT_ID:REGION:INSTANCE_NAME" \
  --region us-central1
```

The Cloud SQL Auth Proxy runs as a sidecar. The service account needs `roles/cloudsql.client`.

### Jobs vs Services

#### Create and run a job

```bash
# Create a job (runs to completion, no HTTP endpoint)
gcloud run jobs create my-job \
  --image IMAGE_URL \
  --region us-central1

# Execute the job
gcloud run jobs execute my-job --region us-central1

# Execute with overrides
gcloud run jobs execute my-job \
  --update-env-vars "BATCH_SIZE=1000" \
  --tasks 10 \
  --region us-central1

# Schedule a job with Cloud Scheduler
gcloud scheduler jobs create http my-scheduled-job \
  --schedule "0 2 * * *" \
  --uri "https://REGION-run.googleapis.com/apis/run.googleapis.com/v1/namespaces/PROJECT_ID/jobs/my-job:run" \
  --http-method POST \
  --oauth-service-account-email SA_EMAIL
```

#### Array jobs (parallel processing)

```bash
# Create a job with parallel tasks
gcloud run jobs create batch-process \
  --image IMAGE_URL \
  --tasks 100 \
  --parallelism 10 \
  --max-retries 3 \
  --region us-central1
```

Inside the container, use `CLOUD_RUN_TASK_INDEX` (0-based) and `CLOUD_RUN_TASK_COUNT` to partition work.

### Continuous Deployment from GitHub

```bash
# Set up continuous deployment (triggers on push to main)
gcloud run deploy my-service \
  --source https://github.com/OWNER/REPO \
  --region us-central1
```

Or configure via Cloud Build trigger with a `cloudbuild.yaml`:

```yaml
steps:
  - name: "gcr.io/cloud-builders/docker"
    args: ["build", "-t", "us-docker.pkg.dev/$PROJECT_ID/my-repo/my-image:$COMMIT_SHA", "."]
  - name: "gcr.io/cloud-builders/docker"
    args: ["push", "us-docker.pkg.dev/$PROJECT_ID/my-repo/my-image:$COMMIT_SHA"]
  - name: "gcr.io/google.com/cloudsdktool/cloud-sdk"
    entrypoint: gcloud
    args:
      - "run"
      - "deploy"
      - "my-service"
      - "--image"
      - "us-docker.pkg.dev/$PROJECT_ID/my-repo/my-image:$COMMIT_SHA"
      - "--region"
      - "us-central1"
images:
  - "us-docker.pkg.dev/$PROJECT_ID/my-repo/my-image:$COMMIT_SHA"
```

### Concurrency and Timeout Settings

```bash
# Set max concurrent requests per instance (default 80, max 1000)
gcloud run deploy my-service \
  --image IMAGE_URL \
  --concurrency 250 \
  --region us-central1

# Set request timeout (default 300s, max 3600s = 60 min)
gcloud run deploy my-service \
  --image IMAGE_URL \
  --timeout 900 \
  --region us-central1
```

### Ingress Settings

```bash
# Allow only internal traffic (VPC and other GCP services)
gcloud run deploy my-service \
  --image IMAGE_URL \
  --ingress internal \
  --region us-central1

# Allow internal + Cloud Load Balancing traffic
gcloud run deploy my-service \
  --image IMAGE_URL \
  --ingress internal-and-cloud-load-balancing \
  --region us-central1

# Allow all traffic (default)
gcloud run deploy my-service \
  --image IMAGE_URL \
  --ingress all \
  --region us-central1
```

