# Google Classroom API - API Reference

**Version**: `v1` | **Methods**: 104 | **Schemas**: 84

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `classroom.courses.create` | POST | `v1/courses` | Creates a course. The user specified in `ownerId` is the owner of the created course and added as... |
| `classroom.courses.get` | GET | `v1/courses/{id}` | Returns a course. This method returns the following error codes: * `PERMISSION_DENIED` if the req... |
| `classroom.courses.update` | PUT | `v1/courses/{id}` | Updates a course. This method returns the following error codes: * `PERMISSION_DENIED` if the req... |
| `classroom.courses.patch` | PATCH | `v1/courses/{id}` | Updates one or more fields in a course. This method returns the following error codes: * `PERMISS... |
| `classroom.courses.delete` | DELETE | `v1/courses/{id}` | Deletes a course. This method returns the following error codes: * `PERMISSION_DENIED` if the req... |
| `classroom.courses.list` | GET | `v1/courses` | Returns a list of courses that the requesting user is permitted to view, restricted to those that... |
| `classroom.courses.getGradingPeriodSettings` | GET | `v1/courses/{courseId}/gradingPeriodSettings` | Returns the grading period settings in a course. This method returns the following error codes: *... |
| `classroom.courses.updateGradingPeriodSettings` | PATCH | `v1/courses/{courseId}/gradingPeriodSettings` | Updates grading period settings of a course. Individual grading periods can be added, removed, or... |
| `classroom.courses.studentGroups.create` | POST | `v1/courses/{courseId}/studentGroups` | Creates a student group for a course. This method returns the following error codes: * `PERMISSIO... |
| `classroom.courses.studentGroups.delete` | DELETE | `v1/courses/{courseId}/studentGroups/{id}` | Deletes a student group. This method returns the following error codes: * `PERMISSION_DENIED` if ... |
| `classroom.courses.studentGroups.patch` | PATCH | `v1/courses/{courseId}/studentGroups/{id}` | Updates one or more fields in a student group. This method returns the following error codes: * `... |
| `classroom.courses.studentGroups.list` | GET | `v1/courses/{courseId}/studentGroups` | Returns a list of groups in a course. This method returns the following error codes: * `NOT_FOUND... |
| `classroom.courses.studentGroups.studentGroupMembers.create` | POST | `v1/courses/{courseId}/studentGroups/{studentGroupId}/studentGroupMembers` | Creates a student group member for a student group. This method returns the following error codes... |
| `classroom.courses.studentGroups.studentGroupMembers.delete` | DELETE | `v1/courses/{courseId}/studentGroups/{studentGroupId}/studentGroupMembers/{userId}` | Deletes a student group member. This method returns the following error codes: * `PERMISSION_DENI... |
| `classroom.courses.studentGroups.studentGroupMembers.list` | GET | `v1/courses/{courseId}/studentGroups/{studentGroupId}/studentGroupMembers` | Returns a list of students in a group. This method returns the following error codes: * `NOT_FOUN... |
| `classroom.courses.aliases.create` | POST | `v1/courses/{courseId}/aliases` | Creates an alias for a course. This method returns the following error codes: * `PERMISSION_DENIE... |
| `classroom.courses.aliases.delete` | DELETE | `v1/courses/{courseId}/aliases/{alias}` | Deletes an alias of a course. This method returns the following error codes: * `PERMISSION_DENIED... |
| `classroom.courses.aliases.list` | GET | `v1/courses/{courseId}/aliases` | Returns a list of aliases for a course. This method returns the following error codes: * `PERMISS... |
| `classroom.courses.courseWork.create` | POST | `v1/courses/{courseId}/courseWork` | Creates course work. The resulting course work (and corresponding student submissions) are associ... |
| `classroom.courses.courseWork.patch` | PATCH | `v1/courses/{courseId}/courseWork/{id}` | Updates one or more fields of a course work. See google.classroom.v1.CourseWork for details of wh... |
| `classroom.courses.courseWork.delete` | DELETE | `v1/courses/{courseId}/courseWork/{id}` | Deletes a course work. This request must be made by the Developer Console project of the [OAuth c... |
| `classroom.courses.courseWork.get` | GET | `v1/courses/{courseId}/courseWork/{id}` | Returns course work. This method returns the following error codes: * `PERMISSION_DENIED` if the ... |
| `classroom.courses.courseWork.list` | GET | `v1/courses/{courseId}/courseWork` | Returns a list of course work that the requester is permitted to view. Course students may only v... |
| `classroom.courses.courseWork.modifyAssignees` | POST | `v1/courses/{courseId}/courseWork/{id}:modifyAssignees` | Modifies assignee mode and options of a coursework. Only a teacher of the course that contains th... |
| `classroom.courses.courseWork.getAddOnContext` | GET | `v1/courses/{courseId}/courseWork/{itemId}/addOnContext` | Gets metadata for Classroom add-ons in the context of a specific post. To maintain the integrity ... |
| `classroom.courses.courseWork.updateRubric` | PATCH | `v1/courses/{courseId}/courseWork/{courseWorkId}/rubric` | Updates a rubric. See google.classroom.v1.Rubric for details of which fields can be updated. Rubr... |
| `classroom.courses.courseWork.studentSubmissions.get` | GET | `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}` | Returns a student submission. * `PERMISSION_DENIED` if the requesting user is not permitted to ac... |
| `classroom.courses.courseWork.studentSubmissions.patch` | PATCH | `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}` | Updates one or more fields of a student submission. See google.classroom.v1.StudentSubmission for... |
| `classroom.courses.courseWork.studentSubmissions.list` | GET | `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions` | Returns a list of student submissions that the requester is permitted to view, factoring in the O... |
| `classroom.courses.courseWork.studentSubmissions.turnIn` | POST | `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:turnIn` | Turns in a student submission. Turning in a student submission transfers ownership of attached Dr... |
| `classroom.courses.courseWork.studentSubmissions.reclaim` | POST | `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:reclaim` | Reclaims a student submission on behalf of the student that owns it. Reclaiming a student submiss... |
| `classroom.courses.courseWork.studentSubmissions.return` | POST | `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:return` | Returns a student submission. Returning a student submission transfers ownership of attached Driv... |
| `classroom.courses.courseWork.studentSubmissions.modifyAttachments` | POST | `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:modifyAttachments` | Modifies attachments of student submission. Attachments may only be added to student submissions ... |
| `classroom.courses.courseWork.addOnAttachments.get` | GET | `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments/{attachmentId}` | Returns an add-on attachment. Requires the add-on requesting the attachment to be the original cr... |
| `classroom.courses.courseWork.addOnAttachments.list` | GET | `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments` | Returns all attachments created by an add-on under the post. Requires the add-on to have active a... |
| `classroom.courses.courseWork.addOnAttachments.create` | POST | `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments` | Creates an add-on attachment under a post. Requires the add-on to have permission to create new a... |
| `classroom.courses.courseWork.addOnAttachments.patch` | PATCH | `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments/{attachmentId}` | Updates an add-on attachment. Requires the add-on to have been the original creator of the attach... |
| `classroom.courses.courseWork.addOnAttachments.delete` | DELETE | `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments/{attachmentId}` | Deletes an add-on attachment. Requires the add-on to have been the original creator of the attach... |
| `classroom.courses.courseWork.addOnAttachments.studentSubmissions.patch` | PATCH | `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments/{attachmentId}/studentSubmissions/{submissionId}` | Updates data associated with an add-on attachment submission. Requires the add-on to have been th... |
| `classroom.courses.courseWork.addOnAttachments.studentSubmissions.get` | GET | `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments/{attachmentId}/studentSubmissions/{submissionId}` | Returns a student submission for an add-on attachment. This method returns the following error co... |
| `classroom.courses.courseWork.rubrics.patch` | PATCH | `v1/courses/{courseId}/courseWork/{courseWorkId}/rubrics/{id}` | Updates a rubric. See google.classroom.v1.Rubric for details of which fields can be updated. Rubr... |
| `classroom.courses.courseWork.rubrics.create` | POST | `v1/courses/{courseId}/courseWork/{courseWorkId}/rubrics` | Creates a rubric. The requesting user and course owner must have rubrics creation capabilities. F... |
| `classroom.courses.courseWork.rubrics.get` | GET | `v1/courses/{courseId}/courseWork/{courseWorkId}/rubrics/{id}` | Returns a rubric. This method returns the following error codes: * `PERMISSION_DENIED` for access... |
| `classroom.courses.courseWork.rubrics.list` | GET | `v1/courses/{courseId}/courseWork/{courseWorkId}/rubrics` | Returns a list of rubrics that the requester is permitted to view. This method returns the follow... |
| `classroom.courses.courseWork.rubrics.delete` | DELETE | `v1/courses/{courseId}/courseWork/{courseWorkId}/rubrics/{id}` | Deletes a rubric. The requesting user and course owner must have rubrics creation capabilities. F... |
| `classroom.courses.announcements.delete` | DELETE | `v1/courses/{courseId}/announcements/{id}` | Deletes an announcement. This request must be made by the Developer Console project of the [OAuth... |
| `classroom.courses.announcements.create` | POST | `v1/courses/{courseId}/announcements` | Creates an announcement. This method returns the following error codes: * `PERMISSION_DENIED` if ... |
| `classroom.courses.announcements.get` | GET | `v1/courses/{courseId}/announcements/{id}` | Returns an announcement. This method returns the following error codes: * `PERMISSION_DENIED` if ... |
| `classroom.courses.announcements.list` | GET | `v1/courses/{courseId}/announcements` | Returns a list of announcements that the requester is permitted to view. Course students may only... |
| `classroom.courses.announcements.patch` | PATCH | `v1/courses/{courseId}/announcements/{id}` | Updates one or more fields of an announcement. This method returns the following error codes: * `... |
| `classroom.courses.announcements.modifyAssignees` | POST | `v1/courses/{courseId}/announcements/{id}:modifyAssignees` | Modifies assignee mode and options of an announcement. Only a teacher of the course that contains... |
| `classroom.courses.announcements.getAddOnContext` | GET | `v1/courses/{courseId}/announcements/{itemId}/addOnContext` | Gets metadata for Classroom add-ons in the context of a specific post. To maintain the integrity ... |
| `classroom.courses.announcements.addOnAttachments.get` | GET | `v1/courses/{courseId}/announcements/{itemId}/addOnAttachments/{attachmentId}` | Returns an add-on attachment. Requires the add-on requesting the attachment to be the original cr... |
| `classroom.courses.announcements.addOnAttachments.list` | GET | `v1/courses/{courseId}/announcements/{itemId}/addOnAttachments` | Returns all attachments created by an add-on under the post. Requires the add-on to have active a... |
| `classroom.courses.announcements.addOnAttachments.create` | POST | `v1/courses/{courseId}/announcements/{itemId}/addOnAttachments` | Creates an add-on attachment under a post. Requires the add-on to have permission to create new a... |
| `classroom.courses.announcements.addOnAttachments.patch` | PATCH | `v1/courses/{courseId}/announcements/{itemId}/addOnAttachments/{attachmentId}` | Updates an add-on attachment. Requires the add-on to have been the original creator of the attach... |
| `classroom.courses.announcements.addOnAttachments.delete` | DELETE | `v1/courses/{courseId}/announcements/{itemId}/addOnAttachments/{attachmentId}` | Deletes an add-on attachment. Requires the add-on to have been the original creator of the attach... |
| `classroom.courses.courseWorkMaterials.create` | POST | `v1/courses/{courseId}/courseWorkMaterials` | Creates a course work material. This method returns the following error codes: * `PERMISSION_DENI... |
| `classroom.courses.courseWorkMaterials.get` | GET | `v1/courses/{courseId}/courseWorkMaterials/{id}` | Returns a course work material. This method returns the following error codes: * `PERMISSION_DENI... |
| `classroom.courses.courseWorkMaterials.list` | GET | `v1/courses/{courseId}/courseWorkMaterials` | Returns a list of course work material that the requester is permitted to view. Course students m... |
| `classroom.courses.courseWorkMaterials.patch` | PATCH | `v1/courses/{courseId}/courseWorkMaterials/{id}` | Updates one or more fields of a course work material. This method returns the following error cod... |
| `classroom.courses.courseWorkMaterials.delete` | DELETE | `v1/courses/{courseId}/courseWorkMaterials/{id}` | Deletes a course work material. This request must be made by the Developer Console project of the... |
| `classroom.courses.courseWorkMaterials.getAddOnContext` | GET | `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnContext` | Gets metadata for Classroom add-ons in the context of a specific post. To maintain the integrity ... |
| `classroom.courses.courseWorkMaterials.addOnAttachments.get` | GET | `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnAttachments/{attachmentId}` | Returns an add-on attachment. Requires the add-on requesting the attachment to be the original cr... |
| `classroom.courses.courseWorkMaterials.addOnAttachments.list` | GET | `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnAttachments` | Returns all attachments created by an add-on under the post. Requires the add-on to have active a... |
| `classroom.courses.courseWorkMaterials.addOnAttachments.create` | POST | `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnAttachments` | Creates an add-on attachment under a post. Requires the add-on to have permission to create new a... |
| `classroom.courses.courseWorkMaterials.addOnAttachments.patch` | PATCH | `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnAttachments/{attachmentId}` | Updates an add-on attachment. Requires the add-on to have been the original creator of the attach... |
| `classroom.courses.courseWorkMaterials.addOnAttachments.delete` | DELETE | `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnAttachments/{attachmentId}` | Deletes an add-on attachment. Requires the add-on to have been the original creator of the attach... |
| `classroom.courses.topics.create` | POST | `v1/courses/{courseId}/topics` | Creates a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requ... |
| `classroom.courses.topics.patch` | PATCH | `v1/courses/{courseId}/topics/{id}` | Updates one or more fields of a topic. This method returns the following error codes: * `PERMISSI... |
| `classroom.courses.topics.delete` | DELETE | `v1/courses/{courseId}/topics/{id}` | Deletes a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requ... |
| `classroom.courses.topics.get` | GET | `v1/courses/{courseId}/topics/{id}` | Returns a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requ... |
| `classroom.courses.topics.list` | GET | `v1/courses/{courseId}/topics` | Returns the list of topics that the requester is permitted to view. This method returns the follo... |
| `classroom.courses.posts.getAddOnContext` | GET | `v1/courses/{courseId}/posts/{postId}/addOnContext` | Gets metadata for Classroom add-ons in the context of a specific post. To maintain the integrity ... |
| `classroom.courses.posts.addOnAttachments.get` | GET | `v1/courses/{courseId}/posts/{postId}/addOnAttachments/{attachmentId}` | Returns an add-on attachment. Requires the add-on requesting the attachment to be the original cr... |
| `classroom.courses.posts.addOnAttachments.list` | GET | `v1/courses/{courseId}/posts/{postId}/addOnAttachments` | Returns all attachments created by an add-on under the post. Requires the add-on to have active a... |
| `classroom.courses.posts.addOnAttachments.create` | POST | `v1/courses/{courseId}/posts/{postId}/addOnAttachments` | Creates an add-on attachment under a post. Requires the add-on to have permission to create new a... |
| `classroom.courses.posts.addOnAttachments.patch` | PATCH | `v1/courses/{courseId}/posts/{postId}/addOnAttachments/{attachmentId}` | Updates an add-on attachment. Requires the add-on to have been the original creator of the attach... |
| `classroom.courses.posts.addOnAttachments.delete` | DELETE | `v1/courses/{courseId}/posts/{postId}/addOnAttachments/{attachmentId}` | Deletes an add-on attachment. Requires the add-on to have been the original creator of the attach... |
| `classroom.courses.posts.addOnAttachments.studentSubmissions.patch` | PATCH | `v1/courses/{courseId}/posts/{postId}/addOnAttachments/{attachmentId}/studentSubmissions/{submissionId}` | Updates data associated with an add-on attachment submission. Requires the add-on to have been th... |
| `classroom.courses.posts.addOnAttachments.studentSubmissions.get` | GET | `v1/courses/{courseId}/posts/{postId}/addOnAttachments/{attachmentId}/studentSubmissions/{submissionId}` | Returns a student submission for an add-on attachment. This method returns the following error co... |
| `classroom.courses.teachers.create` | POST | `v1/courses/{courseId}/teachers` | Creates a teacher of a course. Domain administrators are permitted to [directly add](https://deve... |
| `classroom.courses.teachers.get` | GET | `v1/courses/{courseId}/teachers/{userId}` | Returns a teacher of a course. This method returns the following error codes: * `PERMISSION_DENIE... |
| `classroom.courses.teachers.delete` | DELETE | `v1/courses/{courseId}/teachers/{userId}` | Removes the specified teacher from the specified course. This method returns the following error ... |
| `classroom.courses.teachers.list` | GET | `v1/courses/{courseId}/teachers` | Returns a list of teachers of this course that the requester is permitted to view. This method re... |
| `classroom.courses.students.create` | POST | `v1/courses/{courseId}/students` | Adds a user as a student of a course. Domain administrators are permitted to [directly add](https... |
| `classroom.courses.students.get` | GET | `v1/courses/{courseId}/students/{userId}` | Returns a student of a course. This method returns the following error codes: * `PERMISSION_DENIE... |
| `classroom.courses.students.delete` | DELETE | `v1/courses/{courseId}/students/{userId}` | Deletes a student of a course. This method returns the following error codes: * `PERMISSION_DENIE... |
| `classroom.courses.students.list` | GET | `v1/courses/{courseId}/students` | Returns a list of students of this course that the requester is permitted to view. This method re... |
| `classroom.userProfiles.get` | GET | `v1/userProfiles/{userId}` | Returns a user profile. This method returns the following error codes: * `PERMISSION_DENIED` if t... |
| `classroom.userProfiles.guardianInvitations.list` | GET | `v1/userProfiles/{studentId}/guardianInvitations` | Returns a list of guardian invitations that the requesting user is permitted to view, filtered by... |
| `classroom.userProfiles.guardianInvitations.get` | GET | `v1/userProfiles/{studentId}/guardianInvitations/{invitationId}` | Returns a specific guardian invitation. This method returns the following error codes: * `PERMISS... |
| `classroom.userProfiles.guardianInvitations.create` | POST | `v1/userProfiles/{studentId}/guardianInvitations` | Creates a guardian invitation, and sends an email to the guardian asking them to confirm that the... |
| `classroom.userProfiles.guardianInvitations.patch` | PATCH | `v1/userProfiles/{studentId}/guardianInvitations/{invitationId}` | Modifies a guardian invitation. Currently, the only valid modification is to change the `state` f... |
| `classroom.userProfiles.guardians.list` | GET | `v1/userProfiles/{studentId}/guardians` | Returns a list of guardians that the requesting user is permitted to view, restricted to those th... |
| `classroom.userProfiles.guardians.get` | GET | `v1/userProfiles/{studentId}/guardians/{guardianId}` | Returns a specific guardian. This method returns the following error codes: * `PERMISSION_DENIED`... |
| `classroom.userProfiles.guardians.delete` | DELETE | `v1/userProfiles/{studentId}/guardians/{guardianId}` | Deletes a guardian. The guardian will no longer receive guardian notifications and the guardian w... |
| `classroom.invitations.create` | POST | `v1/invitations` | Creates an invitation. Only one invitation for a user and course may exist at a time. Delete and ... |
| `classroom.invitations.get` | GET | `v1/invitations/{id}` | Returns an invitation. This method returns the following error codes: * `PERMISSION_DENIED` if th... |
| `classroom.invitations.delete` | DELETE | `v1/invitations/{id}` | Deletes an invitation. This method returns the following error codes: * `PERMISSION_DENIED` if th... |
| `classroom.invitations.list` | GET | `v1/invitations` | Returns a list of invitations that the requesting user is permitted to view, restricted to those ... |
| `classroom.invitations.accept` | POST | `v1/invitations/{id}:accept` | Accepts an invitation, removing it and adding the invited user to the teachers or students (as ap... |
| `classroom.registrations.create` | POST | `v1/registrations` | Creates a `Registration`, causing Classroom to start sending notifications from the provided `fee... |
| `classroom.registrations.delete` | DELETE | `v1/registrations/{registrationId}` | Deletes a `Registration`, causing Classroom to stop sending notifications for that `Registration`. |

### `classroom.courses.create`

**POST** `v1/courses`

Creates a course. The user specified in `ownerId` is the owner of the created course and added as a teacher. A non-admin requesting user can only create a course with themselves as the owner. Domain admins can create courses owned by any user within their domain. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create courses or for access errors. * `NOT_FOUND` if the primary teacher is not a valid user. * `FAILED_PRECONDITION` if the course owner's account is disabled or for the following request errors: * UserCannotOwnCourse * UserGroupsMembershipLimitReached * CourseTitleCannotContainUrl * `ALREADY_EXISTS` if an alias was specified in the `id` and already exists.

**Request body**: `Course`

**Response**: `Course`

```typescript
const res = await classroom.courses.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`

---

### `classroom.courses.get`

**GET** `v1/courses/{id}`

Returns a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or for access errors. * `NOT_FOUND` if no course exists with the requested ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | Identifier of the course to return. This identifier can be either the Classroom-assigned identifier or an alias. |

**Response**: `Course`

```typescript
const res = await classroom.courses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`
- `https://www.googleapis.com/auth/classroom.courses.readonly`

---

### `classroom.courses.update`

**PUT** `v1/courses/{id}`

Updates a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to modify the requested course or for access errors. * `NOT_FOUND` if no course exists with the requested ID. * `FAILED_PRECONDITION` for the following request errors: * CourseNotModifiable * CourseTitleCannotContainUrl

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | Identifier of the course to update. This identifier can be either the Classroom-assigned identifier or an alias. |

**Request body**: `Course`

**Response**: `Course`

```typescript
const res = await classroom.courses.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`

---

### `classroom.courses.patch`

**PATCH** `v1/courses/{id}`

Updates one or more fields in a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to modify the requested course or for access errors. * `NOT_FOUND` if no course exists with the requested ID. * `INVALID_ARGUMENT` if invalid fields are specified in the update mask or if no update mask is supplied. * `FAILED_PRECONDITION` for the following request errors: * CourseNotModifiable * InactiveCourseOwner * IneligibleOwner * CourseTitleCannotContainUrl

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | Identifier of the course to update. This identifier can be either the Classroom-assigned identifier or an alias. |
| `updateMask` | `string` | query | No | Mask that identifies which fields on the course to update. This field is required to do an update. The update will fa... |

**Request body**: `Course`

**Response**: `Course`

```typescript
const res = await classroom.courses.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`

---

### `classroom.courses.delete`

**DELETE** `v1/courses/{id}`

Deletes a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to delete the requested course or for access errors. * `NOT_FOUND` if no course exists with the requested ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | Identifier of the course to delete. This identifier can be either the Classroom-assigned identifier or an alias. |

**Response**: `Empty`

```typescript
const res = await classroom.courses.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`

---

### `classroom.courses.list`

**GET** `v1/courses`

Returns a list of courses that the requesting user is permitted to view, restricted to those that match the request. Returned courses are ordered by creation time, with the most recently created coming first. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the query argument is malformed. * `NOT_FOUND` if any users specified in the query arguments do not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseStates` | `string` | query | No | Restricts returned courses to those in one of the specified states The default value is ACTIVE, ARCHIVED, PROVISIONED... |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |
| `studentId` | `string` | query | No | Restricts returned courses to those having a student with the specified identifier. The identifier can be one of the ... |
| `teacherId` | `string` | query | No | Restricts returned courses to those having a teacher with the specified identifier. The identifier can be one of the ... |

**Response**: `ListCoursesResponse`

```typescript
const res = await classroom.courses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`
- `https://www.googleapis.com/auth/classroom.courses.readonly`

---

### `classroom.courses.getGradingPeriodSettings`

**GET** `v1/courses/{courseId}/gradingPeriodSettings`

Returns the grading period settings in a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user isn't permitted to access the grading period settings in the requested course or for access errors. * `NOT_FOUND` if the requested course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. The identifier of the course. |

**Response**: `GradingPeriodSettings`

```typescript
const res = await classroom.courses.getGradingPeriodSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`
- `https://www.googleapis.com/auth/classroom.courses.readonly`

---

### `classroom.courses.updateGradingPeriodSettings`

**PATCH** `v1/courses/{courseId}/gradingPeriodSettings`

Updates grading period settings of a course. Individual grading periods can be added, removed, or modified using this method. The requesting user and course owner must be eligible to modify Grading Periods. For details, see [licensing requirements](https://developers.google.com/workspace/classroom/grading-periods/manage-grading-periods#licensing_requirements). This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to modify the grading period settings in a course or for access errors: * UserIneligibleToUpdateGradingPeriodSettings * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. The identifier of the course. |
| `updateMask` | `string` | query | No | Mask that identifies which fields in the GradingPeriodSettings to update. The GradingPeriodSettings `grading_periods`... |

**Request body**: `GradingPeriodSettings`

**Response**: `GradingPeriodSettings`

```typescript
const res = await classroom.courses.updateGradingPeriodSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`

---

### `classroom.courses.studentGroups.create`

**POST** `v1/courses/{courseId}/studentGroups`

Creates a student group for a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create the student group or for access errors. * `NOT_FOUND` if the course does not exist or the requesting user doesn't have access to the course. * `FAILED_PRECONDITION` if creating the student group would exceed the maximum number of student groups per course.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. The identifier of the course. |

**Request body**: `StudentGroup`

**Response**: `StudentGroup`

```typescript
const res = await classroom.studentGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.courses.studentGroups.delete`

**DELETE** `v1/courses/{courseId}/studentGroups/{id}`

Deletes a student group. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to delete the requested student group or for access errors. * `NOT_FOUND` if the student group does not exist or the user does not have access to the student group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. The identifier of the course containing the student group to delete. |
| `id` | `string` | path | Yes | Required. The identifier of the student group to delete. |

**Response**: `Empty`

```typescript
const res = await classroom.studentGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.courses.studentGroups.patch`

**PATCH** `v1/courses/{courseId}/studentGroups/{id}`

Updates one or more fields in a student group. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to modify the requested student group or for access errors. * `NOT_FOUND` if the student group does not exist or the user does not have access to the student group. * `INVALID_ARGUMENT` if invalid fields are specified in the update mask or if no update mask is supplied.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `id` | `string` | path | Yes | Required. Identifier of the student group. |
| `updateMask` | `string` | query | No | Required. Mask that identifies which fields on the student group to update. This field is required to do an update. T... |

**Request body**: `StudentGroup`

**Response**: `StudentGroup`

```typescript
const res = await classroom.studentGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.courses.studentGroups.list`

**GET** `v1/courses/{courseId}/studentGroups`

Returns a list of groups in a course. This method returns the following error codes: * `NOT_FOUND` if the course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. The identifier of the course. |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum, which is curre... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListStudentGroupsResponse`

```typescript
const res = await classroom.studentGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`
- `https://www.googleapis.com/auth/classroom.rosters.readonly`

---

### `classroom.courses.studentGroups.studentGroupMembers.create`

**POST** `v1/courses/{courseId}/studentGroups/{studentGroupId}/studentGroupMembers`

Creates a student group member for a student group. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create the student group or member for access errors. * `NOT_FOUND` if the student group does not exist or the user does not have access to the student group. * `ALREADY_EXISTS` if the student group member already exists. * `FAILED_PRECONDITION` if attempting to add a member to a student group that has reached its member limit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. The identifier of the course. |
| `studentGroupId` | `string` | path | Yes | Required. The identifier of the student group. |

**Request body**: `StudentGroupMember`

**Response**: `StudentGroupMember`

```typescript
const res = await classroom.studentGroupMembers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.courses.studentGroups.studentGroupMembers.delete`

**DELETE** `v1/courses/{courseId}/studentGroups/{studentGroupId}/studentGroupMembers/{userId}`

Deletes a student group member. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to delete the requested student group member or for access errors. * `NOT_FOUND` if the student group member does not exist or the user does not have access to the student group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. The identifier of the course containing the relevant student group. |
| `studentGroupId` | `string` | path | Yes | Required. The identifier of the student group containing the student group member to delete. |
| `userId` | `string` | path | Yes | Required. The identifier of the student group member to delete. |

**Response**: `Empty`

```typescript
const res = await classroom.studentGroupMembers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.courses.studentGroups.studentGroupMembers.list`

**GET** `v1/courses/{courseId}/studentGroups/{studentGroupId}/studentGroupMembers`

Returns a list of students in a group. This method returns the following error codes: * `NOT_FOUND` if the course or student group does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. The identifier of the course. |
| `studentGroupId` | `string` | path | Yes | Required. The identifier of the student group. |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListStudentGroupMembersResponse`

```typescript
const res = await classroom.studentGroupMembers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`
- `https://www.googleapis.com/auth/classroom.rosters.readonly`

---

### `classroom.courses.aliases.create`

**POST** `v1/courses/{courseId}/aliases`

Creates an alias for a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create the alias or for access errors. * `NOT_FOUND` if the course does not exist. * `ALREADY_EXISTS` if the alias already exists. * `FAILED_PRECONDITION` if the alias requested does not make sense for the requesting user or course (for example, if a user not in a domain attempts to access a domain-scoped alias).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course to alias. This identifier can be either the Classroom-assigned identifier or an alias. |

**Request body**: `CourseAlias`

**Response**: `CourseAlias`

```typescript
const res = await classroom.aliases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`

---

### `classroom.courses.aliases.delete`

**DELETE** `v1/courses/{courseId}/aliases/{alias}`

Deletes an alias of a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to remove the alias or for access errors. * `NOT_FOUND` if the alias does not exist. * `FAILED_PRECONDITION` if the alias requested does not make sense for the requesting user or course (for example, if a user not in a domain attempts to delete a domain-scoped alias).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course whose alias should be deleted. This identifier can be either the Classroom-assigned identifi... |
| `alias` | `string` | path | Yes | Alias to delete. This may not be the Classroom-assigned identifier. |

**Response**: `Empty`

```typescript
const res = await classroom.aliases.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`

---

### `classroom.courses.aliases.list`

**GET** `v1/courses/{courseId}/aliases`

Returns a list of aliases for a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the course or for access errors. * `NOT_FOUND` if the course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | The identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListCourseAliasesResponse`

```typescript
const res = await classroom.aliases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courses`
- `https://www.googleapis.com/auth/classroom.courses.readonly`

---

### `classroom.courses.courseWork.create`

**POST** `v1/courses/{courseId}/courseWork`

Creates course work. The resulting course work (and corresponding student submissions) are associated with the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to make the request. Classroom API requests to modify course work and student submissions must be made with an OAuth client ID from the associated Developer Console project. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course, create course work in the requested course, share a Drive attachment, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist. * `FAILED_PRECONDITION` for the following request error: * AttachmentNotVisible

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |

**Request body**: `CourseWork`

**Response**: `CourseWork`

```typescript
const res = await classroom.courseWork.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.courseWork.patch`

**PATCH** `v1/courses/{courseId}/courseWork/{id}`

Updates one or more fields of a course work. See google.classroom.v1.CourseWork for details of which fields may be updated and who may change them. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding course work, if the user is not permitted to make the requested modification to the student submission, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `FAILED_PRECONDITION` if the requested course work has already been deleted. * `NOT_FOUND` if the requested course or course work does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the course work. |
| `updateMask` | `string` | query | No | Mask that identifies which fields on the course work to update. This field is required to do an update. The update fa... |

**Request body**: `CourseWork`

**Response**: `CourseWork`

```typescript
const res = await classroom.courseWork.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.courseWork.delete`

**DELETE** `v1/courses/{courseId}/courseWork/{id}`

Deletes a course work. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding course work, if the requesting user is not permitted to delete the requested course or for access errors. * `FAILED_PRECONDITION` if the requested course work has already been deleted. * `NOT_FOUND` if no course exists with the requested ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the course work to delete. This identifier is a Classroom-assigned identifier. |

**Response**: `Empty`

```typescript
const res = await classroom.courseWork.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.courseWork.get`

**GET** `v1/courses/{courseId}/courseWork/{id}`

Returns course work. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or course work does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the course work. |

**Response**: `CourseWork`

```typescript
const res = await classroom.courseWork.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.me`
- `https://www.googleapis.com/auth/classroom.coursework.me.readonly`
- `https://www.googleapis.com/auth/classroom.coursework.students`
- `https://www.googleapis.com/auth/classroom.coursework.students.readonly`

---

### `classroom.courses.courseWork.list`

**GET** `v1/courses/{courseId}/courseWork`

Returns a list of course work that the requester is permitted to view. Course students may only view `PUBLISHED` course work. Course teachers and domain administrators may view all course work. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `courseWorkStates` | `string` | query | No | Restriction on the work status to return. Only courseWork that matches is returned. If unspecified, items with a work... |
| `orderBy` | `string` | query | No | Optional sort ordering for results. A comma-separated list of fields with an optional sort direction keyword. Support... |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListCourseWorkResponse`

```typescript
const res = await classroom.courseWork.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.me`
- `https://www.googleapis.com/auth/classroom.coursework.me.readonly`
- `https://www.googleapis.com/auth/classroom.coursework.students`
- `https://www.googleapis.com/auth/classroom.coursework.students.readonly`

---

### `classroom.courses.courseWork.modifyAssignees`

**POST** `v1/courses/{courseId}/courseWork/{id}:modifyAssignees`

Modifies assignee mode and options of a coursework. Only a teacher of the course that contains the coursework may call this method. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or course work does not exist. * `FAILED_PRECONDITION` for the following request error: * EmptyAssignees

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the coursework. |

**Request body**: `ModifyCourseWorkAssigneesRequest`

**Response**: `CourseWork`

```typescript
const res = await classroom.courseWork.modifyAssignees({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.courseWork.getAddOnContext`

**GET** `v1/courses/{courseId}/courseWork/{itemId}/addOnContext`

Gets metadata for Classroom add-ons in the context of a specific post. To maintain the integrity of its own data and permissions model, an add-on should call this to validate query parameters and the requesting user's role whenever the add-on is opened in an [iframe](https://developers.google.com/workspace/classroom/add-ons/get-started/iframes/iframes-overview). This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `addOnToken` | `string` | query | No | Optional. Token that authorizes the request. The token is passed as a query parameter when the user is redirected fro... |
| `attachmentId` | `string` | query | No | Optional. The identifier of the attachment. This field is required for all requests except when the user is in the [A... |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Response**: `AddOnContext`

```typescript
const res = await classroom.courseWork.getAddOnContext({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWork.updateRubric`

**PATCH** `v1/courses/{courseId}/courseWork/{courseWorkId}/rubric`

Updates a rubric. See google.classroom.v1.Rubric for details of which fields can be updated. Rubric update capabilities are [limited](/classroom/rubrics/limitations) once grading has started. The requesting user and course owner must have rubrics creation capabilities. For details, see [licensing requirements](https://developers.google.com/workspace/classroom/rubrics/limitations#license-requirements). This request must be made by the Google Cloud console of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the parent course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project didn't create the corresponding course work, if the user isn't permitted to make the requested modification to the rubric, or for access errors. This error code is also returned if grading has already started on the rubric. * `INVALID_ARGUMENT` if the request is malformed and for the following request error: * `RubricCriteriaInvalidFormat` * `NOT_FOUND` if the requested course, course work, or rubric doesn't exist or if the user doesn't have access to the corresponding course work. * `INTERNAL` if grading has already started on the rubric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `courseWorkId` | `string` | path | Yes | Required. Identifier of the course work. |
| `id` | `string` | query | No | Optional. Identifier of the rubric. |
| `updateMask` | `string` | query | No | Optional. Mask that identifies which fields on the rubric to update. This field is required to do an update. The upda... |

**Request body**: `Rubric`

**Response**: `Rubric`

```typescript
const res = await classroom.courseWork.updateRubric({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.courseWork.studentSubmissions.get`

**GET** `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}`

Returns a student submission. * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course, course work, or student submission or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `courseWorkId` | `string` | path | Yes | Identifier of the course work. |
| `id` | `string` | path | Yes | Identifier of the student submission. |

**Response**: `StudentSubmission`

```typescript
const res = await classroom.studentSubmissions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.me`
- `https://www.googleapis.com/auth/classroom.coursework.me.readonly`
- `https://www.googleapis.com/auth/classroom.coursework.students`
- `https://www.googleapis.com/auth/classroom.coursework.students.readonly`
- `https://www.googleapis.com/auth/classroom.student-submissions.me.readonly`
- `https://www.googleapis.com/auth/classroom.student-submissions.students.readonly`

---

### `classroom.courses.courseWork.studentSubmissions.patch`

**PATCH** `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}`

Updates one or more fields of a student submission. See google.classroom.v1.StudentSubmission for details of which fields may be updated and who may change them. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding course work, if the user is not permitted to make the requested modification to the student submission, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `courseWorkId` | `string` | path | Yes | Identifier of the course work. |
| `id` | `string` | path | Yes | Identifier of the student submission. |
| `updateMask` | `string` | query | No | Mask that identifies which fields on the student submission to update. This field is required to do an update. The up... |

**Request body**: `StudentSubmission`

**Response**: `StudentSubmission`

```typescript
const res = await classroom.studentSubmissions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.me`
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.courseWork.studentSubmissions.list`

**GET** `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions`

Returns a list of student submissions that the requester is permitted to view, factoring in the OAuth scopes of the request. A hyphen (`-`) may be specified as the `course_work_id` to include student submissions for multiple course work items. Course students may only view their own work. Course teachers and domain administrators may view all student submissions. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `courseWorkId` | `string` | path | Yes | Identifier of the student work to request. This may be set to the string literal `"-"` to request student work for al... |
| `late` | `string` | query | No | Requested lateness value. If specified, returned student submissions are restricted by the requested value. If unspec... |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |
| `states` | `string` | query | No | Requested submission states. If specified, returned student submissions match one of the specified submission states. |
| `userId` | `string` | query | No | Optional argument to restrict returned student work to those owned by the student with the specified identifier. The ... |

**Response**: `ListStudentSubmissionsResponse`

```typescript
const res = await classroom.studentSubmissions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.me`
- `https://www.googleapis.com/auth/classroom.coursework.me.readonly`
- `https://www.googleapis.com/auth/classroom.coursework.students`
- `https://www.googleapis.com/auth/classroom.coursework.students.readonly`
- `https://www.googleapis.com/auth/classroom.student-submissions.me.readonly`
- `https://www.googleapis.com/auth/classroom.student-submissions.students.readonly`

---

### `classroom.courses.courseWork.studentSubmissions.turnIn`

**POST** `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:turnIn`

Turns in a student submission. Turning in a student submission transfers ownership of attached Drive files to the teacher and may also update the submission state. This may only be called by the student that owns the specified student submission. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, turn in the requested student submission, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `courseWorkId` | `string` | path | Yes | Identifier of the course work. |
| `id` | `string` | path | Yes | Identifier of the student submission. |

**Request body**: `TurnInStudentSubmissionRequest`

**Response**: `Empty`

```typescript
const res = await classroom.studentSubmissions.turnIn({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.me`

---

### `classroom.courses.courseWork.studentSubmissions.reclaim`

**POST** `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:reclaim`

Reclaims a student submission on behalf of the student that owns it. Reclaiming a student submission transfers ownership of attached Drive files to the student and updates the submission state. Only the student that owns the requested student submission may call this method, and only for a student submission that has been turned in. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, unsubmit the requested student submission, or for access errors. * `FAILED_PRECONDITION` if the student submission has not been turned in. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `courseWorkId` | `string` | path | Yes | Identifier of the course work. |
| `id` | `string` | path | Yes | Identifier of the student submission. |

**Request body**: `ReclaimStudentSubmissionRequest`

**Response**: `Empty`

```typescript
const res = await classroom.studentSubmissions.reclaim({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.me`

---

### `classroom.courses.courseWork.studentSubmissions.return`

**POST** `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:return`

Returns a student submission. Returning a student submission transfers ownership of attached Drive files to the student and may also update the submission state. Unlike the Classroom application, returning a student submission does not set assignedGrade to the draftGrade value. Only a teacher of the course that contains the requested student submission may call this method. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, return the requested student submission, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `courseWorkId` | `string` | path | Yes | Identifier of the course work. |
| `id` | `string` | path | Yes | Identifier of the student submission. |

**Request body**: `ReturnStudentSubmissionRequest`

**Response**: `Empty`

```typescript
const res = await classroom.studentSubmissions.return({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.courseWork.studentSubmissions.modifyAttachments`

**POST** `v1/courses/{courseId}/courseWork/{courseWorkId}/studentSubmissions/{id}:modifyAttachments`

Modifies attachments of student submission. Attachments may only be added to student submissions belonging to course work objects with a `workType` of `ASSIGNMENT`. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work, if the user is not permitted to modify attachments on the requested student submission, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or student submission does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `courseWorkId` | `string` | path | Yes | Identifier of the course work. |
| `id` | `string` | path | Yes | Identifier of the student submission. |

**Request body**: `ModifyAttachmentsRequest`

**Response**: `StudentSubmission`

```typescript
const res = await classroom.studentSubmissions.modifyAttachments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.me`
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.courseWork.addOnAttachments.get`

**GET** `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments/{attachmentId}`

Returns an add-on attachment. Requires the add-on requesting the attachment to be the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWork.addOnAttachments.list`

**GET** `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments`

Returns all attachments created by an add-on under the post. Requires the add-on to have active attachments on the post or have permission to create new attachments on the post. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` whose attachments should be enumerated. This ... |
| `pageSize` | `integer` | query | No | The maximum number of attachments to return. The service may return fewer than this value. If unspecified, at most 20... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAddOnAttachments` call. Provide this to retrieve the subsequent page. Whe... |
| `postId` | `string` | query | No | Optional. Identifier of the post under the course whose attachments to enumerate. Deprecated, use `item_id` instead. |

**Response**: `ListAddOnAttachmentsResponse`

```typescript
const res = await classroom.addOnAttachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWork.addOnAttachments.create`

**POST** `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments`

Creates an add-on attachment under a post. Requires the add-on to have permission to create new attachments on the post. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which to create the attachment. This fi... |
| `addOnToken` | `string` | query | No | Optional. Token that authorizes the request. The token is passed as a query parameter when the user is redirected fro... |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Request body**: `AddOnAttachment`

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWork.addOnAttachments.patch`

**PATCH** `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments/{attachmentId}`

Updates an add-on attachment. Requires the add-on to have been the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the post under which the attachment is attached. |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `postId` | `string` | query | No | Required. Identifier of the post under which the attachment is attached. |
| `updateMask` | `string` | query | No | Required. Mask that identifies which fields on the attachment to update. The update fails if invalid fields are speci... |

**Request body**: `AddOnAttachment`

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWork.addOnAttachments.delete`

**DELETE** `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments/{attachmentId}`

Deletes an add-on attachment. Requires the add-on to have been the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Response**: `Empty`

```typescript
const res = await classroom.addOnAttachments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWork.addOnAttachments.studentSubmissions.patch`

**PATCH** `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments/{attachmentId}/studentSubmissions/{submissionId}`

Updates data associated with an add-on attachment submission. Requires the add-on to have been the original creator of the attachment and the attachment to have a positive `max_points` value set. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `submissionId` | `string` | path | Yes | Required. Identifier of the student's submission. |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |
| `updateMask` | `string` | query | No | Required. Mask that identifies which fields on the attachment to update. The update fails if invalid fields are speci... |

**Request body**: `AddOnAttachmentStudentSubmission`

**Response**: `AddOnAttachmentStudentSubmission`

```typescript
const res = await classroom.studentSubmissions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWork.addOnAttachments.studentSubmissions.get`

**GET** `v1/courses/{courseId}/courseWork/{itemId}/addOnAttachments/{attachmentId}/studentSubmissions/{submissionId}`

Returns a student submission for an add-on attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `submissionId` | `string` | path | Yes | Required. Identifier of the student’s submission. |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Response**: `AddOnAttachmentStudentSubmission`

```typescript
const res = await classroom.studentSubmissions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`
- `https://www.googleapis.com/auth/classroom.student-submissions.students.readonly`

---

### `classroom.courses.courseWork.rubrics.patch`

**PATCH** `v1/courses/{courseId}/courseWork/{courseWorkId}/rubrics/{id}`

Updates a rubric. See google.classroom.v1.Rubric for details of which fields can be updated. Rubric update capabilities are [limited](/classroom/rubrics/limitations) once grading has started. The requesting user and course owner must have rubrics creation capabilities. For details, see [licensing requirements](https://developers.google.com/workspace/classroom/rubrics/limitations#license-requirements). This request must be made by the Google Cloud console of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the parent course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project didn't create the corresponding course work, if the user isn't permitted to make the requested modification to the rubric, or for access errors. This error code is also returned if grading has already started on the rubric. * `INVALID_ARGUMENT` if the request is malformed and for the following request error: * `RubricCriteriaInvalidFormat` * `NOT_FOUND` if the requested course, course work, or rubric doesn't exist or if the user doesn't have access to the corresponding course work. * `INTERNAL` if grading has already started on the rubric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `courseWorkId` | `string` | path | Yes | Required. Identifier of the course work. |
| `id` | `string` | path | Yes | Optional. Identifier of the rubric. |
| `updateMask` | `string` | query | No | Optional. Mask that identifies which fields on the rubric to update. This field is required to do an update. The upda... |

**Request body**: `Rubric`

**Response**: `Rubric`

```typescript
const res = await classroom.rubrics.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.courseWork.rubrics.create`

**POST** `v1/courses/{courseId}/courseWork/{courseWorkId}/rubrics`

Creates a rubric. The requesting user and course owner must have rubrics creation capabilities. For details, see [licensing requirements](https://developers.google.com/workspace/classroom/rubrics/limitations#license-requirements). For further details, see [Rubrics structure and known limitations](/classroom/rubrics/limitations). This request must be made by the Google Cloud console of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the parent course work item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user isn't permitted to create rubrics for course work in the requested course. * `INTERNAL` if the request has insufficient OAuth scopes. * `INVALID_ARGUMENT` if the request is malformed and for the following request error: * `RubricCriteriaInvalidFormat` * `NOT_FOUND` if the requested course or course work don't exist or the user doesn't have access to the course or course work. * `FAILED_PRECONDITION` for the following request error: * `AttachmentNotVisible`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `courseWorkId` | `string` | path | Yes | Required. Identifier of the course work. |

**Request body**: `Rubric`

**Response**: `Rubric`

```typescript
const res = await classroom.rubrics.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.courseWork.rubrics.get`

**GET** `v1/courses/{courseId}/courseWork/{courseWorkId}/rubrics/{id}`

Returns a rubric. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course, course work, or rubric doesn't exist or if the user doesn't have access to the corresponding course work.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `courseWorkId` | `string` | path | Yes | Required. Identifier of the course work. |
| `id` | `string` | path | Yes | Required. Identifier of the rubric. |

**Response**: `Rubric`

```typescript
const res = await classroom.rubrics.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.me`
- `https://www.googleapis.com/auth/classroom.coursework.me.readonly`
- `https://www.googleapis.com/auth/classroom.coursework.students`
- `https://www.googleapis.com/auth/classroom.coursework.students.readonly`

---

### `classroom.courses.courseWork.rubrics.list`

**GET** `v1/courses/{courseId}/courseWork/{courseWorkId}/rubrics`

Returns a list of rubrics that the requester is permitted to view. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or course work doesn't exist or if the user doesn't have access to the corresponding course work.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `courseWorkId` | `string` | path | Yes | Required. Identifier of the course work. |
| `pageSize` | `integer` | query | No | The maximum number of rubrics to return. If unspecified, at most 1 rubric is returned. The maximum value is 1; values... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListRubricsResponse`

```typescript
const res = await classroom.rubrics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.me`
- `https://www.googleapis.com/auth/classroom.coursework.me.readonly`
- `https://www.googleapis.com/auth/classroom.coursework.students`
- `https://www.googleapis.com/auth/classroom.coursework.students.readonly`

---

### `classroom.courses.courseWork.rubrics.delete`

**DELETE** `v1/courses/{courseId}/courseWork/{courseWorkId}/rubrics/{id}`

Deletes a rubric. The requesting user and course owner must have rubrics creation capabilities. For details, see [licensing requirements](https://developers.google.com/workspace/classroom/rubrics/limitations#license-requirements). This request must be made by the Google Cloud console of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding rubric. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project didn't create the corresponding rubric, or if the requesting user isn't permitted to delete the requested rubric. * `NOT_FOUND` if no rubric exists with the requested ID or the user does not have access to the course, course work, or rubric. * `INVALID_ARGUMENT` if grading has already started on the rubric.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `courseWorkId` | `string` | path | Yes | Required. Identifier of the course work. |
| `id` | `string` | path | Yes | Required. Identifier of the rubric. |

**Response**: `Empty`

```typescript
const res = await classroom.rubrics.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.coursework.students`

---

### `classroom.courses.announcements.delete`

**DELETE** `v1/courses/{courseId}/announcements/{id}`

Deletes an announcement. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding announcement item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding announcement, if the requesting user is not permitted to delete the requested course or for access errors. * `FAILED_PRECONDITION` if the requested announcement has already been deleted. * `NOT_FOUND` if no course exists with the requested ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the announcement to delete. This identifier is a Classroom-assigned identifier. |

**Response**: `Empty`

```typescript
const res = await classroom.announcements.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.announcements`

---

### `classroom.courses.announcements.create`

**POST** `v1/courses/{courseId}/announcements`

Creates an announcement. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course, create announcements in the requested course, share a Drive attachment, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist. * `FAILED_PRECONDITION` for the following request error: * AttachmentNotVisible

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |

**Request body**: `Announcement`

**Response**: `Announcement`

```typescript
const res = await classroom.announcements.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.announcements`

---

### `classroom.courses.announcements.get`

**GET** `v1/courses/{courseId}/announcements/{id}`

Returns an announcement. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or announcement, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or announcement does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the announcement. |

**Response**: `Announcement`

```typescript
const res = await classroom.announcements.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.announcements`
- `https://www.googleapis.com/auth/classroom.announcements.readonly`

---

### `classroom.courses.announcements.list`

**GET** `v1/courses/{courseId}/announcements`

Returns a list of announcements that the requester is permitted to view. Course students may only view `PUBLISHED` announcements. Course teachers and domain administrators may view all announcements. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `announcementStates` | `string` | query | No | Restriction on the `state` of announcements returned. If this argument is left unspecified, the default value is `PUB... |
| `orderBy` | `string` | query | No | Optional sort ordering for results. A comma-separated list of fields with an optional sort direction keyword. Support... |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListAnnouncementsResponse`

```typescript
const res = await classroom.announcements.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.announcements`
- `https://www.googleapis.com/auth/classroom.announcements.readonly`

---

### `classroom.courses.announcements.patch`

**PATCH** `v1/courses/{courseId}/announcements/{id}`

Updates one or more fields of an announcement. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding announcement or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `FAILED_PRECONDITION` if the requested announcement has already been deleted. * `NOT_FOUND` if the requested course or announcement does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the announcement. |
| `updateMask` | `string` | query | No | Mask that identifies which fields on the announcement to update. This field is required to do an update. The update f... |

**Request body**: `Announcement`

**Response**: `Announcement`

```typescript
const res = await classroom.announcements.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.announcements`

---

### `classroom.courses.announcements.modifyAssignees`

**POST** `v1/courses/{courseId}/announcements/{id}:modifyAssignees`

Modifies assignee mode and options of an announcement. Only a teacher of the course that contains the announcement may call this method. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or course work does not exist. * `FAILED_PRECONDITION` for the following request error: * EmptyAssignees

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the announcement. |

**Request body**: `ModifyAnnouncementAssigneesRequest`

**Response**: `Announcement`

```typescript
const res = await classroom.announcements.modifyAssignees({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.announcements`

---

### `classroom.courses.announcements.getAddOnContext`

**GET** `v1/courses/{courseId}/announcements/{itemId}/addOnContext`

Gets metadata for Classroom add-ons in the context of a specific post. To maintain the integrity of its own data and permissions model, an add-on should call this to validate query parameters and the requesting user's role whenever the add-on is opened in an [iframe](https://developers.google.com/workspace/classroom/add-ons/get-started/iframes/iframes-overview). This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `addOnToken` | `string` | query | No | Optional. Token that authorizes the request. The token is passed as a query parameter when the user is redirected fro... |
| `attachmentId` | `string` | query | No | Optional. The identifier of the attachment. This field is required for all requests except when the user is in the [A... |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Response**: `AddOnContext`

```typescript
const res = await classroom.announcements.getAddOnContext({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.announcements.addOnAttachments.get`

**GET** `v1/courses/{courseId}/announcements/{itemId}/addOnAttachments/{attachmentId}`

Returns an add-on attachment. Requires the add-on requesting the attachment to be the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.announcements.addOnAttachments.list`

**GET** `v1/courses/{courseId}/announcements/{itemId}/addOnAttachments`

Returns all attachments created by an add-on under the post. Requires the add-on to have active attachments on the post or have permission to create new attachments on the post. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` whose attachments should be enumerated. This ... |
| `pageSize` | `integer` | query | No | The maximum number of attachments to return. The service may return fewer than this value. If unspecified, at most 20... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAddOnAttachments` call. Provide this to retrieve the subsequent page. Whe... |
| `postId` | `string` | query | No | Optional. Identifier of the post under the course whose attachments to enumerate. Deprecated, use `item_id` instead. |

**Response**: `ListAddOnAttachmentsResponse`

```typescript
const res = await classroom.addOnAttachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.announcements.addOnAttachments.create`

**POST** `v1/courses/{courseId}/announcements/{itemId}/addOnAttachments`

Creates an add-on attachment under a post. Requires the add-on to have permission to create new attachments on the post. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which to create the attachment. This fi... |
| `addOnToken` | `string` | query | No | Optional. Token that authorizes the request. The token is passed as a query parameter when the user is redirected fro... |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Request body**: `AddOnAttachment`

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.announcements.addOnAttachments.patch`

**PATCH** `v1/courses/{courseId}/announcements/{itemId}/addOnAttachments/{attachmentId}`

Updates an add-on attachment. Requires the add-on to have been the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the post under which the attachment is attached. |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `postId` | `string` | query | No | Required. Identifier of the post under which the attachment is attached. |
| `updateMask` | `string` | query | No | Required. Mask that identifies which fields on the attachment to update. The update fails if invalid fields are speci... |

**Request body**: `AddOnAttachment`

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.announcements.addOnAttachments.delete`

**DELETE** `v1/courses/{courseId}/announcements/{itemId}/addOnAttachments/{attachmentId}`

Deletes an add-on attachment. Requires the add-on to have been the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Response**: `Empty`

```typescript
const res = await classroom.addOnAttachments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWorkMaterials.create`

**POST** `v1/courses/{courseId}/courseWorkMaterials`

Creates a course work material. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course, create course work material in the requested course, share a Drive attachment, or for access errors. * `INVALID_ARGUMENT` if the request is malformed or if more than 20 * materials are provided. * `NOT_FOUND` if the requested course does not exist. * `FAILED_PRECONDITION` for the following request error: * AttachmentNotVisible

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |

**Request body**: `CourseWorkMaterial`

**Response**: `CourseWorkMaterial`

```typescript
const res = await classroom.courseWorkMaterials.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courseworkmaterials`

---

### `classroom.courses.courseWorkMaterials.get`

**GET** `v1/courses/{courseId}/courseWorkMaterials/{id}`

Returns a course work material. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or course work material, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or course work material does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the course work material. |

**Response**: `CourseWorkMaterial`

```typescript
const res = await classroom.courseWorkMaterials.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courseworkmaterials`
- `https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly`

---

### `classroom.courses.courseWorkMaterials.list`

**GET** `v1/courses/{courseId}/courseWorkMaterials`

Returns a list of course work material that the requester is permitted to view. Course students may only view `PUBLISHED` course work material. Course teachers and domain administrators may view all course work material. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `courseWorkMaterialStates` | `string` | query | No | Restriction on the work status to return. Only course work material that matches is returned. If unspecified, items w... |
| `materialDriveId` | `string` | query | No | Optional filtering for course work material with at least one Drive material whose ID matches the provided string. If... |
| `materialLink` | `string` | query | No | Optional filtering for course work material with at least one link material whose URL partially matches the provided ... |
| `orderBy` | `string` | query | No | Optional sort ordering for results. A comma-separated list of fields with an optional sort direction keyword. Support... |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListCourseWorkMaterialResponse`

```typescript
const res = await classroom.courseWorkMaterials.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courseworkmaterials`
- `https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly`

---

### `classroom.courses.courseWorkMaterials.patch`

**PATCH** `v1/courses/{courseId}/courseWorkMaterials/{id}`

Updates one or more fields of a course work material. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `FAILED_PRECONDITION` if the requested course work material has already been deleted. * `NOT_FOUND` if the requested course or course work material does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the course work material. |
| `updateMask` | `string` | query | No | Mask that identifies which fields on the course work material to update. This field is required to do an update. The ... |

**Request body**: `CourseWorkMaterial`

**Response**: `CourseWorkMaterial`

```typescript
const res = await classroom.courseWorkMaterials.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courseworkmaterials`

---

### `classroom.courses.courseWorkMaterials.delete`

**DELETE** `v1/courses/{courseId}/courseWorkMaterials/{id}`

Deletes a course work material. This request must be made by the Developer Console project of the [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to create the corresponding course work material item. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding course work material, if the requesting user is not permitted to delete the requested course or for access errors. * `FAILED_PRECONDITION` if the requested course work material has already been deleted. * `NOT_FOUND` if no course exists with the requested ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the course work material to delete. This identifier is a Classroom-assigned identifier. |

**Response**: `Empty`

```typescript
const res = await classroom.courseWorkMaterials.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.courseworkmaterials`

---

### `classroom.courses.courseWorkMaterials.getAddOnContext`

**GET** `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnContext`

Gets metadata for Classroom add-ons in the context of a specific post. To maintain the integrity of its own data and permissions model, an add-on should call this to validate query parameters and the requesting user's role whenever the add-on is opened in an [iframe](https://developers.google.com/workspace/classroom/add-ons/get-started/iframes/iframes-overview). This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `addOnToken` | `string` | query | No | Optional. Token that authorizes the request. The token is passed as a query parameter when the user is redirected fro... |
| `attachmentId` | `string` | query | No | Optional. The identifier of the attachment. This field is required for all requests except when the user is in the [A... |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Response**: `AddOnContext`

```typescript
const res = await classroom.courseWorkMaterials.getAddOnContext({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWorkMaterials.addOnAttachments.get`

**GET** `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnAttachments/{attachmentId}`

Returns an add-on attachment. Requires the add-on requesting the attachment to be the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWorkMaterials.addOnAttachments.list`

**GET** `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnAttachments`

Returns all attachments created by an add-on under the post. Requires the add-on to have active attachments on the post or have permission to create new attachments on the post. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` whose attachments should be enumerated. This ... |
| `pageSize` | `integer` | query | No | The maximum number of attachments to return. The service may return fewer than this value. If unspecified, at most 20... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAddOnAttachments` call. Provide this to retrieve the subsequent page. Whe... |
| `postId` | `string` | query | No | Optional. Identifier of the post under the course whose attachments to enumerate. Deprecated, use `item_id` instead. |

**Response**: `ListAddOnAttachmentsResponse`

```typescript
const res = await classroom.addOnAttachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWorkMaterials.addOnAttachments.create`

**POST** `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnAttachments`

Creates an add-on attachment under a post. Requires the add-on to have permission to create new attachments on the post. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which to create the attachment. This fi... |
| `addOnToken` | `string` | query | No | Optional. Token that authorizes the request. The token is passed as a query parameter when the user is redirected fro... |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Request body**: `AddOnAttachment`

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWorkMaterials.addOnAttachments.patch`

**PATCH** `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnAttachments/{attachmentId}`

Updates an add-on attachment. Requires the add-on to have been the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the post under which the attachment is attached. |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `postId` | `string` | query | No | Required. Identifier of the post under which the attachment is attached. |
| `updateMask` | `string` | query | No | Required. Mask that identifies which fields on the attachment to update. The update fails if invalid fields are speci... |

**Request body**: `AddOnAttachment`

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.courseWorkMaterials.addOnAttachments.delete`

**DELETE** `v1/courses/{courseId}/courseWorkMaterials/{itemId}/addOnAttachments/{attachmentId}`

Deletes an add-on attachment. Requires the add-on to have been the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `itemId` | `string` | path | Yes | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `postId` | `string` | query | No | Optional. Deprecated, use `item_id` instead. |

**Response**: `Empty`

```typescript
const res = await classroom.addOnAttachments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.topics.create`

**POST** `v1/courses/{courseId}/topics`

Creates a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course, create a topic in the requested course, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `ALREADY_EXISTS` if there exists a topic in the course with the same name. * `FAILED_PRECONDITION` for the following request error: * CourseTopicLimitReached * `NOT_FOUND` if the requested course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |

**Request body**: `Topic`

**Response**: `Topic`

```typescript
const res = await classroom.topics.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.topics`

---

### `classroom.courses.topics.patch`

**PATCH** `v1/courses/{courseId}/topics/{id}`

Updates one or more fields of a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting developer project did not create the corresponding topic or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `FAILED_PRECONDITION` if there exists a topic in the course with the same name. * `NOT_FOUND` if the requested course or topic does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the topic. |
| `updateMask` | `string` | query | No | Mask that identifies which fields on the topic to update. This field is required to do an update. The update fails if... |

**Request body**: `Topic`

**Response**: `Topic`

```typescript
const res = await classroom.topics.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.topics`

---

### `classroom.courses.topics.delete`

**DELETE** `v1/courses/{courseId}/topics/{id}`

Deletes a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not allowed to delete the requested topic or for access errors. * `FAILED_PRECONDITION` if the requested topic has already been deleted. * `NOT_FOUND` if no course or topic exists with the requested ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `id` | `string` | path | Yes | Identifier of the topic to delete. |

**Response**: `Empty`

```typescript
const res = await classroom.topics.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.topics`

---

### `classroom.courses.topics.get`

**GET** `v1/courses/{courseId}/topics/{id}`

Returns a topic. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or topic, or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course or topic does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. |
| `id` | `string` | path | Yes | Identifier of the topic. |

**Response**: `Topic`

```typescript
const res = await classroom.topics.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.topics`
- `https://www.googleapis.com/auth/classroom.topics.readonly`

---

### `classroom.courses.topics.list`

**GET** `v1/courses/{courseId}/topics`

Returns the list of topics that the requester is permitted to view. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access the requested course or for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the requested course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListTopicResponse`

```typescript
const res = await classroom.topics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.topics`
- `https://www.googleapis.com/auth/classroom.topics.readonly`

---

### `classroom.courses.posts.getAddOnContext`

**GET** `v1/courses/{courseId}/posts/{postId}/addOnContext`

Gets metadata for Classroom add-ons in the context of a specific post. To maintain the integrity of its own data and permissions model, an add-on should call this to validate query parameters and the requesting user's role whenever the add-on is opened in an [iframe](https://developers.google.com/workspace/classroom/add-ons/get-started/iframes/iframes-overview). This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `postId` | `string` | path | Yes | Optional. Deprecated, use `item_id` instead. |
| `addOnToken` | `string` | query | No | Optional. Token that authorizes the request. The token is passed as a query parameter when the user is redirected fro... |
| `attachmentId` | `string` | query | No | Optional. The identifier of the attachment. This field is required for all requests except when the user is in the [A... |
| `itemId` | `string` | query | No | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |

**Response**: `AddOnContext`

```typescript
const res = await classroom.posts.getAddOnContext({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.posts.addOnAttachments.get`

**GET** `v1/courses/{courseId}/posts/{postId}/addOnAttachments/{attachmentId}`

Returns an add-on attachment. Requires the add-on requesting the attachment to be the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `postId` | `string` | path | Yes | Optional. Deprecated, use `item_id` instead. |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `itemId` | `string` | query | No | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.posts.addOnAttachments.list`

**GET** `v1/courses/{courseId}/posts/{postId}/addOnAttachments`

Returns all attachments created by an add-on under the post. Requires the add-on to have active attachments on the post or have permission to create new attachments on the post. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `postId` | `string` | path | Yes | Optional. Identifier of the post under the course whose attachments to enumerate. Deprecated, use `item_id` instead. |
| `itemId` | `string` | query | No | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` whose attachments should be enumerated. This ... |
| `pageSize` | `integer` | query | No | The maximum number of attachments to return. The service may return fewer than this value. If unspecified, at most 20... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAddOnAttachments` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `ListAddOnAttachmentsResponse`

```typescript
const res = await classroom.addOnAttachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.posts.addOnAttachments.create`

**POST** `v1/courses/{courseId}/posts/{postId}/addOnAttachments`

Creates an add-on attachment under a post. Requires the add-on to have permission to create new attachments on the post. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `postId` | `string` | path | Yes | Optional. Deprecated, use `item_id` instead. |
| `addOnToken` | `string` | query | No | Optional. Token that authorizes the request. The token is passed as a query parameter when the user is redirected fro... |
| `itemId` | `string` | query | No | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which to create the attachment. This fi... |

**Request body**: `AddOnAttachment`

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.posts.addOnAttachments.patch`

**PATCH** `v1/courses/{courseId}/posts/{postId}/addOnAttachments/{attachmentId}`

Updates an add-on attachment. Requires the add-on to have been the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `postId` | `string` | path | Yes | Required. Identifier of the post under which the attachment is attached. |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `itemId` | `string` | query | No | Identifier of the post under which the attachment is attached. |
| `updateMask` | `string` | query | No | Required. Mask that identifies which fields on the attachment to update. The update fails if invalid fields are speci... |

**Request body**: `AddOnAttachment`

**Response**: `AddOnAttachment`

```typescript
const res = await classroom.addOnAttachments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.posts.addOnAttachments.delete`

**DELETE** `v1/courses/{courseId}/posts/{postId}/addOnAttachments/{attachmentId}`

Deletes an add-on attachment. Requires the add-on to have been the original creator of the attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `postId` | `string` | path | Yes | Optional. Deprecated, use `item_id` instead. |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `itemId` | `string` | query | No | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |

**Response**: `Empty`

```typescript
const res = await classroom.addOnAttachments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.posts.addOnAttachments.studentSubmissions.patch`

**PATCH** `v1/courses/{courseId}/posts/{postId}/addOnAttachments/{attachmentId}/studentSubmissions/{submissionId}`

Updates data associated with an add-on attachment submission. Requires the add-on to have been the original creator of the attachment and the attachment to have a positive `max_points` value set. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `postId` | `string` | path | Yes | Optional. Deprecated, use `item_id` instead. |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `submissionId` | `string` | path | Yes | Required. Identifier of the student's submission. |
| `itemId` | `string` | query | No | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |
| `updateMask` | `string` | query | No | Required. Mask that identifies which fields on the attachment to update. The update fails if invalid fields are speci... |

**Request body**: `AddOnAttachmentStudentSubmission`

**Response**: `AddOnAttachmentStudentSubmission`

```typescript
const res = await classroom.studentSubmissions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.teacher`

---

### `classroom.courses.posts.addOnAttachments.studentSubmissions.get`

**GET** `v1/courses/{courseId}/posts/{postId}/addOnAttachments/{attachmentId}/studentSubmissions/{submissionId}`

Returns a student submission for an add-on attachment. This method returns the following error codes: * `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if one of the identified resources does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Required. Identifier of the course. |
| `postId` | `string` | path | Yes | Optional. Deprecated, use `item_id` instead. |
| `attachmentId` | `string` | path | Yes | Required. Identifier of the attachment. |
| `submissionId` | `string` | path | Yes | Required. Identifier of the student’s submission. |
| `itemId` | `string` | query | No | Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which the attachment is attached. This ... |

**Response**: `AddOnAttachmentStudentSubmission`

```typescript
const res = await classroom.studentSubmissions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.addons.student`
- `https://www.googleapis.com/auth/classroom.addons.teacher`
- `https://www.googleapis.com/auth/classroom.student-submissions.students.readonly`

---

### `classroom.courses.teachers.create`

**POST** `v1/courses/{courseId}/teachers`

Creates a teacher of a course. Domain administrators are permitted to [directly add](https://developers.google.com/workspace/classroom/guides/manage-users) users within their domain as teachers to courses within their domain. Non-admin users should send an Invitation instead. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create teachers in this course or for access errors. * `NOT_FOUND` if the requested course ID does not exist. * `FAILED_PRECONDITION` if the requested user's account is disabled, for the following request errors: * CourseMemberLimitReached * CourseNotModifiable * CourseTeacherLimitReached * UserGroupsMembershipLimitReached * InactiveCourseOwner * `ALREADY_EXISTS` if the user is already a teacher or student in the course.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |

**Request body**: `Teacher`

**Response**: `Teacher`

```typescript
const res = await classroom.teachers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.profile.emails`
- `https://www.googleapis.com/auth/classroom.profile.photos`
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.courses.teachers.get`

**GET** `v1/courses/{courseId}/teachers/{userId}`

Returns a teacher of a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to view teachers of this course or for access errors. * `NOT_FOUND` if no teacher of this course has the requested ID or if the course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `userId` | `string` | path | Yes | Identifier of the teacher to return. The identifier can be one of the following: * the numeric identifier for the use... |

**Response**: `Teacher`

```typescript
const res = await classroom.teachers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.profile.emails`
- `https://www.googleapis.com/auth/classroom.profile.photos`
- `https://www.googleapis.com/auth/classroom.rosters`
- `https://www.googleapis.com/auth/classroom.rosters.readonly`

---

### `classroom.courses.teachers.delete`

**DELETE** `v1/courses/{courseId}/teachers/{userId}`

Removes the specified teacher from the specified course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to delete teachers of this course or for access errors. * `NOT_FOUND` if no teacher of this course has the requested ID or if the course does not exist. * `FAILED_PRECONDITION` if the requested ID belongs to the primary teacher of this course. * `FAILED_PRECONDITION` if the requested ID belongs to the owner of the course Drive folder. * `FAILED_PRECONDITION` if the course no longer has an active owner.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `userId` | `string` | path | Yes | Identifier of the teacher to delete. The identifier can be one of the following: * the numeric identifier for the use... |

**Response**: `Empty`

```typescript
const res = await classroom.teachers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.courses.teachers.list`

**GET** `v1/courses/{courseId}/teachers`

Returns a list of teachers of this course that the requester is permitted to view. This method returns the following error codes: * `NOT_FOUND` if the course does not exist. * `PERMISSION_DENIED` for access errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `pageSize` | `integer` | query | No | Maximum number of items to return. The default is 30 if unspecified or `0`. The server may return fewer than the spec... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListTeachersResponse`

```typescript
const res = await classroom.teachers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.profile.emails`
- `https://www.googleapis.com/auth/classroom.profile.photos`
- `https://www.googleapis.com/auth/classroom.rosters`
- `https://www.googleapis.com/auth/classroom.rosters.readonly`

---

### `classroom.courses.students.create`

**POST** `v1/courses/{courseId}/students`

Adds a user as a student of a course. Domain administrators are permitted to [directly add](https://developers.google.com/workspace/classroom/guides/manage-users) users within their domain as students to courses within their domain. Students are permitted to add themselves to a course using an enrollment code. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create students in this course or for access errors. * `NOT_FOUND` if the requested course ID does not exist. * `FAILED_PRECONDITION` if the requested user's account is disabled, for the following request errors: * CourseMemberLimitReached * CourseNotModifiable * UserGroupsMembershipLimitReached * InactiveCourseOwner * `ALREADY_EXISTS` if the user is already a student or teacher in the course.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course to create the student in. This identifier can be either the Classroom-assigned identifier or... |
| `enrollmentCode` | `string` | query | No | Enrollment code of the course to create the student in. This code is required if userId corresponds to the requesting... |

**Request body**: `Student`

**Response**: `Student`

```typescript
const res = await classroom.students.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.profile.emails`
- `https://www.googleapis.com/auth/classroom.profile.photos`
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.courses.students.get`

**GET** `v1/courses/{courseId}/students/{userId}`

Returns a student of a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to view students of this course or for access errors. * `NOT_FOUND` if no student of this course has the requested ID or if the course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `userId` | `string` | path | Yes | Identifier of the student to return. The identifier can be one of the following: * the numeric identifier for the use... |

**Response**: `Student`

```typescript
const res = await classroom.students.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.profile.emails`
- `https://www.googleapis.com/auth/classroom.profile.photos`
- `https://www.googleapis.com/auth/classroom.rosters`
- `https://www.googleapis.com/auth/classroom.rosters.readonly`

---

### `classroom.courses.students.delete`

**DELETE** `v1/courses/{courseId}/students/{userId}`

Deletes a student of a course. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to delete students of this course or for access errors. * `NOT_FOUND` if no student of this course has the requested ID or if the course does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `userId` | `string` | path | Yes | Identifier of the student to delete. The identifier can be one of the following: * the numeric identifier for the use... |

**Response**: `Empty`

```typescript
const res = await classroom.students.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.courses.students.list`

**GET** `v1/courses/{courseId}/students`

Returns a list of students of this course that the requester is permitted to view. This method returns the following error codes: * `NOT_FOUND` if the course does not exist. * `PERMISSION_DENIED` for access errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | path | Yes | Identifier of the course. This identifier can be either the Classroom-assigned identifier or an alias. |
| `pageSize` | `integer` | query | No | Maximum number of items to return. The default is 30 if unspecified or `0`. The server may return fewer than the spec... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListStudentsResponse`

```typescript
const res = await classroom.students.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.profile.emails`
- `https://www.googleapis.com/auth/classroom.profile.photos`
- `https://www.googleapis.com/auth/classroom.rosters`
- `https://www.googleapis.com/auth/classroom.rosters.readonly`

---

### `classroom.userProfiles.get`

**GET** `v1/userProfiles/{userId}`

Returns a user profile. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to access this user profile, if no profile exists with the requested ID, or for access errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes | Identifier of the profile to return. The identifier can be one of the following: * the numeric identifier for the use... |

**Response**: `UserProfile`

```typescript
const res = await classroom.userProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.profile.emails`
- `https://www.googleapis.com/auth/classroom.profile.photos`
- `https://www.googleapis.com/auth/classroom.rosters`
- `https://www.googleapis.com/auth/classroom.rosters.readonly`

---

### `classroom.userProfiles.guardianInvitations.list`

**GET** `v1/userProfiles/{studentId}/guardianInvitations`

Returns a list of guardian invitations that the requesting user is permitted to view, filtered by the parameters provided. This method returns the following error codes: * `PERMISSION_DENIED` if a `student_id` is specified, and the requesting user is not permitted to view guardian invitations for that student, if `"-"` is specified as the `student_id` and the user is not a domain administrator, if guardians are not enabled for the domain in question, or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot be recognized (it is not an email address, nor a `student_id` from the API, nor the literal string `me`). May also be returned if an invalid `page_token` or `state` is provided. * `NOT_FOUND` if a `student_id` is specified, and its format can be recognized, but Classroom has no record of that student.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `studentId` | `string` | path | Yes | The ID of the student whose guardian invitations are to be returned. The identifier can be one of the following: * th... |
| `invitedEmailAddress` | `string` | query | No | If specified, only results with the specified `invited_email_address` are returned. |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |
| `states` | `string` | query | No | If specified, only results with the specified `state` values are returned. Otherwise, results with a `state` of `PEND... |

**Response**: `ListGuardianInvitationsResponse`

```typescript
const res = await classroom.guardianInvitations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.guardianlinks.students`
- `https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly`

---

### `classroom.userProfiles.guardianInvitations.get`

**GET** `v1/userProfiles/{studentId}/guardianInvitations/{invitationId}`

Returns a specific guardian invitation. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to view guardian invitations for the student identified by the `student_id`, if guardians are not enabled for the domain in question, or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot be recognized (it is not an email address, nor a `student_id` from the API, nor the literal string `me`). * `NOT_FOUND` if Classroom cannot find any record of the given student or `invitation_id`. May also be returned if the student exists, but the requesting user does not have access to see that student.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `studentId` | `string` | path | Yes | The ID of the student whose guardian invitation is being requested. |
| `invitationId` | `string` | path | Yes | The `id` field of the `GuardianInvitation` being requested. |

**Response**: `GuardianInvitation`

```typescript
const res = await classroom.guardianInvitations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.guardianlinks.students`
- `https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly`

---

### `classroom.userProfiles.guardianInvitations.create`

**POST** `v1/userProfiles/{studentId}/guardianInvitations`

Creates a guardian invitation, and sends an email to the guardian asking them to confirm that they are the student's guardian. Once the guardian accepts the invitation, their `state` will change to `COMPLETED` and they will start receiving guardian notifications. A `Guardian` resource will also be created to represent the active guardian. The request object must have the `student_id` and `invited_email_address` fields set. Failing to set these fields, or setting any other fields in the request, will result in an error. This method returns the following error codes: * `PERMISSION_DENIED` if the current user does not have permission to manage guardians, if the guardian in question has already rejected too many requests for that student, if guardians are not enabled for the domain in question, or for other access errors. * `RESOURCE_EXHAUSTED` if the student or guardian has exceeded the guardian link limit. * `INVALID_ARGUMENT` if the guardian email address is not valid (for example, if it is too long), or if the format of the student ID provided cannot be recognized (it is not an email address, nor a `user_id` from this API). This error will also be returned if read-only fields are set, or if the `state` field is set to to a value other than `PENDING`. * `NOT_FOUND` if the student ID provided is a valid student ID, but Classroom has no record of that student. * `ALREADY_EXISTS` if there is already a pending guardian invitation for the student and `invited_email_address` provided, or if the provided `invited_email_address` matches the Google account of an existing `Guardian` for this user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `studentId` | `string` | path | Yes | ID of the student (in standard format) |

**Request body**: `GuardianInvitation`

**Response**: `GuardianInvitation`

```typescript
const res = await classroom.guardianInvitations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.guardianlinks.students`

---

### `classroom.userProfiles.guardianInvitations.patch`

**PATCH** `v1/userProfiles/{studentId}/guardianInvitations/{invitationId}`

Modifies a guardian invitation. Currently, the only valid modification is to change the `state` from `PENDING` to `COMPLETE`. This has the effect of withdrawing the invitation. This method returns the following error codes: * `PERMISSION_DENIED` if the current user does not have permission to manage guardians, if guardians are not enabled for the domain in question or for other access errors. * `FAILED_PRECONDITION` if the guardian link is not in the `PENDING` state. * `INVALID_ARGUMENT` if the format of the student ID provided cannot be recognized (it is not an email address, nor a `user_id` from this API), or if the passed `GuardianInvitation` has a `state` other than `COMPLETE`, or if it modifies fields other than `state`. * `NOT_FOUND` if the student ID provided is a valid student ID, but Classroom has no record of that student, or if the `id` field does not refer to a guardian invitation known to Classroom.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `studentId` | `string` | path | Yes | The ID of the student whose guardian invitation is to be modified. |
| `invitationId` | `string` | path | Yes | The `id` field of the `GuardianInvitation` to be modified. |
| `updateMask` | `string` | query | No | Mask that identifies which fields on the course to update. This field is required to do an update. The update fails i... |

**Request body**: `GuardianInvitation`

**Response**: `GuardianInvitation`

```typescript
const res = await classroom.guardianInvitations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.guardianlinks.students`

---

### `classroom.userProfiles.guardians.list`

**GET** `v1/userProfiles/{studentId}/guardians`

Returns a list of guardians that the requesting user is permitted to view, restricted to those that match the request. To list guardians for any student that the requesting user may view guardians for, use the literal character `-` for the student ID. This method returns the following error codes: * `PERMISSION_DENIED` if a `student_id` is specified, and the requesting user is not permitted to view guardian information for that student, if `"-"` is specified as the `student_id` and the user is not a domain administrator, if guardians are not enabled for the domain in question, if the `invited_email_address` filter is set by a user who is not a domain administrator, or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot be recognized (it is not an email address, nor a `student_id` from the API, nor the literal string `me`). May also be returned if an invalid `page_token` is provided. * `NOT_FOUND` if a `student_id` is specified, and its format can be recognized, but Classroom has no record of that student.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `studentId` | `string` | path | Yes | Filter results by the student who the guardian is linked to. The identifier can be one of the following: * the numeri... |
| `invitedEmailAddress` | `string` | query | No | Filter results by the email address that the original invitation was sent to, resulting in this guardian link. This f... |
| `pageSize` | `integer` | query | No | Maximum number of items to return. Zero or unspecified indicates that the server may assign a maximum. The server may... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |

**Response**: `ListGuardiansResponse`

```typescript
const res = await classroom.guardians.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly`
- `https://www.googleapis.com/auth/classroom.guardianlinks.students`
- `https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly`

---

### `classroom.userProfiles.guardians.get`

**GET** `v1/userProfiles/{studentId}/guardians/{guardianId}`

Returns a specific guardian. This method returns the following error codes: * `PERMISSION_DENIED` if no user that matches the provided `student_id` is visible to the requesting user, if the requesting user is not permitted to view guardian information for the student identified by the `student_id`, if guardians are not enabled for the domain in question, or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot be recognized (it is not an email address, nor a `student_id` from the API, nor the literal string `me`). * `NOT_FOUND` if the requesting user is permitted to view guardians for the requested `student_id`, but no `Guardian` record exists for that student that matches the provided `guardian_id`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `studentId` | `string` | path | Yes | The student whose guardian is being requested. One of the following: * the numeric identifier for the user * the emai... |
| `guardianId` | `string` | path | Yes | The `id` field from a `Guardian`. |

**Response**: `Guardian`

```typescript
const res = await classroom.guardians.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly`
- `https://www.googleapis.com/auth/classroom.guardianlinks.students`
- `https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly`

---

### `classroom.userProfiles.guardians.delete`

**DELETE** `v1/userProfiles/{studentId}/guardians/{guardianId}`

Deletes a guardian. The guardian will no longer receive guardian notifications and the guardian will no longer be accessible via the API. This method returns the following error codes: * `PERMISSION_DENIED` if no user that matches the provided `student_id` is visible to the requesting user, if the requesting user is not permitted to manage guardians for the student identified by the `student_id`, if guardians are not enabled for the domain in question, or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot be recognized (it is not an email address, nor a `student_id` from the API). * `NOT_FOUND` if the requesting user is permitted to modify guardians for the requested `student_id`, but no `Guardian` record exists for that student with the provided `guardian_id`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `studentId` | `string` | path | Yes | The student whose guardian is to be deleted. One of the following: * the numeric identifier for the user * the email ... |
| `guardianId` | `string` | path | Yes | The `id` field from a `Guardian`. |

**Response**: `Empty`

```typescript
const res = await classroom.guardians.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.guardianlinks.students`

---

### `classroom.invitations.create`

**POST** `v1/invitations`

Creates an invitation. Only one invitation for a user and course may exist at a time. Delete and re-create an invitation to make changes. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to create invitations for this course or for access errors. * `NOT_FOUND` if the course or the user does not exist. * `FAILED_PRECONDITION`: * if the requested user's account is disabled. * if the user already has this role or a role with greater permissions. * for the following request errors: * IneligibleOwner * `ALREADY_EXISTS` if an invitation for the specified user and course already exists.

**Request body**: `Invitation`

**Response**: `Invitation`

```typescript
const res = await classroom.invitations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.invitations.get`

**GET** `v1/invitations/{id}`

Returns an invitation. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to view the requested invitation or for access errors. * `NOT_FOUND` if no invitation exists with the requested ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | Identifier of the invitation to return. |

**Response**: `Invitation`

```typescript
const res = await classroom.invitations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`
- `https://www.googleapis.com/auth/classroom.rosters.readonly`

---

### `classroom.invitations.delete`

**DELETE** `v1/invitations/{id}`

Deletes an invitation. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to delete the requested invitation or for access errors. * `NOT_FOUND` if no invitation exists with the requested ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | Identifier of the invitation to delete. |

**Response**: `Empty`

```typescript
const res = await classroom.invitations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.invitations.list`

**GET** `v1/invitations`

Returns a list of invitations that the requesting user is permitted to view, restricted to those that match the list request. *Note:* At least one of `user_id` or `course_id` must be supplied. Both fields can be supplied. This method returns the following error codes: * `PERMISSION_DENIED` for access errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `courseId` | `string` | query | No | Restricts returned invitations to those for a course with the specified identifier. |
| `pageSize` | `integer` | query | No | Maximum number of items to return. The default is 500 if unspecified or `0`. The server may return fewer than the spe... |
| `pageToken` | `string` | query | No | nextPageToken value returned from a previous list call, indicating that the subsequent page of results should be retu... |
| `userId` | `string` | query | No | Restricts returned invitations to those for a specific user. The identifier can be one of the following: * the numeri... |

**Response**: `ListInvitationsResponse`

```typescript
const res = await classroom.invitations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`
- `https://www.googleapis.com/auth/classroom.rosters.readonly`

---

### `classroom.invitations.accept`

**POST** `v1/invitations/{id}:accept`

Accepts an invitation, removing it and adding the invited user to the teachers or students (as appropriate) of the specified course. Only the invited user may accept an invitation. This method returns the following error codes: * `PERMISSION_DENIED` if the requesting user is not permitted to accept the requested invitation or for access errors. * `FAILED_PRECONDITION` for the following request errors: * CourseMemberLimitReached * CourseNotModifiable * CourseTeacherLimitReached * UserGroupsMembershipLimitReached * `NOT_FOUND` if no invitation exists with the requested ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `id` | `string` | path | Yes | Identifier of the invitation to accept. |

**Response**: `Empty`

```typescript
const res = await classroom.invitations.accept({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.rosters`

---

### `classroom.registrations.create`

**POST** `v1/registrations`

Creates a `Registration`, causing Classroom to start sending notifications from the provided `feed` to the destination provided in `cloudPubSubTopic`. Returns the created `Registration`. Currently, this will be the same as the argument, but with server-assigned fields such as `expiry_time` and `id` filled in. Note that any value specified for the `expiry_time` or `id` fields will be ignored. While Classroom may validate the `cloudPubSubTopic` and return errors on a best effort basis, it is the caller's responsibility to ensure that it exists and that Classroom has permission to publish to it. This method may return the following error codes: * `PERMISSION_DENIED` if: * the authenticated user does not have permission to receive notifications from the requested field; or * the current user has not granted access to the current Cloud project with the appropriate scope for the requested feed. Note that domain-wide delegation of authority is not currently supported for this purpose. If the request has the appropriate scope, but no grant exists, a Request Errors is returned. * another access error is encountered. * `INVALID_ARGUMENT` if: * no `cloudPubsubTopic` is specified, or the specified `cloudPubsubTopic` is not valid; or * no `feed` is specified, or the specified `feed` is not valid. * `NOT_FOUND` if: * the specified `feed` cannot be located, or the requesting user does not have permission to determine whether or not it exists; or * the specified `cloudPubsubTopic` cannot be located, or Classroom has not been granted permission to publish to it.

**Request body**: `Registration`

**Response**: `Registration`

```typescript
const res = await classroom.registrations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.push-notifications`

---

### `classroom.registrations.delete`

**DELETE** `v1/registrations/{registrationId}`

Deletes a `Registration`, causing Classroom to stop sending notifications for that `Registration`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `registrationId` | `string` | path | Yes | The `registration_id` of the `Registration` to be deleted. |

**Response**: `Empty`

```typescript
const res = await classroom.registrations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/classroom.push-notifications`

---

## Schemas

### `AddOnAttachment`

An add-on attachment on a post.

| Property | Type | Description |
|----------|------|-------------|
| `copyHistory` | `array<CopyHistory>` | Output only. Identifiers of attachments that were previous copies of this attachment. If the atta... |
| `courseId` | `string` | Immutable. Identifier of the course. |
| `dueDate` | `Date` | Date, in UTC, that work on this attachment is due. This must be specified if `due_time` is specif... |
| `dueTime` | `TimeOfDay` | Time of day, in UTC, that work on this attachment is due. This must be specified if `due_date` is... |
| `id` | `string` | Immutable. Classroom-assigned identifier for this attachment, unique per post. |
| `itemId` | `string` | Immutable. Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which th... |
| `maxPoints` | `number` | Maximum grade for this attachment. Can only be set if `studentWorkReviewUri` is set. Set to a non... |
| `postId` | `string` | Immutable. Deprecated, use `item_id` instead. |
| `studentViewUri` | `EmbedUri` | Required. URI to show the student view of the attachment. The URI will be opened in an iframe wit... |
| `studentWorkReviewUri` | `EmbedUri` | URI for the teacher to see student work on the attachment, if applicable. The URI will be opened ... |
| `teacherViewUri` | `EmbedUri` | Required. URI to show the teacher view of the attachment. The URI will be opened in an iframe wit... |
| `title` | `string` | Required. Title of this attachment. The title must be between 1 and 1000 characters. |

### `AddOnAttachmentStudentSubmission`

Payload for grade update requests.

| Property | Type | Description |
|----------|------|-------------|
| `pointsEarned` | `number` | Student grade on this attachment. If unset, no grade was set. |
| `postSubmissionState` | `string` | Submission state of add-on attachment's parent post (i.e. assignment). |

### `AddOnContext`

Attachment-relevant metadata for Classroom add-ons in the context of a specific post.

| Property | Type | Description |
|----------|------|-------------|
| `courseId` | `string` | Immutable. Identifier of the course. |
| `itemId` | `string` | Immutable. Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which th... |
| `postId` | `string` | Immutable. Deprecated, use `item_id` instead. |
| `studentContext` | `StudentContext` | Add-on context corresponding to the requesting user's role as a student. Its presence implies tha... |
| `supportsStudentWork` | `boolean` | Optional. Whether the post allows the teacher to see student work and passback grades. |
| `teacherContext` | `TeacherContext` | Add-on context corresponding to the requesting user's role as a teacher. Its presence implies tha... |

### `Announcement`

Announcement created by a teacher for students of the course

| Property | Type | Description |
|----------|------|-------------|
| `alternateLink` | `string` | Absolute link to this announcement in the Classroom web UI. This is only populated if `state` is ... |
| `assigneeMode` | `string` | Assignee mode of the announcement. If unspecified, the default value is `ALL_STUDENTS`. |
| `courseId` | `string` | Identifier of the course. Read-only. |
| `creationTime` | `string` | Timestamp when this announcement was created. Read-only. |
| `creatorUserId` | `string` | Identifier for the user that created the announcement. Read-only. |
| `id` | `string` | Classroom-assigned identifier of this announcement, unique per course. Read-only. |
| `individualStudentsOptions` | `IndividualStudentsOptions` | Identifiers of students with access to the announcement. This field is set only if `assigneeMode`... |
| `materials` | `array<Material>` | Additional materials. Announcements must have no more than 20 material items. |
| `scheduledTime` | `string` | Optional timestamp when this announcement is scheduled to be published. |
| `state` | `string` | Status of this announcement. If unspecified, the default state is `DRAFT`. |
| `text` | `string` | Description of this announcement. The text must be a valid UTF-8 string containing no more than 3... |
| `updateTime` | `string` | Timestamp of the most recent change to this announcement. Read-only. |

### `Assignment`

Additional details for assignments.

| Property | Type | Description |
|----------|------|-------------|
| `studentWorkFolder` | `DriveFolder` | Drive folder where attachments from student submissions are placed. This is only populated for co... |

### `AssignmentSubmission`

Student work for an assignment.

| Property | Type | Description |
|----------|------|-------------|
| `attachments` | `array<Attachment>` | Attachments added by the student. Drive files that correspond to materials with a share mode of S... |

### `Attachment`

Attachment added to student assignment work. When creating attachments, setting the `form` field is not supported.

| Property | Type | Description |
|----------|------|-------------|
| `driveFile` | `DriveFile` | Google Drive file attachment. |
| `form` | `Form` | Google Forms attachment. |
| `link` | `Link` | Link attachment. |
| `youTubeVideo` | `YouTubeVideo` | Youtube video attachment. |

### `CloudPubsubTopic`

A reference to a Cloud Pub/Sub topic. To register for notifications, the owner of the topic must grant `classroom-notifications@system.gserviceaccount.com` the `projects.topics.publish` permission.

| Property | Type | Description |
|----------|------|-------------|
| `topicName` | `string` | The `name` field of a Cloud Pub/Sub [Topic](https://cloud.google.com/pubsub/docs/reference/rest/v... |

### `CopyHistory`

Identifier of a previous copy of a given attachment.

| Property | Type | Description |
|----------|------|-------------|
| `attachmentId` | `string` | Immutable. Identifier of the attachment. |
| `courseId` | `string` | Immutable. Identifier of the course. |
| `itemId` | `string` | Immutable. Identifier of the `Announcement`, `CourseWork`, or `CourseWorkMaterial` under which th... |
| `postId` | `string` | Immutable. Deprecated, use `item_id` instead. |

### `Course`

A Course in Classroom.

| Property | Type | Description |
|----------|------|-------------|
| `alternateLink` | `string` | Absolute link to this course in the Classroom web UI. Read-only. |
| `calendarId` | `string` | The Calendar ID for a calendar that all course members can see, to which Classroom adds events fo... |
| `courseGroupEmail` | `string` | The email address of a Google group containing all members of the course. This group does not acc... |
| `courseMaterialSets` | `array<CourseMaterialSet>` | Sets of materials that appear on the "about" page of this course. Read-only. |
| `courseState` | `string` | State of the course. If unspecified, the default state is `PROVISIONED`. |
| `creationTime` | `string` | Creation time of the course. Specifying this field in a course update mask results in an error. R... |
| `description` | `string` | Optional description. For example, "We'll be learning about the structure of living creatures fro... |
| `descriptionHeading` | `string` | Optional heading for the description. For example, "Welcome to 10th Grade Biology." If set, this ... |
| `enrollmentCode` | `string` | Enrollment code to use when joining this course. Specifying this field in a course update mask re... |
| `gradebookSettings` | `GradebookSettings` | The gradebook settings that specify how a student's overall grade for the course will be calculat... |
| `guardiansEnabled` | `boolean` | Whether or not guardian notifications are enabled for this course. Read-only. |
| `id` | `string` | Identifier for this course assigned by Classroom. When creating a course, you may optionally set ... |
| `name` | `string` | Name of the course. For example, "10th Grade Biology". The name is required. It must be between 1... |
| `ownerId` | `string` | The identifier of the owner of a course. When specified as a parameter of a create course request... |
| `room` | `string` | Optional room location. For example, "301". If set, this field must be a valid UTF-8 string and n... |
| `section` | `string` | Section of the course. For example, "Period 2". If set, this field must be a valid UTF-8 string a... |
| `subject` | `string` | Optional. The subject of the course. |
| `teacherFolder` | `DriveFolder` | Information about a Drive Folder that is shared with all teachers of the course. This field will ... |
| `teacherGroupEmail` | `string` | The email address of a Google group containing all teachers of the course. This group does not ac... |
| `updateTime` | `string` | Time of the most recent update to this course. Specifying this field in a course update mask resu... |

### `CourseAlias`

Alternative identifier for a course. An alias uniquely identifies a course. It must be unique within one of the following scopes: * domain: A domain-scoped alias is visible to all users within the alias creator's domain and can be created only by a domain admin. A domain-scoped alias is often used when a course has an identifier external to Classroom. * project: A project-scoped alias is visible to any request from an application using the Developer Console project ID that created the alias and can be created by any project. A project-scoped alias is often used when an application has alternative identifiers. A random value can also be used to avoid duplicate courses in the event of transmission failures, as retrying a request will return `ALREADY_EXISTS` if a previous one has succeeded.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | Alias string. The format of the string indicates the desired alias scoping. * `d:` indicates a do... |

### `CourseMaterial`

A material attached to a course as part of a material set.

| Property | Type | Description |
|----------|------|-------------|
| `driveFile` | `DriveFile` | Google Drive file attachment. |
| `form` | `Form` | Google Forms attachment. |
| `link` | `Link` | Link atatchment. |
| `youTubeVideo` | `YouTubeVideo` | Youtube video attachment. |

### `CourseMaterialSet`

A set of materials that appears on the "About" page of the course. These materials might include a syllabus, schedule, or other background information relating to the course as a whole.

| Property | Type | Description |
|----------|------|-------------|
| `materials` | `array<CourseMaterial>` | Materials attached to this set. |
| `title` | `string` | Title for this set. |

### `CourseRosterChangesInfo`

Information about a `Feed` with a `feed_type` of `COURSE_ROSTER_CHANGES`.

| Property | Type | Description |
|----------|------|-------------|
| `courseId` | `string` | The `course_id` of the course to subscribe to roster changes for. |

### `CourseWork`

Course work created by a teacher for students of the course.

| Property | Type | Description |
|----------|------|-------------|
| `alternateLink` | `string` | Absolute link to this course work in the Classroom web UI. This is only populated if `state` is `... |
| `assigneeMode` | `string` | Assignee mode of the coursework. If unspecified, the default value is `ALL_STUDENTS`. |
| `assignment` | `Assignment` | Assignment details. This is populated only when `work_type` is `ASSIGNMENT`. Read-only. |
| `associatedWithDeveloper` | `boolean` | Whether this course work item is associated with the Developer Console project making the request... |
| `courseId` | `string` | Identifier of the course. Read-only. |
| `creationTime` | `string` | Timestamp when this course work was created. Read-only. |
| `creatorUserId` | `string` | Identifier for the user that created the coursework. Read-only. |
| `description` | `string` | Optional description of this course work. If set, the description must be a valid UTF-8 string co... |
| `dueDate` | `Date` | Optional date, in UTC, that submissions for this course work are due. This must be specified if `... |
| `dueTime` | `TimeOfDay` | Optional time of day, in UTC, that submissions for this course work are due. This must be specifi... |
| `gradeCategory` | `GradeCategory` | The category that this coursework's grade contributes to. Present only when a category has been c... |
| `gradingPeriodId` | `string` | Identifier of the grading period associated with the coursework. * At creation, if unspecified, t... |
| `id` | `string` | Classroom-assigned identifier of this course work, unique per course. Read-only. |
| `individualStudentsOptions` | `IndividualStudentsOptions` | Identifiers of students with access to the coursework. This field is set only if `assigneeMode` i... |
| `materials` | `array<Material>` | Additional materials. CourseWork must have no more than 20 material items. |
| `maxPoints` | `number` | Maximum grade for this course work. If zero or unspecified, this assignment is considered ungrade... |
| `multipleChoiceQuestion` | `MultipleChoiceQuestion` | Multiple choice question details. For read operations, this field is populated only when `work_ty... |
| `scheduledTime` | `string` | Optional timestamp when this course work is scheduled to be published. |
| `state` | `string` | Status of this course work. If unspecified, the default state is `DRAFT`. |
| `submissionModificationMode` | `string` | Setting to determine when students are allowed to modify submissions. If unspecified, the default... |
| `title` | `string` | Title of this course work. The title must be a valid UTF-8 string containing between 1 and 3000 c... |
| `topicId` | `string` | Identifier for the topic that this coursework is associated with. Must match an existing topic in... |
| `updateTime` | `string` | Timestamp of the most recent change to this course work. Read-only. |
| `workType` | `string` | Type of this course work. The type is set when the course work is created and cannot be changed. |

### `CourseWorkChangesInfo`

Information about a `Feed` with a `feed_type` of `COURSE_WORK_CHANGES`.

| Property | Type | Description |
|----------|------|-------------|
| `courseId` | `string` | The `course_id` of the course to subscribe to work changes for. |

### `CourseWorkMaterial`

Course work material created by a teacher for students of the course

| Property | Type | Description |
|----------|------|-------------|
| `alternateLink` | `string` | Absolute link to this course work material in the Classroom web UI. This is only populated if `st... |
| `assigneeMode` | `string` | Assignee mode of the course work material. If unspecified, the default value is `ALL_STUDENTS`. |
| `courseId` | `string` | Identifier of the course. Read-only. |
| `creationTime` | `string` | Timestamp when this course work material was created. Read-only. |
| `creatorUserId` | `string` | Identifier for the user that created the course work material. Read-only. |
| `description` | `string` | Optional description of this course work material. The text must be a valid UTF-8 string containi... |
| `id` | `string` | Classroom-assigned identifier of this course work material, unique per course. Read-only. |
| `individualStudentsOptions` | `IndividualStudentsOptions` | Identifiers of students with access to the course work material. This field is set only if `assig... |
| `materials` | `array<Material>` | Additional materials. A course work material must have no more than 20 material items. |
| `scheduledTime` | `string` | Optional timestamp when this course work material is scheduled to be published. |
| `state` | `string` | Status of this course work material. If unspecified, the default state is `DRAFT`. |
| `title` | `string` | Title of this course work material. The title must be a valid UTF-8 string containing between 1 a... |
| `topicId` | `string` | Identifier for the topic that this course work material is associated with. Must match an existin... |
| `updateTime` | `string` | Timestamp of the most recent change to this course work material. Read-only. |

### `Criterion`

A rubric criterion. Each criterion is a dimension on which performance is rated.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the criterion. |
| `id` | `string` | The criterion ID. On creation, an ID is assigned. |
| `levels` | `array<Level>` | The list of levels within this criterion. |
| `title` | `string` | The title of the criterion. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DriveFile`

Representation of a Google Drive file.

| Property | Type | Description |
|----------|------|-------------|
| `alternateLink` | `string` | URL that can be used to access the Drive item. Read-only. |
| `id` | `string` | Drive API resource ID. |
| `thumbnailUrl` | `string` | URL of a thumbnail image of the Drive item. Read-only. |
| `title` | `string` | Title of the Drive item. Read-only. |

### `DriveFolder`

Representation of a Google Drive folder.

| Property | Type | Description |
|----------|------|-------------|
| `alternateLink` | `string` | URL that can be used to access the Drive folder. Read-only. |
| `id` | `string` | Drive API resource ID. |
| `title` | `string` | Title of the Drive folder. Read-only. |

### `EmbedUri`

URI to be iframed after being populated with query parameters.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. URI to be iframed after being populated with query parameters. This must be a valid UTF... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Feed`

A class of notifications that an application can register to receive. For example: "all roster changes for a domain".

| Property | Type | Description |
|----------|------|-------------|
| `courseRosterChangesInfo` | `CourseRosterChangesInfo` | Information about a `Feed` with a `feed_type` of `COURSE_ROSTER_CHANGES`. This field must be spec... |
| `courseWorkChangesInfo` | `CourseWorkChangesInfo` | Information about a `Feed` with a `feed_type` of `COURSE_WORK_CHANGES`. This field must be specif... |
| `feedType` | `string` | The type of feed. |

### `Form`

Google Forms item.

| Property | Type | Description |
|----------|------|-------------|
| `formUrl` | `string` | URL of the form. |
| `responseUrl` | `string` | URL of the form responses document. Only set if responses have been recorded and only when the re... |
| `thumbnailUrl` | `string` | URL of a thumbnail image of the Form. Read-only. |
| `title` | `string` | Title of the Form. Read-only. |

### `GeminiGem`

Gemini Gem link.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Gems resource id. |
| `title` | `string` | Title of the Gem. |
| `url` | `string` | URL that can be used to access the Gem. |

### `GlobalPermission`

Global user permission description.

| Property | Type | Description |
|----------|------|-------------|
| `permission` | `string` | Permission value. |

### `GradeCategory`

Details for a grade category in a course. Coursework may have zero or one grade category, and the category may be used in computing the overall grade. See the [help center article](https://support.google.com/edu/classroom/answer/9184995) for details.

| Property | Type | Description |
|----------|------|-------------|
| `defaultGradeDenominator` | `integer` | Default value of denominator. Only applicable when grade calculation type is TOTAL_POINTS. |
| `id` | `string` | ID of the grade category. |
| `name` | `string` | Name of the grade category. |
| `weight` | `integer` | The weight of the category average as part of overall average. A weight of 12.34% is represented ... |

### `GradeHistory`

The history of each grade on this submission.

| Property | Type | Description |
|----------|------|-------------|
| `actorUserId` | `string` | The teacher who made the grade change. |
| `gradeChangeType` | `string` | The type of grade change at this time in the submission grade history. |
| `gradeTimestamp` | `string` | When the grade of the submission was changed. |
| `maxPoints` | `number` | The denominator of the grade at this time in the submission grade history. |
| `pointsEarned` | `number` | The numerator of the grade at this time in the submission grade history. |

### `GradebookSettings`

The gradebook settings for a course. See the [help center article](https://support.google.com/edu/classroom/answer/9184995) for details.

| Property | Type | Description |
|----------|------|-------------|
| `calculationType` | `string` | Indicates how the overall grade is calculated. |
| `displaySetting` | `string` | Indicates who can see the overall grade.. |
| `gradeCategories` | `array<GradeCategory>` | Grade categories that are available for coursework in the course. |

### `GradingPeriod`

An individual grading period. Grading periods must not have overlapping date ranges and must be listed in chronological order. For example, if the end_date of a grading period is 2024-01-25, then the start_date of the next grading period must be 2024-01-26 or later. Each grading period must have a unique title within a course.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | Required. End date, in UTC, of the grading period. Inclusive. |
| `id` | `string` | Output only. System generated grading period ID. Read-only. |
| `startDate` | `Date` | Required. Start date, in UTC, of the grading period. Inclusive. |
| `title` | `string` | Required. Title of the grading period. For example, “Semester 1”. |

### `GradingPeriodSettings`

Grading period settings that include all the individual grading periods in a course.

| Property | Type | Description |
|----------|------|-------------|
| `applyToExistingCoursework` | `boolean` | Supports toggling the application of grading periods on existing stream items. Once set, this val... |
| `gradingPeriods` | `array<GradingPeriod>` | The list of grading periods in a specific course. Grading periods must not have overlapping date ... |

### `Guardian`

Association between a student and a guardian of that student. The guardian may receive information about the student's course work.

| Property | Type | Description |
|----------|------|-------------|
| `guardianId` | `string` | Identifier for the guardian. |
| `guardianProfile` | `UserProfile` | User profile for the guardian. |
| `invitedEmailAddress` | `string` | The email address to which the initial guardian invitation was sent. This field is only visible t... |
| `studentId` | `string` | Identifier for the student to whom the guardian relationship applies. |

### `GuardianInvitation`

An invitation to become the guardian of a specified user, sent to a specified email address.

| Property | Type | Description |
|----------|------|-------------|
| `creationTime` | `string` | The time that this invitation was created. Read-only. |
| `invitationId` | `string` | Unique identifier for this invitation. Read-only. |
| `invitedEmailAddress` | `string` | Email address that the invitation was sent to. This field is only visible to domain administrators. |
| `state` | `string` | The state that this invitation is in. |
| `studentId` | `string` | ID of the student (in standard format) |

### `IndividualStudentsOptions`

Assignee details about a coursework/announcement. This field is set if and only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.

| Property | Type | Description |
|----------|------|-------------|
| `studentIds` | `array<string>` | Identifiers for the students that have access to the coursework/announcement. |

### `Invitation`

An invitation to join a course.

| Property | Type | Description |
|----------|------|-------------|
| `courseId` | `string` | Identifier of the course to invite the user to. |
| `id` | `string` | Identifier assigned by Classroom. Read-only. |
| `role` | `string` | Role to invite the user to have. Must not be `COURSE_ROLE_UNSPECIFIED`. |
| `userId` | `string` | Identifier of the invited user. When specified as a parameter of a request, this identifier can b... |

### `Level`

A level of the criterion.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the level. |
| `id` | `string` | The level ID. On creation, an ID is assigned. |
| `points` | `number` | Optional points associated with this level. If set, all levels within the rubric must specify poi... |
| `title` | `string` | The title of the level. If the level has no points set, title must be set. |

### `Link`

URL item.

| Property | Type | Description |
|----------|------|-------------|
| `thumbnailUrl` | `string` | URL of a thumbnail image of the target URL. Read-only. |
| `title` | `string` | Title of the target of the URL. Read-only. |
| `url` | `string` | URL to link to. This must be a valid UTF-8 string containing between 1 and 2024 characters. |

### `ListAddOnAttachmentsResponse`

Response when listing add-on attachments.

| Property | Type | Description |
|----------|------|-------------|
| `addOnAttachments` | `array<AddOnAttachment>` | Attachments under the given post. |
| `nextPageToken` | `string` | A token, which can be sent as `pageToken` to retrieve the next page. If this field is omitted, th... |

### `ListAnnouncementsResponse`

Response when listing course work.

| Property | Type | Description |
|----------|------|-------------|
| `announcements` | `array<Announcement>` | Announcement items that match the request. |
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |

### `ListCourseAliasesResponse`

Response when listing course aliases.

| Property | Type | Description |
|----------|------|-------------|
| `aliases` | `array<CourseAlias>` | The course aliases. |
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |

### `ListCourseWorkMaterialResponse`

Response when listing course work material.

| Property | Type | Description |
|----------|------|-------------|
| `courseWorkMaterial` | `array<CourseWorkMaterial>` | Course work material items that match the request. |
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |

### `ListCourseWorkResponse`

Response when listing course work.

| Property | Type | Description |
|----------|------|-------------|
| `courseWork` | `array<CourseWork>` | Course work items that match the request. |
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |

### `ListCoursesResponse`

Response when listing courses.

| Property | Type | Description |
|----------|------|-------------|
| `courses` | `array<Course>` | Courses that match the list request. |
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |

### `ListGuardianInvitationsResponse`

Response when listing guardian invitations.

| Property | Type | Description |
|----------|------|-------------|
| `guardianInvitations` | `array<GuardianInvitation>` | Guardian invitations that matched the list request. |
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |

### `ListGuardiansResponse`

Response when listing guardians.

| Property | Type | Description |
|----------|------|-------------|
| `guardians` | `array<Guardian>` | Guardians on this page of results that met the criteria specified in the request. |
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |

### `ListInvitationsResponse`

Response when listing invitations.

| Property | Type | Description |
|----------|------|-------------|
| `invitations` | `array<Invitation>` | Invitations that match the list request. |
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |

### `ListRubricsResponse`

Response when listing rubrics.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |
| `rubrics` | `array<Rubric>` | Rubrics that match the request. |

### `ListStudentGroupMembersResponse`

Response when listing students in a group.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |
| `studentGroupMembers` | `array<StudentGroupMember>` | The student group members. |

### `ListStudentGroupsResponse`

Response when listing student groups.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |
| `studentGroups` | `array<StudentGroup>` | The student groups. |

### `ListStudentSubmissionsResponse`

Response when listing student submissions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |
| `studentSubmissions` | `array<StudentSubmission>` | Student work that matches the request. |

### `ListStudentsResponse`

Response when listing students.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |
| `students` | `array<Student>` | Students who match the list request. |

### `ListTeachersResponse`

Response when listing teachers.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |
| `teachers` | `array<Teacher>` | Teachers who match the list request. |

### `ListTopicResponse`

Response when listing topics.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token identifying the next page of results to return. If empty, no further results are available. |
| `topic` | `array<Topic>` | Topic items that match the request. |

### `Material`

Material attached to course work. When creating attachments, setting the `form`, `gem`, or `notebook` field is not supported.

| Property | Type | Description |
|----------|------|-------------|
| `driveFile` | `SharedDriveFile` | Google Drive file material. |
| `form` | `Form` | Google Forms material. Read-only. |
| `gem` | `GeminiGem` | Gemini Gem material. Read-only. |
| `link` | `Link` | Link material. On creation, this is upgraded to a more appropriate type if possible, and this is ... |
| `notebook` | `NotebookLmNotebook` | NotebookLM Notebook material. Read-only. |
| `youtubeVideo` | `YouTubeVideo` | YouTube video material. |

### `ModifyAnnouncementAssigneesRequest`

Request to modify assignee mode and options of an announcement.

| Property | Type | Description |
|----------|------|-------------|
| `assigneeMode` | `string` | Mode of the announcement describing whether it is accessible by all students or specified individ... |
| `modifyIndividualStudentsOptions` | `ModifyIndividualStudentsOptions` | Set which students can view or cannot view the announcement. Must be specified only when `assigne... |

### `ModifyAttachmentsRequest`

Request to modify the attachments of a student submission.

| Property | Type | Description |
|----------|------|-------------|
| `addAttachments` | `array<Attachment>` | Attachments to add. A student submission may not have more than 20 attachments. Form attachments ... |

### `ModifyCourseWorkAssigneesRequest`

Request to modify assignee mode and options of a coursework.

| Property | Type | Description |
|----------|------|-------------|
| `assigneeMode` | `string` | Mode of the coursework describing whether it will be assigned to all students or specified indivi... |
| `modifyIndividualStudentsOptions` | `ModifyIndividualStudentsOptions` | Set which students are assigned or not assigned to the coursework. Must be specified only when `a... |

### `ModifyIndividualStudentsOptions`

Contains fields to add or remove students from a course work or announcement where the `assigneeMode` is set to `INDIVIDUAL_STUDENTS`.

| Property | Type | Description |
|----------|------|-------------|
| `addStudentIds` | `array<string>` | IDs of students to be added as having access to this coursework/announcement. |
| `removeStudentIds` | `array<string>` | IDs of students to be removed from having access to this coursework/announcement. |

### `MultipleChoiceQuestion`

Additional details for multiple-choice questions.

| Property | Type | Description |
|----------|------|-------------|
| `choices` | `array<string>` | Possible choices. |

### `MultipleChoiceSubmission`

Student work for a multiple-choice question.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` | Student's select choice. |

### `Name`

Details of the user's name.

| Property | Type | Description |
|----------|------|-------------|
| `familyName` | `string` | The user's last name. Read-only. |
| `fullName` | `string` | The user's full name formed by concatenating the first and last name values. Read-only. |
| `givenName` | `string` | The user's first name. Read-only. |

### `NotebookLmNotebook`

NotebookLM Notebook link.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Notebook resource id. |
| `title` | `string` | Title of the Notebook. |
| `url` | `string` | URL that can be used to access the Notebook. |

### `ReclaimStudentSubmissionRequest`

Request to reclaim a student submission.

### `Registration`

An instruction to Classroom to send notifications from the `feed` to the provided destination.

| Property | Type | Description |
|----------|------|-------------|
| `cloudPubsubTopic` | `CloudPubsubTopic` | The Cloud Pub/Sub topic that notifications are to be sent to. |
| `expiryTime` | `string` | The time until which the `Registration` is effective. This is a read-only field assigned by the s... |
| `feed` | `Feed` | Specification for the class of notifications that Classroom should deliver to the destination. |
| `registrationId` | `string` | A server-generated unique identifier for this `Registration`. Read-only. |

### `ReturnStudentSubmissionRequest`

Request to return a student submission.

### `Rubric`

The rubric of the course work. A rubric is a scoring guide used to evaluate student work and give feedback. For further details, see [Rubrics structure and known limitations](/classroom/rubrics/limitations).

| Property | Type | Description |
|----------|------|-------------|
| `courseId` | `string` | Identifier of the course. Read-only. |
| `courseWorkId` | `string` | Identifier for the course work this corresponds to. Read-only. |
| `creationTime` | `string` | Output only. Timestamp when this rubric was created. Read-only. |
| `criteria` | `array<Criterion>` | List of criteria. Each criterion is a dimension on which performance is rated. |
| `id` | `string` | Classroom-assigned identifier for the rubric. This is unique among rubrics for the relevant cours... |
| `sourceSpreadsheetId` | `string` | Input only. Immutable. Google Sheets ID of the spreadsheet. This spreadsheet must contain formatt... |
| `updateTime` | `string` | Output only. Timestamp of the most recent change to this rubric. Read-only. |

### `RubricGrade`

A rubric grade set for the student submission. There is at most one entry per rubric criterion.

| Property | Type | Description |
|----------|------|-------------|
| `criterionId` | `string` | Optional. Criterion ID. |
| `levelId` | `string` | Optional. Optional level ID of the selected level. If empty, no level was selected. |
| `points` | `number` | Optional. Optional points assigned for this criterion, typically based on the level. Levels might... |

### `SharedDriveFile`

Drive file that is used as material for course work.

| Property | Type | Description |
|----------|------|-------------|
| `driveFile` | `DriveFile` | Drive file details. |
| `shareMode` | `string` | Mechanism by which students access the Drive item. |

### `ShortAnswerSubmission`

Student work for a short answer question.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` | Student response to a short-answer question. |

### `StateHistory`

The history of each state this submission has been in.

| Property | Type | Description |
|----------|------|-------------|
| `actorUserId` | `string` | The teacher or student who made the change. |
| `state` | `string` | The workflow pipeline stage. |
| `stateTimestamp` | `string` | When the submission entered this state. |

### `Student`

Student in a course.

| Property | Type | Description |
|----------|------|-------------|
| `courseId` | `string` | Identifier of the course. Read-only. |
| `profile` | `UserProfile` | Global user information for the student. Read-only. |
| `studentWorkFolder` | `DriveFolder` | Information about a Drive Folder for this student's work in this course. Only visible to the stud... |
| `userId` | `string` | Identifier of the user. When specified as a parameter of a request, this identifier can be one of... |

### `StudentContext`

Role-specific context if the requesting user is a student.

| Property | Type | Description |
|----------|------|-------------|
| `submissionId` | `string` | Requesting user's submission id to be used for grade passback and to identify the student when sh... |

### `StudentGroup`

A student group in a course.

| Property | Type | Description |
|----------|------|-------------|
| `courseId` | `string` | The identifier of the course. |
| `id` | `string` | The identifier of the student group. |
| `title` | `string` | The title of the student group. |

### `StudentGroupMember`

A student member in a student group.

| Property | Type | Description |
|----------|------|-------------|
| `courseId` | `string` | The identifier of the course. |
| `studentGroupId` | `string` | The identifier of the student group. |
| `userId` | `string` | Identifier of the student. |

### `StudentSubmission`

Student submission for course work. `StudentSubmission` items are generated when a `CourseWork` item is created. Student submissions that have never been accessed (i.e. with `state` = NEW) may not have a creation time or update time.

| Property | Type | Description |
|----------|------|-------------|
| `alternateLink` | `string` | Absolute link to the submission in the Classroom web UI. Read-only. |
| `assignedGrade` | `number` | Optional grade. If unset, no grade was set. This value must be non-negative. Decimal (that is, no... |
| `assignedRubricGrades` | `object` | Assigned rubric grades based on the rubric's Criteria. This map is empty if there is no rubric at... |
| `assignmentSubmission` | `AssignmentSubmission` | Submission content when course_work_type is ASSIGNMENT. Students can modify this content using Mo... |
| `associatedWithDeveloper` | `boolean` | Whether this student submission is associated with the Developer Console project making the reque... |
| `courseId` | `string` | Identifier of the course. Read-only. |
| `courseWorkId` | `string` | Identifier for the course work this corresponds to. Read-only. |
| `courseWorkType` | `string` | Type of course work this submission is for. Read-only. |
| `creationTime` | `string` | Creation time of this submission. This may be unset if the student has not accessed this item. Re... |
| `draftGrade` | `number` | Optional pending grade. If unset, no grade was set. This value must be non-negative. Decimal (tha... |
| `draftRubricGrades` | `object` | Pending rubric grades based on the rubric's criteria. This map is empty if there is no rubric att... |
| `id` | `string` | Classroom-assigned Identifier for the student submission. This is unique among submissions for th... |
| `late` | `boolean` | Whether this submission is late. Read-only. |
| `multipleChoiceSubmission` | `MultipleChoiceSubmission` | Submission content when course_work_type is MULTIPLE_CHOICE_QUESTION. |
| `shortAnswerSubmission` | `ShortAnswerSubmission` | Submission content when course_work_type is SHORT_ANSWER_QUESTION. |
| `state` | `string` | State of this submission. Read-only. |
| `submissionHistory` | `array<SubmissionHistory>` | The history of the submission (includes state and grade histories). Read-only. |
| `updateTime` | `string` | Last update time of this submission. This may be unset if the student has not accessed this item.... |
| `userId` | `string` | Identifier for the student that owns this submission. Read-only. |

### `SubmissionHistory`

The history of the submission. This currently includes state and grade histories.

| Property | Type | Description |
|----------|------|-------------|
| `gradeHistory` | `GradeHistory` | The grade history information of the submission, if present. |
| `stateHistory` | `StateHistory` | The state history information of the submission, if present. |

### `Teacher`

Teacher of a course.

| Property | Type | Description |
|----------|------|-------------|
| `courseId` | `string` | Identifier of the course. Read-only. |
| `profile` | `UserProfile` | Global user information for the teacher. Read-only. |
| `userId` | `string` | Identifier of the user. When specified as a parameter of a request, this identifier can be one of... |

### `TeacherContext`

Role-specific context if the requesting user is a teacher.

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `Topic`

Topic created by a teacher for the course

| Property | Type | Description |
|----------|------|-------------|
| `courseId` | `string` | Identifier of the course. Read-only. |
| `name` | `string` | The name of the topic, generated by the user. Leading and trailing whitespaces, if any, are trimm... |
| `topicId` | `string` | Unique identifier for the topic. Read-only. |
| `updateTime` | `string` | The time the topic was last updated by the system. Read-only. |

### `TurnInStudentSubmissionRequest`

Request to turn in a student submission.

### `UserProfile`

Global information for a user.

| Property | Type | Description |
|----------|------|-------------|
| `emailAddress` | `string` | Email address of the user. Must request `https://www.googleapis.com/auth/classroom.profile.emails... |
| `id` | `string` | Identifier of the user. Read-only. |
| `name` | `Name` | Name of the user. Read-only. |
| `permissions` | `array<GlobalPermission>` | Global permissions of the user. Read-only. |
| `photoUrl` | `string` | URL of user's profile photo. Must request `https://www.googleapis.com/auth/classroom.profile.phot... |
| `verifiedTeacher` | `boolean` | Represents whether a Google Workspace for Education user's domain administrator has explicitly ve... |

### `YouTubeVideo`

YouTube video item.

| Property | Type | Description |
|----------|------|-------------|
| `alternateLink` | `string` | URL that can be used to view the YouTube video. Read-only. |
| `id` | `string` | YouTube API resource ID. |
| `thumbnailUrl` | `string` | URL of a thumbnail image of the YouTube video. Read-only. |
| `title` | `string` | Title of the YouTube video. Read-only. |

