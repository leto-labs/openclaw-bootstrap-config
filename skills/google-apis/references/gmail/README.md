# Gmail API

> The Gmail API lets you view and manage Gmail mailbox data like threads, messages, and labels.

## Overview

- **API**: `gmail`
- **Version**: `v1`
- **Base URL**: `https://gmail.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/gmail/api/](https://developers.google.com/workspace/gmail/api/)

## When to Use

The Gmail API is the best choice for authorized access to a user's Gmail data. Use it when you need to:

- **Automated / programmatic email sending** -- transactional emails, notifications, scheduled digests from a user's own Gmail account
- **Read-only mail extraction, indexing, and backup** -- archiving emails, building search indexes, compliance auditing
- **Email account migration** -- importing/exporting email between accounts or systems
- **Email organization and processing** -- filtering, sorting, labeling, auto-categorizing messages with custom logic
- **CRM and helpdesk integration** -- syncing conversations into external tools, tracking customer communication threads
- **Real-time mailbox monitoring** -- using `watch` with Cloud Pub/Sub to react to incoming emails (e.g., parsing invoices, triggering workflows)
- **Standardizing email signatures** -- managing signatures across an organization via the settings API
- **Building custom email clients or dashboards** -- reading threads, managing drafts, displaying mailbox data in your own UI
- **Automated email cleanup** -- batch-deleting or archiving old messages based on rules

**When NOT to use the Gmail API:**
- For bulk marketing emails, use a dedicated ESP (SendGrid, Mailgun, etc.) -- Gmail has strict daily sending limits (500/day personal, 2000/day Workspace)
- For SMTP relay, use Google Workspace SMTP relay or direct SMTP instead
- For server-to-server email without a user context, consider a service account with domain-wide delegation

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ['https://www.googleapis.com/auth/gmail.readonly'],
});
google.options({ auth });

const gmail = google.gmail({ version: 'v1' });

// List labels
const labelsRes = await gmail.users.labels.list({ userId: 'me' });
console.log('Labels:', labelsRes.data.labels?.map(l => l.name));

// List recent messages
const messagesRes = await gmail.users.messages.list({
  userId: 'me',
  maxResults: 10,
  q: 'is:unread',
});

// Get full message
if (messagesRes.data.messages?.length) {
  const msg = await gmail.users.messages.get({
    userId: 'me',
    id: messagesRes.data.messages[0].id!,
    format: 'metadata',
    metadataHeaders: ['Subject', 'From'],
  });
  console.log(msg.data.payload?.headers);
}
```

### curl

```bash
# List messages
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://gmail.googleapis.com/gmail/v1/users/me/messages?maxResults=5"

# Get a specific message
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://gmail.googleapis.com/gmail/v1/users/me/messages/MESSAGE_ID?format=metadata"
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

