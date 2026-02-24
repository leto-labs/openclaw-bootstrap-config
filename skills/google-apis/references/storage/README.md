# Cloud Storage JSON API

> Cloud Storage is a service for storing objects (files of any format) in Google Cloud. Objects live in buckets, which can be organized with folder prefixes or hierarchical namespace.

## Overview

- **API**: `storage`
- **Version**: `v1`
- **Base URL**: `https://storage.googleapis.com/storage/v1/`
- **Upload URL**: `https://storage.googleapis.com/upload/storage/v1/`
- **Docs**: [https://cloud.google.com/storage/docs](https://cloud.google.com/storage/docs)

## When to Use

Use Cloud Storage when you need to:

- **Store and serve static assets** -- images, CSS, JS, fonts for web apps or CDN origins
- **Upload and download files programmatically** -- user uploads, generated reports, export files, database backups
- **Store large binary objects** -- videos, ML model weights, dataset archives (up to 5 TiB per object)
- **Host a static website** -- serve HTML/CSS/JS directly from a bucket with a custom domain
- **Stage data for analytics pipelines** -- land raw data in GCS before loading into BigQuery, Dataflow, or Spark
- **Archive infrequently accessed data** -- use Nearline, Coldline, or Archive storage classes to reduce cost
- **Share files across services** -- GCS as a shared data layer between Cloud Functions, Cloud Run, GKE, Compute Engine
- **Generate time-limited access links** -- signed URLs for secure, temporary downloads or uploads without requiring user auth
- **Trigger event-driven workflows** -- Pub/Sub notifications on object create/delete/archive to drive Cloud Functions or Eventarc
- **Store Terraform state or CI/CD artifacts** -- durable, versioned storage for infrastructure and build outputs
- **Back up databases** -- automated dumps from Cloud SQL, Firestore, or self-managed databases

### When NOT to Use

- For **structured data queries** -- use BigQuery, Cloud SQL, Firestore, or Spanner
- For **POSIX file system semantics** (random seeks, appends, locks) -- use Filestore or Cloud Storage FUSE (with caveats)
- For **block storage attached to VMs** -- use Persistent Disk or Local SSD
- For **real-time key-value lookups** -- use Memorystore, Firestore, or Bigtable
- For **end-user personal file storage** -- use Google Drive

## Key Concepts

- **Bucket**: Globally unique container for objects. Associated with a project, location (region/dual-region/multi-region), and default storage class. Name: 3-63 chars (222 if containing dots).
- **Object**: Immutable data stored in a bucket. Identified by bucket + object name. Max 5 TiB.
- **Object Name (Key)**: Full path within a bucket (e.g., `images/photos/dog.png`). Max 1024 bytes UTF-8. The `/` delimiter simulates directories.
- **Storage Class**: Standard (hot), Nearline (30-day min), Coldline (90-day min), Archive (365-day min). Set per-bucket or per-object.
- **Generation / Metageneration**: Version numbers for the object data and metadata respectively. Used for conditional requests (preconditions).
- **Uniform Bucket-Level Access**: Recommended. Disables per-object ACLs; uses only IAM for access control.
- **Signed URL**: URL with embedded auth granting temporary access to a specific object. Max 7-day expiration (V4).
- **Resumable Upload**: Upload protocol that survives interruptions. Required for large files. Sessions last up to 7 days.
- **Compose**: Combine up to 32 existing objects into one new object without re-uploading data.
- **Object Versioning**: Retains noncurrent versions of replaced/deleted objects when enabled.
- **Lifecycle Rules**: Automated policies for storage class transitions, deletion, or abort of incomplete uploads.
- **Hierarchical Namespace (HNS)**: Optional bucket feature enabling real folder operations (atomic rename) with up to 8x higher initial QPS.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const storage = google.storage('v1');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ['https://www.googleapis.com/auth/devstorage.read_write'],
});
google.options({ auth });

// List buckets in a project
const res = await storage.buckets.list({ project: 'my-project-id' });
console.log(res.data.items);
```

### @google-cloud/storage (Node.js) -- preferred

```typescript
import { Storage } from "@google-cloud/storage";
const storage = new Storage();

// Upload a file
await storage.bucket('my-bucket').upload('./file.txt', {
  destination: 'path/to/object.txt',
});

// Download a file
await storage.bucket('my-bucket')
  .file('path/to/object.txt')
  .download({ destination: '/tmp/download.txt' });

// Generate a signed URL (1 hour)
const [url] = await storage.bucket('my-bucket')
  .file('path/to/object.txt')
  .getSignedUrl({ action: 'read', expires: Date.now() + 3600 * 1000 });
```

### gcloud CLI

```bash
# Upload
gcloud storage cp ./file.txt gs://my-bucket/path/to/object.txt

# Download
gcloud storage cp gs://my-bucket/path/to/object.txt /tmp/download.txt

# List objects
gcloud storage ls gs://my-bucket/images/

# Sync directory
gcloud storage rsync --recursive ./local-dir gs://my-bucket/remote-dir
```

### curl

```bash
# List buckets
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://storage.googleapis.com/storage/v1/b?project=my-project-id"

# Simple media upload
curl -X POST --data-binary @file.txt \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: text/plain" \
  "https://storage.googleapis.com/upload/storage/v1/b/my-bucket/o?uploadType=media&name=path/to/object.txt"

# Download (alt=media returns the object data)
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://storage.googleapis.com/storage/v1/b/my-bucket/o/path%2Fto%2Fobject.txt?alt=media" \
  -o /tmp/download.txt
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, quotas, common errors, debugging |
