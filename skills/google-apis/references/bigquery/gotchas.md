# BigQuery API - Gotchas & Troubleshooting

## Quotas & Limits (Key Numbers)

Source: [https://cloud.google.com/bigquery/quotas](https://cloud.google.com/bigquery/quotas)

### Query Jobs

| Limit | Value | Notes |
|-------|-------|-------|
| Query usage per day (on-demand) | 200 TiB per project | Adjustable via custom quotas |
| Queued interactive queries | 1,000 per project | Additional queries return `quotaExceeded` |
| Queued batch queries | 20,000 per project | |
| Query execution time limit | 6 hours | Retried up to 3 times; `CREATE MODEL` gets 24-48h |
| Max SQL query length | 1,024K characters | Includes comments and whitespace |
| Max resolved query length | 12 MB | Includes all expanded views and wildcard tables |
| Max query parameters | 10,000 | GoogleSQL only |
| Max response size | 10 GB compressed | Unlimited when writing to destination table |
| Max row size in results | 100 MB | Approximate, based on internal representation |
| Max columns per table/result | 10,000 | Includes nested and repeated columns |
| Max resources per query | 1,000 | Tables + views + UDFs + table functions after expansion |
| Max concurrent on-demand slots | 2,000/project, 20,000/org | BigQuery may temporarily exceed to accelerate queries |
| Max CPU per MiB scanned (on-demand) | 256 CPU seconds | Exceeding causes `billingTierLimitExceeded` |

### Load Jobs

| Limit | Value | Notes |
|-------|-------|-------|
| Load jobs per day | 100,000 per project | Failed jobs count toward limit |
| Load jobs per table per day | 1,500 | Failed jobs count toward limit |
| Max load job size | 15 TB | Total across all input files |
| Max files per load job | 10,000,000 | |
| Load job execution time | 6 hours | |
| CSV max file size (uncompressed) | 5 TB | Compressed: 4 GB |
| JSON max file size (uncompressed) | 5 TB | Compressed: 4 GB |
| CSV/JSON max row size | 100 MB | |

### Export Jobs

| Limit | Value | Notes |
|-------|-------|-------|
| Extract bytes per day | 50 TiB free (shared pool) | Beyond this, use reservations or `EXPORT DATA` |
| Extract jobs per day | 100,000 | |
| Max single file export | 1 GB | Use wildcard URIs for larger exports |

### Copy Jobs

| Limit | Value | Notes |
|-------|-------|-------|
| Copy jobs per day | 100,000 | |
| Cross-region copies per day | 2,000 | |
| Cross-region copies per table per day | 100 | |

### Tables

| Limit | Value | Notes |
|-------|-------|-------|
| Table modifications per day | 1,500 per table | DML and streaming excluded |
| Metadata updates per table | 5 per 10 seconds | Includes DDL, API calls, load/copy/query writes |
| Columns per table | 10,000 | Includes nested/repeated |
| Nested record depth | 15 levels | |
| Partitions per table | 10,000 | Consider clustering if you exceed this |
| Partition modifications per day (column-partitioned) | 30,000 | DML and streaming excluded |
| Partitions modified per job | 4,000 | |

### DML Statements

| Limit | Value | Notes |
|-------|-------|-------|
| Concurrent mutating DML (UPDATE/DELETE/MERGE) per table | 2 | Additional statements queued (max 20 in queue) |
| Concurrent INSERT DML per table (first 1,500/day) | Immediate | After 1,500/day, limited to 10 concurrent |
| DML rate per table | 25 per 10 seconds | Both INSERT and mutating DML |
| Max queue wait time | 7 hours | Interactive priority DML |

### Streaming Inserts (Legacy)

| Limit | Value | Notes |
|-------|-------|-------|
| Throughput (US/EU multi-region) | 1 GB/s per project | Cumulative across all tables |
| Throughput (other regions) | 300 MB/s per project | |
| Max row size | 10 MB | |
| Max HTTP request size | 10 MB | |
| Max rows per request | 50,000 | Recommended: 500 rows for best throughput |

### Storage Write API (Recommended)

| Limit | Value | Notes |
|-------|-------|-------|
| Concurrent connections (multi-region) | 10,000 per project | US/EU multi-regions |
| Concurrent connections (region) | 1,000 per project | |
| Throughput (multi-region) | 3 GB/s per project | |
| Throughput (region) | 300 MB/s per project | |
| CreateWriteStream calls | 10,000/hour per project per region | Use default stream if you do not need exactly-once |
| AppendRows request size | 10 MB | |

### API Rate Limits

| Limit | Value | Notes |
|-------|-------|-------|
| API requests per second per user per method | 100 | Does not apply to streaming |
| Concurrent API requests per user | 300 | Does not apply to streaming |
| `tabledata.list` bytes per minute | 7.5 GB (multi-region), 3.7 GB (region) | Use Storage Read API for higher throughput |
| `tables.insert` requests per second | 10 per user | Creating new empty tables |
| `jobs.get` requests per second | 1,000 per project | |

## Pricing Considerations

### On-Demand vs. Capacity (Editions)

| Model | Cost Basis | Best For |
|-------|-----------|----------|
| **On-demand** | $6.25/TB queried (US) | Sporadic, unpredictable workloads |
| **Standard edition** | Autoscaling slots, per-slot-second | Steady workloads, cost predictability |
| **Enterprise edition** | Committed slots + autoscaling | Large organizations, advanced features |
| **Enterprise Plus** | Committed slots + autoscaling | Mission-critical, highest SLA |

### Cost Control Tips

- **Set custom query quotas** to cap daily bytes scanned per project or per user
- **Use dry-run** before running expensive queries to estimate cost
- **Partition tables** by date/integer -- queries scanning fewer partitions cost less
- **Cluster tables** by frequently filtered columns for additional pruning
- **Use `SELECT` specific columns** instead of `SELECT *` -- BigQuery is columnar, so fewer columns = less data scanned
- **Avoid `ORDER BY` without `LIMIT`** -- sorting petabytes is expensive
- **Leverage query cache** -- identical queries within 24h are free if results are cached
- **Monitor with INFORMATION_SCHEMA** -- `INFORMATION_SCHEMA.JOBS` tracks bytes billed per query
- **Set `maximumBytesBilled`** on query jobs to fail-fast if a query would scan more than expected

### Free Tier (Always Free)

- 1 TB of queries per month
- 10 GB of active storage per month
- 10 GB of long-term storage per month

## Common Errors

| Code | Reason | Fix |
|------|--------|-----|
| 400 `invalidQuery` | SQL syntax error | Check GoogleSQL syntax, ensure `useLegacySql: false` |
| 400 `invalid` | Invalid request parameters | Check parameter types, table references |
| 401 | Unauthenticated | Refresh token or check credentials |
| 403 `accessDenied` | Permission denied | Verify IAM roles, check dataset/table-level access |
| 403 `billingTierLimitExceeded` | Query too CPU-intensive | Optimize query, reduce data scanned, or use capacity pricing |
| 404 `notFound` | Table, dataset, or project not found | Verify fully-qualified table name (`project.dataset.table`) |
| 409 `duplicate` / `alreadyExists` | Resource already exists | Use `IF NOT EXISTS` or `exists_ok=True` |
| 429 `rateLimitExceeded` | API rate limit exceeded | Implement exponential backoff with jitter |
| 429 `quotaExceeded` | Quota limit exceeded | Check quotas dashboard, request increase, or optimize usage |
| 500 | Server error | Retry with backoff |
| 503 | Service unavailable | Retry with backoff |

## Common Gotchas

### Query-Related

1. **Results are not ordered by default.** BigQuery does not guarantee row order without explicit `ORDER BY`. Do not rely on insertion order.

2. **`SELECT *` scans all columns.** BigQuery charges by bytes scanned. Always select only the columns you need.

3. **Wildcard table queries can be expensive.** `SELECT * FROM \`project.dataset.events_*\`` scans all matching tables. Use `_TABLE_SUFFIX` filters to limit scanning.

4. **Query cache is per-user and requires identical queries.** Even whitespace differences invalidate the cache. DML destination tables, streaming buffer tables, and non-deterministic functions disable caching.

5. **Legacy SQL vs. GoogleSQL.** Always use GoogleSQL (standard SQL). Set `useLegacySql: false` in API calls. The client libraries default to GoogleSQL.

6. **Cross-region queries are limited.** Cloud SQL federated cross-region queries are capped at 1 TB/day.

### Data Loading

7. **Load jobs have a 1,500/table/day limit.** If you need more frequent updates, use streaming inserts or the Storage Write API instead of repeated load jobs.

8. **CSV files do not support nested/repeated fields.** Use JSON, Avro, or Parquet for complex schemas.

9. **Schema auto-detection may guess wrong.** Explicitly define schemas for production tables, especially for fields that could be interpreted as STRING vs. INTEGER vs. FLOAT.

### Streaming

10. **Streamed data is available immediately for queries** but may take up to 90 minutes to become available for export, copy, or `tabledata.list`.

11. **Legacy streaming inserts have a 10 MB request limit.** The Storage Write API is recommended for new applications (higher throughput, exactly-once semantics).

12. **De-duplication with `insertId` is best-effort** in legacy streaming. For exactly-once guarantees, use the Storage Write API with committed streams.

### Tables & Schemas

13. **Deleting a column does not free its slot immediately.** Deleted columns continue counting toward the 10,000 column limit until the system resets.

14. **Table modifications are limited to 5 per 10 seconds.** This includes ALL writes: load jobs, copy jobs, query destination writes, DDL, and DML. Only DML has its own separate rate limit.

15. **Partitioned tables should be preferred for large tables.** Without partitioning, every query scans the entire table.

## Exponential Backoff

Google APIs require exponential backoff for retries:

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      const retryable = [429, 500, 503].includes(err.code) ||
        err.errors?.[0]?.reason === "rateLimitExceeded" ||
        err.errors?.[0]?.reason === "backendError";
      if (i === maxRetries - 1 || !retryable) throw err;
      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error("Unreachable");
}
```

## Google API Error Response Format

All Google APIs return errors in this format:

```json
{
  "error": {
    "code": 403,
    "message": "Access Denied: Table project:dataset.table: User does not have permission to query table.",
    "status": "PERMISSION_DENIED",
    "errors": [{ "domain": "global", "reason": "accessDenied" }]
  }
}
```

## Tips

- Always enable `bigquery.googleapis.com` in your GCP project before making calls (auto-enabled for new projects)
- Use `fields` parameter in REST API calls to reduce response size
- Monitor usage via [INFORMATION_SCHEMA.JOBS](https://cloud.google.com/bigquery/docs/information-schema-jobs) for query-level billing data
- Use `--dry_run` flag in `bq` CLI or `dryRun: true` in API calls to estimate costs
- Service accounts need appropriate IAM roles on the datasets they access
- For high-throughput reads, use the Storage Read API instead of `tabledata.list`
