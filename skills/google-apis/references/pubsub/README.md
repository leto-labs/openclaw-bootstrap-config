# Cloud Pub/Sub API

> Pub/Sub is an asynchronous and scalable messaging service that decouples services producing messages from services processing those messages. It enables reliable, many-to-many communication with latencies typically on the order of 100 milliseconds.

## Overview

- **API**: `pubsub`
- **Version**: `v1`
- **Base URL**: `https://pubsub.googleapis.com/`
- **Docs**: [https://cloud.google.com/pubsub/docs/](https://cloud.google.com/pubsub/docs/)

## When to Use

Use Cloud Pub/Sub when you need:

- **Event-driven microservice communication** -- Decouple producers from consumers so services can evolve independently. Pub/Sub handles back-pressure, retries, and fan-out without you building custom queues.
- **Streaming data ingestion** -- Ingest high-volume event streams (clickstream, IoT telemetry, application logs) into Dataflow, BigQuery, or Cloud Storage pipelines for real-time or batch analytics.
- **Parallel task distribution** -- Distribute work items (image processing, email sending, ML inference) across a fleet of workers via pull subscriptions that automatically load-balance.
- **Enterprise event bus** -- Broadcast business events (order placed, user signed up, inventory changed) across teams and services with fan-out to multiple independent subscriptions.
- **Database change data capture (CDC)** -- Distribute change events from databases to downstream consumers to build materialized views, audit logs, or replicas.
- **Cache invalidation** -- Publish invalidation events so distributed caches stay consistent across regions and services.
- **Cross-region reliability** -- Deploy subscribers in multiple zones/regions. If one zone fails, surviving subscribers pick up the load automatically.
- **Webhook and push delivery** -- Forward messages to HTTP endpoints (Cloud Functions, Cloud Run, custom services) via push subscriptions for serverless event handling.
- **Exactly-once processing** -- When combined with exactly-once delivery subscriptions, guarantee that each message is processed exactly once (with throughput trade-offs).

### When NOT to Use

- **Client-to-server real-time messaging** -- Pub/Sub is designed for service-to-service communication. For mobile/web client messaging, use Firebase Realtime Database or Firebase Cloud Messaging.
- **Synchronous request-response** -- Pub/Sub is asynchronous. For RPC-style calls between services, use gRPC or Cloud Endpoints.
- **Ordered task queues with delayed execution** -- For task scheduling with retry/delay semantics, use Cloud Tasks instead.
- **Low-latency sub-millisecond messaging** -- Pub/Sub typical latency is ~100ms. For sub-millisecond needs, consider in-memory message brokers.
- **Long-term message storage** -- Messages are retained for at most 31 days (with topic retention configured). For durable storage, route messages to BigQuery or Cloud Storage.

## Quick Start

### Node.js (@google-cloud/pubsub)

```typescript
import { PubSub } from '@google-cloud/pubsub';

const pubsub = new PubSub({ projectId: 'YOUR_PROJECT_ID' });

// Publish a message
const topic = pubsub.topic('my-topic');
const messageId = await topic.publishMessage({
  data: Buffer.from(JSON.stringify({ event: 'order.created', orderId: '123' })),
  attributes: { source: 'order-service' },
});
console.log(`Published message ${messageId}`);

// Subscribe to messages
const subscription = pubsub.subscription('my-sub');
subscription.on('message', (message) => {
  console.log(`Received: ${message.data.toString()}`);
  message.ack();
});
```

### Python

```python
from google.cloud import pubsub_v1

project_id = "my-project-id"

# Publish
publisher = pubsub_v1.PublisherClient()
topic_path = publisher.topic_path(project_id, "my-topic")
future = publisher.publish(topic_path, b"Hello World")
print(f"Published: {future.result()}")

# Subscribe
subscriber = pubsub_v1.SubscriberClient()
subscription_path = subscriber.subscription_path(project_id, "my-sub")

def callback(message):
    print(f"Received: {message.data.decode()}")
    message.ack()

streaming_pull_future = subscriber.subscribe(subscription_path, callback=callback)
streaming_pull_future.result(timeout=30)
```

### gcloud CLI

```bash
# Create topic and subscription
gcloud pubsub topics create my-topic
gcloud pubsub subscriptions create my-sub --topic my-topic

# Publish a message
gcloud pubsub topics publish my-topic --message="Hello World"

# Pull messages
gcloud pubsub subscriptions pull my-sub --auto-ack --limit=10
```

### curl

```bash
# Publish a message
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  -d '{"messages":[{"data":"SGVsbG8gV29ybGQ="}]}' \
  "https://pubsub.googleapis.com/v1/projects/YOUR_PROJECT/topics/my-topic:publish"

# Pull messages
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  -d '{"maxMessages":10}' \
  "https://pubsub.googleapis.com/v1/projects/YOUR_PROJECT/subscriptions/my-sub:pull"
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `patterns.md` | Common workflow patterns (publish, subscribe, ordering, filtering, dead letters) |
| `gotchas.md` | Quotas, limits, delivery semantics, common errors, debugging |
