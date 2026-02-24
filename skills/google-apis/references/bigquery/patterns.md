# BigQuery API - Common Patterns

## Run a Query (Synchronous)

The simplest pattern -- submit a query and wait for results.

### Node.js (@google-cloud/bigquery)

```typescript
import { BigQuery } from "@google-cloud/bigquery";
const bigquery = new BigQuery();

const [rows] = await bigquery.query({
  query: "SELECT * FROM `project.dataset.table` LIMIT 100",
  location: "US",
});
console.log(rows);
```

### Python

```python
from google.cloud import bigquery
client = bigquery.Client()

query = "SELECT * FROM `project.dataset.table` LIMIT 100"
rows = client.query(query).result()
for row in rows:
    print(dict(row))
```

## Run a Query (Asynchronous / Job-Based)

For long-running queries, create a job and poll for completion.

### Node.js

```typescript
const [job] = await bigquery.createQueryJob({
  query: "SELECT * FROM `project.dataset.large_table`",
  location: "US",
});
console.log(`Job ${job.id} started.`);

const [rows] = await job.getQueryResults();
console.log(`Got ${rows.length} rows.`);
```

### Python

```python
job = client.query("SELECT * FROM `project.dataset.large_table`")
# job.result() blocks until query completes
results = job.result()
print(f"Query processed {job.total_bytes_processed} bytes")
```

## Parameterized Queries

Always use parameterized queries to prevent SQL injection and improve caching.

### Node.js (Named Parameters)

```typescript
const [rows] = await bigquery.query({
  query: `SELECT * FROM \`project.dataset.events\`
          WHERE event_date >= @start_date
            AND user_id = @user_id
          LIMIT @max_rows`,
  params: {
    start_date: "2024-01-01",
    user_id: "user123",
    max_rows: 1000,
  },
});
```

### Python (Named Parameters)

```python
from google.cloud import bigquery

job_config = bigquery.QueryJobConfig(
    query_parameters=[
        bigquery.ScalarQueryParameter("start_date", "STRING", "2024-01-01"),
        bigquery.ScalarQueryParameter("user_id", "STRING", "user123"),
        bigquery.ScalarQueryParameter("max_rows", "INT64", 1000),
    ]
)
rows = client.query(
    """SELECT * FROM `project.dataset.events`
       WHERE event_date >= @start_date
         AND user_id = @user_id
       LIMIT @max_rows""",
    job_config=job_config,
).result()
```

### Python (Array Parameters)

```python
job_config = bigquery.QueryJobConfig(
    query_parameters=[
        bigquery.ArrayQueryParameter("states", "STRING", ["CA", "TX", "NY"]),
    ]
)
rows = client.query(
    "SELECT * FROM `project.dataset.users` WHERE state IN UNNEST(@states)",
    job_config=job_config,
).result()
```

## Dry-Run Query (Cost Estimation)

Estimate how many bytes a query will process without actually running it.

### Node.js

```typescript
const [job] = await bigquery.createQueryJob({
  query: "SELECT * FROM `project.dataset.large_table` WHERE date > '2024-01-01'",
  dryRun: true,
});
const bytesProcessed = parseInt(job.statistics.totalBytesProcessed);
const estimatedCostUSD = (bytesProcessed / 1e12) * 6.25; // on-demand: $6.25/TB
console.log(`Estimated bytes: ${bytesProcessed}, cost: $${estimatedCostUSD.toFixed(4)}`);
```

### Python

```python
job_config = bigquery.QueryJobConfig(dry_run=True, use_query_cache=False)
query_job = client.query(
    "SELECT * FROM `project.dataset.large_table` WHERE date > '2024-01-01'",
    job_config=job_config,
)
bytes_processed = query_job.total_bytes_processed
est_cost = (bytes_processed / 1e12) * 6.25
print(f"Bytes processed: {bytes_processed:,}, estimated cost: ${est_cost:.4f}")
```

## Load Data from Cloud Storage

### Load CSV

```python
from google.cloud import bigquery

job_config = bigquery.LoadJobConfig(
    source_format=bigquery.SourceFormat.CSV,
    skip_leading_rows=1,           # skip header row
    autodetect=True,               # auto-detect schema
    write_disposition=bigquery.WriteDisposition.WRITE_TRUNCATE,  # overwrite
)

uri = "gs://your-bucket/data.csv"
table_id = "project.dataset.table"

load_job = client.load_table_from_uri(uri, table_id, job_config=job_config)
load_job.result()  # wait for completion
print(f"Loaded {load_job.output_rows} rows.")
```

### Load JSON (Newline-Delimited)

```python
job_config = bigquery.LoadJobConfig(
    source_format=bigquery.SourceFormat.NEWLINE_DELIMITED_JSON,
    autodetect=True,
)
load_job = client.load_table_from_uri(
    "gs://your-bucket/data.jsonl", "project.dataset.table", job_config=job_config
)
load_job.result()
```

### Load Parquet

```python
job_config = bigquery.LoadJobConfig(
    source_format=bigquery.SourceFormat.PARQUET,
    write_disposition=bigquery.WriteDisposition.WRITE_APPEND,
)
load_job = client.load_table_from_uri(
    "gs://your-bucket/data.parquet", "project.dataset.table", job_config=job_config
)
load_job.result()
```

### Load from Local File (Python)

```python
job_config = bigquery.LoadJobConfig(
    source_format=bigquery.SourceFormat.CSV,
    skip_leading_rows=1,
    autodetect=True,
)
with open("local_data.csv", "rb") as f:
    load_job = client.load_table_from_file(f, "project.dataset.table", job_config=job_config)
load_job.result()
```

### Node.js Load

```typescript
const metadata = {
  sourceFormat: "CSV",
  skipLeadingRows: 1,
  autodetect: true,
};
const [job] = await bigquery
  .dataset("my_dataset")
  .table("my_table")
  .load(storage.bucket("my-bucket").file("data.csv"), metadata);
console.log(`Job ${job.id} completed.`);
```

## Streaming Inserts (Storage Write API -- Recommended)

The Storage Write API is the recommended approach for streaming data. It provides higher throughput and exactly-once semantics.

### Python (Legacy Streaming Insert -- Simpler API)

```python
table_id = "project.dataset.table"
rows_to_insert = [
    {"name": "Alice", "age": 30, "ts": "2024-01-15T10:00:00"},
    {"name": "Bob", "age": 25, "ts": "2024-01-15T10:01:00"},
]
errors = client.insert_rows_json(table_id, rows_to_insert)
if errors:
    print(f"Errors: {errors}")
else:
    print("Rows inserted successfully.")
```

### Node.js (Legacy Streaming Insert)

```typescript
const rows = [
  { name: "Alice", age: 30, ts: "2024-01-15T10:00:00" },
  { name: "Bob", age: 25, ts: "2024-01-15T10:01:00" },
];

await bigquery.dataset("my_dataset").table("my_table").insert(rows);
console.log("Rows inserted.");
```

## Export Data to Cloud Storage

### Python (CSV Export)

```python
destination_uri = "gs://your-bucket/export/data-*.csv"
table_ref = client.dataset("my_dataset").table("my_table")

extract_job = client.extract_table(
    table_ref,
    destination_uri,
    location="US",
)
extract_job.result()
print(f"Exported to {destination_uri}")
```

### Export as JSON

```python
job_config = bigquery.ExtractJobConfig(
    destination_format=bigquery.DestinationFormat.NEWLINE_DELIMITED_JSON,
)
extract_job = client.extract_table(
    "project.dataset.table",
    "gs://your-bucket/export/data-*.json",
    job_config=job_config,
    location="US",
)
extract_job.result()
```

### Export as Parquet

```python
job_config = bigquery.ExtractJobConfig(
    destination_format=bigquery.DestinationFormat.PARQUET,
)
extract_job = client.extract_table(
    "project.dataset.table",
    "gs://your-bucket/export/data-*.parquet",
    job_config=job_config,
)
extract_job.result()
```

## Create and Manage Datasets

### Python

```python
dataset_id = "project.new_dataset"
dataset = bigquery.Dataset(dataset_id)
dataset.location = "US"
dataset.description = "My new dataset"
dataset.default_table_expiration_ms = 90 * 24 * 60 * 60 * 1000  # 90 days

dataset = client.create_dataset(dataset, exists_ok=True)
print(f"Created dataset {dataset.dataset_id}")
```

### Node.js

```typescript
const [dataset] = await bigquery.createDataset("new_dataset", {
  location: "US",
});
console.log(`Dataset ${dataset.id} created.`);
```

### List Datasets

```python
for dataset in client.list_datasets():
    print(dataset.dataset_id)
```

## Create Tables with Schema

### Python

```python
schema = [
    bigquery.SchemaField("id", "STRING", mode="REQUIRED"),
    bigquery.SchemaField("name", "STRING", mode="REQUIRED"),
    bigquery.SchemaField("email", "STRING", mode="NULLABLE"),
    bigquery.SchemaField("created_at", "TIMESTAMP", mode="REQUIRED"),
    bigquery.SchemaField("tags", "STRING", mode="REPEATED"),
    bigquery.SchemaField("address", "RECORD", mode="NULLABLE", fields=[
        bigquery.SchemaField("street", "STRING"),
        bigquery.SchemaField("city", "STRING"),
        bigquery.SchemaField("state", "STRING"),
    ]),
]

table = bigquery.Table("project.dataset.users", schema=schema)
table.time_partitioning = bigquery.TimePartitioning(
    type_=bigquery.TimePartitioningType.DAY,
    field="created_at",
)
table.clustering_fields = ["state"]

table = client.create_table(table, exists_ok=True)
print(f"Created table {table.table_id}")
```

### Create Table via DDL

```python
client.query("""
    CREATE TABLE IF NOT EXISTS `project.dataset.events` (
        event_id STRING NOT NULL,
        event_type STRING NOT NULL,
        user_id STRING,
        event_data JSON,
        created_at TIMESTAMP NOT NULL
    )
    PARTITION BY DATE(created_at)
    CLUSTER BY event_type, user_id
    OPTIONS (
        description = 'Event tracking table',
        labels = [('env', 'production')]
    )
""").result()
```

## Pagination

### Python

```python
query = "SELECT * FROM `project.dataset.large_table`"
query_job = client.query(query)

# Iterate through pages
page_iter = query_job.result(page_size=1000)
for page in page_iter.pages:
    for row in page:
        process(row)
```

### Node.js

```typescript
const [job] = await bigquery.createQueryJob({
  query: "SELECT * FROM `project.dataset.large_table`",
});

const options = { maxResults: 1000 };
let [rows, nextQuery] = await job.getQueryResults(options);
while (rows.length > 0) {
  rows.forEach((row) => process(row));
  if (!nextQuery) break;
  [rows, nextQuery] = await job.getQueryResults(nextQuery);
}
```

## Copy Tables

```python
source = client.dataset("source_dataset").table("source_table")
destination = client.dataset("dest_dataset").table("dest_table")

copy_job = client.copy_table(source, destination)
copy_job.result()
print("Table copied.")
```

## Standard Patterns

### Pagination (googleapis)

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

## Error Handling

```typescript
try {
  const [rows] = await bigquery.query({ query });
} catch (err: any) {
  if (err.code === 403) {
    // Permission denied -- check IAM roles and API enablement
  } else if (err.code === 404) {
    // Table/dataset not found
  } else if (err.code === 409) {
    // Already exists (table, dataset)
  } else if (err.errors?.[0]?.reason === "quotaExceeded") {
    // Quota exceeded -- implement backoff or reduce request rate
  } else if (err.errors?.[0]?.reason === "rateLimitExceeded") {
    // Rate limited -- implement exponential backoff
  } else if (err.errors?.[0]?.reason === "billingTierLimitExceeded") {
    // Query too CPU-intensive for on-demand pricing
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
