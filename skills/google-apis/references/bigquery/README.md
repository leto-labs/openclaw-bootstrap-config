# BigQuery API

> BigQuery is a fully managed, serverless data warehouse that enables scalable analysis over petabytes of data using SQL, with built-in machine learning, geospatial analysis, and business intelligence capabilities.

## Overview

- **API**: `bigquery`
- **Version**: `v2`
- **Base URL**: `https://bigquery.googleapis.com/bigquery/v2/`
- **Docs**: [https://cloud.google.com/bigquery/](https://cloud.google.com/bigquery/)

## When to Use

Use the BigQuery API when you need to:

- **Run analytical queries over large datasets** -- BigQuery can query terabytes in seconds and petabytes in minutes using ANSI-standard SQL (GoogleSQL). Ideal for ad hoc analysis, reporting dashboards, and data exploration.
- **Build ETL/ELT data pipelines** -- Load data from Cloud Storage (CSV, JSON, Parquet, Avro, ORC), stream real-time data via the Storage Write API, or use BigQuery Data Transfer Service for automated ingestion from SaaS sources (Google Ads, YouTube, etc.).
- **Power BI dashboards and reporting** -- Connect to Looker, Looker Studio, Google Sheets, Tableau, or Power BI. Use BI Engine for sub-second in-memory analysis.
- **Run machine learning models on warehouse data** -- BigQuery ML lets you create and execute ML models (linear regression, classification, time series, k-means clustering) directly in SQL without moving data.
- **Manage datasets and tables programmatically** -- Create, update, delete, and list datasets, tables, views, and routines via the REST API or client libraries.
- **Export data** -- Extract query results or table data to Cloud Storage in CSV, JSON, Avro, or Parquet format.
- **Estimate query costs before running** -- Use dry-run queries to calculate how many bytes a query will process without actually executing it.
- **Stream data for real-time analytics** -- Use the Storage Write API (recommended) or legacy streaming inserts for continuous data ingestion with sub-second availability.

### When NOT to Use BigQuery

- **OLTP workloads** (high-frequency single-row reads/writes) -- use Cloud SQL, Spanner, or Firestore instead.
- **Sub-millisecond key-value lookups** -- use Bigtable or Memorystore.
- **Small datasets under 10 GB with simple queries** -- a standard PostgreSQL or MySQL database is likely simpler and cheaper.

## Quick Start

### @google-cloud/bigquery (Node.js)

```typescript
import { BigQuery } from "@google-cloud/bigquery";

const bigquery = new BigQuery({ projectId: "your-project-id" });

// Run a query against a public dataset
const [rows] = await bigquery.query({
  query: `SELECT name, count
          FROM \`bigquery-public-data.usa_names.usa_1910_current\`
          WHERE state = @state
          ORDER BY count DESC
          LIMIT 10`,
  params: { state: "TX" },
});
console.log("Rows:", rows);
```

### google-cloud-bigquery (Python)

```python
from google.cloud import bigquery

client = bigquery.Client(project="your-project-id")

query = """
    SELECT name, count
    FROM `bigquery-public-data.usa_names.usa_1910_current`
    WHERE state = @state
    ORDER BY count DESC
    LIMIT 10
"""
job_config = bigquery.QueryJobConfig(
    query_parameters=[bigquery.ScalarQueryParameter("state", "STRING", "TX")]
)
rows = client.query(query, job_config=job_config).result()
for row in rows:
    print(f"{row.name}: {row.count}")
```

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const bigquery = google.bigquery('v2');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ["https://www.googleapis.com/auth/bigquery"],
});
google.options({ auth });

// Example: list datasets
const res = await bigquery.datasets.list({ projectId: "your-project-id" });
console.log(res.data.datasets);
```

### curl

```bash
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://bigquery.googleapis.com/bigquery/v2/projects/YOUR_PROJECT/datasets"
```

### bq CLI

```bash
bq query --use_legacy_sql=false \
  'SELECT name, count
   FROM `bigquery-public-data.usa_names.usa_1910_current`
   ORDER BY count DESC LIMIT 10'
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns (queries, loading, streaming, exports) |
| `gotchas.md` | Quotas, rate limits, common errors, pricing considerations |
