# Groups Settings API - API Reference

**Version**: `v1` | **Methods**: 3 | **Schemas**: 1

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `groupsSettings.groups.get` | GET | `{groupUniqueId}` | Gets one resource by id. |
| `groupsSettings.groups.update` | PUT | `{groupUniqueId}` | Updates an existing resource. |
| `groupsSettings.groups.patch` | PATCH | `{groupUniqueId}` | Updates an existing resource. This method supports patch semantics. |

### `groupsSettings.groups.get`

**GET** `{groupUniqueId}`

Gets one resource by id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groupUniqueId` | `string` | path | Yes | The group's email address. |

**Response**: `Groups`

```typescript
const res = await groupssettings.groups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.groups.settings`

---

### `groupsSettings.groups.update`

**PUT** `{groupUniqueId}`

Updates an existing resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groupUniqueId` | `string` | path | Yes | The group's email address. |

**Request body**: `Groups`

**Response**: `Groups`

```typescript
const res = await groupssettings.groups.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.groups.settings`

---

### `groupsSettings.groups.patch`

**PATCH** `{groupUniqueId}`

Updates an existing resource. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groupUniqueId` | `string` | path | Yes | The group's email address. |

**Request body**: `Groups`

**Response**: `Groups`

```typescript
const res = await groupssettings.groups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.groups.settings`

---

## Schemas

### `Groups`

JSON template for Group resource

| Property | Type | Description |
|----------|------|-------------|
| `allowExternalMembers` | `string` | Identifies whether members external to your organization can join the group. Possible values are:... |
| `allowGoogleCommunication` | `string` | Deprecated. Allows Google to contact administrator of the group.   - true: Allow Google to contac... |
| `allowWebPosting` | `string` | Allows posting from web. Possible values are:   - true: Allows any member to post to the group fo... |
| `archiveOnly` | `string` | Allows the group to be archived only. Possible values are:   - true: Group is archived and the gr... |
| `customFooterText` | `string` | Set the content of custom footer text. The maximum number of characters is 1,000. |
| `customReplyTo` | `string` | An email address used when replying to a message if the replyTo property is set to REPLY_TO_CUSTO... |
| `customRolesEnabledForSettingsToBeMerged` | `string` | Specifies whether the group has a custom role that's included in one of the settings being merged... |
| `defaultMessageDenyNotificationText` | `string` | When a message is rejected, this is text for the rejection notification sent to the message's aut... |
| `default_sender` | `string` | Default sender for members who can post messages as the group. Possible values are: - `DEFAULT_SE... |
| `description` | `string` | Description of the group. This property value may be an empty string if no group description has ... |
| `email` | `string` | The group's email address. This property can be updated using the Directory API. Note: Only a gro... |
| `enableCollaborativeInbox` | `string` | Specifies whether a collaborative inbox will remain turned on for the group. Possible values are:... |
| `favoriteRepliesOnTop` | `string` | Indicates if favorite replies should be displayed above other replies.   - true: Favorite replies... |
| `includeCustomFooter` | `string` | Whether to include custom footer. Possible values are:   - true  - false |
| `includeInGlobalAddressList` | `string` | Enables the group to be included in the Global Address List. For more information, see the help c... |
| `isArchived` | `string` | Allows the Group contents to be archived. Possible values are:   - true: Archive messages sent to... |
| `kind` | `string` | The type of the resource. It is always groupsSettings#groups. |
| `maxMessageBytes` | `integer` | Deprecated. The maximum size of a message is 25Mb. |
| `membersCanPostAsTheGroup` | `string` | Enables members to post messages as the group. Possible values are:   - true: Group member can po... |
| `messageDisplayFont` | `string` | Deprecated. The default message display font always has a value of "DEFAULT_FONT". |
| `messageModerationLevel` | `string` | Moderation level of incoming messages. Possible values are:   - MODERATE_ALL_MESSAGES: All messag... |
| `name` | `string` | Name of the group, which has a maximum size of 75 characters. |
| `primaryLanguage` | `string` | The primary language for group. For a group's primary language use the language tags from the G S... |
| `replyTo` | `string` | Specifies who receives the default reply. Possible values are:   - REPLY_TO_CUSTOM: For replies t... |
| `sendMessageDenyNotification` | `string` | Allows a member to be notified if the member's message to the group is denied by the group owner.... |
| `showInGroupDirectory` | `string` | Deprecated. This is merged into the new whoCanDiscoverGroup setting. Allows the group to be visib... |
| `spamModerationLevel` | `string` | Specifies moderation levels for messages detected as spam. Possible values are:   - ALLOW: Post t... |
| `whoCanAdd` | `string` | Deprecated. This is merged into the new whoCanModerateMembers setting. Permissions to add members... |
| `whoCanAddReferences` | `string` | Deprecated. This functionality is no longer supported in the Google Groups UI. The value is alway... |
| `whoCanApproveMembers` | `string` | Specifies who can approve members who ask to join groups. This permission will be deprecated once... |
| `whoCanApproveMessages` | `string` | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can approve ... |
| `whoCanAssignTopics` | `string` | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to assign topics ... |
| `whoCanAssistContent` | `string` | Specifies who can moderate metadata. Possible values are:   - ALL_MEMBERS  - OWNERS_AND_MANAGERS ... |
| `whoCanBanUsers` | `string` | Specifies who can deny membership to users. This permission will be deprecated once it is merged ... |
| `whoCanContactOwner` | `string` | Permission to contact owner of the group via web UI. Possible values are:   - ALL_IN_DOMAIN_CAN_C... |
| `whoCanDeleteAnyPost` | `string` | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can delete r... |
| `whoCanDeleteTopics` | `string` | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can delete t... |
| `whoCanDiscoverGroup` | `string` | Specifies the set of users for whom this group is discoverable. Possible values are:   - ANYONE_C... |
| `whoCanEnterFreeFormTags` | `string` | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to enter free for... |
| `whoCanHideAbuse` | `string` | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can hide pos... |
| `whoCanInvite` | `string` | Deprecated. This is merged into the new whoCanModerateMembers setting. Permissions to invite new ... |
| `whoCanJoin` | `string` | Permission to join group. Possible values are:   - ANYONE_CAN_JOIN: Any Internet user who is outs... |
| `whoCanLeaveGroup` | `string` | Permission to leave the group. Possible values are:   - ALL_MANAGERS_CAN_LEAVE  - ALL_MEMBERS_CAN... |
| `whoCanLockTopics` | `string` | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can prevent ... |
| `whoCanMakeTopicsSticky` | `string` | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can make top... |
| `whoCanMarkDuplicate` | `string` | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark a topic a... |
| `whoCanMarkFavoriteReplyOnAnyTopic` | `string` | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark any other... |
| `whoCanMarkFavoriteReplyOnOwnTopic` | `string` | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark a post fo... |
| `whoCanMarkNoResponseNeeded` | `string` | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to mark a topic a... |
| `whoCanModerateContent` | `string` | Specifies who can moderate content. Possible values are:   - ALL_MEMBERS  - OWNERS_AND_MANAGERS  ... |
| `whoCanModerateMembers` | `string` | Specifies who can manage members. Possible values are:   - ALL_MEMBERS  - OWNERS_AND_MANAGERS  - ... |
| `whoCanModifyMembers` | `string` | Deprecated. This is merged into the new whoCanModerateMembers setting. Specifies who can change g... |
| `whoCanModifyTagsAndCategories` | `string` | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to change tags an... |
| `whoCanMoveTopicsIn` | `string` | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can move top... |
| `whoCanMoveTopicsOut` | `string` | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can move top... |
| `whoCanPostAnnouncements` | `string` | Deprecated. This is merged into the new whoCanModerateContent setting. Specifies who can post ann... |
| `whoCanPostMessage` | `string` | Permissions to post messages. Possible values are:   - NONE_CAN_POST: The group is disabled and a... |
| `whoCanTakeTopics` | `string` | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to take topics in... |
| `whoCanUnassignTopic` | `string` | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to unassign any t... |
| `whoCanUnmarkFavoriteReplyOnAnyTopic` | `string` | Deprecated. This is merged into the new whoCanAssistContent setting. Permission to unmark any pos... |
| `whoCanViewGroup` | `string` | Permissions to view group messages. Possible values are:   - ANYONE_CAN_VIEW: Any Internet user c... |
| `whoCanViewMembership` | `string` | Permissions to view membership. Possible values are:   - ALL_IN_DOMAIN_CAN_VIEW: Anyone in the ac... |

