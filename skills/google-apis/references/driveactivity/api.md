# Drive Activity API - API Reference

**Version**: `v2` | **Methods**: 1 | **Schemas**: 66

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `driveactivity.activity.query` | POST | `v2/activity:query` | Query past activity in Google Drive. |

### `driveactivity.activity.query`

**POST** `v2/activity:query`

Query past activity in Google Drive.

**Request body**: `QueryDriveActivityRequest`

**Response**: `QueryDriveActivityResponse`

```typescript
const res = await driveactivity.activity.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/drive.activity`
- `https://www.googleapis.com/auth/drive.activity.readonly`

---

## Schemas

### `Action`

Information about the action.

| Property | Type | Description |
|----------|------|-------------|
| `actor` | `Actor` | The actor responsible for this action (or empty if all actors are responsible). |
| `detail` | `ActionDetail` | The type and detailed information about the action. |
| `target` | `Target` | The target this action affects (or empty if affecting all targets). This represents the state of ... |
| `timeRange` | `TimeRange` | The action occurred over this time range. |
| `timestamp` | `string` | The action occurred at this specific time. |

### `ActionDetail`

Data describing the type and additional information of an action.

| Property | Type | Description |
|----------|------|-------------|
| `appliedLabelChange` | `AppliedLabelChange` | Label was changed. |
| `comment` | `Comment` | A change about comments was made. |
| `create` | `Create` | An object was created. |
| `delete` | `Delete` | An object was deleted. |
| `dlpChange` | `DataLeakPreventionChange` | A change happened in data leak prevention status. |
| `edit` | `Edit` | An object was edited. |
| `move` | `Move` | An object was moved. |
| `permissionChange` | `PermissionChange` | The permission on an object was changed. |
| `reference` | `ApplicationReference` | An object was referenced in an application outside of Drive/Docs. |
| `rename` | `Rename` | An object was renamed. |
| `restore` | `Restore` | A deleted object was restored. |
| `settingsChange` | `SettingsChange` | Settings were changed. |

### `Actor`

The actor of a Drive activity.

| Property | Type | Description |
|----------|------|-------------|
| `administrator` | `Administrator` | An administrator. |
| `anonymous` | `AnonymousUser` | An anonymous user. |
| `impersonation` | `Impersonation` | An account acting on behalf of another. |
| `system` | `SystemEvent` | A non-user actor (i.e. system triggered). |
| `user` | `User` | An end user. |

### `Administrator`

Empty message representing an administrator.

### `AnonymousUser`

Empty message representing an anonymous user or indicating the authenticated user should be anonymized.

### `Anyone`

Represents any user (including a logged out user).

### `ApplicationReference`

Activity in applications other than Drive.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The reference type corresponding to this event. |

### `AppliedLabelChange`

Label changes that were made on the Target.

| Property | Type | Description |
|----------|------|-------------|
| `changes` | `array<AppliedLabelChangeDetail>` | Changes that were made to the Label on the Target. |

### `AppliedLabelChangeDetail`

A change made to a Label on the Target.

| Property | Type | Description |
|----------|------|-------------|
| `fieldChanges` | `array<FieldValueChange>` | Field Changes. Only present if `types` contains `LABEL_FIELD_VALUE_CHANGED`. |
| `label` | `string` | The Label name representing the Label that changed. This name always contains the revision of the... |
| `title` | `string` | The human-readable title of the label that changed. |
| `types` | `array<string>` | The types of changes made to the Label on the Target. |

### `Assignment`

A comment with an assignment.

| Property | Type | Description |
|----------|------|-------------|
| `assignedUser` | `User` | The user to whom the comment was assigned. |
| `subtype` | `string` | The sub-type of this event. |

### `Comment`

A change about comments on an object.

| Property | Type | Description |
|----------|------|-------------|
| `assignment` | `Assignment` | A change on an assignment. |
| `mentionedUsers` | `array<User>` | Users who are mentioned in this comment. |
| `post` | `Post` | A change on a regular posted comment. |
| `suggestion` | `Suggestion` | A change on a suggestion. |

### `ConsolidationStrategy`

How the individual activities are consolidated. If a set of activities is related they can be consolidated into one combined activity, such as one actor performing the same action on multiple targets, or multiple actors performing the same action on a single target. The strategy defines the rules for which activities are related.

| Property | Type | Description |
|----------|------|-------------|
| `legacy` | `Legacy` | The individual activities are consolidated using the legacy strategy. |
| `none` | `NoConsolidation` | The individual activities are not consolidated. |

### `Copy`

An object was created by copying an existing object.

| Property | Type | Description |
|----------|------|-------------|
| `originalObject` | `TargetReference` | The original object. |

### `Create`

An object was created.

| Property | Type | Description |
|----------|------|-------------|
| `copy` | `Copy` | If present, indicates the object was created by copying an existing Drive object. |
| `new` | `New` | If present, indicates the object was newly created (e.g. as a blank document), not derived from a... |
| `upload` | `Upload` | If present, indicates the object originated externally and was uploaded to Drive. |

### `DataLeakPreventionChange`

A change in the object's data leak prevention status.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of Data Leak Prevention (DLP) change. |

### `Date`

Wrapper for Date Field value.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Date value. |

### `Delete`

An object was deleted.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of delete action taken. |

### `DeletedUser`

A user whose account has since been deleted.

### `Domain`

Information about a domain.

| Property | Type | Description |
|----------|------|-------------|
| `legacyId` | `string` | An opaque string used to identify this domain. |
| `name` | `string` | The name of the domain, e.g. `google.com`. |

### `Drive`

Information about a shared drive.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the shared drive. The format is `COLLECTION_ID/DRIVE_ID`. Clients should not... |
| `root` | `DriveItem` | The root of this shared drive. |
| `title` | `string` | The title of the shared drive. |

### `DriveActivity`

A single Drive activity comprising one or more Actions by one or more Actors on one or more Targets. Some Action groupings occur spontaneously, such as moving an item into a shared folder triggering a permission change. Other groupings of related Actions, such as multiple Actors editing one item or moving multiple files into a new folder, are controlled by the selection of a ConsolidationStrategy in the QueryDriveActivityRequest.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<Action>` | Details on all actions in this activity. |
| `actors` | `array<Actor>` | All actor(s) responsible for the activity. |
| `primaryActionDetail` | `ActionDetail` | Key information about the primary action for this activity. This is either representative, or the... |
| `targets` | `array<Target>` | All Google Drive objects this activity is about (e.g. file, folder, drive). This represents the s... |
| `timeRange` | `TimeRange` | The activity occurred over this time range. |
| `timestamp` | `string` | The activity occurred at this specific time. |

### `DriveFile`

A Drive item which is a file.

### `DriveFolder`

A Drive item which is a folder.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of Drive folder. |

### `DriveItem`

A Drive item, such as a file or folder.

| Property | Type | Description |
|----------|------|-------------|
| `driveFile` | `DriveFile` | The Drive item is a file. |
| `driveFolder` | `DriveFolder` | The Drive item is a folder. Includes information about the type of folder. |
| `file` | `File` | This field is deprecated; please use the `driveFile` field instead. |
| `folder` | `Folder` | This field is deprecated; please use the `driveFolder` field instead. |
| `mimeType` | `string` | The MIME type of the Drive item. See https://developers.google.com/workspace/drive/v3/web/mime-ty... |
| `name` | `string` | The target Drive item. The format is `items/ITEM_ID`. |
| `owner` | `Owner` | Information about the owner of this Drive item. |
| `title` | `string` | The title of the Drive item. |

### `DriveItemReference`

A lightweight reference to a Drive item, such as a file or folder.

| Property | Type | Description |
|----------|------|-------------|
| `driveFile` | `DriveFile` | The Drive item is a file. |
| `driveFolder` | `DriveFolder` | The Drive item is a folder. Includes information about the type of folder. |
| `file` | `File` | This field is deprecated; please use the `driveFile` field instead. |
| `folder` | `Folder` | This field is deprecated; please use the `driveFolder` field instead. |
| `name` | `string` | The target Drive item. The format is `items/ITEM_ID`. |
| `title` | `string` | The title of the Drive item. |

### `DriveReference`

A lightweight reference to a shared drive.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the shared drive. The format is `COLLECTION_ID/DRIVE_ID`. Clients should not... |
| `title` | `string` | The title of the shared drive. |

### `Edit`

An empty message indicating an object was edited.

### `FieldValue`

Contains a value of a Field.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | Date Field value. |
| `integer` | `Integer` | Integer Field value. |
| `selection` | `Selection` | Selection Field value. |
| `selectionList` | `SelectionList` | Selection List Field value. |
| `text` | `Text` | Text Field value. |
| `textList` | `TextList` | Text List Field value. |
| `user` | `SingleUser` | User Field value. |
| `userList` | `UserList` | User List Field value. |

### `FieldValueChange`

Change to a Field value.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable display name for this field. |
| `fieldId` | `string` | The ID of this field. Field IDs are unique within a Label. |
| `newValue` | `FieldValue` | The value that is now set on the field. If not present, the field was cleared. At least one of {o... |
| `oldValue` | `FieldValue` | The value that was previously set on the field. If not present, the field was newly set. At least... |

### `File`

This item is deprecated; please see `DriveFile` instead.

### `FileComment`

A comment on a file.

| Property | Type | Description |
|----------|------|-------------|
| `legacyCommentId` | `string` | The comment in the discussion thread. This identifier is an opaque string compatible with the Dri... |
| `legacyDiscussionId` | `string` | The discussion thread to which the comment was added. This identifier is an opaque string compati... |
| `linkToDiscussion` | `string` | The link to the discussion thread containing this comment, for example, `https://docs.google.com/... |
| `parent` | `DriveItem` | The Drive item containing this comment. |

### `Folder`

This item is deprecated; please see `DriveFolder` instead.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | This field is deprecated; please see `DriveFolder.type` instead. |

### `Group`

Information about a group.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email address of the group. |
| `title` | `string` | The title of the group. |

### `Impersonation`

Information about an impersonation, where an admin acts on behalf of an end user. Information about the acting admin is not currently available.

| Property | Type | Description |
|----------|------|-------------|
| `impersonatedUser` | `User` | The impersonated user. |

### `Integer`

Wrapper for Integer Field value.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Integer value. |

### `KnownUser`

A known user.

| Property | Type | Description |
|----------|------|-------------|
| `isCurrentUser` | `boolean` | True if this is the user making the request. |
| `personName` | `string` | The identifier for this user that can be used with the People API to get more information. The fo... |

### `Legacy`

A strategy that consolidates activities using the grouping rules from the legacy V1 Activity API. Similar actions occurring within a window of time can be grouped across multiple targets (such as moving a set of files at once) or multiple actors (such as several users editing the same item). Grouping rules for this strategy are specific to each type of action.

### `Move`

An object was moved.

| Property | Type | Description |
|----------|------|-------------|
| `addedParents` | `array<TargetReference>` | The added parent object(s). |
| `removedParents` | `array<TargetReference>` | The removed parent object(s). |

### `New`

An object was created from scratch.

### `NoConsolidation`

A strategy that does no consolidation of individual activities.

### `Owner`

Information about the owner of a Drive item.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `Domain` | The domain of the Drive item owner. |
| `drive` | `DriveReference` | The drive that owns the item. |
| `teamDrive` | `TeamDriveReference` | This field is deprecated; please use the `drive` field instead. |
| `user` | `User` | The user that owns the Drive item. |

### `Permission`

The permission setting of an object.

| Property | Type | Description |
|----------|------|-------------|
| `allowDiscovery` | `boolean` | If true, the item can be discovered (e.g. in the user's "Shared with me" collection) without need... |
| `anyone` | `Anyone` | If set, this permission applies to anyone, even logged out users. |
| `domain` | `Domain` | The domain to whom this permission applies. |
| `group` | `Group` | The group to whom this permission applies. |
| `role` | `string` | Indicates the [Google Drive permissions role](https://developers.google.com/workspace/drive/web/m... |
| `user` | `User` | The user to whom this permission applies. |

### `PermissionChange`

A change of the permission setting on an item.

| Property | Type | Description |
|----------|------|-------------|
| `addedPermissions` | `array<Permission>` | The set of permissions added by this change. |
| `removedPermissions` | `array<Permission>` | The set of permissions removed by this change. |

### `Post`

A regular posted comment.

| Property | Type | Description |
|----------|------|-------------|
| `subtype` | `string` | The sub-type of this event. |

### `QueryDriveActivityRequest`

The request message for querying Drive activity.

| Property | Type | Description |
|----------|------|-------------|
| `ancestorName` | `string` | Return activities for this Drive folder, plus all children and descendants. The format is `items/... |
| `consolidationStrategy` | `ConsolidationStrategy` | Details on how to consolidate related actions that make up the activity. If not set, then related... |
| `filter` | `string` | The filtering for items returned from this query request. The format of the filter string is a se... |
| `itemName` | `string` | Return activities for this Drive item. The format is `items/ITEM_ID`. |
| `pageSize` | `integer` | The minimum number of activities desired in the response; the server attempts to return at least ... |
| `pageToken` | `string` | The token identifies which page of results to return. Set this to the next_page_token value retur... |

### `QueryDriveActivityResponse`

Response message for querying Drive activity.

| Property | Type | Description |
|----------|------|-------------|
| `activities` | `array<DriveActivity>` | List of activity requested. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `Rename`

An object was renamed.

| Property | Type | Description |
|----------|------|-------------|
| `newTitle` | `string` | The new title of the drive object. |
| `oldTitle` | `string` | The previous title of the drive object. |

### `Restore`

A deleted object was restored.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of restore action taken. |

### `RestrictionChange`

Information about restriction policy changes to a feature.

| Property | Type | Description |
|----------|------|-------------|
| `feature` | `string` | The feature which had a change in restriction policy. |
| `newRestriction` | `string` | The restriction in place after the change. |

### `Selection`

Wrapper for Selection Field value as combined value/display_name pair for selected choice.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Selection value as human-readable display string. |
| `value` | `string` | Selection value as Field Choice ID. |

### `SelectionList`

Wrapper for SelectionList Field value.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<Selection>` | Selection values. |

### `SettingsChange`

Information about settings changes.

| Property | Type | Description |
|----------|------|-------------|
| `restrictionChanges` | `array<RestrictionChange>` | The set of changes made to restrictions. |

### `SingleUser`

Wrapper for User Field value.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | User value as email. |

### `Suggestion`

A suggestion.

| Property | Type | Description |
|----------|------|-------------|
| `subtype` | `string` | The sub-type of this event. |

### `SystemEvent`

Event triggered by system operations instead of end users.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of the system event that may triggered activity. |

### `Target`

Information about the target of activity. For more information on how activity history is shared with users, see [Activity history visibility](https://developers.google.com/workspace/drive/activity/v2#activityhistory).

| Property | Type | Description |
|----------|------|-------------|
| `drive` | `Drive` | The target is a shared drive. |
| `driveItem` | `DriveItem` | The target is a Drive item. |
| `fileComment` | `FileComment` | The target is a comment on a Drive file. |
| `teamDrive` | `TeamDrive` | This field is deprecated; please use the `drive` field instead. |

### `TargetReference`

A lightweight reference to the target of activity.

| Property | Type | Description |
|----------|------|-------------|
| `drive` | `DriveReference` | The target is a shared drive. |
| `driveItem` | `DriveItemReference` | The target is a Drive item. |
| `teamDrive` | `TeamDriveReference` | This field is deprecated; please use the `drive` field instead. |

### `TeamDrive`

This item is deprecated; please see `Drive` instead.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | This field is deprecated; please see `Drive.name` instead. |
| `root` | `DriveItem` | This field is deprecated; please see `Drive.root` instead. |
| `title` | `string` | This field is deprecated; please see `Drive.title` instead. |

### `TeamDriveReference`

This item is deprecated; please see `DriveReference` instead.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | This field is deprecated; please see `DriveReference.name` instead. |
| `title` | `string` | This field is deprecated; please see `DriveReference.title` instead. |

### `Text`

Wrapper for Text Field value.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Value of Text Field. |

### `TextList`

Wrapper for Text List Field value.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<Text>` | Text values. |

### `TimeRange`

Information about time ranges.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end of the time range. |
| `startTime` | `string` | The start of the time range. |

### `UnknownUser`

A user about whom nothing is currently known.

### `Upload`

An object was uploaded into Drive.

### `User`

Information about an end user.

| Property | Type | Description |
|----------|------|-------------|
| `deletedUser` | `DeletedUser` | A user whose account has since been deleted. |
| `knownUser` | `KnownUser` | A known user. |
| `unknownUser` | `UnknownUser` | A user about whom nothing is currently known. |

### `UserList`

Wrapper for UserList Field value.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<SingleUser>` | User values. |

