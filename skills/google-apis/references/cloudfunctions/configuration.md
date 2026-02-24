# Cloud Run Functions - Configuration

## Enable the APIs

Cloud Run functions (latest) require several APIs enabled:

```bash
# Required APIs for Cloud Run functions (latest)
gcloud services enable \
  artifactregistry.googleapis.com \
  cloudbuild.googleapis.com \
  run.googleapis.com \
  logging.googleapis.com

# If using Cloud Functions v2 API (backward compatible)
gcloud services enable cloudfunctions.googleapis.com

# If using Eventarc triggers
gcloud services enable eventarc.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library).

## IAM Roles

### For Deploying Functions

| Role | ID | Purpose |
|------|-----|---------|
| Cloud Run Admin | `roles/run.admin` | Deploy and manage Cloud Run services/functions |
| Cloud Run Source Developer | `roles/run.sourceDeveloper` | Deploy functions from source code |
| Service Account User | `roles/iam.serviceAccountUser` | Act as the function's service account |
| Logs Viewer | `roles/logging.viewer` | View function logs |

### For Cloud Build Service Account

The Cloud Build service account needs the Cloud Run Builder role:

```bash
gcloud projects add-iam-policy-binding PROJECT_ID \
  --member=serviceAccount:PROJECT_NUMBER-compute@developer.gserviceaccount.com \
  --role=roles/run.builder
```

### For 1st Gen Functions

| Role | ID | Purpose |
|------|-----|---------|
| Cloud Functions Developer | `roles/cloudfunctions.developer` | Deploy and manage 1st gen functions |

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/cloud-platform` | Full access to Google Cloud resources (used by Cloud Functions API) |

## Service Endpoints

| API | Root URL | Use Case |
|-----|----------|----------|
| Cloud Run Admin API | `https://run.googleapis.com/` | Latest functions (recommended) |
| Cloud Functions v2 API | `https://cloudfunctions.googleapis.com/` | Backward compatible management |

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **ADC (Application Default Credentials)** - Auto-detects environment (recommended for Cloud Functions)
2. **Service Account** - For server-to-server (the function runs as its service account)
3. **OAuth2** - For user-context operations within the function

### Function Identity

Each Cloud Run function runs as a service account. By default, this is the Compute Engine default service account. For production, create a dedicated service account:

```bash
# Create dedicated service account
gcloud iam service-accounts create my-function-sa \
  --display-name="My Function Service Account"

# Deploy with dedicated service account
gcloud run deploy my-function \
  --source . \
  --function myHandler \
  --base-image nodejs22 \
  --region us-central1 \
  --service-account my-function-sa@PROJECT_ID.iam.gserviceaccount.com
```

## Install Client Libraries

### Node.js (Functions Framework)

```bash
npm install @google-cloud/functions-framework
```

### Python (Functions Framework)

```bash
pip install functions-framework
```

### Additional Client Libraries (for calling other GCP services from within functions)

```bash
# Node.js
npm install @google-cloud/storage @google-cloud/pubsub @google-cloud/firestore

# Python
pip install google-cloud-storage google-cloud-pubsub google-cloud-firestore
```
