# Cloud Run Functions - Gotchas & Troubleshooting

## Quotas & Resource Limits

### Resource Limits

| Quota | 1st Gen | 2nd Gen (Cloud Run) | Scope |
|-------|---------|---------------------|-------|
| Max functions per region | 1,000 | 1,000 minus Cloud Run services deployed | per project, per region |
| Max deployment size (compressed) | 100 MB sources | N/A (container-based) | per function |
| Max deployment size (uncompressed) | 500 MB (sources + modules) | N/A | per function |
| Max HTTP request size | 10 MB | 32 MB | per invocation |
| Max HTTP response size | 10 MB | 10 MB streaming / 32 MB non-streaming | per invocation |
| Max event size | 10 MB | 512 KB (Eventarc) / 10 MB (legacy) | per event |
| Max function memory | 8 GiB | 32 GiB | per function |
| Max instance size | 8 GB RAM, 2 vCPU | 16 GiB RAM, 4 vCPU | per instance |

### Time Limits

| Quota | 1st Gen | 2nd Gen (Cloud Run) |
|-------|---------|---------------------|
| Max function duration (HTTP) | 540 seconds (9 min) | 60 minutes |
| Max function duration (event-driven) | 540 seconds (9 min) | 540 seconds (9 min) |
| Max function duration (scheduled/task queue) | N/A | 1,800 seconds (30 min) |

### Rate Limits (Cloud Functions API)

| Quota | 1st Gen | 2nd Gen | Scope |
|-------|---------|---------|-------|
| API calls (READ) | 5,000 per 100s | 1,200 per 60s | per project (1st gen) / per region (2nd gen) |
| API calls (WRITE) | 80 per 100s | 60 per 60s | per project (1st gen) / per region (2nd gen) |
| API calls (CALL) | 16 per 100s | N/A | per project |

### Networking Limits (1st Gen)

| Limit | Value |
|-------|-------|
| Outbound connections per second per instance | 500 |
| Outbound DNS resolutions per second per instance | 100 |
| Max packets per second per instance | 80,000 |
| Max bits per second per instance | 100,000,000 |

### Scalability Limits

| Quota | 1st Gen | 2nd Gen |
|-------|---------|---------|
| Default max instances (HTTP) | No default limit (set one!) | 100 (can increase to 1,000) |
| Max concurrent invocations (background) | 3,000 per function | N/A |
| Max invocation rate (background) | 1,000 per second per function | N/A |
| Max concurrent event data size | 10 MB per function | 10 MB per function |
| Max event throughput | 10 MB/s per function | 10 MB/s per function |
| Concurrency per instance | 1 | Up to 1,000 |

## 1st Gen vs 2nd Gen Key Differences

| Feature | 1st Gen | 2nd Gen (Cloud Run) |
|---------|---------|---------------------|
| **Infrastructure** | Google internal | Built on Cloud Run |
| **Concurrency** | 1 request per instance | Up to 1,000 per instance |
| **Max timeout (HTTP)** | 9 minutes | 60 minutes |
| **Max memory** | 8 GiB | 32 GiB |
| **Max vCPU** | 2 | 4 |
| **Event triggers** | 7 direct sources | 90+ via Eventarc |
| **Traffic splitting** | Not supported | Supported |
| **URL domain** | `cloudfunctions.net` | `run.app` |
| **Deploy CLI** | `gcloud functions deploy --no-gen2` | `gcloud run deploy` |
| **Pricing** | Cloud Functions pricing | Cloud Run pricing |
| **Min instances** | Supported | Supported |
| **VPC egress** | VPC connector required | Direct VPC or VPC connector |

**Recommendation**: Use 2nd gen (Cloud Run functions) for all new functions. 1st gen is maintained but not receiving new features.

## Cold Start Mitigation

Cold starts occur when a new function instance must be initialized. Typical cold start times: 100ms to several seconds depending on runtime and dependencies.

### Causes of Cold Starts

- First request to a function
- Scaling up to handle increased traffic
- After an instance has been idle and was reclaimed
- After a new deployment

### Mitigation Strategies

1. **Set minimum instances** to keep warm instances ready:
   ```bash
   gcloud run deploy my-function --min-instances 1
   ```
   Note: Minimum instances incur charges even when idle.

2. **Reduce dependency count** -- fewer/smaller packages = faster cold start.

3. **Use global scope for expensive initialization** -- database clients, API clients, and config loaded at module level are reused across invocations:
   ```javascript
   // GOOD: Initialized once per instance
   const db = new Firestore();

   functions.http('handler', async (req, res) => {
     const doc = await db.collection('x').doc('y').get();
     res.json(doc.data());
   });
   ```

4. **Lazy-load optional dependencies** -- only import heavy libraries when the code path requires them.

5. **Increase concurrency (2nd gen)** -- higher concurrency means fewer new instances needed:
   ```bash
   gcloud run deploy my-function --concurrency 80
   ```

6. **Choose a lightweight runtime** -- Go and Node.js tend to have faster cold starts than Java or .NET.

## Common Errors

| Error | Meaning | Fix |
|-------|---------|-----|
| `RESOURCE_EXHAUSTED` | Quota exceeded | Check quotas in Cloud Console; request increase if needed |
| `DEADLINE_EXCEEDED` | Function timeout | Increase timeout or optimize function; check `--timeout` setting |
| `PERMISSION_DENIED` | Insufficient IAM permissions | Grant required roles to deployer or function service account |
| `NOT_FOUND` | Function or resource not found | Verify function name, region, and project |
| `ALREADY_EXISTS` | Resource name collision | Use a different function name or delete existing resource |
| `INVALID_ARGUMENT` | Bad deploy config | Check runtime, entry point, trigger config |
| HTTP 500 on invocation | Function error or quota exceeded | Check Cloud Logging for function error output |
| `Build failed` | Source code or dependency issue | Check build logs in Cloud Build; verify package.json/requirements.txt |

## Common Pitfalls

### Always Return an HTTP Response

Failing to send a response causes the function to run until timeout, and you are charged for the entire timeout duration:

```javascript
// BAD: No response sent on error path
functions.http('bad', async (req, res) => {
  const result = await riskyOperation();
  if (result) {
    res.send(result);
  }
  // If riskyOperation returns null, no response is ever sent!
});

// GOOD: Always send a response
functions.http('good', async (req, res) => {
  try {
    const result = await riskyOperation();
    res.json(result || { error: 'No result' });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Internal error' });
  }
});
```

### Do Not Start Background Activities

Code that runs after the function returns cannot access CPU and will not make progress. It may also interfere with subsequent invocations:

```javascript
// BAD: Fire-and-forget async operation after response
functions.http('bad', (req, res) => {
  res.send('OK');
  fetch('https://example.com/webhook', { method: 'POST', body: 'data' });
  // This may or may not complete!
});

// GOOD: Await all async work before responding
functions.http('good', async (req, res) => {
  await fetch('https://example.com/webhook', { method: 'POST', body: 'data' });
  res.send('OK');
});
```

### Delete Temporary Files

The `/tmp` directory is an in-memory filesystem. Files written there consume function memory and may persist between invocations:

```javascript
const fs = require('fs');
const os = require('os');
const path = require('path');

functions.http('processFile', async (req, res) => {
  const tmpFile = path.join(os.tmpdir(), 'data.tmp');
  try {
    fs.writeFileSync(tmpFile, req.body);
    const result = await processData(tmpFile);
    res.json(result);
  } finally {
    // Always clean up temp files
    if (fs.existsSync(tmpFile)) fs.unlinkSync(tmpFile);
  }
});
```

### Do Not Manually Exit

Never call `process.exit()` (Node.js), `sys.exit()` (Python), or `os.Exit()` (Go). These cause unexpected behavior and force cold starts on subsequent invocations.

### Port 25 Blocked

Cloud Run functions blocks outbound connections on port 25. Use SendGrid, Mailgun, or another email API instead of SMTP.

### 1st Gen: Set Max Instances for HTTP Functions

1st gen HTTP functions have no default max instances limit. Without a limit, a traffic spike can scale unboundedly and exhaust your project's quota:

```bash
# Set a reasonable max for 1st gen
gcloud functions deploy my-function \
  --no-gen2 \
  --max-instances 3000
```

### Event-Driven Functions Must Be Idempotent

Events may be delivered more than once. Always design for at-least-once delivery by tracking processed event IDs.

## Debugging

### View Logs

```bash
# Cloud Run function logs
gcloud run services logs read my-function --region us-central1 --limit 50

# 1st gen function logs
gcloud functions logs read my-function --region us-central1 --limit 50

# Or use Cloud Logging
gcloud logging read "resource.type=cloud_run_revision AND resource.labels.service_name=my-function" --limit 50
```

### Check Build Logs

If deployment fails during build:

```bash
gcloud builds list --limit 5
gcloud builds log BUILD_ID
```

### Test Locally Before Deploying

```bash
# Node.js
npx functions-framework --target=myHandler --port=8080

# Python
functions-framework --target=hello_http --port=8080

# Then test
curl http://localhost:8080
```

## When You Hit a Quota Limit

- The function returns HTTP 500 and all functions in the same project may be affected.
- Request quota increases at [Cloud Functions Quotas page](https://console.cloud.google.com/iam-admin/quotas?service=cloudfunctions.googleapis.com).
- Only some quotas (like max project memory, max project CPU, API READ calls for 1st gen) can be increased. Most resource limits are fixed.
