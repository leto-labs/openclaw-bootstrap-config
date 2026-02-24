# Gmail API - API Reference

**Version**: `v1` | **Methods**: 79 | **Schemas**: 56

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `gmail.users.stop` | POST | `gmail/v1/users/{userId}/stop` | Stop receiving push notifications for the given user mailbox. |
| `gmail.users.getProfile` | GET | `gmail/v1/users/{userId}/profile` | Gets the current user's Gmail profile. |
| `gmail.users.watch` | POST | `gmail/v1/users/{userId}/watch` | Set up or update a push notification watch on the given user mailbox. |
| `gmail.users.messages.batchModify` | POST | `gmail/v1/users/{userId}/messages/batchModify` | Modifies the labels on the specified messages. |
| `gmail.users.messages.list` | GET | `gmail/v1/users/{userId}/messages` | Lists the messages in the user's mailbox. For example usage, see [List Gmail messages](https://de... |
| `gmail.users.messages.import` | POST | `gmail/v1/users/{userId}/messages/import` | Imports a message into only this user's mailbox, with standard email delivery scanning and classi... |
| `gmail.users.messages.batchDelete` | POST | `gmail/v1/users/{userId}/messages/batchDelete` | Deletes many messages by message ID. Provides no guarantees that messages were not already delete... |
| `gmail.users.messages.send` | POST | `gmail/v1/users/{userId}/messages/send` | Sends the specified message to the recipients in the `To`, `Cc`, and `Bcc` headers. For example u... |
| `gmail.users.messages.modify` | POST | `gmail/v1/users/{userId}/messages/{id}/modify` | Modifies the labels on the specified message. |
| `gmail.users.messages.untrash` | POST | `gmail/v1/users/{userId}/messages/{id}/untrash` | Removes the specified message from the trash. |
| `gmail.users.messages.delete` | DELETE | `gmail/v1/users/{userId}/messages/{id}` | Immediately and permanently deletes the specified message. This operation cannot be undone. Prefe... |
| `gmail.users.messages.get` | GET | `gmail/v1/users/{userId}/messages/{id}` | Gets the specified message. |
| `gmail.users.messages.trash` | POST | `gmail/v1/users/{userId}/messages/{id}/trash` | Moves the specified message to the trash. |
| `gmail.users.messages.insert` | POST | `gmail/v1/users/{userId}/messages` | Directly inserts a message into only this user's mailbox similar to `IMAP APPEND`, bypassing most... |
| `gmail.users.messages.attachments.get` | GET | `gmail/v1/users/{userId}/messages/{messageId}/attachments/{id}` | Gets the specified message attachment. |
| `gmail.users.settings.getAutoForwarding` | GET | `gmail/v1/users/{userId}/settings/autoForwarding` | Gets the auto-forwarding setting for the specified account. |
| `gmail.users.settings.updatePop` | PUT | `gmail/v1/users/{userId}/settings/pop` | Updates POP settings. |
| `gmail.users.settings.updateImap` | PUT | `gmail/v1/users/{userId}/settings/imap` | Updates IMAP settings. |
| `gmail.users.settings.updateLanguage` | PUT | `gmail/v1/users/{userId}/settings/language` | Updates language settings. If successful, the return object contains the `displayLanguage` that w... |
| `gmail.users.settings.getVacation` | GET | `gmail/v1/users/{userId}/settings/vacation` | Gets vacation responder settings. |
| `gmail.users.settings.getPop` | GET | `gmail/v1/users/{userId}/settings/pop` | Gets POP settings. |
| `gmail.users.settings.getLanguage` | GET | `gmail/v1/users/{userId}/settings/language` | Gets language settings. |
| `gmail.users.settings.updateVacation` | PUT | `gmail/v1/users/{userId}/settings/vacation` | Updates vacation responder settings. |
| `gmail.users.settings.updateAutoForwarding` | PUT | `gmail/v1/users/{userId}/settings/autoForwarding` | Updates the auto-forwarding setting for the specified account. A verified forwarding address must... |
| `gmail.users.settings.getImap` | GET | `gmail/v1/users/{userId}/settings/imap` | Gets IMAP settings. |
| `gmail.users.settings.delegates.delete` | DELETE | `gmail/v1/users/{userId}/settings/delegates/{delegateEmail}` | Removes the specified delegate (which can be of any verification status), and revokes any verific... |
| `gmail.users.settings.delegates.create` | POST | `gmail/v1/users/{userId}/settings/delegates` | Adds a delegate with its verification status set directly to `accepted`, without sending any veri... |
| `gmail.users.settings.delegates.list` | GET | `gmail/v1/users/{userId}/settings/delegates` | Lists the delegates for the specified account. This method is only available to service account c... |
| `gmail.users.settings.delegates.get` | GET | `gmail/v1/users/{userId}/settings/delegates/{delegateEmail}` | Gets the specified delegate. Note that a delegate user must be referred to by their primary email... |
| `gmail.users.settings.filters.get` | GET | `gmail/v1/users/{userId}/settings/filters/{id}` | Gets a filter. |
| `gmail.users.settings.filters.delete` | DELETE | `gmail/v1/users/{userId}/settings/filters/{id}` | Immediately and permanently deletes the specified filter. |
| `gmail.users.settings.filters.list` | GET | `gmail/v1/users/{userId}/settings/filters` | Lists the message filters of a Gmail user. |
| `gmail.users.settings.filters.create` | POST | `gmail/v1/users/{userId}/settings/filters` | Creates a filter. Note: you can only create a maximum of 1,000 filters. |
| `gmail.users.settings.cse.identities.delete` | DELETE | `gmail/v1/users/{userId}/settings/cse/identities/{cseEmailAddress}` | Deletes a client-side encryption identity. The authenticated user can no longer use the identity ... |
| `gmail.users.settings.cse.identities.patch` | PATCH | `gmail/v1/users/{userId}/settings/cse/identities/{emailAddress}` | Associates a different key pair with an existing client-side encryption identity. The updated key... |
| `gmail.users.settings.cse.identities.get` | GET | `gmail/v1/users/{userId}/settings/cse/identities/{cseEmailAddress}` | Retrieves a client-side encryption identity configuration. For administrators managing identities... |
| `gmail.users.settings.cse.identities.list` | GET | `gmail/v1/users/{userId}/settings/cse/identities` | Lists the client-side encrypted identities for an authenticated user. For administrators managing... |
| `gmail.users.settings.cse.identities.create` | POST | `gmail/v1/users/{userId}/settings/cse/identities` | Creates and configures a client-side encryption identity that's authorized to send mail from the ... |
| `gmail.users.settings.cse.keypairs.get` | GET | `gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}` | Retrieves an existing client-side encryption key pair. For administrators managing identities and... |
| `gmail.users.settings.cse.keypairs.obliterate` | POST | `gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:obliterate` | Deletes a client-side encryption key pair permanently and immediately. You can only permanently d... |
| `gmail.users.settings.cse.keypairs.disable` | POST | `gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:disable` | Turns off a client-side encryption key pair. The authenticated user can no longer use the key pai... |
| `gmail.users.settings.cse.keypairs.list` | GET | `gmail/v1/users/{userId}/settings/cse/keypairs` | Lists client-side encryption key pairs for an authenticated user. For administrators managing ide... |
| `gmail.users.settings.cse.keypairs.create` | POST | `gmail/v1/users/{userId}/settings/cse/keypairs` | Creates and uploads a client-side encryption S/MIME public key certificate chain and private key ... |
| `gmail.users.settings.cse.keypairs.enable` | POST | `gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:enable` | Turns on a client-side encryption key pair that was turned off. The key pair becomes active again... |
| `gmail.users.settings.forwardingAddresses.create` | POST | `gmail/v1/users/{userId}/settings/forwardingAddresses` | Creates a forwarding address. If ownership verification is required, a message will be sent to th... |
| `gmail.users.settings.forwardingAddresses.list` | GET | `gmail/v1/users/{userId}/settings/forwardingAddresses` | Lists the forwarding addresses for the specified account. |
| `gmail.users.settings.forwardingAddresses.get` | GET | `gmail/v1/users/{userId}/settings/forwardingAddresses/{forwardingEmail}` | Gets the specified forwarding address. |
| `gmail.users.settings.forwardingAddresses.delete` | DELETE | `gmail/v1/users/{userId}/settings/forwardingAddresses/{forwardingEmail}` | Deletes the specified forwarding address and revokes any verification that may have been required... |
| `gmail.users.settings.sendAs.create` | POST | `gmail/v1/users/{userId}/settings/sendAs` | Creates a custom "from" send-as alias. If an SMTP MSA is specified, Gmail will attempt to connect... |
| `gmail.users.settings.sendAs.list` | GET | `gmail/v1/users/{userId}/settings/sendAs` | Lists the send-as aliases for the specified account. The result includes the primary send-as addr... |
| `gmail.users.settings.sendAs.update` | PUT | `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}` | Updates a send-as alias. If a signature is provided, Gmail will sanitize the HTML before saving i... |
| `gmail.users.settings.sendAs.delete` | DELETE | `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}` | Deletes the specified send-as alias. Revokes any verification that may have been required for usi... |
| `gmail.users.settings.sendAs.verify` | POST | `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/verify` | Sends a verification email to the specified send-as alias address. The verification status must b... |
| `gmail.users.settings.sendAs.patch` | PATCH | `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}` | Patch the specified send-as alias. |
| `gmail.users.settings.sendAs.get` | GET | `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}` | Gets the specified send-as alias. Fails with an HTTP 404 error if the specified address is not a ... |
| `gmail.users.settings.sendAs.smimeInfo.delete` | DELETE | `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}` | Deletes the specified S/MIME config for the specified send-as alias. |
| `gmail.users.settings.sendAs.smimeInfo.list` | GET | `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo` | Lists S/MIME configs for the specified send-as alias. |
| `gmail.users.settings.sendAs.smimeInfo.get` | GET | `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}` | Gets the specified S/MIME config for the specified send-as alias. |
| `gmail.users.settings.sendAs.smimeInfo.setDefault` | POST | `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}/setDefault` | Sets the default S/MIME config for the specified send-as alias. |
| `gmail.users.settings.sendAs.smimeInfo.insert` | POST | `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo` | Insert (upload) the given S/MIME config for the specified send-as alias. Note that pkcs12 format ... |
| `gmail.users.history.list` | GET | `gmail/v1/users/{userId}/history` | Lists the history of all changes to the given mailbox. History results are returned in chronologi... |
| `gmail.users.threads.delete` | DELETE | `gmail/v1/users/{userId}/threads/{id}` | Immediately and permanently deletes the specified thread. Any messages that belong to the thread ... |
| `gmail.users.threads.get` | GET | `gmail/v1/users/{userId}/threads/{id}` | Gets the specified thread. |
| `gmail.users.threads.untrash` | POST | `gmail/v1/users/{userId}/threads/{id}/untrash` | Removes the specified thread from the trash. Any messages that belong to the thread are also remo... |
| `gmail.users.threads.trash` | POST | `gmail/v1/users/{userId}/threads/{id}/trash` | Moves the specified thread to the trash. Any messages that belong to the thread are also moved to... |
| `gmail.users.threads.list` | GET | `gmail/v1/users/{userId}/threads` | Lists the threads in the user's mailbox. |
| `gmail.users.threads.modify` | POST | `gmail/v1/users/{userId}/threads/{id}/modify` | Modifies the labels applied to the thread. This applies to all messages in the thread. |
| `gmail.users.drafts.list` | GET | `gmail/v1/users/{userId}/drafts` | Lists the drafts in the user's mailbox. |
| `gmail.users.drafts.get` | GET | `gmail/v1/users/{userId}/drafts/{id}` | Gets the specified draft. |
| `gmail.users.drafts.create` | POST | `gmail/v1/users/{userId}/drafts` | Creates a new draft with the `DRAFT` label. |
| `gmail.users.drafts.send` | POST | `gmail/v1/users/{userId}/drafts/send` | Sends the specified, existing draft to the recipients in the `To`, `Cc`, and `Bcc` headers. |
| `gmail.users.drafts.update` | PUT | `gmail/v1/users/{userId}/drafts/{id}` | Replaces a draft's content. |
| `gmail.users.drafts.delete` | DELETE | `gmail/v1/users/{userId}/drafts/{id}` | Immediately and permanently deletes the specified draft. Does not simply trash it. |
| `gmail.users.labels.create` | POST | `gmail/v1/users/{userId}/labels` | Creates a new label. |
| `gmail.users.labels.get` | GET | `gmail/v1/users/{userId}/labels/{id}` | Gets the specified label. |
| `gmail.users.labels.update` | PUT | `gmail/v1/users/{userId}/labels/{id}` | Updates the specified label. |
| `gmail.users.labels.delete` | DELETE | `gmail/v1/users/{userId}/labels/{id}` | Immediately and permanently deletes the specified label and removes it from any messages and thre... |
| `gmail.users.labels.list` | GET | `gmail/v1/users/{userId}/labels` | Lists all labels in the user's mailbox. |
| `gmail.users.labels.patch` | PATCH | `gmail/v1/users/{userId}/labels/{id}` | Patch the specified label. |

### `gmail.users.stop`

**POST** `gmail/v1/users/{userId}/stop`

Stop receiving push notifications for the given user mailbox.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |

```typescript
const res = await gmail.users.stop({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.metadata`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.getProfile`

**GET** `gmail/v1/users/{userId}/profile`

Gets the current user's Gmail profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |

**Response**: `Profile`

```typescript
const res = await gmail.users.getProfile({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.compose`
- `https://www.googleapis.com/auth/gmail.metadata`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.watch`

**POST** `gmail/v1/users/{userId}/watch`

Set up or update a push notification watch on the given user mailbox.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |

**Request body**: `WatchRequest`

**Response**: `WatchResponse`

```typescript
const res = await gmail.users.watch({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.metadata`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.messages.batchModify`

**POST** `gmail/v1/users/{userId}/messages/batchModify`

Modifies the labels on the specified messages.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |

**Request body**: `BatchModifyMessagesRequest`

```typescript
const res = await gmail.messages.batchModify({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.messages.list`

**GET** `gmail/v1/users/{userId}/messages`

Lists the messages in the user's mailbox. For example usage, see [List Gmail messages](https://developers.google.com/workspace/gmail/api/guides/list-messages).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `includeSpamTrash` | `boolean` | query | No | Include messages from `SPAM` and `TRASH` in the results. |
| `labelIds` | `string` | query | No | Only return messages with labels that match all of the specified label IDs. Messages in a thread might have labels th... |
| `maxResults` | `integer` | query | No | Maximum number of messages to return. This field defaults to 100. The maximum allowed value for this field is 500. |
| `pageToken` | `string` | query | No | Page token to retrieve a specific page of results in the list. |
| `q` | `string` | query | No | Only return messages matching the specified query. Supports the same query format as the Gmail search box. For exampl... |

**Response**: `ListMessagesResponse`

```typescript
const res = await gmail.messages.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.metadata`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.messages.import`

**POST** `gmail/v1/users/{userId}/messages/import`

Imports a message into only this user's mailbox, with standard email delivery scanning and classification similar to receiving via SMTP. This method doesn't perform SPF checks, so it might not work for some spam messages, such as those attempting to perform domain spoofing. This method does not send a message. Note that the maximum size of the message is 150MB.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `deleted` | `boolean` | query | No | Mark the email as permanently deleted (not TRASH) and only visible in Google Vault to a Vault administrator. Only use... |
| `internalDateSource` | `string` | query | No | Source for Gmail's internal date of the message. |
| `neverMarkSpam` | `boolean` | query | No | Ignore the Gmail spam classifier decision and never mark this email as SPAM in the mailbox. |
| `processForCalendar` | `boolean` | query | No | Process calendar invites in the email and add any extracted meetings to the Google Calendar for this user. |

**Request body**: `Message`

**Response**: `Message`

```typescript
const res = await gmail.messages.import({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.insert`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.messages.batchDelete`

**POST** `gmail/v1/users/{userId}/messages/batchDelete`

Deletes many messages by message ID. Provides no guarantees that messages were not already deleted or even existed at all.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |

**Request body**: `BatchDeleteMessagesRequest`

```typescript
const res = await gmail.messages.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`

---

### `gmail.users.messages.send`

**POST** `gmail/v1/users/{userId}/messages/send`

Sends the specified message to the recipients in the `To`, `Cc`, and `Bcc` headers. For example usage, see [Sending email](https://developers.google.com/workspace/gmail/api/guides/sending).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |

**Request body**: `Message`

**Response**: `Message`

```typescript
const res = await gmail.messages.send({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.addons.current.action.compose`
- `https://www.googleapis.com/auth/gmail.compose`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.send`

---

### `gmail.users.messages.modify`

**POST** `gmail/v1/users/{userId}/messages/{id}/modify`

Modifies the labels on the specified message.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the message to modify. |

**Request body**: `ModifyMessageRequest`

**Response**: `Message`

```typescript
const res = await gmail.messages.modify({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.messages.untrash`

**POST** `gmail/v1/users/{userId}/messages/{id}/untrash`

Removes the specified message from the trash.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the message to remove from Trash. |

**Response**: `Message`

```typescript
const res = await gmail.messages.untrash({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.messages.delete`

**DELETE** `gmail/v1/users/{userId}/messages/{id}`

Immediately and permanently deletes the specified message. This operation cannot be undone. Prefer `messages.trash` instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the message to delete. |

```typescript
const res = await gmail.messages.delete({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`

---

### `gmail.users.messages.get`

**GET** `gmail/v1/users/{userId}/messages/{id}`

Gets the specified message.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the message to retrieve. This ID is usually retrieved using `messages.list`. The ID is also contained in th... |
| `format` | `string` | query | No | The format to return the message in. |
| `metadataHeaders` | `string` | query | No | When given and format is `METADATA`, only include headers specified. |

**Response**: `Message`

```typescript
const res = await gmail.messages.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.addons.current.message.action`
- `https://www.googleapis.com/auth/gmail.addons.current.message.metadata`
- `https://www.googleapis.com/auth/gmail.addons.current.message.readonly`
- `https://www.googleapis.com/auth/gmail.metadata`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.messages.trash`

**POST** `gmail/v1/users/{userId}/messages/{id}/trash`

Moves the specified message to the trash.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the message to Trash. |

**Response**: `Message`

```typescript
const res = await gmail.messages.trash({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.messages.insert`

**POST** `gmail/v1/users/{userId}/messages`

Directly inserts a message into only this user's mailbox similar to `IMAP APPEND`, bypassing most scanning and classification. Does not send a message.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `deleted` | `boolean` | query | No | Mark the email as permanently deleted (not TRASH) and only visible in Google Vault to a Vault administrator. Only use... |
| `internalDateSource` | `string` | query | No | Source for Gmail's internal date of the message. |

**Request body**: `Message`

**Response**: `Message`

```typescript
const res = await gmail.messages.insert({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.insert`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.messages.attachments.get`

**GET** `gmail/v1/users/{userId}/messages/{messageId}/attachments/{id}`

Gets the specified message attachment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `messageId` | `string` | path | Yes | The ID of the message containing the attachment. |
| `id` | `string` | path | Yes | The ID of the attachment. |

**Response**: `MessagePartBody`

```typescript
const res = await gmail.attachments.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.addons.current.message.action`
- `https://www.googleapis.com/auth/gmail.addons.current.message.readonly`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.settings.getAutoForwarding`

**GET** `gmail/v1/users/{userId}/settings/autoForwarding`

Gets the auto-forwarding setting for the specified account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Response**: `AutoForwarding`

```typescript
const res = await gmail.settings.getAutoForwarding({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.updatePop`

**PUT** `gmail/v1/users/{userId}/settings/pop`

Updates POP settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Request body**: `PopSettings`

**Response**: `PopSettings`

```typescript
const res = await gmail.settings.updatePop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.updateImap`

**PUT** `gmail/v1/users/{userId}/settings/imap`

Updates IMAP settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Request body**: `ImapSettings`

**Response**: `ImapSettings`

```typescript
const res = await gmail.settings.updateImap({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.updateLanguage`

**PUT** `gmail/v1/users/{userId}/settings/language`

Updates language settings. If successful, the return object contains the `displayLanguage` that was saved for the user, which may differ from the value passed into the request. This is because the requested `displayLanguage` may not be directly supported by Gmail but have a close variant that is, and so the variant may be chosen and saved instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Request body**: `LanguageSettings`

**Response**: `LanguageSettings`

```typescript
const res = await gmail.settings.updateLanguage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.getVacation`

**GET** `gmail/v1/users/{userId}/settings/vacation`

Gets vacation responder settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Response**: `VacationSettings`

```typescript
const res = await gmail.settings.getVacation({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.getPop`

**GET** `gmail/v1/users/{userId}/settings/pop`

Gets POP settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Response**: `PopSettings`

```typescript
const res = await gmail.settings.getPop({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.getLanguage`

**GET** `gmail/v1/users/{userId}/settings/language`

Gets language settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Response**: `LanguageSettings`

```typescript
const res = await gmail.settings.getLanguage({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.updateVacation`

**PUT** `gmail/v1/users/{userId}/settings/vacation`

Updates vacation responder settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Request body**: `VacationSettings`

**Response**: `VacationSettings`

```typescript
const res = await gmail.settings.updateVacation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.updateAutoForwarding`

**PUT** `gmail/v1/users/{userId}/settings/autoForwarding`

Updates the auto-forwarding setting for the specified account. A verified forwarding address must be specified when auto-forwarding is enabled. This method is only available to service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Request body**: `AutoForwarding`

**Response**: `AutoForwarding`

```typescript
const res = await gmail.settings.updateAutoForwarding({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.getImap`

**GET** `gmail/v1/users/{userId}/settings/imap`

Gets IMAP settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Response**: `ImapSettings`

```typescript
const res = await gmail.settings.getImap({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.delegates.delete`

**DELETE** `gmail/v1/users/{userId}/settings/delegates/{delegateEmail}`

Removes the specified delegate (which can be of any verification status), and revokes any verification that may have been required for using it. Note that a delegate user must be referred to by their primary email address, and not an email alias. This method is only available to service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `delegateEmail` | `string` | path | Yes | The email address of the user to be removed as a delegate. |

```typescript
const res = await gmail.delegates.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.delegates.create`

**POST** `gmail/v1/users/{userId}/settings/delegates`

Adds a delegate with its verification status set directly to `accepted`, without sending any verification email. The delegate user must be a member of the same Google Workspace organization as the delegator user. Gmail imposes limitations on the number of delegates and delegators each user in a Google Workspace organization can have. These limits depend on your organization, but in general each user can have up to 25 delegates and up to 10 delegators. Note that a delegate user must be referred to by their primary email address, and not an email alias. Also note that when a new delegate is created, there may be up to a one minute delay before the new delegate is available for use. This method is only available to service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Request body**: `Delegate`

**Response**: `Delegate`

```typescript
const res = await gmail.delegates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.delegates.list`

**GET** `gmail/v1/users/{userId}/settings/delegates`

Lists the delegates for the specified account. This method is only available to service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Response**: `ListDelegatesResponse`

```typescript
const res = await gmail.delegates.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.delegates.get`

**GET** `gmail/v1/users/{userId}/settings/delegates/{delegateEmail}`

Gets the specified delegate. Note that a delegate user must be referred to by their primary email address, and not an email alias. This method is only available to service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `delegateEmail` | `string` | path | Yes | The email address of the user whose delegate relationship is to be retrieved. |

**Response**: `Delegate`

```typescript
const res = await gmail.delegates.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.filters.get`

**GET** `gmail/v1/users/{userId}/settings/filters/{id}`

Gets a filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the filter to be fetched. |

**Response**: `Filter`

```typescript
const res = await gmail.filters.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.filters.delete`

**DELETE** `gmail/v1/users/{userId}/settings/filters/{id}`

Immediately and permanently deletes the specified filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the filter to be deleted. |

```typescript
const res = await gmail.filters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.filters.list`

**GET** `gmail/v1/users/{userId}/settings/filters`

Lists the message filters of a Gmail user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Response**: `ListFiltersResponse`

```typescript
const res = await gmail.filters.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.filters.create`

**POST** `gmail/v1/users/{userId}/settings/filters`

Creates a filter. Note: you can only create a maximum of 1,000 filters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Request body**: `Filter`

**Response**: `Filter`

```typescript
const res = await gmail.filters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.cse.identities.delete`

**DELETE** `gmail/v1/users/{userId}/settings/cse/identities/{cseEmailAddress}`

Deletes a client-side encryption identity. The authenticated user can no longer use the identity to send encrypted messages. You cannot restore the identity after you delete it. Instead, use the CreateCseIdentity method to create another identity with the same configuration. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |
| `cseEmailAddress` | `string` | path | Yes | The primary email address associated with the client-side encryption identity configuration that's removed. |

```typescript
const res = await gmail.identities.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.cse.identities.patch`

**PATCH** `gmail/v1/users/{userId}/settings/cse/identities/{emailAddress}`

Associates a different key pair with an existing client-side encryption identity. The updated key pair must validate against Google's [S/MIME certificate profiles](https://support.google.com/a/answer/7300887). For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |
| `emailAddress` | `string` | path | Yes | The email address of the client-side encryption identity to update. |

**Request body**: `CseIdentity`

**Response**: `CseIdentity`

```typescript
const res = await gmail.identities.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.cse.identities.get`

**GET** `gmail/v1/users/{userId}/settings/cse/identities/{cseEmailAddress}`

Retrieves a client-side encryption identity configuration. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |
| `cseEmailAddress` | `string` | path | Yes | The primary email address associated with the client-side encryption identity configuration that's retrieved. |

**Response**: `CseIdentity`

```typescript
const res = await gmail.identities.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.cse.identities.list`

**GET** `gmail/v1/users/{userId}/settings/cse/identities`

Lists the client-side encrypted identities for an authenticated user. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |
| `pageSize` | `integer` | query | No | The number of identities to return. If not provided, the page size will default to 20 entries. |
| `pageToken` | `string` | query | No | Pagination token indicating which page of identities to return. If the token is not supplied, then the API will retur... |

**Response**: `ListCseIdentitiesResponse`

```typescript
const res = await gmail.identities.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.cse.identities.create`

**POST** `gmail/v1/users/{userId}/settings/cse/identities`

Creates and configures a client-side encryption identity that's authorized to send mail from the user account. Google publishes the S/MIME certificate to a shared domain-wide directory so that people within a Google Workspace organization can encrypt and send mail to the identity. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |

**Request body**: `CseIdentity`

**Response**: `CseIdentity`

```typescript
const res = await gmail.identities.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.cse.keypairs.get`

**GET** `gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}`

Retrieves an existing client-side encryption key pair. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |
| `keyPairId` | `string` | path | Yes | The identifier of the key pair to retrieve. |

**Response**: `CseKeyPair`

```typescript
const res = await gmail.keypairs.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.cse.keypairs.obliterate`

**POST** `gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:obliterate`

Deletes a client-side encryption key pair permanently and immediately. You can only permanently delete key pairs that have been turned off for more than 30 days. To turn off a key pair, use the DisableCseKeyPair method. Gmail can't restore or decrypt any messages that were encrypted by an obliterated key. Authenticated users and Google Workspace administrators lose access to reading the encrypted messages. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |
| `keyPairId` | `string` | path | Yes | The identifier of the key pair to obliterate. |

**Request body**: `ObliterateCseKeyPairRequest`

```typescript
const res = await gmail.keypairs.obliterate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.cse.keypairs.disable`

**POST** `gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:disable`

Turns off a client-side encryption key pair. The authenticated user can no longer use the key pair to decrypt incoming CSE message texts or sign outgoing CSE mail. To regain access, use the EnableCseKeyPair to turn on the key pair. After 30 days, you can permanently delete the key pair by using the ObliterateCseKeyPair method. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |
| `keyPairId` | `string` | path | Yes | The identifier of the key pair to turn off. |

**Request body**: `DisableCseKeyPairRequest`

**Response**: `CseKeyPair`

```typescript
const res = await gmail.keypairs.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.cse.keypairs.list`

**GET** `gmail/v1/users/{userId}/settings/cse/keypairs`

Lists client-side encryption key pairs for an authenticated user. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |
| `pageSize` | `integer` | query | No | The number of key pairs to return. If not provided, the page size will default to 20 entries. |
| `pageToken` | `string` | query | No | Pagination token indicating which page of key pairs to return. If the token is not supplied, then the API will return... |

**Response**: `ListCseKeyPairsResponse`

```typescript
const res = await gmail.keypairs.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.cse.keypairs.create`

**POST** `gmail/v1/users/{userId}/settings/cse/keypairs`

Creates and uploads a client-side encryption S/MIME public key certificate chain and private key metadata for the authenticated user. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |

**Request body**: `CseKeyPair`

**Response**: `CseKeyPair`

```typescript
const res = await gmail.keypairs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.cse.keypairs.enable`

**POST** `gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:enable`

Turns on a client-side encryption key pair that was turned off. The key pair becomes active again for any associated client-side encryption identities. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The requester's primary email address. To indicate the authenticated user, you can use the special value `me`. |
| `keyPairId` | `string` | path | Yes | The identifier of the key pair to turn on. |

**Request body**: `EnableCseKeyPairRequest`

**Response**: `CseKeyPair`

```typescript
const res = await gmail.keypairs.enable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.forwardingAddresses.create`

**POST** `gmail/v1/users/{userId}/settings/forwardingAddresses`

Creates a forwarding address. If ownership verification is required, a message will be sent to the recipient and the resource's verification status will be set to `pending`; otherwise, the resource will be created with verification status set to `accepted`. This method is only available to service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Request body**: `ForwardingAddress`

**Response**: `ForwardingAddress`

```typescript
const res = await gmail.forwardingAddresses.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.forwardingAddresses.list`

**GET** `gmail/v1/users/{userId}/settings/forwardingAddresses`

Lists the forwarding addresses for the specified account.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Response**: `ListForwardingAddressesResponse`

```typescript
const res = await gmail.forwardingAddresses.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.forwardingAddresses.get`

**GET** `gmail/v1/users/{userId}/settings/forwardingAddresses/{forwardingEmail}`

Gets the specified forwarding address.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `forwardingEmail` | `string` | path | Yes | The forwarding address to be retrieved. |

**Response**: `ForwardingAddress`

```typescript
const res = await gmail.forwardingAddresses.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.forwardingAddresses.delete`

**DELETE** `gmail/v1/users/{userId}/settings/forwardingAddresses/{forwardingEmail}`

Deletes the specified forwarding address and revokes any verification that may have been required. This method is only available to service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `forwardingEmail` | `string` | path | Yes | The forwarding address to be deleted. |

```typescript
const res = await gmail.forwardingAddresses.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.sendAs.create`

**POST** `gmail/v1/users/{userId}/settings/sendAs`

Creates a custom "from" send-as alias. If an SMTP MSA is specified, Gmail will attempt to connect to the SMTP service to validate the configuration before creating the alias. If ownership verification is required for the alias, a message will be sent to the email address and the resource's verification status will be set to `pending`; otherwise, the resource will be created with verification status set to `accepted`. If a signature is provided, Gmail will sanitize the HTML before saving it with the alias. This method is only available to service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Request body**: `SendAs`

**Response**: `SendAs`

```typescript
const res = await gmail.sendAs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.sendAs.list`

**GET** `gmail/v1/users/{userId}/settings/sendAs`

Lists the send-as aliases for the specified account. The result includes the primary send-as address associated with the account as well as any custom "from" aliases.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |

**Response**: `ListSendAsResponse`

```typescript
const res = await gmail.sendAs.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.sendAs.update`

**PUT** `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}`

Updates a send-as alias. If a signature is provided, Gmail will sanitize the HTML before saving it with the alias. Addresses other than the primary address for the account can only be updated by service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `sendAsEmail` | `string` | path | Yes | The send-as alias to be updated. |

**Request body**: `SendAs`

**Response**: `SendAs`

```typescript
const res = await gmail.sendAs.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.sendAs.delete`

**DELETE** `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}`

Deletes the specified send-as alias. Revokes any verification that may have been required for using it. This method is only available to service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `sendAsEmail` | `string` | path | Yes | The send-as alias to be deleted. |

```typescript
const res = await gmail.sendAs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.sendAs.verify`

**POST** `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/verify`

Sends a verification email to the specified send-as alias address. The verification status must be `pending`. This method is only available to service account clients that have been delegated domain-wide authority.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `sendAsEmail` | `string` | path | Yes | The send-as alias to be verified. |

```typescript
const res = await gmail.sendAs.verify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.sendAs.patch`

**PATCH** `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}`

Patch the specified send-as alias.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `sendAsEmail` | `string` | path | Yes | The send-as alias to be updated. |

**Request body**: `SendAs`

**Response**: `SendAs`

```typescript
const res = await gmail.sendAs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.sendAs.get`

**GET** `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}`

Gets the specified send-as alias. Fails with an HTTP 404 error if the specified address is not a member of the collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | User's email address. The special value "me" can be used to indicate the authenticated user. |
| `sendAsEmail` | `string` | path | Yes | The send-as alias to be retrieved. |

**Response**: `SendAs`

```typescript
const res = await gmail.sendAs.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`

---

### `gmail.users.settings.sendAs.smimeInfo.delete`

**DELETE** `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}`

Deletes the specified S/MIME config for the specified send-as alias.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `sendAsEmail` | `string` | path | Yes | The email address that appears in the "From:" header for mail sent using this alias. |
| `id` | `string` | path | Yes | The immutable ID for the SmimeInfo. |

```typescript
const res = await gmail.smimeInfo.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.sendAs.smimeInfo.list`

**GET** `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo`

Lists S/MIME configs for the specified send-as alias.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `sendAsEmail` | `string` | path | Yes | The email address that appears in the "From:" header for mail sent using this alias. |

**Response**: `ListSmimeInfoResponse`

```typescript
const res = await gmail.smimeInfo.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.sendAs.smimeInfo.get`

**GET** `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}`

Gets the specified S/MIME config for the specified send-as alias.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `sendAsEmail` | `string` | path | Yes | The email address that appears in the "From:" header for mail sent using this alias. |
| `id` | `string` | path | Yes | The immutable ID for the SmimeInfo. |

**Response**: `SmimeInfo`

```typescript
const res = await gmail.smimeInfo.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.sendAs.smimeInfo.setDefault`

**POST** `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}/setDefault`

Sets the default S/MIME config for the specified send-as alias.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `sendAsEmail` | `string` | path | Yes | The email address that appears in the "From:" header for mail sent using this alias. |
| `id` | `string` | path | Yes | The immutable ID for the SmimeInfo. |

```typescript
const res = await gmail.smimeInfo.setDefault({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.settings.sendAs.smimeInfo.insert`

**POST** `gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo`

Insert (upload) the given S/MIME config for the specified send-as alias. Note that pkcs12 format is required for the key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `sendAsEmail` | `string` | path | Yes | The email address that appears in the "From:" header for mail sent using this alias. |

**Request body**: `SmimeInfo`

**Response**: `SmimeInfo`

```typescript
const res = await gmail.smimeInfo.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/gmail.settings.basic`
- `https://www.googleapis.com/auth/gmail.settings.sharing`

---

### `gmail.users.history.list`

**GET** `gmail/v1/users/{userId}/history`

Lists the history of all changes to the given mailbox. History results are returned in chronological order (increasing `historyId`).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `historyTypes` | `string` | query | No | History types to be returned by the function |
| `labelId` | `string` | query | No | Only return messages with a label matching the ID. |
| `maxResults` | `integer` | query | No | Maximum number of history records to return. This field defaults to 100. The maximum allowed value for this field is ... |
| `pageToken` | `string` | query | No | Page token to retrieve a specific page of results in the list. |
| `startHistoryId` | `string` | query | No | Required. Returns history records after the specified `startHistoryId`. The supplied `startHistoryId` should be obtai... |

**Response**: `ListHistoryResponse`

```typescript
const res = await gmail.history.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.metadata`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.threads.delete`

**DELETE** `gmail/v1/users/{userId}/threads/{id}`

Immediately and permanently deletes the specified thread. Any messages that belong to the thread are also deleted. This operation cannot be undone. Prefer `threads.trash` instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | ID of the Thread to delete. |

```typescript
const res = await gmail.threads.delete({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`

---

### `gmail.users.threads.get`

**GET** `gmail/v1/users/{userId}/threads/{id}`

Gets the specified thread.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the thread to retrieve. |
| `format` | `string` | query | No | The format to return the messages in. |
| `metadataHeaders` | `string` | query | No | When given and format is METADATA, only include headers specified. |

**Response**: `Thread`

```typescript
const res = await gmail.threads.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.addons.current.message.action`
- `https://www.googleapis.com/auth/gmail.addons.current.message.metadata`
- `https://www.googleapis.com/auth/gmail.addons.current.message.readonly`
- `https://www.googleapis.com/auth/gmail.metadata`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.threads.untrash`

**POST** `gmail/v1/users/{userId}/threads/{id}/untrash`

Removes the specified thread from the trash. Any messages that belong to the thread are also removed from the trash.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the thread to remove from Trash. |

**Response**: `Thread`

```typescript
const res = await gmail.threads.untrash({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.threads.trash`

**POST** `gmail/v1/users/{userId}/threads/{id}/trash`

Moves the specified thread to the trash. Any messages that belong to the thread are also moved to the trash.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the thread to Trash. |

**Response**: `Thread`

```typescript
const res = await gmail.threads.trash({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.threads.list`

**GET** `gmail/v1/users/{userId}/threads`

Lists the threads in the user's mailbox.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `includeSpamTrash` | `boolean` | query | No | Include threads from `SPAM` and `TRASH` in the results. |
| `labelIds` | `string` | query | No | Only return threads with labels that match all of the specified label IDs. |
| `maxResults` | `integer` | query | No | Maximum number of threads to return. This field defaults to 100. The maximum allowed value for this field is 500. |
| `pageToken` | `string` | query | No | Page token to retrieve a specific page of results in the list. |
| `q` | `string` | query | No | Only return threads matching the specified query. Supports the same query format as the Gmail search box. For example... |

**Response**: `ListThreadsResponse`

```typescript
const res = await gmail.threads.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.metadata`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.threads.modify`

**POST** `gmail/v1/users/{userId}/threads/{id}/modify`

Modifies the labels applied to the thread. This applies to all messages in the thread.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the thread to modify. |

**Request body**: `ModifyThreadRequest`

**Response**: `Thread`

```typescript
const res = await gmail.threads.modify({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.drafts.list`

**GET** `gmail/v1/users/{userId}/drafts`

Lists the drafts in the user's mailbox.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `includeSpamTrash` | `boolean` | query | No | Include drafts from `SPAM` and `TRASH` in the results. |
| `maxResults` | `integer` | query | No | Maximum number of drafts to return. This field defaults to 100. The maximum allowed value for this field is 500. |
| `pageToken` | `string` | query | No | Page token to retrieve a specific page of results in the list. |
| `q` | `string` | query | No | Only return draft messages matching the specified query. Supports the same query format as the Gmail search box. For ... |

**Response**: `ListDraftsResponse`

```typescript
const res = await gmail.drafts.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.compose`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.drafts.get`

**GET** `gmail/v1/users/{userId}/drafts/{id}`

Gets the specified draft.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the draft to retrieve. |
| `format` | `string` | query | No | The format to return the draft in. |

**Response**: `Draft`

```typescript
const res = await gmail.drafts.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.compose`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.drafts.create`

**POST** `gmail/v1/users/{userId}/drafts`

Creates a new draft with the `DRAFT` label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |

**Request body**: `Draft`

**Response**: `Draft`

```typescript
const res = await gmail.drafts.create({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.addons.current.action.compose`
- `https://www.googleapis.com/auth/gmail.compose`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.drafts.send`

**POST** `gmail/v1/users/{userId}/drafts/send`

Sends the specified, existing draft to the recipients in the `To`, `Cc`, and `Bcc` headers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |

**Request body**: `Draft`

**Response**: `Message`

```typescript
const res = await gmail.drafts.send({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.addons.current.action.compose`
- `https://www.googleapis.com/auth/gmail.compose`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.drafts.update`

**PUT** `gmail/v1/users/{userId}/drafts/{id}`

Replaces a draft's content.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the draft to update. |

**Request body**: `Draft`

**Response**: `Draft`

```typescript
const res = await gmail.drafts.update({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.addons.current.action.compose`
- `https://www.googleapis.com/auth/gmail.compose`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.drafts.delete`

**DELETE** `gmail/v1/users/{userId}/drafts/{id}`

Immediately and permanently deletes the specified draft. Does not simply trash it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the draft to delete. |

```typescript
const res = await gmail.drafts.delete({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.addons.current.action.compose`
- `https://www.googleapis.com/auth/gmail.compose`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.labels.create`

**POST** `gmail/v1/users/{userId}/labels`

Creates a new label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |

**Request body**: `Label`

**Response**: `Label`

```typescript
const res = await gmail.labels.create({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.labels`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.labels.get`

**GET** `gmail/v1/users/{userId}/labels/{id}`

Gets the specified label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the label to retrieve. |

**Response**: `Label`

```typescript
const res = await gmail.labels.get({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.labels`
- `https://www.googleapis.com/auth/gmail.metadata`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.labels.update`

**PUT** `gmail/v1/users/{userId}/labels/{id}`

Updates the specified label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the label to update. |

**Request body**: `Label`

**Response**: `Label`

```typescript
const res = await gmail.labels.update({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.labels`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.labels.delete`

**DELETE** `gmail/v1/users/{userId}/labels/{id}`

Immediately and permanently deletes the specified label and removes it from any messages and threads that it is applied to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the label to delete. |

```typescript
const res = await gmail.labels.delete({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.labels`
- `https://www.googleapis.com/auth/gmail.modify`

---

### `gmail.users.labels.list`

**GET** `gmail/v1/users/{userId}/labels`

Lists all labels in the user's mailbox.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |

**Response**: `ListLabelsResponse`

```typescript
const res = await gmail.labels.list({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.labels`
- `https://www.googleapis.com/auth/gmail.metadata`
- `https://www.googleapis.com/auth/gmail.modify`
- `https://www.googleapis.com/auth/gmail.readonly`

---

### `gmail.users.labels.patch`

**PATCH** `gmail/v1/users/{userId}/labels/{id}`

Patch the specified label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | The user's email address. The special value `me` can be used to indicate the authenticated user. |
| `id` | `string` | path | Yes | The ID of the label to update. |

**Request body**: `Label`

**Response**: `Label`

```typescript
const res = await gmail.labels.patch({
  // parameters
});
```

**Required scopes:**
- `https://mail.google.com/`
- `https://www.googleapis.com/auth/gmail.labels`
- `https://www.googleapis.com/auth/gmail.modify`

---

## Schemas

### `AutoForwarding`

Auto-forwarding settings for an account.

| Property | Type | Description |
|----------|------|-------------|
| `disposition` | `string` | The state that a message should be left in after it has been forwarded. |
| `emailAddress` | `string` | Email address to which all incoming messages are forwarded. This email address must be a verified... |
| `enabled` | `boolean` | Whether all incoming mail is automatically forwarded to another address. |

### `BatchDeleteMessagesRequest`

| Property | Type | Description |
|----------|------|-------------|
| `ids` | `array<string>` | The IDs of the messages to delete. |

### `BatchModifyMessagesRequest`

| Property | Type | Description |
|----------|------|-------------|
| `addLabelIds` | `array<string>` | A list of label IDs to add to messages. |
| `ids` | `array<string>` | The IDs of the messages to modify. There is a limit of 1000 ids per request. |
| `removeLabelIds` | `array<string>` | A list of label IDs to remove from messages. |

### `ClassificationLabelFieldValue`

Field values for a classification label.

| Property | Type | Description |
|----------|------|-------------|
| `fieldId` | `string` | Required. The field ID for the Classification Label Value. Maps to the ID field of the Google Dri... |
| `selection` | `string` | Selection choice ID for the selection option. Should only be set if the field type is `SELECTION`... |

### `ClassificationLabelValue`

Classification Labels applied to the email message. Classification Labels are different from Gmail inbox labels. Only used for Google Workspace accounts. [Learn more about classification labels](https://support.google.com/a/answer/9292382).

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<ClassificationLabelFieldValue>` | Field values for the given classification label ID. |
| `labelId` | `string` | Required. The canonical or raw alphanumeric classification label ID. Maps to the ID field of the ... |

### `CseIdentity`

The client-side encryption (CSE) configuration for the email address of an authenticated user. Gmail uses CSE configurations to save drafts of client-side encrypted email messages, and to sign and send encrypted email messages. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

| Property | Type | Description |
|----------|------|-------------|
| `emailAddress` | `string` | The email address for the sending identity. The email address must be the primary email address o... |
| `primaryKeyPairId` | `string` | If a key pair is associated, the ID of the key pair, CseKeyPair. |
| `signAndEncryptKeyPairs` | `SignAndEncryptKeyPairs` | The configuration of a CSE identity that uses different key pairs for signing and encryption. |

### `CseKeyPair`

A client-side encryption S/MIME key pair, which is comprised of a public key, its certificate chain, and metadata for its paired private key. Gmail uses the key pair to complete the following tasks: - Sign outgoing client-side encrypted messages. - Save and reopen drafts of client-side encrypted messages. - Save and reopen sent messages. - Decrypt incoming or archived S/MIME messages. For administrators managing identities and keypairs for users in their organization, requests require authorization with a [service account](https://developers.google.com/identity/protocols/OAuth2ServiceAccount) that has [domain-wide delegation authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority) to impersonate users with the `https://www.googleapis.com/auth/gmail.settings.basic` scope. For users managing their own identities and keypairs, requests require [hardware key encryption](https://support.google.com/a/answer/14153163) turned on and configured.

| Property | Type | Description |
|----------|------|-------------|
| `disableTime` | `string` | Output only. If a key pair is set to `DISABLED`, the time that the key pair's state changed from ... |
| `enablementState` | `string` | Output only. The current state of the key pair. |
| `keyPairId` | `string` | Output only. The immutable ID for the client-side encryption S/MIME key pair. |
| `pem` | `string` | Output only. The public key and its certificate chain, in [PEM](https://en.wikipedia.org/wiki/Pri... |
| `pkcs7` | `string` | Input only. The public key and its certificate chain. The chain must be in [PKCS#7](https://en.wi... |
| `privateKeyMetadata` | `array<CsePrivateKeyMetadata>` | Metadata for instances of this key pair's private key. |
| `subjectEmailAddresses` | `array<string>` | Output only. The email address identities that are specified on the leaf certificate. |

### `CsePrivateKeyMetadata`

Metadata for a private key instance.

| Property | Type | Description |
|----------|------|-------------|
| `hardwareKeyMetadata` | `HardwareKeyMetadata` | Metadata for hardware keys. |
| `kaclsKeyMetadata` | `KaclsKeyMetadata` | Metadata for a private key instance managed by an external key access control list service. |
| `privateKeyMetadataId` | `string` | Output only. The immutable ID for the private key metadata instance. |

### `Delegate`

Settings for a delegate. Delegates can read, send, and delete messages, as well as view and add contacts, for the delegator's account. See "Set up mail delegation" for more information about delegates.

| Property | Type | Description |
|----------|------|-------------|
| `delegateEmail` | `string` | The email address of the delegate. |
| `verificationStatus` | `string` | Indicates whether this address has been verified and can act as a delegate for the account. Read-... |

### `DisableCseKeyPairRequest`

Requests to turn off a client-side encryption key pair.

### `Draft`

A draft email in the user's mailbox.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The immutable ID of the draft. |
| `message` | `Message` | The message content of the draft. |

### `EnableCseKeyPairRequest`

Requests to turn on a client-side encryption key pair.

### `Filter`

Resource definition for Gmail filters. Filters apply to specific messages instead of an entire email thread.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `FilterAction` | Action that the filter performs. |
| `criteria` | `FilterCriteria` | Matching criteria for the filter. |
| `id` | `string` | The server assigned ID of the filter. |

### `FilterAction`

A set of actions to perform on a message.

| Property | Type | Description |
|----------|------|-------------|
| `addLabelIds` | `array<string>` | List of labels to add to the message. |
| `forward` | `string` | Email address that the message should be forwarded to. |
| `removeLabelIds` | `array<string>` | List of labels to remove from the message. |

### `FilterCriteria`

Message matching criteria.

| Property | Type | Description |
|----------|------|-------------|
| `excludeChats` | `boolean` | Whether the response should exclude chats. |
| `from` | `string` | The sender's display name or email address. |
| `hasAttachment` | `boolean` | Whether the message has any attachment. |
| `negatedQuery` | `string` | Only return messages not matching the specified query. Supports the same query format as the Gmai... |
| `query` | `string` | Only return messages matching the specified query. Supports the same query format as the Gmail se... |
| `size` | `integer` | The size of the entire RFC822 message in bytes, including all headers and attachments. |
| `sizeComparison` | `string` | How the message size in bytes should be in relation to the size field. |
| `subject` | `string` | Case-insensitive phrase found in the message's subject. Trailing and leading whitespace are be tr... |
| `to` | `string` | The recipient's display name or email address. Includes recipients in the "to", "cc", and "bcc" h... |

### `ForwardingAddress`

Settings for a forwarding address.

| Property | Type | Description |
|----------|------|-------------|
| `forwardingEmail` | `string` | An email address to which messages can be forwarded. |
| `verificationStatus` | `string` | Indicates whether this address has been verified and is usable for forwarding. Read-only. |

### `HardwareKeyMetadata`

Metadata for hardware keys. If [hardware key encryption](https://support.google.com/a/answer/14153163) is set up for the Google Workspace organization, users can optionally store their private key on their smart card and use it to sign and decrypt email messages in Gmail by inserting their smart card into a reader attached to their Windows device.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description about the hardware key. |

### `History`

A record of a change to the user's mailbox. Each history change may affect multiple messages in multiple ways.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The mailbox sequence ID. |
| `labelsAdded` | `array<HistoryLabelAdded>` | Labels added to messages in this history record. |
| `labelsRemoved` | `array<HistoryLabelRemoved>` | Labels removed from messages in this history record. |
| `messages` | `array<Message>` | List of messages changed in this history record. The fields for specific change types, such as `m... |
| `messagesAdded` | `array<HistoryMessageAdded>` | Messages added to the mailbox in this history record. |
| `messagesDeleted` | `array<HistoryMessageDeleted>` | Messages deleted (not Trashed) from the mailbox in this history record. |

### `HistoryLabelAdded`

| Property | Type | Description |
|----------|------|-------------|
| `labelIds` | `array<string>` | Label IDs added to the message. |
| `message` | `Message` |  |

### `HistoryLabelRemoved`

| Property | Type | Description |
|----------|------|-------------|
| `labelIds` | `array<string>` | Label IDs removed from the message. |
| `message` | `Message` |  |

### `HistoryMessageAdded`

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` |  |

### `HistoryMessageDeleted`

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` |  |

### `ImapSettings`

IMAP settings for an account.

| Property | Type | Description |
|----------|------|-------------|
| `autoExpunge` | `boolean` | If this value is true, Gmail will immediately expunge a message when it is marked as deleted in I... |
| `enabled` | `boolean` | Whether IMAP is enabled for the account. |
| `expungeBehavior` | `string` | The action that will be executed on a message when it is marked as deleted and expunged from the ... |
| `maxFolderSize` | `integer` | An optional limit on the number of messages that an IMAP folder may contain. Legal values are 0, ... |

### `KaclsKeyMetadata`

Metadata for private keys managed by an external key access control list service. For details about managing key access, see [Google Workspace CSE API Reference](https://developers.google.com/workspace/cse/reference).

| Property | Type | Description |
|----------|------|-------------|
| `kaclsData` | `string` | Opaque data generated and used by the key access control list service. Maximum size: 8 KiB. |
| `kaclsUri` | `string` | The URI of the key access control list service that manages the private key. |

### `Label`

Labels are used to categorize messages and threads within the user's mailbox. The maximum number of labels supported for a user's mailbox is 10,000.

| Property | Type | Description |
|----------|------|-------------|
| `color` | `LabelColor` | The color to assign to the label. Color is only available for labels that have their `type` set t... |
| `id` | `string` | The immutable ID of the label. |
| `labelListVisibility` | `string` | The visibility of the label in the label list in the Gmail web interface. |
| `messageListVisibility` | `string` | The visibility of messages with this label in the message list in the Gmail web interface. |
| `messagesTotal` | `integer` | The total number of messages with the label. |
| `messagesUnread` | `integer` | The number of unread messages with the label. |
| `name` | `string` | The display name of the label. |
| `threadsTotal` | `integer` | The total number of threads with the label. |
| `threadsUnread` | `integer` | The number of unread threads with the label. |
| `type` | `string` | The owner type for the label. User labels are created by the user and can be modified and deleted... |

### `LabelColor`

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `string` | The background color represented as hex string #RRGGBB (ex #000000). This field is required in or... |
| `textColor` | `string` | The text color of the label, represented as hex string. This field is required in order to set th... |

### `LanguageSettings`

Language settings for an account. These settings correspond to the "Language settings" feature in the web interface.

| Property | Type | Description |
|----------|------|-------------|
| `displayLanguage` | `string` | The language to display Gmail in, formatted as an RFC 3066 Language Tag (for example `en-GB`, `fr... |

### `ListCseIdentitiesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `cseIdentities` | `array<CseIdentity>` | One page of the list of CSE identities configured for the user. |
| `nextPageToken` | `string` | Pagination token to be passed to a subsequent ListCseIdentities call in order to retrieve the nex... |

### `ListCseKeyPairsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `cseKeyPairs` | `array<CseKeyPair>` | One page of the list of CSE key pairs installed for the user. |
| `nextPageToken` | `string` | Pagination token to be passed to a subsequent ListCseKeyPairs call in order to retrieve the next ... |

### `ListDelegatesResponse`

Response for the ListDelegates method.

| Property | Type | Description |
|----------|------|-------------|
| `delegates` | `array<Delegate>` | List of the user's delegates (with any verification status). If an account doesn't have delegates... |

### `ListDraftsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `drafts` | `array<Draft>` | List of drafts. Note that the `Message` property in each `Draft` resource only contains an `id` a... |
| `nextPageToken` | `string` | Token to retrieve the next page of results in the list. |
| `resultSizeEstimate` | `integer` | Estimated total number of results. |

### `ListFiltersResponse`

Response for the ListFilters method.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `array<Filter>` | List of a user's filters. |

### `ListForwardingAddressesResponse`

Response for the ListForwardingAddresses method.

| Property | Type | Description |
|----------|------|-------------|
| `forwardingAddresses` | `array<ForwardingAddress>` | List of addresses that may be used for forwarding. |

### `ListHistoryResponse`

| Property | Type | Description |
|----------|------|-------------|
| `history` | `array<History>` | List of history records. Any `messages` contained in the response will typically only have `id` a... |
| `historyId` | `string` | The ID of the mailbox's current history record. |
| `nextPageToken` | `string` | Page token to retrieve the next page of results in the list. |

### `ListLabelsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `array<Label>` | List of labels. Note that each label resource only contains an `id`, `name`, `messageListVisibili... |

### `ListMessagesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `messages` | `array<Message>` | List of messages. Note that each message resource contains only an `id` and a `threadId`. Additio... |
| `nextPageToken` | `string` | Token to retrieve the next page of results in the list. |
| `resultSizeEstimate` | `integer` | Estimated total number of results. |

### `ListSendAsResponse`

Response for the ListSendAs method.

| Property | Type | Description |
|----------|------|-------------|
| `sendAs` | `array<SendAs>` | List of send-as aliases. |

### `ListSmimeInfoResponse`

| Property | Type | Description |
|----------|------|-------------|
| `smimeInfo` | `array<SmimeInfo>` | List of SmimeInfo. |

### `ListThreadsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Page token to retrieve the next page of results in the list. |
| `resultSizeEstimate` | `integer` | Estimated total number of results. |
| `threads` | `array<Thread>` | List of threads. Note that each thread resource does not contain a list of `messages`. The list o... |

### `Message`

An email message.

| Property | Type | Description |
|----------|------|-------------|
| `classificationLabelValues` | `array<ClassificationLabelValue>` | Classification Label values on the message. Available Classification Label schemas can be queried... |
| `historyId` | `string` | The ID of the last history record that modified this message. |
| `id` | `string` | The immutable ID of the message. |
| `internalDate` | `string` | The internal message creation timestamp (epoch ms), which determines ordering in the inbox. For n... |
| `labelIds` | `array<string>` | List of IDs of labels applied to this message. |
| `payload` | `MessagePart` | The parsed email structure in the message parts. |
| `raw` | `string` | The entire email message in an RFC 2822 formatted and base64url encoded string. Returned in `mess... |
| `sizeEstimate` | `integer` | Estimated size in bytes of the message. |
| `snippet` | `string` | A short part of the message text. |
| `threadId` | `string` | The ID of the thread the message belongs to. To add a message or draft to a thread, the following... |

### `MessagePart`

A single MIME message part.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `MessagePartBody` | The message part body for this part, which may be empty for container MIME message parts. |
| `filename` | `string` | The filename of the attachment. Only present if this message part represents an attachment. |
| `headers` | `array<MessagePartHeader>` | List of headers on this message part. For the top-level message part, representing the entire mes... |
| `mimeType` | `string` | The MIME type of the message part. |
| `partId` | `string` | The immutable ID of the message part. |
| `parts` | `array<MessagePart>` | The child MIME message parts of this part. This only applies to container MIME message parts, for... |

### `MessagePartBody`

The body of a single MIME message part.

| Property | Type | Description |
|----------|------|-------------|
| `attachmentId` | `string` | When present, contains the ID of an external attachment that can be retrieved in a separate `mess... |
| `data` | `string` | The body data of a MIME message part as a base64url encoded string. May be empty for MIME contain... |
| `size` | `integer` | Number of bytes for the message part data (encoding notwithstanding). |

### `MessagePartHeader`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the header before the `:` separator. For example, `To`. |
| `value` | `string` | The value of the header after the `:` separator. For example, `someuser@example.com`. |

### `ModifyMessageRequest`

| Property | Type | Description |
|----------|------|-------------|
| `addLabelIds` | `array<string>` | A list of IDs of labels to add to this message. You can add up to 100 labels with each update. |
| `removeLabelIds` | `array<string>` | A list IDs of labels to remove from this message. You can remove up to 100 labels with each update. |

### `ModifyThreadRequest`

| Property | Type | Description |
|----------|------|-------------|
| `addLabelIds` | `array<string>` | A list of IDs of labels to add to this thread. You can add up to 100 labels with each update. |
| `removeLabelIds` | `array<string>` | A list of IDs of labels to remove from this thread. You can remove up to 100 labels with each upd... |

### `ObliterateCseKeyPairRequest`

Request to obliterate a CSE key pair.

### `PopSettings`

POP settings for an account.

| Property | Type | Description |
|----------|------|-------------|
| `accessWindow` | `string` | The range of messages which are accessible via POP. |
| `disposition` | `string` | The action that will be executed on a message after it has been fetched via POP. |

### `Profile`

Profile for a Gmail user.

| Property | Type | Description |
|----------|------|-------------|
| `emailAddress` | `string` | The user's email address. |
| `historyId` | `string` | The ID of the mailbox's current history record. |
| `messagesTotal` | `integer` | The total number of messages in the mailbox. |
| `threadsTotal` | `integer` | The total number of threads in the mailbox. |

### `SendAs`

Settings associated with a send-as alias, which can be either the primary login address associated with the account or a custom "from" address. Send-as aliases correspond to the "Send Mail As" feature in the web interface.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | A name that appears in the "From:" header for mail sent using this alias. For custom "from" addre... |
| `isDefault` | `boolean` | Whether this address is selected as the default "From:" address in situations such as composing a... |
| `isPrimary` | `boolean` | Whether this address is the primary address used to login to the account. Every Gmail account has... |
| `replyToAddress` | `string` | An optional email address that is included in a "Reply-To:" header for mail sent using this alias... |
| `sendAsEmail` | `string` | The email address that appears in the "From:" header for mail sent using this alias. This is read... |
| `signature` | `string` | An optional HTML signature that is included in messages composed with this alias in the Gmail web... |
| `smtpMsa` | `SmtpMsa` | An optional SMTP service that will be used as an outbound relay for mail sent using this alias. I... |
| `treatAsAlias` | `boolean` | Whether Gmail should treat this address as an alias for the user's primary email address. This se... |
| `verificationStatus` | `string` | Indicates whether this address has been verified for use as a send-as alias. Read-only. This sett... |

### `SignAndEncryptKeyPairs`

The configuration of a CSE identity that uses different key pairs for signing and encryption.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionKeyPairId` | `string` | The ID of the CseKeyPair that encrypts signed outgoing mail. |
| `signingKeyPairId` | `string` | The ID of the CseKeyPair that signs outgoing mail. |

### `SmimeInfo`

An S/MIME email config.

| Property | Type | Description |
|----------|------|-------------|
| `encryptedKeyPassword` | `string` | Encrypted key password, when key is encrypted. |
| `expiration` | `string` | When the certificate expires (in milliseconds since epoch). |
| `id` | `string` | The immutable ID for the SmimeInfo. |
| `isDefault` | `boolean` | Whether this SmimeInfo is the default one for this user's send-as address. |
| `issuerCn` | `string` | The S/MIME certificate issuer's common name. |
| `pem` | `string` | PEM formatted X509 concatenated certificate string (standard base64 encoding). Format used for re... |
| `pkcs12` | `string` | PKCS#12 format containing a single private/public key pair and certificate chain. This format is ... |

### `SmtpMsa`

Configuration for communication with an SMTP service.

| Property | Type | Description |
|----------|------|-------------|
| `host` | `string` | The hostname of the SMTP service. Required. |
| `password` | `string` | The password that will be used for authentication with the SMTP service. This is a write-only fie... |
| `port` | `integer` | The port of the SMTP service. Required. |
| `securityMode` | `string` | The protocol that will be used to secure communication with the SMTP service. Required. |
| `username` | `string` | The username that will be used for authentication with the SMTP service. This is a write-only fie... |

### `Thread`

A collection of messages representing a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `historyId` | `string` | The ID of the last history record that modified this thread. |
| `id` | `string` | The unique ID of the thread. |
| `messages` | `array<Message>` | The list of messages in the thread. |
| `snippet` | `string` | A short part of the message text. |

### `VacationSettings`

Vacation auto-reply settings for an account. These settings correspond to the "Vacation responder" feature in the web interface.

| Property | Type | Description |
|----------|------|-------------|
| `enableAutoReply` | `boolean` | Flag that controls whether Gmail automatically replies to messages. |
| `endTime` | `string` | An optional end time for sending auto-replies (epoch ms). When this is specified, Gmail will auto... |
| `responseBodyHtml` | `string` | Response body in HTML format. Gmail will sanitize the HTML before storing it. If both `response_b... |
| `responseBodyPlainText` | `string` | Response body in plain text format. If both `response_body_plain_text` and `response_body_html` a... |
| `responseSubject` | `string` | Optional text to prepend to the subject line in vacation responses. In order to enable auto-repli... |
| `restrictToContacts` | `boolean` | Flag that determines whether responses are sent to recipients who are not in the user's list of c... |
| `restrictToDomain` | `boolean` | Flag that determines whether responses are sent to recipients who are outside of the user's domai... |
| `startTime` | `string` | An optional start time for sending auto-replies (epoch ms). When this is specified, Gmail will au... |

### `WatchRequest`

Set up or update a new push notification watch on this user's mailbox.

| Property | Type | Description |
|----------|------|-------------|
| `labelFilterAction` | `string` | Filtering behavior of `labelIds list` specified. This field is deprecated because it caused incor... |
| `labelFilterBehavior` | `string` | Filtering behavior of `labelIds list` specified. This field replaces `label_filter_action`; if se... |
| `labelIds` | `array<string>` | List of label_ids to restrict notifications about. By default, if unspecified, all changes are pu... |
| `topicName` | `string` | A fully qualified Google Cloud Pub/Sub API topic name to publish the events to. This topic name *... |

### `WatchResponse`

Push notification watch response.

| Property | Type | Description |
|----------|------|-------------|
| `expiration` | `string` | When Gmail will stop sending notifications for mailbox updates (epoch millis). Call `watch` again... |
| `historyId` | `string` | The ID of the mailbox's current history record. |

