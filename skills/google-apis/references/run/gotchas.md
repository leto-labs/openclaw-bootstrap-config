# Cloud Run Admin API - Gotchas & Troubleshooting

## Quotas and Limits

### Resource Limits (per container instance)

| Resource | Limit | Increasable |
|----------|-------|-------------|
| Max vCPU per instance | 8 | No |
| Max memory per instance | 32 GiB | No |
| Max writable filesystem (in-memory) | 32 GiB (limited by instance memory) | No |
| Startup timeout | 4 minutes | No |
| Max environment variables per container | 1,000 | No |
| Max open files per instance | 25,000 | No |

### Scaling Limits

| Resource | Limit | Increasable |
|----------|-------|-------------|
| Max services per project per region | 1,000 | No |
| Max jobs per project per region | 1,000 | No |
| Max worker pools per project per region | 1,000 | No |
| Max revisions per service | 1,000 (oldest non-serving auto-deleted) | No |
| Max revisions serving traffic per project per region | 4,000 | No |
| Max container instances (default) | ~1,000 (region-dependent) | Yes |
| Max instances with Direct VPC egress | 100-200 (region-dependent) | Yes |
| Max tasks per job execution | 10,000 | No |
| Max task retries per job | 10 | No |
| Max task timeout for jobs | 168 hours (7 days), or 1 hour with GPU | No |

### Networking Limits (per instance)

| Resource | Limit |
|----------|-------|
| Max concurrent requests per instance | 1,000 |
| Max concurrent HTTP/2 streams per connection | 100 |
| Max request timeout | 60 minutes |
| Max HTTP/1 request size | 32 MiB (no limit with HTTP/2) |
| Max HTTP/1 response size | 32 MiB (no limit with chunked/streaming) |
| Max open outbound connections | 50,000 |
| Outbound connections per second | 700 |
| Outbound connections per minute | 5,000 |
| DNS resolutions per second | 1,000 |
| Inbound requests/sec to HTTP/1 port | 800 (no limit for HTTP/2) |

### Bandwidth Limits (per instance)

| Path | Limit |
|------|-------|
| Egress over Direct VPC | 1 Gbps |
| All other traffic (ingress + egress combined) | 600 Mbps |
| Packet rate (non-Direct VPC) | 64,000 packets/sec |

### Admin API Rate Limits

| Operation | Limit | Scope |
|-----------|-------|-------|
| Read requests | 3,000 per 60 seconds | Per project per region |
| Write requests | 180 per 60 seconds | Per project per region |
| Job executions | 180 per 60 seconds | Per project per region |

Check quotas at [Google Cloud Console > IAM & Admin > Quotas](https://console.cloud.google.com/iam-admin/quotas).

## Cold Starts

Cloud Run scales to zero by default. When a new instance is needed, there is a "cold start" delay that includes:

1. **Scheduling** -- Finding capacity in the region
2. **Image pull** -- Downloading the container image (cached after first pull in a region)
3. **Container startup** -- Running entrypoint up to the point the server listens on PORT

### Mitigations

- **Set minimum instances** (`--min-instances 1`) -- Keeps at least one instance warm. You pay for idle time.
- **Optimize container image size** -- Use small base images (Alpine, distroless). Fewer layers = faster pull.
- **Reduce startup time** -- Lazy-load expensive dependencies. Defer non-critical initialization.
- **Use startup CPU boost** -- `--cpu-boost` gives 2x CPU during startup for faster cold starts.
- **Use HTTP/2** -- For high-throughput services, HTTP/2 avoids the 800 req/s HTTP/1 per-instance limit.

### Typical cold start times

| Language | Typical Cold Start |
|----------|--------------------|
| Go | 200-500ms |
| Node.js | 500ms-2s |
| Python | 500ms-2s |
| Java (Spring Boot) | 3-10s |
| .NET | 1-3s |

These are rough estimates. Actual times depend on image size, startup logic, and region.

## CPU Allocation Modes

Cloud Run has two CPU allocation (billing) modes:

| Mode | Flag | Behavior | Pricing |
|------|------|----------|---------|
| **Request-based** (default) | `--cpu-throttling` | CPU throttled to near-zero between requests. Billed per request + CPU/memory during request processing. | Cheaper for bursty, low-traffic services |
| **Instance-based (always-on)** | `--no-cpu-throttling` | CPU always available, even between requests. Billed for entire instance lifetime. | Required for background tasks, WebSockets, connection pooling |

**When to use always-on CPU:**
- Running background threads or timers
- Maintaining WebSocket connections
- Connection pooling to databases
- Streaming responses
- Any work that happens outside request handling

## Egress Costs

| Destination | Cost |
|-------------|------|
| Same region (internal) | Free |
| Cross-region (GCP) | Standard GCP egress rates |
| Internet | Standard GCP internet egress rates |
| Via Serverless VPC Access connector | Additional connector cost (~$0.01/GB processed) |
| Via Direct VPC egress | No additional connector cost |

**Tip**: Use Direct VPC egress instead of Serverless VPC Access connectors to avoid the per-GB connector cost.

## Common Errors

| Error | Cause | Fix |
|-------|-------|-----|
| `Container failed to start` | App crashed or did not listen on `$PORT` | Ensure your app listens on the port specified by the `PORT` env var (default 8080). Check logs with `gcloud run services logs read`. |
| `Memory limit exceeded` | Container used more memory than allocated | Increase `--memory`. Check for memory leaks. Filesystem writes count against memory. |
| `Request timeout` | Request exceeded the configured timeout | Increase `--timeout` (max 3600s). For long tasks, use Cloud Run jobs instead. |
| 503 Service Unavailable | No instances ready (cold start) or max instances reached | Set `--min-instances >= 1`. Increase `--max-instances`. |
| 429 Too Many Requests | Exceeding Admin API rate limits | Implement exponential backoff. This applies to gcloud/API calls, not to traffic to your service. |
| `Container Sandbox: Permission denied` | Attempting a syscall not allowed by gVisor | Cloud Run uses gVisor sandbox. Some syscalls are restricted. Check [gVisor compatibility](https://gvisor.dev/docs/user_guide/compatibility/). |
| `Cloud SQL connection failed` | Missing `--set-cloudsql-instances` or SA missing `roles/cloudsql.client` | Add the Cloud SQL instance flag and grant the role to the service account. |
| `VPC connector not found` | Connector in different region or not created | Ensure connector exists in the same region as the Cloud Run service. |

## Exponential Backoff

Google APIs require exponential backoff for retries:

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      if (i === maxRetries - 1 || ![429, 500, 503].includes(err.code)) throw err;
      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error('Unreachable');
}
```

## Google API Error Response Format

All Google APIs return errors in this format:

```json
{
  "error": {
    "code": 403,
    "message": "The caller does not have permission",
    "status": "PERMISSION_DENIED",
    "errors": [{ "domain": "global", "reason": "forbidden" }]
  }
}
```

## Container Runtime Constraints

- **gVisor sandbox** -- Cloud Run uses gVisor, not a full Linux kernel. Some syscalls may not be supported. Most language runtimes work fine, but some native libraries (especially those using `ptrace`, `perf_event_open`, or raw sockets) may fail.
- **In-memory filesystem** -- The writable filesystem is in-memory and counts against your memory allocation. Large temp files can cause OOM.
- **No persistent local storage** -- Container filesystem is ephemeral. Use Cloud Storage, Filestore NFS, or a database for persistence.
- **SIGTERM for graceful shutdown** -- Cloud Run sends `SIGTERM` before stopping an instance. Trap it to flush buffers and close connections. You get 10 seconds after SIGTERM.
- **PORT environment variable** -- Your container MUST listen on the port specified by `$PORT` (default 8080). Do not hardcode a different port.

## Billing Tips

- **Scale to zero** saves money for low-traffic services but introduces cold starts.
- **Min instances > 0** eliminates cold starts but incurs costs even with no traffic.
- **Request-based billing** is cheaper for intermittent traffic (default).
- **Instance-based billing** is cheaper for sustained high traffic or background processing.
- **Artifact Registry storage costs** -- Container images stored in Artifact Registry incur storage fees. Clean up old images.
- **Free tier** -- Cloud Run has a generous free tier: 2 million requests, 360,000 GiB-seconds memory, 180,000 vCPU-seconds per month.

## Tips

- Always enable `run.googleapis.com` in your GCP project before making calls
- Use a dedicated service account per service instead of the Compute Engine default SA
- Use `fields` parameter on Admin API calls to request only needed fields (reduces response size and latency)
- Use Direct VPC egress over Serverless VPC Access connectors for simpler setup and lower cost
- For scheduled jobs, combine Cloud Run jobs with Cloud Scheduler
- Use `--cpu-boost` flag to speed up cold starts by doubling CPU during startup

## Requesting Quota Increases

1. Go to [IAM & Admin > Quotas & System Limits](https://console.cloud.google.com/iam-admin/quotas)
2. Filter by "Cloud Run Admin API"
3. Select the quota to increase
4. Click "Edit Quotas" and submit the request
5. Quota increases are subject to review and may take 1-2 business days

