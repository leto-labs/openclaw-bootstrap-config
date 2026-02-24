# Gmail API - Common Patterns

## Standard Patterns

### Pagination

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

### Create / Insert

```typescript
const res = await api.resource.create({
  requestBody: { /* fields */ },
});
```

### Get by ID

```typescript
const res = await api.resource.get({ id: 'resource-id' });
```

### Update / Patch

```typescript
const res = await api.resource.patch({
  id: 'resource-id',
  requestBody: { /* updated fields */ },
});
```

### Delete

```typescript
const res = await api.resource.delete({ id: 'resource-id' });
```

## Gmail-Specific Workflows

### Sending Email

Emails are sent as base64url-encoded RFC 2822 MIME messages in the `raw` property of a message resource.

```typescript
import { google } from 'googleapis';

const gmail = google.gmail({ version: 'v1', auth });

// Build a simple RFC 2822 message
function makeRawMessage(to: string, from: string, subject: string, body: string): string {
  const lines = [
    `To: ${to}`,
    `From: ${from}`,
    `Subject: ${subject}`,
    `Content-Type: text/html; charset=utf-8`,
    '',
    body,
  ];
  const raw = Buffer.from(lines.join('\r\n'))
    .toString('base64')
    .replace(/\+/g, '-')
    .replace(/\//g, '_')
    .replace(/=+$/, '');
  return raw;
}

// Send the message
const res = await gmail.users.messages.send({
  userId: 'me',
  requestBody: {
    raw: makeRawMessage('recipient@example.com', 'sender@example.com', 'Hello', '<p>Hi there</p>'),
  },
});
// res.data.id is the sent message ID
```

### Sending a Reply (threading)

To thread a reply into an existing conversation, you must:
1. Set the `threadId` on the message
2. Match the `Subject` header (usually prefix with `Re: `)
3. Set `In-Reply-To` and `References` headers per RFC 2822

```typescript
const originalMessage = await gmail.users.messages.get({
  userId: 'me',
  id: originalMessageId,
  format: 'metadata',
  metadataHeaders: ['Subject', 'Message-ID'],
});
const headers = originalMessage.data.payload?.headers || [];
const messageIdHeader = headers.find(h => h.name === 'Message-ID')?.value;
const subject = headers.find(h => h.name === 'Subject')?.value || '';

const replyRaw = [
  `To: original-sender@example.com`,
  `From: me@example.com`,
  `Subject: Re: ${subject}`,
  `In-Reply-To: ${messageIdHeader}`,
  `References: ${messageIdHeader}`,
  '',
  'Reply body here',
].join('\r\n');

await gmail.users.messages.send({
  userId: 'me',
  requestBody: {
    raw: Buffer.from(replyRaw).toString('base64url'),
    threadId: originalMessage.data.threadId,
  },
});
```

### Reading Messages

```typescript
// List messages matching a query
const listRes = await gmail.users.messages.list({
  userId: 'me',
  q: 'is:unread from:someone@example.com',
  maxResults: 10,
});

// Get full message content
for (const msg of listRes.data.messages || []) {
  const full = await gmail.users.messages.get({
    userId: 'me',
    id: msg.id!,
    format: 'full', // 'full' | 'metadata' | 'minimal' | 'raw'
  });
  const subject = full.data.payload?.headers?.find(h => h.name === 'Subject')?.value;
  const snippet = full.data.snippet;
  console.log(`${subject}: ${snippet}`);
}
```

### Working with Threads

Threads are collections of related messages (conversation view).

```typescript
// List threads
const threads = await gmail.users.threads.list({
  userId: 'me',
  q: 'subject:invoice',
  maxResults: 20,
});

// Get a full thread with all messages
const thread = await gmail.users.threads.get({
  userId: 'me',
  id: threadId,
  format: 'full',
});
// thread.data.messages is an array of all messages in the conversation
```

### Managing Labels

Labels are the core organizational mechanism (INBOX, SENT, SPAM, TRASH are system labels; custom labels are user-created).

```typescript
// List all labels
const labels = await gmail.users.labels.list({ userId: 'me' });

// Create a custom label
const newLabel = await gmail.users.labels.create({
  userId: 'me',
  requestBody: {
    name: 'Project/Invoices',
    labelListVisibility: 'labelShow',
    messageListVisibility: 'show',
  },
});

// Apply/remove labels on a message
await gmail.users.messages.modify({
  userId: 'me',
  id: messageId,
  requestBody: {
    addLabelIds: [newLabel.data.id!],
    removeLabelIds: ['INBOX'],   // archive it
  },
});

// Batch modify labels on many messages at once
await gmail.users.messages.batchModify({
  userId: 'me',
  requestBody: {
    ids: [messageId1, messageId2, messageId3],
    addLabelIds: ['IMPORTANT'],
    removeLabelIds: ['UNREAD'],
  },
});
```

### Searching with Gmail Query Syntax

The `q` parameter on `messages.list` and `threads.list` uses Gmail search syntax:

```typescript
// Common query examples
const queries = {
  unread:        'is:unread',
  fromPerson:    'from:boss@example.com',
  hasAttachment: 'has:attachment',
  dateRange:     'after:2024/01/01 before:2024/02/01',
  sizeLimit:     'larger:5M',
  labelSearch:   'label:important',
  excludeChats:  '-in:chats',
  subjectMatch:  'subject:(quarterly report)',
  combined:      'from:finance@co.com has:attachment after:2024/06/01 -label:processed',
};

const res = await gmail.users.messages.list({
  userId: 'me',
  q: queries.combined,
});
```

### Watch / Push Notifications (Cloud Pub/Sub)

Use `users.watch` to receive push notifications via Cloud Pub/Sub when a user's mailbox changes.

```typescript
// Set up watch on a user's mailbox
const watchRes = await gmail.users.watch({
  userId: 'me',
  requestBody: {
    topicName: 'projects/my-project/topics/gmail-notifications',
    labelIds: ['INBOX'],
    labelFilterBehavior: 'INCLUDE',
  },
});
// watchRes.data => { historyId: '123456', expiration: '1431990098200' }

// The watch expires after ~7 days; renew it by calling watch again (daily recommended).
// On receiving a Pub/Sub notification, decode the data payload:
// { emailAddress: 'user@example.com', historyId: '9876543210' }

// Then use history.list to get changes since last known historyId
const historyRes = await gmail.users.history.list({
  userId: 'me',
  startHistoryId: lastKnownHistoryId,
  historyTypes: ['messageAdded', 'labelAdded'],
});

// Stop watching
await gmail.users.stop({ userId: 'me' });
```

### Getting Attachments

```typescript
// First get the message to find attachment metadata
const message = await gmail.users.messages.get({
  userId: 'me',
  id: messageId,
  format: 'full',
});

// Walk the payload parts to find attachments
function findAttachments(parts: any[]): Array<{ filename: string; attachmentId: string; mimeType: string }> {
  const attachments: Array<{ filename: string; attachmentId: string; mimeType: string }> = [];
  for (const part of parts) {
    if (part.filename && part.body?.attachmentId) {
      attachments.push({
        filename: part.filename,
        attachmentId: part.body.attachmentId,
        mimeType: part.mimeType,
      });
    }
    if (part.parts) {
      attachments.push(...findAttachments(part.parts));
    }
  }
  return attachments;
}

const attachments = findAttachments(message.data.payload?.parts || []);

// Download each attachment
for (const att of attachments) {
  const attachmentRes = await gmail.users.messages.attachments.get({
    userId: 'me',
    messageId: messageId,
    id: att.attachmentId,
  });
  // attachmentRes.data.data is base64url-encoded file content
  const fileBuffer = Buffer.from(attachmentRes.data.data!, 'base64url');
}
```

### Creating and Sending Drafts

```typescript
// Create a draft
const draft = await gmail.users.drafts.create({
  userId: 'me',
  requestBody: {
    message: {
      raw: makeRawMessage('to@example.com', 'from@example.com', 'Draft subject', 'Draft body'),
    },
  },
});

// Send the draft
await gmail.users.drafts.send({
  userId: 'me',
  requestBody: {
    id: draft.data.id,
  },
});
```

## Error Handling

```typescript
try {
  const res = await api.resource.method({ ... });
} catch (err: any) {
  if (err.code === 429) {
    // Rate limited — implement exponential backoff
  } else if (err.code === 403) {
    // Permission denied — check scopes and API enablement
  } else if (err.code === 404) {
    // Not found
  }
  console.error(err.message);
}
```

## Batch Requests

For multiple independent operations, use batch requests to reduce round trips:

```typescript
// googleapis supports batching via gaxios or manual HTTP batch
// See references/googleapis-client.md for batch patterns

// Gmail-specific batch operations (built-in):
// messages.batchDelete  — delete up to 1000 messages at once
// messages.batchModify  — modify labels on up to 1000 messages at once
await gmail.users.messages.batchModify({
  userId: 'me',
  requestBody: {
    ids: messageIds,             // up to 1000 IDs
    addLabelIds: ['STARRED'],
    removeLabelIds: ['UNREAD'],
  },
});
```

