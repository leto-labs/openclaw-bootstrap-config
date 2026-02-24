# Cloud Run Admin API - Configuration

## Enable the API

```bash
gcloud services enable run.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/run.googleapis.com).

Also enable these for source deploys:

```bash
gcloud services enable cloudbuild.googleapis.com   # Required for source deploys
gcloud services enable artifactregistry.googleapis.com  # Required for container storage
```

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/cloud-platform` | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account. |
| `https://www.googleapis.com/auth/run` | See, edit, configure, and delete your Google Cloud Run data and see the email address for your Google Account |
| `https://www.googleapis.com/auth/run.readonly` | See your Google Cloud Run data and the email address of your Google Account |

## Service Endpoint

- **Root URL**: `https://run.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## IAM Roles

| Role | Resource ID | Purpose |
|------|-------------|---------|
| Cloud Run Admin | `roles/run.admin` | Full control over services, jobs, worker pools |
| Cloud Run Developer | `roles/run.developer` | Deploy and manage services (no IAM changes) |
| Cloud Run Source Developer | `roles/run.sourceDeveloper` | Deploy from source code |
| Cloud Run Invoker | `roles/run.invoker` | Invoke (call) a Cloud Run service |
| Cloud Run Builder | `roles/run.builder` | Build source into containers (for Cloud Build SA) |
| Cloud Run Viewer | `roles/run.viewer` | Read-only access to services, jobs |
| Service Account User | `roles/iam.serviceAccountUser` | Act as a service account (needed for deploys) |
| Logs Viewer | `roles/logging.viewer` | View Cloud Run logs |

### Grant Cloud Build access (required for source deploys)

```bash
gcloud projects add-iam-policy-binding PROJECT_ID \
  --member=serviceAccount:PROJECT_NUMBER-compute@developer.gserviceaccount.com \
  --role=roles/run.builder
```

## Service Identity

Every Cloud Run revision is linked to a service account. By default, it uses the Compute Engine default service account. Best practice is to create a dedicated service account:

```bash
# Create a dedicated service account
gcloud iam service-accounts create my-service-sa \
  --display-name="My Cloud Run Service"

# Deploy with the dedicated service account
gcloud run deploy my-service \
  --image IMAGE_URL \
  --service-account my-service-sa@PROJECT_ID.iam.gserviceaccount.com \
  --region us-central1
```

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **Service Identity** -- Cloud Run service account authenticates automatically to Google Cloud APIs
2. **IAM Invoker** -- Control who can call the service via `roles/run.invoker`
3. **Identity-Aware Proxy (IAP)** -- Restrict access to authenticated users only
4. **Public access** -- Allow unauthenticated invocations (set `allUsers` as invoker)
5. **ADC (Application Default Credentials)** -- Auto-detects environment for Admin API calls

## Regions

Cloud Run is available in 40+ regions. Select based on:
- Proximity to users (latency)
- Co-location with other GCP services (Cloud SQL, Memorystore, etc.)
- Pricing tier (Tier 1 is cheaper than Tier 2)

Common Tier 1 regions: `us-central1`, `us-east1`, `europe-west1`, `asia-east1`, `asia-northeast1`

