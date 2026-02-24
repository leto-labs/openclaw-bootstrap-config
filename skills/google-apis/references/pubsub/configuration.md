# Cloud Pub/Sub API - Configuration

## Enable the API

```bash
gcloud services enable pubsub.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/pubsub.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/pubsub` | View and manage Pub/Sub topics and subscriptions |
| `https://www.googleapis.com/auth/cloud-platform` | Full access to all Google Cloud resources (superset) |

## IAM Roles

| Role | Description |
|------|-------------|
| `roles/pubsub.admin` | Full control over topics, subscriptions, and IAM policies |
| `roles/pubsub.editor` | Create, update, delete topics and subscriptions |
| `roles/pubsub.publisher` | Publish messages to topics |
| `roles/pubsub.subscriber` | Consume messages from subscriptions, acknowledge messages |
| `roles/pubsub.viewer` | View topics and subscriptions (read-only) |

## Service Endpoint

- **Root URL**: `https://pubsub.googleapis.com/`
- **Service path**: `v1/`
- **Batch path**: `batch`

### Locational Endpoints

Route requests to specific regions for quota and data residency:

```
https://{REGION}-pubsub.googleapis.com
```

Example: `https://us-central1-pubsub.googleapis.com`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **Service Account** - Most common for Pub/Sub (server-to-server). Set `GOOGLE_APPLICATION_CREDENTIALS` or use default compute engine credentials.
2. **ADC (Application Default Credentials)** - Auto-detects environment (GCE, GKE, Cloud Run, local dev via `gcloud auth application-default login`).
3. **OAuth2** - For user-delegated access, less common with Pub/Sub.

## Client Libraries

| Language | Package | Install |
|----------|---------|---------|
| Node.js | `@google-cloud/pubsub` | `npm install @google-cloud/pubsub` |
| Python | `google-cloud-pubsub` | `pip install google-cloud-pubsub` |
| Go | `cloud.google.com/go/pubsub` | `go get cloud.google.com/go/pubsub` |
| Java | `google-cloud-pubsub` | Maven: `com.google.cloud:google-cloud-pubsub` |
| C# | `Google.Cloud.PubSub.V1` | `Install-Package Google.Cloud.PubSub.V1` |
| Ruby | `google-cloud-pubsub` | `gem install google-cloud-pubsub` |
| PHP | `google/cloud-pubsub` | `composer require google/cloud-pubsub` |
