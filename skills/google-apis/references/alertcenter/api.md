# Google Workspace Alert Center API - API Reference

**Version**: `v1beta1` | **Methods**: 11 | **Schemas**: 72

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `alertcenter.alerts.list` | GET | `v1beta1/alerts` | Lists the alerts. |
| `alertcenter.alerts.get` | GET | `v1beta1/alerts/{alertId}` | Gets the specified alert. Attempting to get a nonexistent alert returns `NOT_FOUND` error. |
| `alertcenter.alerts.delete` | DELETE | `v1beta1/alerts/{alertId}` | Marks the specified alert for deletion. An alert that has been marked for deletion is removed fro... |
| `alertcenter.alerts.undelete` | POST | `v1beta1/alerts/{alertId}:undelete` | Restores, or "undeletes", an alert that was marked for deletion within the past 30 days. Attempti... |
| `alertcenter.alerts.getMetadata` | GET | `v1beta1/alerts/{alertId}/metadata` | Returns the metadata of an alert. Attempting to get metadata for a non-existent alert returns `NO... |
| `alertcenter.alerts.batchDelete` | POST | `v1beta1/alerts:batchDelete` | Performs batch delete operation on alerts. |
| `alertcenter.alerts.batchUndelete` | POST | `v1beta1/alerts:batchUndelete` | Performs batch undelete operation on alerts. |
| `alertcenter.alerts.feedback.create` | POST | `v1beta1/alerts/{alertId}/feedback` | Creates new feedback for an alert. Attempting to create a feedback for a non-existent alert retur... |
| `alertcenter.alerts.feedback.list` | GET | `v1beta1/alerts/{alertId}/feedback` | Lists all the feedback for an alert. Attempting to list feedbacks for a non-existent alert return... |
| `alertcenter.getSettings` | GET | `v1beta1/settings` | Returns customer-level settings. |
| `alertcenter.updateSettings` | PATCH | `v1beta1/settings` | Updates the customer-level settings. |

### `alertcenter.alerts.list`

**GET** `v1beta1/alerts`

Lists the alerts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | query | No | Optional. The unique identifier of the Google Workspace account of the customer the alerts are associated with. The `... |
| `filter` | `string` | query | No | Optional. A query string for filtering alert results. For more details, see [Query filters](https://developers.google... |
| `orderBy` | `string` | query | No | Optional. The sort order of the list results. If not specified results may be returned in arbitrary order. You can so... |
| `pageSize` | `integer` | query | No | Optional. The requested page size. Server may return fewer items than requested. If unspecified, server picks an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. If empty, a new iteration is started. To co... |

**Response**: `ListAlertsResponse`

```typescript
const res = await alertcenter.alerts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

### `alertcenter.alerts.get`

**GET** `v1beta1/alerts/{alertId}`

Gets the specified alert. Attempting to get a nonexistent alert returns `NOT_FOUND` error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `alertId` | `string` | path | Yes | Required. The identifier of the alert to retrieve. |
| `customerId` | `string` | query | No | Optional. The unique identifier of the Google Workspace account of the customer the alert is associated with. The `cu... |

**Response**: `Alert`

```typescript
const res = await alertcenter.alerts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

### `alertcenter.alerts.delete`

**DELETE** `v1beta1/alerts/{alertId}`

Marks the specified alert for deletion. An alert that has been marked for deletion is removed from Alert Center after 30 days. Marking an alert for deletion has no effect on an alert which has already been marked for deletion. Attempting to mark a nonexistent alert for deletion results in a `NOT_FOUND` error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `alertId` | `string` | path | Yes | Required. The identifier of the alert to delete. |
| `customerId` | `string` | query | No | Optional. The unique identifier of the Google Workspace account of the customer the alert is associated with. The `cu... |

**Response**: `Empty`

```typescript
const res = await alertcenter.alerts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

### `alertcenter.alerts.undelete`

**POST** `v1beta1/alerts/{alertId}:undelete`

Restores, or "undeletes", an alert that was marked for deletion within the past 30 days. Attempting to undelete an alert which was marked for deletion over 30 days ago (which has been removed from the Alert Center database) or a nonexistent alert returns a `NOT_FOUND` error. Attempting to undelete an alert which has not been marked for deletion has no effect.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `alertId` | `string` | path | Yes | Required. The identifier of the alert to undelete. |

**Request body**: `UndeleteAlertRequest`

**Response**: `Alert`

```typescript
const res = await alertcenter.alerts.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

### `alertcenter.alerts.getMetadata`

**GET** `v1beta1/alerts/{alertId}/metadata`

Returns the metadata of an alert. Attempting to get metadata for a non-existent alert returns `NOT_FOUND` error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `alertId` | `string` | path | Yes | Required. The identifier of the alert this metadata belongs to. |
| `customerId` | `string` | query | No | Optional. The unique identifier of the Google Workspace account of the customer the alert metadata is associated with... |

**Response**: `AlertMetadata`

```typescript
const res = await alertcenter.alerts.getMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

### `alertcenter.alerts.batchDelete`

**POST** `v1beta1/alerts:batchDelete`

Performs batch delete operation on alerts.

**Request body**: `BatchDeleteAlertsRequest`

**Response**: `BatchDeleteAlertsResponse`

```typescript
const res = await alertcenter.alerts.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

### `alertcenter.alerts.batchUndelete`

**POST** `v1beta1/alerts:batchUndelete`

Performs batch undelete operation on alerts.

**Request body**: `BatchUndeleteAlertsRequest`

**Response**: `BatchUndeleteAlertsResponse`

```typescript
const res = await alertcenter.alerts.batchUndelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

### `alertcenter.alerts.feedback.create`

**POST** `v1beta1/alerts/{alertId}/feedback`

Creates new feedback for an alert. Attempting to create a feedback for a non-existent alert returns `NOT_FOUND` error. Attempting to create a feedback for an alert that is marked for deletion returns `FAILED_PRECONDITION' error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `alertId` | `string` | path | Yes | Required. The identifier of the alert this feedback belongs to. |
| `customerId` | `string` | query | No | Optional. The unique identifier of the Google Workspace account of the customer the alert is associated with. The `cu... |

**Request body**: `AlertFeedback`

**Response**: `AlertFeedback`

```typescript
const res = await alertcenter.feedback.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

### `alertcenter.alerts.feedback.list`

**GET** `v1beta1/alerts/{alertId}/feedback`

Lists all the feedback for an alert. Attempting to list feedbacks for a non-existent alert returns `NOT_FOUND` error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `alertId` | `string` | path | Yes | Required. The alert identifier. The "-" wildcard could be used to represent all alerts. |
| `customerId` | `string` | query | No | Optional. The unique identifier of the Google Workspace account of the customer the alert is associated with. The `cu... |
| `filter` | `string` | query | No | Optional. A query string for filtering alert feedback results. For more details, see [Query filters](https://develope... |

**Response**: `ListAlertFeedbackResponse`

```typescript
const res = await alertcenter.feedback.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

### `alertcenter.getSettings`

**GET** `v1beta1/settings`

Returns customer-level settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | query | No | Optional. The unique identifier of the Google Workspace account of the customer the alert settings are associated wit... |

**Response**: `Settings`

```typescript
const res = await alertcenter.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

### `alertcenter.updateSettings`

**PATCH** `v1beta1/settings`

Updates the customer-level settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `customerId` | `string` | query | No | Optional. The unique identifier of the Google Workspace account of the customer the alert settings are associated wit... |

**Request body**: `Settings`

**Response**: `Settings`

```typescript
const res = await alertcenter.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.alerts`

---

## Schemas

### `AbuseDetected`

A generic alert for abusive user activity occurring with a customer.

| Property | Type | Description |
|----------|------|-------------|
| `additionalDetails` | `EntityList` | List of abusive users/entities to be displayed in a table in the alert. |
| `product` | `string` | Product that the abuse is originating from. |
| `subAlertId` | `string` | Unique identifier of each sub alert that is onboarded. |
| `variationType` | `string` | Variation of AbuseDetected alerts. The variation_type determines the texts displayed the alert de... |

### `AccessApproval`

Alert that is triggered when Google support requests to access customer data.

| Property | Type | Description |
|----------|------|-------------|
| `justificationReason` | `array<string>` | Justification for data access based on justification enums. |
| `officeLocation` | `string` | Office location of Google staff requesting access such as "US". |
| `products` | `array<string>` | Products within scope of the Access Approvals request. |
| `requestId` | `string` | ID of the Access Approvals request. This is a helpful field when requesting support from Google. |
| `scope` | `string` | Scope of access, also known as a resource. This is further narrowed down by the product field. |
| `tickets` | `array<SupportTicket>` | Support tickets related to this Access Approvals request. Populated if there is an associated cas... |

### `AccountSuspensionDetails`

Details about why an account is receiving an account suspension warning.

| Property | Type | Description |
|----------|------|-------------|
| `abuseReason` | `string` | The reason why this account is receiving an account suspension warning. |
| `productName` | `string` | The name of the product being abused. This is restricted to only the following values: "Gmail" "G... |

### `AccountSuspensionWarning`

A warning that the customer's account is about to be suspended.

| Property | Type | Description |
|----------|------|-------------|
| `appealWindow` | `string` | The amount of time remaining to appeal an imminent suspension. After this window has elapsed, the... |
| `state` | `string` | Account suspension warning state. |
| `suspensionDetails` | `array<AccountSuspensionDetails>` | Details about why an account is being suspended. |

### `AccountWarning`

Alerts for user account warning events.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Required. The email of the user that this event belongs to. |
| `loginDetails` | `LoginDetails` | Optional. Details of the login action associated with the warning event. This is only available f... |

### `ActionInfo`

Metadata related to the action.

### `ActivityRule`

Alerts from Google Workspace Security Center rules service configured by an admin.

| Property | Type | Description |
|----------|------|-------------|
| `actionNames` | `array<string>` | List of action names associated with the rule threshold. |
| `createTime` | `string` | Rule create timestamp. |
| `description` | `string` | Description of the rule. |
| `displayName` | `string` | Alert display name. |
| `name` | `string` | Rule name. |
| `query` | `string` | Query that is used to get the data from the associated source. |
| `supersededAlerts` | `array<string>` | List of alert IDs superseded by this alert. It is used to indicate that this alert is essentially... |
| `supersedingAlert` | `string` | Alert ID superseding this alert. It is used to indicate that superseding alert is essentially ext... |
| `threshold` | `string` | Alert threshold is for example “COUNT > 5”. |
| `triggerSource` | `string` | The trigger sources for this rule. * GMAIL_EVENTS * DEVICE_EVENTS * USER_EVENTS |
| `updateTime` | `string` | The timestamp of the last update to the rule. |
| `windowSize` | `string` | Rule window size. Possible values are 1 hour or 24 hours. |

### `Alert`

An alert affecting a customer.

| Property | Type | Description |
|----------|------|-------------|
| `alertId` | `string` | Output only. The unique identifier for the alert. |
| `createTime` | `string` | Output only. The time this alert was created. |
| `customerId` | `string` | Output only. The unique identifier of the Google Workspace account of the customer. |
| `data` | `object` | Optional. The data associated with this alert, for example google.apps.alertcenter.type.DeviceCom... |
| `deleted` | `boolean` | Output only. `True` if this alert is marked for deletion. |
| `endTime` | `string` | Optional. The time the event that caused this alert ceased being active. If provided, the end tim... |
| `etag` | `string` | Optional. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous... |
| `metadata` | `AlertMetadata` | Output only. The metadata associated with this alert. |
| `securityInvestigationToolLink` | `string` | Output only. An optional [Security Investigation Tool](https://support.google.com/a/answer/757595... |
| `source` | `string` | Required. A unique identifier for the system that reported the alert. This is output only after a... |
| `startTime` | `string` | Required. The time the event that caused this alert was started or detected. |
| `type` | `string` | Required. The type of the alert. This is output only after alert is created. For a list of availa... |
| `updateTime` | `string` | Output only. The time this alert was last updated. |

### `AlertFeedback`

A customer feedback about an alert.

| Property | Type | Description |
|----------|------|-------------|
| `alertId` | `string` | Output only. The alert identifier. |
| `createTime` | `string` | Output only. The time this feedback was created. |
| `customerId` | `string` | Output only. The unique identifier of the Google Workspace account of the customer. |
| `email` | `string` | Output only. The email of the user that provided the feedback. |
| `feedbackId` | `string` | Output only. The unique identifier for the feedback. |
| `type` | `string` | Required. The type of the feedback. |

### `AlertMetadata`

An alert metadata.

| Property | Type | Description |
|----------|------|-------------|
| `alertId` | `string` | Output only. The alert identifier. |
| `assignee` | `string` | The email address of the user assigned to the alert. |
| `customerId` | `string` | Output only. The unique identifier of the Google Workspace account of the customer. |
| `etag` | `string` | Optional. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous... |
| `severity` | `string` | The severity value of the alert. Alert Center will set this field at alert creation time, default... |
| `status` | `string` | The current status of the alert. The supported values are the following: * NOT_STARTED * IN_PROGR... |
| `updateTime` | `string` | Output only. The time this metadata was last updated. |

### `ApnsCertificateExpirationInfo`

The explanation message associated with "APNS certificate is expiring soon" and "APNS certificate has expired" alerts.

| Property | Type | Description |
|----------|------|-------------|
| `appleId` | `string` | The Apple ID used to create the certificate. It may be blank if admins didn't enter it. |
| `expirationTime` | `string` | The expiration date of the APNS certificate. |
| `uid` | `string` | The UID of the certificate. |

### `AppMakerSqlSetupNotification`

Alerts from App Maker to notify admins to set up default SQL instance.

| Property | Type | Description |
|----------|------|-------------|
| `requestInfo` | `array<RequestInfo>` | List of applications with requests for default SQL set up. |

### `AppSettingsChanged`

Alerts from AppSettingsChanged bucket Rules configured by Admin which contain the following rules: - Calendar settings changed - Drive settings changed - Email settings changed - Mobile settings changed

| Property | Type | Description |
|----------|------|-------------|
| `alertDetails` | `string` | Any other associated alert details, for example, AlertConfiguration. |
| `name` | `string` | Rule name |

### `AppsOutage`

An outage incident reported for a Google Workspace service.

| Property | Type | Description |
|----------|------|-------------|
| `dashboardUri` | `string` | Link to the outage event in Google Workspace Status Dashboard |
| `incidentTrackingId` | `string` | Incident tracking ID. |
| `mergeInfo` | `MergeInfo` | Indicates new alert details under which the outage is communicated. Only populated when Status is... |
| `nextUpdateTime` | `string` | Timestamp by which the next update is expected to arrive. |
| `products` | `array<string>` | List of products impacted by the outage. |
| `resolutionTime` | `string` | Timestamp when the outage is expected to be resolved, or has confirmed resolution. Provided only ... |
| `status` | `string` | Current outage status. |

### `Attachment`

Attachment with application-specific information about an alert.

| Property | Type | Description |
|----------|------|-------------|
| `csv` | `Csv` | A CSV file attachment. |

### `BadWhitelist`

Alert for setting the domain or IP that malicious email comes from as whitelisted domain or IP in Gmail advanced settings.

| Property | Type | Description |
|----------|------|-------------|
| `domainId` | `DomainId` | The domain ID. |
| `maliciousEntity` | `MaliciousEntity` | The entity whose actions triggered a Gmail phishing alert. |
| `messages` | `array<GmailMessageInfo>` | The list of messages contained by this alert. |
| `sourceIp` | `string` | The source IP address of the malicious email, for example, `127.0.0.1`. |

### `BatchDeleteAlertsRequest`

A request to perform batch delete on alerts.

| Property | Type | Description |
|----------|------|-------------|
| `alertId` | `array<string>` | Required. The list of alert IDs to delete. |
| `customerId` | `string` | Optional. The unique identifier of the Google Workspace account of the customer the alerts are as... |

### `BatchDeleteAlertsResponse`

Response to batch delete operation on alerts.

| Property | Type | Description |
|----------|------|-------------|
| `failedAlertStatus` | `object` | The status details for each failed `alert_id`. |
| `successAlertIds` | `array<string>` | The successful list of alert IDs. |

### `BatchUndeleteAlertsRequest`

A request to perform batch undelete on alerts.

| Property | Type | Description |
|----------|------|-------------|
| `alertId` | `array<string>` | Required. The list of alert IDs to undelete. |
| `customerId` | `string` | Optional. The unique identifier of the Google Workspace account of the customer the alerts are as... |

### `BatchUndeleteAlertsResponse`

Response to batch undelete operation on alerts.

| Property | Type | Description |
|----------|------|-------------|
| `failedAlertStatus` | `object` | The status details for each failed `alert_id`. |
| `successAlertIds` | `array<string>` | The successful list of alert IDs. |

### `CloudPubsubTopic`

A reference to a Cloud Pubsub topic. To register for notifications, the owner of the topic must grant `alerts-api-push-notifications@system.gserviceaccount.com` the `projects.topics.publish` permission.

| Property | Type | Description |
|----------|------|-------------|
| `payloadFormat` | `string` | Optional. The format of the payload that would be sent. If not specified the format will be JSON. |
| `topicName` | `string` | The `name` field of a Cloud Pubsub [Topic] (https://cloud.google.com/pubsub/docs/reference/rest/v... |

### `Csv`

A representation of a CSV file attachment, as a list of column headers and a list of data rows.

| Property | Type | Description |
|----------|------|-------------|
| `dataRows` | `array<CsvRow>` | The list of data rows in a CSV file, as string arrays rather than as a single comma-separated str... |
| `headers` | `array<string>` | The list of headers for data columns in a CSV file. |

### `CsvRow`

A representation of a single data row in a CSV file.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<string>` | The data entries in a CSV file row, as a string array rather than a single comma-separated string. |

### `DeviceCompromised`

A mobile device compromised alert. Derived from audit logs.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email of the user this alert was created for. |
| `events` | `array<DeviceCompromisedSecurityDetail>` | Required. The list of security events. |

### `DeviceCompromisedSecurityDetail`

Detailed information of a single MDM device compromised event.

| Property | Type | Description |
|----------|------|-------------|
| `deviceCompromisedState` | `string` | The device compromised state. Possible values are "`Compromised`" or "`Not Compromised`". |
| `deviceId` | `string` | Required. The device ID. |
| `deviceModel` | `string` | The model of the device. |
| `deviceType` | `string` | The type of the device. |
| `iosVendorId` | `string` | Required for iOS, empty for others. |
| `resourceId` | `string` | The device resource ID. |
| `serialNumber` | `string` | The serial number of the device. |

### `DeviceManagementRule`

Alerts from Device Management Rules configured by Admin.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | Required. The device ID. |
| `deviceModel` | `string` | The model of the device. |
| `deviceType` | `string` | The type of the device. |
| `email` | `string` | The email of the user this alert was created for. |
| `id` | `string` | ID of the rule that triggered the alert |
| `iosVendorId` | `string` | Required for iOS, empty for others. |
| `ownerId` | `string` | Obfuscated ID of the owner of the device |
| `resourceId` | `string` | The device resource ID. |
| `ruleAction` | `string` | Action taken as result of the rule |
| `serialNumber` | `string` | The serial number of the device. |

### `DlpRuleViolation`

Alerts that get triggered on violations of Data Loss Prevention (DLP) rules.

| Property | Type | Description |
|----------|------|-------------|
| `ruleViolationInfo` | `RuleViolationInfo` | Details about the violated DLP rule. Admins can use the predefined detectors provided by Google C... |

### `DomainId`

Domain ID of Gmail phishing alerts.

| Property | Type | Description |
|----------|------|-------------|
| `customerPrimaryDomain` | `string` | The primary domain for the customer. |

### `DomainWideTakeoutInitiated`

A takeout operation for the entire domain was initiated by an admin. Derived from audit logs.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email of the admin who initiated the takeout. |
| `takeoutRequestId` | `string` | The takeout request ID. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Entity`

Individual entity affected by, or related to, an alert.

| Property | Type | Description |
|----------|------|-------------|
| `link` | `string` | Link to a Security Investigation Tool search based on this entity, if available. |
| `name` | `string` | Human-readable name of this entity, such as an email address, file ID, or device name. |
| `values` | `array<string>` | Extra values beyond name. The order of values should align with headers in EntityList. |

### `EntityList`

EntityList stores entities in a format that can be translated to a table in the Alert Center UI.

| Property | Type | Description |
|----------|------|-------------|
| `entities` | `array<Entity>` | List of entities affected by the alert. |
| `headers` | `array<string>` | Headers of the values in entities. If no value is defined in Entity, this field should be empty. |
| `name` | `string` | Name of the key detail used to display this entity list. |

### `GmailMessageInfo`

Details of a message in phishing spike alert.

| Property | Type | Description |
|----------|------|-------------|
| `attachmentsSha256Hash` | `array<string>` | The `SHA256` hash of email's attachment and all MIME parts. |
| `date` | `string` | The date of the event related to this email. |
| `md5HashMessageBody` | `string` | The hash of the message body text. |
| `md5HashSubject` | `string` | The MD5 Hash of email's subject (only available for reported emails). |
| `messageBodySnippet` | `string` | The snippet of the message body text (only available for reported emails). |
| `messageId` | `string` | The message ID. |
| `recipient` | `string` | The recipient of this email. |
| `sentTime` | `string` | The sent time of the email. |
| `subjectText` | `string` | The email subject text (only available for reported emails). |

### `GoogleOperations`

An incident reported by Google Operations for a Google Workspace application.

| Property | Type | Description |
|----------|------|-------------|
| `affectedUserEmails` | `array<string>` | The list of emails which correspond to the users directly affected by the incident. |
| `attachmentData` | `Attachment` | Optional. Application-specific data for an incident, provided when the Google Workspace applicati... |
| `description` | `string` | A detailed, freeform incident description. |
| `domain` | `string` | Customer domain for email template personalization. |
| `header` | `string` | A header to display above the incident message. Typically used to attach a localized notice on th... |
| `title` | `string` | A one-line incident description. |

### `ListAlertFeedbackResponse`

Response message for an alert feedback listing request.

| Property | Type | Description |
|----------|------|-------------|
| `feedback` | `array<AlertFeedback>` | The list of alert feedback. Feedback entries for each alert are ordered by creation time descending. |

### `ListAlertsResponse`

Response message for an alert listing request.

| Property | Type | Description |
|----------|------|-------------|
| `alerts` | `array<Alert>` | The list of alerts. |
| `nextPageToken` | `string` | The token for the next page. If not empty, indicates that there may be more alerts that match the... |

### `LoginDetails`

The details of the login action.

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | Optional. The human-readable IP address (for example, `11.22.33.44`) that is associated with the ... |
| `loginTime` | `string` | Optional. The successful login time that is associated with the warning event. This isn't present... |

### `MailPhishing`

Proto for all phishing alerts with common payload. Supported types are any of the following: * User reported phishing * User reported spam spike * Suspicious message reported * Phishing reclassification * Malware reclassification * Gmail potential employee spoofing

| Property | Type | Description |
|----------|------|-------------|
| `domainId` | `DomainId` | The domain ID. |
| `isInternal` | `boolean` | If `true`, the email originated from within the organization. |
| `maliciousEntity` | `MaliciousEntity` | The entity whose actions triggered a Gmail phishing alert. |
| `messages` | `array<GmailMessageInfo>` | The list of messages contained by this alert. |
| `systemActionType` | `string` | System actions on the messages. |

### `MaliciousEntity`

Entity whose actions triggered a Gmail phishing alert.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The header from display name. |
| `entity` | `User` | The actor who triggered a gmail phishing alert. |
| `fromHeader` | `string` | The sender email address. |

### `MandatoryServiceAnnouncement`

Alert Created by the MSA team for communications necessary for continued use of Google Workspace Products.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Detailed, freeform text describing the announcement |
| `title` | `string` | One line summary of the announcement |

### `MatchInfo`

Proto that contains match information from the condition part of the rule.

| Property | Type | Description |
|----------|------|-------------|
| `predefinedDetector` | `PredefinedDetectorInfo` | For matched detector predefined by Google. |
| `userDefinedDetector` | `UserDefinedDetectorInfo` | For matched detector defined by administrators. |

### `MergeInfo`

New alert tracking numbers.

| Property | Type | Description |
|----------|------|-------------|
| `newAlertId` | `string` | Optional. New alert ID. Reference the [google.apps.alertcenter.Alert] with this ID for the curren... |
| `newIncidentTrackingId` | `string` | The new tracking ID from the parent incident. |

### `Notification`

Settings for callback notifications. For more details see [Google Workspace Alert Notification](https://developers.google.com/workspace/admin/alertcenter/guides/notifications).

| Property | Type | Description |
|----------|------|-------------|
| `cloudPubsubTopic` | `CloudPubsubTopic` | A Google Cloud Pub/sub topic destination. |

### `PhishingSpike`

Alert for a spike in user reported phishing. *Warning*: This type has been deprecated. Use [MailPhishing](https://developers.google.com/workspace/admin/alertcenter/reference/rest/v1beta1/MailPhishing) instead.

| Property | Type | Description |
|----------|------|-------------|
| `domainId` | `DomainId` | The domain ID. |
| `isInternal` | `boolean` | If `true`, the email originated from within the organization. |
| `maliciousEntity` | `MaliciousEntity` | The entity whose actions triggered a Gmail phishing alert. |
| `messages` | `array<GmailMessageInfo>` | The list of messages contained by this alert. |

### `PredefinedDetectorInfo`

Detector provided by Google.

| Property | Type | Description |
|----------|------|-------------|
| `detectorName` | `string` | Name that uniquely identifies the detector. |

### `PrimaryAdminChangedEvent`

Event occurred when primary admin changed in customer's account. The event are being received from insight forwarder

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | domain in which actioned occurred |
| `previousAdminEmail` | `string` | Email of person who was the primary admin before the action |
| `updatedAdminEmail` | `string` | Email of person who is the primary admin after the action |

### `ReportingRule`

Alerts from Reporting Rules configured by Admin.

| Property | Type | Description |
|----------|------|-------------|
| `alertDetails` | `string` | Any other associated alert details, for example, AlertConfiguration. |
| `name` | `string` | Rule name |
| `query` | `string` | Alert Rule query Sample Query query { condition { filter { expected_application_id: 777491262838 ... |

### `RequestInfo`

Requests for one application that needs default SQL setup.

| Property | Type | Description |
|----------|------|-------------|
| `appDeveloperEmail` | `array<string>` | List of app developers who triggered notifications for above application. |
| `appKey` | `string` | Required. The application that requires the SQL setup. |
| `numberOfRequests` | `string` | Required. Number of requests sent for this application to set up default SQL instance. |

### `ResourceInfo`

Proto that contains resource information.

| Property | Type | Description |
|----------|------|-------------|
| `chatAttachmentId` | `string` | Chat attachment ID. |
| `chatMessageId` | `string` | Chat message ID. |
| `deviceId` | `string` | Id to identify a device. For example, for Android devices, this is the "Android Device Id" and fo... |
| `documentId` | `string` | Drive file ID. |
| `messageId` | `string` | RFC2822 message ID. |
| `resourceTitle` | `string` | Title of the resource, for example email subject, or document title. |

### `RuleInfo`

Proto that contains rule information.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | User provided name of the rule. |
| `resourceName` | `string` | Resource name that uniquely identifies the rule. |

### `RuleViolationInfo`

Common alert information about violated rules that are configured by Google Workspace administrators.

| Property | Type | Description |
|----------|------|-------------|
| `dataSource` | `string` | Source of the data. |
| `eventType` | `string` | Event associated with this alert after applying the rule. |
| `matchInfo` | `array<MatchInfo>` | List of matches that were found in the resource content. |
| `recipients` | `array<string>` | Resource recipients. For Drive, they are grantees that the Drive file was shared with at the time... |
| `resourceInfo` | `ResourceInfo` | Details of the resource which violated the rule. |
| `ruleInfo` | `RuleInfo` | Details of the violated rule. |
| `suppressedActionTypes` | `array<string>` | Actions suppressed due to other actions with higher priority. |
| `trigger` | `string` | Trigger of the rule. |
| `triggeredActionInfo` | `array<ActionInfo>` | Metadata related to the triggered actions. |
| `triggeredActionTypes` | `array<string>` | Actions applied as a consequence of the rule being triggered. |
| `triggeringUserEmail` | `string` | Email of the user who caused the violation. Value could be empty if not applicable, for example, ... |

### `SSOProfileCreatedEvent`

Event occurred when SSO Profile created in customer's account. The event are being received from insight forwarder

| Property | Type | Description |
|----------|------|-------------|
| `inboundSsoProfileName` | `string` | sso profile name which got created |

### `SSOProfileDeletedEvent`

Event occurred when SSO Profile deleted in customer's account. The event are being received from insight forwarder

| Property | Type | Description |
|----------|------|-------------|
| `inboundSsoProfileName` | `string` | sso profile name which got deleted |

### `SSOProfileUpdatedEvent`

Event occurred when SSO Profile updated in customer's account. The event are being received from insight forwarder

| Property | Type | Description |
|----------|------|-------------|
| `inboundSsoProfileChanges` | `string` | changes made to sso profile |
| `inboundSsoProfileName` | `string` | sso profile name which got updated |

### `SensitiveAdminAction`

Alert that is triggered when Sensitive Admin Action occur in customer account.

| Property | Type | Description |
|----------|------|-------------|
| `actorEmail` | `string` | Email of person who performed the action |
| `eventTime` | `string` | The time at which event occurred |
| `primaryAdminChangedEvent` | `PrimaryAdminChangedEvent` | Event occurred when primary admin changed in customer's account |
| `ssoProfileCreatedEvent` | `SSOProfileCreatedEvent` | Event occurred when SSO Profile created in customer's account |
| `ssoProfileDeletedEvent` | `SSOProfileDeletedEvent` | Event occurred when SSO Profile deleted in customer's account |
| `ssoProfileUpdatedEvent` | `SSOProfileUpdatedEvent` | Event occurred when SSO Profile updated in customer's account |
| `superAdminPasswordResetEvent` | `SuperAdminPasswordResetEvent` | Event occurred when password was reset for super admin in customer's account |

### `Settings`

Customer-level settings.

| Property | Type | Description |
|----------|------|-------------|
| `notifications` | `array<Notification>` | The list of notifications. |

### `StateSponsoredAttack`

A state-sponsored attack alert. Derived from audit logs.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email of the user this incident was created for. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SuperAdminPasswordResetEvent`

Event occurred when password was reset for super admin in customer's account. The event are being received from insight forwarder

| Property | Type | Description |
|----------|------|-------------|
| `userEmail` | `string` | email of person whose password was reset |

### `SupportTicket`

Support ticket related to Access Approvals request

| Property | Type | Description |
|----------|------|-------------|
| `ticketId` | `string` | Support ticket ID |
| `ticketUrl` | `string` | Link to support ticket |

### `SuspiciousActivity`

A mobile suspicious activity alert. Derived from audit logs.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email of the user this alert was created for. |
| `events` | `array<SuspiciousActivitySecurityDetail>` | Required. The list of security events. |

### `SuspiciousActivitySecurityDetail`

Detailed information of a single MDM suspicious activity event.

| Property | Type | Description |
|----------|------|-------------|
| `deviceId` | `string` | Required. The device ID. |
| `deviceModel` | `string` | The model of the device. |
| `deviceProperty` | `string` | The device property which was changed. |
| `deviceType` | `string` | The type of the device. |
| `iosVendorId` | `string` | Required for iOS, empty for others. |
| `newValue` | `string` | The new value of the device property after the change. |
| `oldValue` | `string` | The old value of the device property before the change. |
| `resourceId` | `string` | The device resource ID. |
| `serialNumber` | `string` | The serial number of the device. |

### `TransferError`

Details for an invalid transfer or forward.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | User's email address. This may be unavailable if the entity was deleted. |
| `entityType` | `string` | Type of entity being transferred to. For ring group members, this should always be USER. |
| `id` | `string` | Ring group or auto attendant ID. Not set for users. |
| `invalidReason` | `string` | Reason for the error. |
| `name` | `string` | User's full name, or the ring group / auto attendant name. This may be unavailable if the entity ... |

### `TransferMisconfiguration`

Error related to transferring or forwarding a phone call.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<TransferError>` | Details for each invalid transfer or forward. |

### `UndeleteAlertRequest`

A request to undelete a specific alert that was marked for deletion.

| Property | Type | Description |
|----------|------|-------------|
| `customerId` | `string` | Optional. The unique identifier of the Google Workspace account of the customer the alert is asso... |

### `User`

A user.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Display name of the user. |
| `emailAddress` | `string` | Email address of the user. |

### `UserChanges`

Alerts from UserChanges bucket Rules for predefined rules which contain the following rules: - Suspended user made active - New user added - User suspended (by admin) - User granted admin privileges - User admin privileges revoked - User deleted - Users password changed

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Rule name |

### `UserDefinedDetectorInfo`

Detector defined by administrators.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Display name of the detector. |
| `resourceName` | `string` | Resource name that uniquely identifies the detector. |

### `VaultAcceleratedDeletion`

Alert that is triggered when a Vault accelerated deletion request is created or canceled.

| Property | Type | Description |
|----------|------|-------------|
| `actionType` | `string` | The action can be one of create and cancel |
| `appType` | `string` | Currentlty only Gmail is supported as app type |
| `createTime` | `string` | The UTC timestamp of when the AD request was created |
| `deletionRequestId` | `string` | Accelerated deletion request ID intended to be used to construct the Vault UI link to the AD request |
| `matterId` | `string` | Matter ID of the accelerated deletion request intended to be used to construct the Vault UI link ... |

### `VoiceMisconfiguration`

An alert triggered when Google Voice configuration becomes invalid, generally due to an external entity being modified or deleted.

| Property | Type | Description |
|----------|------|-------------|
| `entityName` | `string` | Name of the entity whose configuration is now invalid. |
| `entityType` | `string` | Type of the entity whose configuration is now invalid. |
| `fixUri` | `string` | Link that the admin can follow to fix the issue. |
| `membersMisconfiguration` | `TransferMisconfiguration` | Issue(s) with members of a ring group. |
| `transferMisconfiguration` | `TransferMisconfiguration` | Issue(s) with transferring or forwarding to an external entity. |
| `voicemailMisconfiguration` | `VoicemailMisconfiguration` | Issue(s) with sending to voicemail. |

### `VoicemailMisconfiguration`

Issue(s) with sending to voicemail.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<VoicemailRecipientError>` | Issue(s) with voicemail recipients. |

### `VoicemailRecipientError`

Issue(s) with a voicemail recipient.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Email address of the invalid recipient. This may be unavailable if the recipient was deleted. |
| `invalidReason` | `string` | Reason for the error. |

