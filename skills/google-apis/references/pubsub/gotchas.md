# Cloud Pub/Sub API - Gotchas & Troubleshooting

## Quotas & Limits

### Throughput Quotas (per region, per project)

| Quota | Large regions | Medium regions | Small regions |
|-------|---------------|----------------|---------------|
| Publisher throughput | 4 GB/s (240M kB/min) | 800 MB/s (48M kB/min) | 200 MB/s (12M kB/min) |
| Pull subscriber throughput | 4 GB/s | 800 MB/s | 400 MB/s |
| StreamingPull subscriber throughput | 4 GB/s | 800 MB/s | 400 MB/s |
| Push subscription throughput | 440 MB/s | 140 MB/s | 40 MB/s |
| BigQuery subscription throughput | 4 GB/s | 800 MB/s | 200 MB/s |
| Cloud Storage subscription throughput | 4 GB/s | 800 MB/s | 200 MB/s |

**Large regions**: `europe-west1`, `europe-west4`, `us-central1`, `us-east1`, `us-east4`, `us-west1`, `us-west2`
**Medium regions**: `asia-east1`, `asia-northeast1`, `asia-southeast1`, `europe-west2`, `europe-west3`
**Small regions**: all others

### Resource Limits (hard limits, cannot be increased)

| Resource | Limit |
|----------|-------|
| **Message data size** | **10 MB** max per message |
| Message attributes per message | 100 |
| Attribute key size | 256 bytes |
| Attribute value size | 1024 bytes |
| Publish request total size | 10 MB |
| Messages per publish request | 1,000 |
| Topics per project | 10,000 |
| Subscriptions per project | 10,000 (attached or detached) |
| Subscriptions per topic | 10,000 |
| Snapshots per project | 5,000 |
| Schemas per project | 10,000 |
| Schema definition size | 300 KB |
| Schema revisions per schema | 20 |
| Pull response max messages | 1,000 |
| Pull response max size | 10 MB |
| StreamingPull throughput per stream | 10 MB/s |
| StreamingPull open connections (large region) | 72,000 |
| StreamingPull open connections (medium region) | 48,000 |
| StreamingPull open connections (small region) | 24,000 |
| Acknowledge/ModifyAckDeadline request size | 512 KB |
| Ordering key max publisher throughput | **1 MB/s per ordering key** |
| Topic message retention (max) | 31 days |
| Cloud Storage import bucket object limit | 50 million objects |
| Administrator operations | 6,000/min (100 ops/s) |

### Exactly-Once Delivery Quotas (per region)

| Region | Messages consumed/min | Acks+deadline extensions/min |
|--------|----------------------|------------------------------|
| us-central1 | 1,000,000 | 10,000,000 |
| us-east1 | 700,000 | 7,000,000 |
| us-west1 | 300,000 | 3,000,000 |
| Other regions | 180,000 | 1,800,000 |

## Delivery Semantics

### At-Least-Once Delivery (default)

Pub/Sub guarantees **at-least-once delivery** by default. This means:

- A message may be delivered **more than once** to a subscriber
- Duplicate delivery happens when: ack deadline expires before acknowledgment, network issues cause ack to be lost, or during service rebalancing
- **Your message handlers must be idempotent** -- design them to produce the same result when processing the same message multiple times
- Common deduplication strategies: store processed message IDs in a database/cache, use idempotency keys in your business logic

### Exactly-Once Delivery (opt-in)

- Must be explicitly enabled per subscription
- Significantly lower throughput limits (see quotas above)
- Only works with pull/StreamingPull subscriptions (not push)
- The `ackWithResponse()` / `nackWithResponse()` methods return a promise that confirms whether the ack was accepted
- If an ack fails, the message will be redelivered -- your handler should still be idempotent as a safety net
- Not available for push, BigQuery, or Cloud Storage subscriptions

## Message Retention

- **Subscription retention**: Unacknowledged messages are retained for **7 days** by default (configurable). After this period, unacknowledged messages are dropped.
- **Topic retention**: If configured (up to 31 days), published messages are retained at the topic level regardless of acknowledgment. This enables replaying messages to new subscriptions via `seek`.
- **Subscription expiration**: If no subscriber pulls from a subscription for **31 days** (default), the subscription itself is deleted. Configure `expiration-period` to change or disable.
- There is no limit on the **number** of retained messages -- only on the retention duration.

## Ordering Key Limitations

- Ordering is guaranteed **only within the same ordering key** -- messages with different keys (or no key) have no ordering guarantees relative to each other.
- **Maximum throughput per ordering key is 1 MB/s** -- if you need higher throughput, shard your data across multiple ordering keys.
- If publishing to an ordering key fails, subsequent publishes to the **same ordering key** will fail until you call `topic.resumePublishing(orderingKey)` (Node.js) or the equivalent in your language.
- Ordering is maintained per-subscription. If a subscription has multiple subscribers, Pub/Sub ensures ordered delivery by sending all messages with the same ordering key to the same subscriber.
- Ordering does not work with push subscriptions in all cases -- use pull/StreamingPull for reliable ordering.

## Push Endpoint Requirements

- Must be a publicly accessible **HTTPS** URL (HTTP is not accepted except for `localhost` during development on Pub/Sub emulator)
- Must return a success status code (**2xx**) to acknowledge the message. Any other status code (including redirects) causes redelivery.
- The endpoint must respond within the **ack deadline** (default 10 seconds, max 600 seconds). Slow endpoints cause duplicate delivery.
- For authenticated push, the push service account must have `roles/iam.serviceAccountTokenCreator` on itself and the endpoint must validate the OIDC token.
- Cloud Run, Cloud Functions, and App Engine endpoints are natively supported with automatic authentication.

## Common Errors

| gRPC Code | HTTP Code | Meaning | Fix |
|-----------|-----------|---------|-----|
| 3 (INVALID_ARGUMENT) | 400 | Message too large, invalid filter syntax, bad schema | Check message size (<10MB), validate filter expression |
| 5 (NOT_FOUND) | 404 | Topic or subscription does not exist | Verify resource name, check project ID |
| 7 (PERMISSION_DENIED) | 403 | Missing IAM role | Grant `pubsub.publisher` or `pubsub.subscriber` role |
| 8 (RESOURCE_EXHAUSTED) | 429 | Quota exceeded | Reduce publish rate, request quota increase, use locational endpoints |
| 9 (FAILED_PRECONDITION) | 400 | Ordering key error after publish failure | Call `resumePublishing(orderingKey)` |
| 10 (ABORTED) | 409 | Exactly-once ack conflict | Retry the ack; message will be redelivered |
| 13 (INTERNAL) | 500 | Server error | Retry with exponential backoff |
| 14 (UNAVAILABLE) | 503 | Service unavailable | Retry with exponential backoff |

## Exponential Backoff

Google APIs require exponential backoff for retries:

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      const retryable = [8, 13, 14].includes(err.code); // RESOURCE_EXHAUSTED, INTERNAL, UNAVAILABLE
      if (i === maxRetries - 1 || !retryable) throw err;
      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error('Unreachable');
}
```

## Throughput Quota Calculation

Throughput quota usage is measured in **1 kB units** (1 kB = 1000 bytes). Messages smaller than 1 kB are rounded up to 1 kB per request. Batch publishes are measured by total size, not per-message.

Example: 105 messages of 50 bytes each = `ceil(5250 / 1000)` = 6 kB quota usage.

**Quota mismatch**: Publishing 10 separate 500-byte messages uses 10 kB of publisher quota (each rounded to 1 kB), but pulling all 10 in one response may only use 5 kB of subscriber quota (combined size).

## Tips

- Always use **service account credentials** for production workloads. Using personal user credentials (`gcloud auth`) limits you to lower "manual operation" rate limits.
- Use **`fields` parameter** in admin API calls to request only needed fields.
- **Monitor `oldest_unacked_message_age`** -- set alerts when this exceeds your acceptable processing delay.
- **Reuse publisher/subscriber clients** -- do not create a new client per message. Client creation is expensive and opens new connections.
- Use **locational endpoints** (`{region}-pubsub.googleapis.com`) to route traffic to regions where you have additional quota.
- For high-throughput workloads, prefer **StreamingPull** (used by default in client libraries) over unary Pull.
- **Dead letter topics** require the Pub/Sub service account (`service-{PROJECT_NUMBER}@gcp-sa-pubsub.iam.gserviceaccount.com`) to have `pubsub.publisher` role on the dead letter topic and `pubsub.subscriber` role on the source subscription.
- Check quotas at [IAM & Admin > Quotas](https://console.cloud.google.com/iam-admin/quotas?service=pubsub.googleapis.com).
