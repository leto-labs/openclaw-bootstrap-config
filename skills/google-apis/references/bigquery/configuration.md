# BigQuery API - Configuration

## Enable the API

```bash
gcloud services enable bigquery.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/bigquery.googleapis.com).

Note: For new projects, the BigQuery API is automatically enabled.

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/bigquery` | View and manage your data in Google BigQuery and see the email address for your Google Account |
| `https://www.googleapis.com/auth/bigquery.insertdata` | Insert data into Google BigQuery |
| `https://www.googleapis.com/auth/cloud-platform` | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account. |
| `https://www.googleapis.com/auth/cloud-platform.read-only` | View your data across Google Cloud services and see the email address of your Google Account |
| `https://www.googleapis.com/auth/devstorage.full_control` | Manage your data and permissions in Cloud Storage and see the email address for your Google Account |
| `https://www.googleapis.com/auth/devstorage.read_only` | View your data in Google Cloud Storage |
| `https://www.googleapis.com/auth/devstorage.read_write` | Manage your data in Cloud Storage and see the email address of your Google Account |

### Recommended Scopes by Use Case

| Use Case | Scope |
|----------|-------|
| Run queries, manage datasets/tables | `bigquery` |
| Read-only queries and listing | `cloud-platform.read-only` |
| Stream data into tables | `bigquery.insertdata` |
| Load from / export to GCS | `bigquery` + `devstorage.read_only` (or `devstorage.full_control` for exports) |

## IAM Roles

| Role | Description |
|------|-------------|
| `roles/bigquery.admin` | Full control over all BigQuery resources |
| `roles/bigquery.dataEditor` | Read/write access to dataset data (tables, views) |
| `roles/bigquery.dataViewer` | Read access to dataset data |
| `roles/bigquery.jobUser` | Run jobs (queries, loads, exports) in the project |
| `roles/bigquery.user` | Run jobs + list datasets + create new datasets |
| `roles/bigquery.dataOwner` | Read/write/delete dataset data + manage access |

### Minimum Permissions for Common Tasks

- **Run a query**: `roles/bigquery.jobUser` on the project + `roles/bigquery.dataViewer` on the dataset
- **Load data**: `roles/bigquery.jobUser` + `roles/bigquery.dataEditor` on the target dataset
- **Stream data**: `roles/bigquery.dataEditor` on the target dataset
- **Create a dataset**: `roles/bigquery.user` on the project

## Service Endpoint

- **Root URL**: `https://bigquery.googleapis.com/`
- **Service path**: `bigquery/v2/`
- **Batch path**: `batch/bigquery/v2`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user-facing applications querying BigQuery
2. **Service Account** - For server-to-server (ETL pipelines, Cloud Functions, backend services)
3. **ADC (Application Default Credentials)** - Auto-detects environment (recommended for GCP-hosted workloads)

Note: API Keys are **not** supported for BigQuery. Use OAuth2, Service Accounts, or ADC.

## Install Client Libraries

```bash
# Node.js
npm install @google-cloud/bigquery

# Python
pip install google-cloud-bigquery

# Go
go get cloud.google.com/go/bigquery

# Java (Maven)
# <dependency>
#   <groupId>com.google.cloud</groupId>
#   <artifactId>google-cloud-bigquery</artifactId>
# </dependency>
```

For streaming (Storage Write API), install additionally:

```bash
# Node.js
npm install @google-cloud/bigquery-storage

# Python
pip install google-cloud-bigquery-storage
```

