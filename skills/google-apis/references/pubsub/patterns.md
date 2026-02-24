# Cloud Pub/Sub API - Common Patterns

## Publishing Messages

### Basic Publish

```typescript
import { PubSub } from '@google-cloud/pubsub';

const pubsub = new PubSub();
const topic = pubsub.topic('my-topic');

// Publish a single message
const messageId = await topic.publishMessage({
  data: Buffer.from(JSON.stringify({ event: 'user.signup', userId: 'u-123' })),
});
console.log(`Message ${messageId} published.`);
```

### Publish with Attributes

Message attributes are key-value string pairs that ride alongside the message data. Use them for routing, filtering, or metadata without parsing the message body.

```typescript
const messageId = await topic.publishMessage({
  data: Buffer.from('Order created'),
  attributes: {
    eventType: 'order.created',
    region: 'us-east1',
    priority: 'high',
  },
});
```

### Batch Publishing

The client library automatically batches messages for throughput. You can tune batching behavior:

```typescript
const topic = pubsub.topic('my-topic', {
  batching: {
    maxMessages: 100,        // Send batch when 100 messages queued
    maxMilliseconds: 10,     // Or after 10ms, whichever comes first
    maxBytes: 1024 * 1024,   // Or when batch reaches 1MB
  },
});

// These are batched automatically
for (const item of items) {
  topic.publishMessage({ data: Buffer.from(JSON.stringify(item)) });
}
```

### Publish with Ordering Keys

Ordering keys guarantee that messages with the same key are delivered to subscribers in the order they were published. Different ordering keys are independent.

```typescript
const topic = pubsub.topic('my-topic', {
  enableMessageOrdering: true,
});

// All messages with the same ordering key arrive in order
await topic.publishMessage({
  data: Buffer.from(JSON.stringify({ action: 'add_item', cartId: 'cart-42' })),
  orderingKey: 'cart-42',
});

await topic.publishMessage({
  data: Buffer.from(JSON.stringify({ action: 'checkout', cartId: 'cart-42' })),
  orderingKey: 'cart-42',
});
```

### Publish with Schema Validation

Attach a schema to a topic to validate message structure (Avro or Protocol Buffers):

```bash
# Create a schema
gcloud pubsub schemas create my-schema \
  --type=avro \
  --definition-file=schema.avsc

# Create topic with schema
gcloud pubsub topics create my-topic \
  --schema=my-schema \
  --message-encoding=json
```

```typescript
// Messages that don't match the schema are rejected at publish time
const messageId = await topic.publishMessage({
  data: Buffer.from(JSON.stringify({
    name: 'Ada Lovelace',
    age: 36,
  })),
});
```

## Pull Subscriptions

### Asynchronous Streaming Pull (recommended)

The client libraries use StreamingPull under the hood, which is the most efficient way to receive messages:

```typescript
const subscription = pubsub.subscription('my-sub');

// The 'message' event fires for each received message
subscription.on('message', (message) => {
  console.log(`ID: ${message.id}`);
  console.log(`Data: ${message.data.toString()}`);
  console.log(`Attributes: ${JSON.stringify(message.attributes)}`);
  console.log(`Publish time: ${message.publishTime}`);

  // Acknowledge the message -- removes it from the subscription
  message.ack();
});

// Handle errors
subscription.on('error', (error) => {
  console.error('Subscription error:', error);
});
```

### Synchronous Pull (unary)

Use unary pull for batch-oriented workloads or when you need fine-grained control:

```typescript
const [response] = await subscription.pull({ maxMessages: 100 });

for (const message of response) {
  console.log(`Message: ${message.data.toString()}`);
  message.ack();
}
```

### Flow Control

Prevent a subscriber from being overwhelmed by controlling how many messages are outstanding:

```typescript
const subscription = pubsub.subscription('my-sub', {
  flowControl: {
    maxMessages: 100,       // Max unacked messages at a time
    maxBytes: 100 * 1024 * 1024,  // Max outstanding bytes (100MB)
    allowExcessMessages: false,
  },
});
```

## Push Subscriptions

Push subscriptions deliver messages as HTTP POST requests to an endpoint you specify.

### Create a Push Subscription

```bash
gcloud pubsub subscriptions create my-push-sub \
  --topic=my-topic \
  --push-endpoint="https://my-service-abc123.run.app/pubsub/push" \
  --push-auth-service-account=my-sa@my-project.iam.gserviceaccount.com
```

### Push Endpoint Handler (Cloud Run / Express)

```typescript
import express from 'express';

const app = express();
app.use(express.json());

app.post('/pubsub/push', (req, res) => {
  const message = req.body.message;
  if (!message) {
    res.status(400).send('Bad Request: missing message');
    return;
  }

  const data = Buffer.from(message.data, 'base64').toString();
  const attributes = message.attributes || {};
  console.log(`Received: ${data}`, attributes);

  // Return 2xx to acknowledge. Any non-2xx causes redelivery.
  res.status(200).send('OK');
});

app.listen(8080);
```

### Push with Authentication

Pub/Sub can sign push requests with an OIDC token so your endpoint can verify the caller:

```bash
gcloud pubsub subscriptions create my-push-sub \
  --topic=my-topic \
  --push-endpoint="https://my-endpoint.example.com/push" \
  --push-auth-service-account=push-invoker@my-project.iam.gserviceaccount.com \
  --push-auth-token-audience="https://my-endpoint.example.com"
```

## Dead Letter Topics

Route messages that cannot be processed after repeated attempts to a dead letter topic for inspection:

```bash
gcloud pubsub subscriptions create my-sub \
  --topic=my-topic \
  --dead-letter-topic=projects/my-project/topics/my-dead-letter-topic \
  --max-delivery-attempts=5
```

```typescript
// Messages that are nacked or not acknowledged 5 times
// are forwarded to the dead letter topic.
subscription.on('message', (message) => {
  try {
    processMessage(message.data);
    message.ack();
  } catch (err) {
    console.error('Processing failed, nacking:', err);
    message.nack();  // After 5 nacks, goes to dead letter topic
  }
});

// Monitor the dead letter subscription separately
const dlSubscription = pubsub.subscription('my-dead-letter-sub');
dlSubscription.on('message', (message) => {
  // Original subscription and delivery attempt count are in attributes
  const originalSub = message.attributes['CloudPubSubDeadLetterSourceSubscription'];
  const attempts = message.attributes['CloudPubSubDeadLetterSourceDeliveryCount'];
  console.error(`Dead letter from ${originalSub}, attempts: ${attempts}`);
  console.error(`Data: ${message.data.toString()}`);
  message.ack();
});
```

## Message Filtering

Create subscriptions that only receive messages matching a filter expression, reducing processing of irrelevant messages:

```bash
gcloud pubsub subscriptions create order-events-sub \
  --topic=all-events \
  --filter='attributes.eventType = "order.created"'
```

```bash
# Filter with OR conditions
gcloud pubsub subscriptions create high-priority-sub \
  --topic=all-events \
  --filter='attributes.priority = "high" OR attributes.priority = "critical"'

# Filter with hasPrefix
gcloud pubsub subscriptions create us-region-sub \
  --topic=all-events \
  --filter='hasPrefix(attributes.region, "us-")'
```

Filtered messages that do not match are automatically acknowledged and never delivered -- they do not count against your subscriber throughput quota but are still billed as delivered messages.

## Exactly-Once Delivery

For workloads that require exactly-once processing guarantees (financial transactions, inventory updates):

```bash
gcloud pubsub subscriptions create exactly-once-sub \
  --topic=my-topic \
  --enable-exactly-once-delivery
```

```typescript
const subscription = pubsub.subscription('exactly-once-sub');

subscription.on('message', async (message) => {
  try {
    // Process idempotently -- even with exactly-once,
    // your handler may be called more than once during redelivery windows
    await processExactlyOnce(message.data);
    message.ackWithResponse()
      .then(() => console.log('Ack confirmed'))
      .catch((err) => console.error('Ack failed, message will be redelivered:', err));
  } catch (err) {
    message.nackWithResponse();
  }
});
```

## BigQuery Subscriptions

Write Pub/Sub messages directly to a BigQuery table without a Dataflow pipeline:

```bash
gcloud pubsub subscriptions create bq-sub \
  --topic=my-topic \
  --bigquery-table=my-project:my_dataset.my_table \
  --write-metadata \
  --use-topic-schema
```

The BigQuery table schema must match the message schema. With `--write-metadata`, additional columns (`subscription_name`, `message_id`, `publish_time`, `attributes`) are populated automatically.

## Cloud Storage Subscriptions

Write Pub/Sub messages to Cloud Storage buckets as batched files:

```bash
gcloud pubsub subscriptions create gcs-sub \
  --topic=my-topic \
  --cloud-storage-bucket=my-bucket \
  --cloud-storage-file-prefix=pubsub/events/ \
  --cloud-storage-file-suffix=.json \
  --cloud-storage-max-duration=5m \
  --cloud-storage-max-bytes=100MB
```

## Message Retention and Replay

### Topic-Level Retention

Retain messages at the topic level so new subscriptions can replay historical messages:

```bash
gcloud pubsub topics update my-topic \
  --message-retention-duration=7d
```

### Seek to Timestamp (Replay)

Replay messages from a specific point in time:

```bash
# Replay all messages from the last hour
gcloud pubsub subscriptions seek my-sub \
  --time=$(date -u -d '-1 hour' +%Y-%m-%dT%H:%M:%SZ)
```

### Seek to Snapshot

Create a snapshot and replay from it later:

```bash
# Create a snapshot
gcloud pubsub snapshots create my-snapshot --subscription=my-sub

# Later, seek back to that snapshot
gcloud pubsub subscriptions seek my-sub --snapshot=my-snapshot
```

## Error Handling

```typescript
try {
  await topic.publishMessage({ data: Buffer.from('test') });
} catch (err: any) {
  if (err.code === 8) {
    // RESOURCE_EXHAUSTED -- quota exceeded, backoff and retry
  } else if (err.code === 7) {
    // PERMISSION_DENIED -- check IAM roles
  } else if (err.code === 5) {
    // NOT_FOUND -- topic or subscription does not exist
  } else if (err.code === 3) {
    // INVALID_ARGUMENT -- message too large, bad filter, etc.
  }
  console.error('Pub/Sub error:', err.message);
}
```

## Monitoring with Cloud Monitoring

Key metrics to monitor:

```
# Undelivered messages (subscription backlog)
pubsub.googleapis.com/subscription/num_undelivered_messages

# Oldest unacked message age (seconds)
pubsub.googleapis.com/subscription/oldest_unacked_message_age

# Publish message operations
pubsub.googleapis.com/topic/send_message_operation_count

# StreamingPull response count
pubsub.googleapis.com/subscription/streaming_pull_response_count
```

Set alerts on `oldest_unacked_message_age` to detect subscriber lag before your backlog grows too large.
