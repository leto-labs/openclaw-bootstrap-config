# Blogger API - API Reference

**Version**: `v3` | **Methods**: 33 | **Schemas**: 15

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `blogger.comments.approve` | POST | `v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/approve` | Marks a comment as not spam by blog id, post id and comment id. |
| `blogger.comments.delete` | DELETE | `v3/blogs/{blogId}/posts/{postId}/comments/{commentId}` | Deletes a comment by blog id, post id and comment id. |
| `blogger.comments.get` | GET | `v3/blogs/{blogId}/posts/{postId}/comments/{commentId}` | Gets a comment by id. |
| `blogger.comments.list` | GET | `v3/blogs/{blogId}/posts/{postId}/comments` | Lists comments. |
| `blogger.comments.listByBlog` | GET | `v3/blogs/{blogId}/comments` | Lists comments by blog. |
| `blogger.comments.markAsSpam` | POST | `v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/spam` | Marks a comment as spam by blog id, post id and comment id. |
| `blogger.comments.removeContent` | POST | `v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/removecontent` | Removes the content of a comment by blog id, post id and comment id. |
| `blogger.pages.delete` | DELETE | `v3/blogs/{blogId}/pages/{pageId}` | Deletes a page by blog id and page id. |
| `blogger.pages.get` | GET | `v3/blogs/{blogId}/pages/{pageId}` | Gets a page by blog id and page id. |
| `blogger.pages.insert` | POST | `v3/blogs/{blogId}/pages` | Inserts a page. |
| `blogger.pages.list` | GET | `v3/blogs/{blogId}/pages` | Lists pages. |
| `blogger.pages.patch` | PATCH | `v3/blogs/{blogId}/pages/{pageId}` | Patches a page. |
| `blogger.pages.publish` | POST | `v3/blogs/{blogId}/pages/{pageId}/publish` | Publishes a page. |
| `blogger.pages.revert` | POST | `v3/blogs/{blogId}/pages/{pageId}/revert` | Reverts a published or scheduled page to draft state. |
| `blogger.pages.update` | PUT | `v3/blogs/{blogId}/pages/{pageId}` | Updates a page by blog id and page id. |
| `blogger.posts.delete` | DELETE | `v3/blogs/{blogId}/posts/{postId}` | Deletes a post by blog id and post id. |
| `blogger.posts.get` | GET | `v3/blogs/{blogId}/posts/{postId}` | Gets a post by blog id and post id |
| `blogger.posts.getByPath` | GET | `v3/blogs/{blogId}/posts/bypath` | Gets a post by path. |
| `blogger.posts.insert` | POST | `v3/blogs/{blogId}/posts` | Inserts a post. |
| `blogger.posts.list` | GET | `v3/blogs/{blogId}/posts` | Lists posts. |
| `blogger.posts.patch` | PATCH | `v3/blogs/{blogId}/posts/{postId}` | Patches a post. |
| `blogger.posts.publish` | POST | `v3/blogs/{blogId}/posts/{postId}/publish` | Publishes a post. |
| `blogger.posts.revert` | POST | `v3/blogs/{blogId}/posts/{postId}/revert` | Reverts a published or scheduled post to draft state. |
| `blogger.posts.search` | GET | `v3/blogs/{blogId}/posts/search` | Searches for posts matching given query terms in the specified blog. |
| `blogger.posts.update` | PUT | `v3/blogs/{blogId}/posts/{postId}` | Updates a post by blog id and post id. |
| `blogger.blogs.get` | GET | `v3/blogs/{blogId}` | Gets a blog by id. |
| `blogger.blogs.getByUrl` | GET | `v3/blogs/byurl` | Gets a blog by url. |
| `blogger.blogs.listByUser` | GET | `v3/users/{userId}/blogs` | Lists blogs by user. |
| `blogger.blogUserInfos.get` | GET | `v3/users/{userId}/blogs/{blogId}` | Gets one blog and user info pair by blog id and user id. |
| `blogger.pageViews.get` | GET | `v3/blogs/{blogId}/pageviews` | Gets page views by blog id. |
| `blogger.postUserInfos.get` | GET | `v3/users/{userId}/blogs/{blogId}/posts/{postId}` | Gets one post and user info pair, by post_id and user_id. |
| `blogger.postUserInfos.list` | GET | `v3/users/{userId}/blogs/{blogId}/posts` | Lists post and user info pairs. |
| `blogger.users.get` | GET | `v3/users/{userId}` | Gets one user by user_id. |

### `blogger.comments.approve`

**POST** `v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/approve`

Marks a comment as not spam by blog id, post id and comment id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `commentId` | `string` | path | Yes |  |

**Response**: `Comment`

```typescript
const res = await blogger.comments.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.comments.delete`

**DELETE** `v3/blogs/{blogId}/posts/{postId}/comments/{commentId}`

Deletes a comment by blog id, post id and comment id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `commentId` | `string` | path | Yes |  |

```typescript
const res = await blogger.comments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.comments.get`

**GET** `v3/blogs/{blogId}/posts/{postId}/comments/{commentId}`

Gets a comment by id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `commentId` | `string` | path | Yes |  |
| `view` | `string` | query | No |  |

**Response**: `Comment`

```typescript
const res = await blogger.comments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.comments.list`

**GET** `v3/blogs/{blogId}/posts/{postId}/comments`

Lists comments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `endDate` | `string` | query | No |  |
| `fetchBodies` | `boolean` | query | No |  |
| `maxResults` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |
| `startDate` | `string` | query | No |  |
| `status` | `string` | query | No |  |
| `view` | `string` | query | No |  |

**Response**: `CommentList`

```typescript
const res = await blogger.comments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.comments.listByBlog`

**GET** `v3/blogs/{blogId}/comments`

Lists comments by blog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `endDate` | `string` | query | No |  |
| `fetchBodies` | `boolean` | query | No |  |
| `maxResults` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |
| `startDate` | `string` | query | No |  |
| `status` | `string` | query | No |  |

**Response**: `CommentList`

```typescript
const res = await blogger.comments.listByBlog({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.comments.markAsSpam`

**POST** `v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/spam`

Marks a comment as spam by blog id, post id and comment id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `commentId` | `string` | path | Yes |  |

**Response**: `Comment`

```typescript
const res = await blogger.comments.markAsSpam({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.comments.removeContent`

**POST** `v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/removecontent`

Removes the content of a comment by blog id, post id and comment id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `commentId` | `string` | path | Yes |  |

**Response**: `Comment`

```typescript
const res = await blogger.comments.removeContent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.pages.delete`

**DELETE** `v3/blogs/{blogId}/pages/{pageId}`

Deletes a page by blog id and page id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `pageId` | `string` | path | Yes |  |
| `useTrash` | `boolean` | query | No | Move to Trash if possible |

```typescript
const res = await blogger.pages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.pages.get`

**GET** `v3/blogs/{blogId}/pages/{pageId}`

Gets a page by blog id and page id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `pageId` | `string` | path | Yes |  |
| `view` | `string` | query | No |  |

**Response**: `Page`

```typescript
const res = await blogger.pages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.pages.insert`

**POST** `v3/blogs/{blogId}/pages`

Inserts a page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `isDraft` | `boolean` | query | No |  |

**Request body**: `Page`

**Response**: `Page`

```typescript
const res = await blogger.pages.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.pages.list`

**GET** `v3/blogs/{blogId}/pages`

Lists pages.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `fetchBodies` | `boolean` | query | No |  |
| `maxResults` | `integer` | query | No |  |
| `pageToken` | `string` | query | No |  |
| `status` | `string` | query | No |  |
| `view` | `string` | query | No |  |

**Response**: `PageList`

```typescript
const res = await blogger.pages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.pages.patch`

**PATCH** `v3/blogs/{blogId}/pages/{pageId}`

Patches a page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `pageId` | `string` | path | Yes |  |
| `publish` | `boolean` | query | No |  |
| `revert` | `boolean` | query | No |  |

**Request body**: `Page`

**Response**: `Page`

```typescript
const res = await blogger.pages.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.pages.publish`

**POST** `v3/blogs/{blogId}/pages/{pageId}/publish`

Publishes a page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `pageId` | `string` | path | Yes |  |

**Response**: `Page`

```typescript
const res = await blogger.pages.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.pages.revert`

**POST** `v3/blogs/{blogId}/pages/{pageId}/revert`

Reverts a published or scheduled page to draft state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `pageId` | `string` | path | Yes |  |

**Response**: `Page`

```typescript
const res = await blogger.pages.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.pages.update`

**PUT** `v3/blogs/{blogId}/pages/{pageId}`

Updates a page by blog id and page id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `pageId` | `string` | path | Yes |  |
| `publish` | `boolean` | query | No |  |
| `revert` | `boolean` | query | No |  |

**Request body**: `Page`

**Response**: `Page`

```typescript
const res = await blogger.pages.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.posts.delete`

**DELETE** `v3/blogs/{blogId}/posts/{postId}`

Deletes a post by blog id and post id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `useTrash` | `boolean` | query | No | Move to Trash if possible |

```typescript
const res = await blogger.posts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.posts.get`

**GET** `v3/blogs/{blogId}/posts/{postId}`

Gets a post by blog id and post id

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `fetchBody` | `boolean` | query | No |  |
| `fetchImages` | `boolean` | query | No |  |
| `maxComments` | `integer` | query | No |  |
| `view` | `string` | query | No |  |

**Response**: `Post`

```typescript
const res = await blogger.posts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.posts.getByPath`

**GET** `v3/blogs/{blogId}/posts/bypath`

Gets a post by path.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `path` | `string` | query | Yes |  |
| `maxComments` | `integer` | query | No |  |
| `view` | `string` | query | No |  |

**Response**: `Post`

```typescript
const res = await blogger.posts.getByPath({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.posts.insert`

**POST** `v3/blogs/{blogId}/posts`

Inserts a post.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `fetchBody` | `boolean` | query | No |  |
| `fetchImages` | `boolean` | query | No |  |
| `isDraft` | `boolean` | query | No |  |

**Request body**: `Post`

**Response**: `Post`

```typescript
const res = await blogger.posts.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.posts.list`

**GET** `v3/blogs/{blogId}/posts`

Lists posts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `endDate` | `string` | query | No |  |
| `fetchBodies` | `boolean` | query | No |  |
| `fetchImages` | `boolean` | query | No |  |
| `labels` | `string` | query | No |  |
| `maxResults` | `integer` | query | No |  |
| `orderBy` | `string` | query | No |  |
| `pageToken` | `string` | query | No |  |
| `sortOption` | `string` | query | No | Sort direction applied to post list. |
| `startDate` | `string` | query | No |  |
| `status` | `string` | query | No |  |
| `view` | `string` | query | No |  |

**Response**: `PostList`

```typescript
const res = await blogger.posts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.posts.patch`

**PATCH** `v3/blogs/{blogId}/posts/{postId}`

Patches a post.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `fetchBody` | `boolean` | query | No |  |
| `fetchImages` | `boolean` | query | No |  |
| `maxComments` | `integer` | query | No |  |
| `publish` | `boolean` | query | No |  |
| `revert` | `boolean` | query | No |  |

**Request body**: `Post`

**Response**: `Post`

```typescript
const res = await blogger.posts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.posts.publish`

**POST** `v3/blogs/{blogId}/posts/{postId}/publish`

Publishes a post.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `publishDate` | `string` | query | No |  |

**Response**: `Post`

```typescript
const res = await blogger.posts.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.posts.revert`

**POST** `v3/blogs/{blogId}/posts/{postId}/revert`

Reverts a published or scheduled post to draft state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |

**Response**: `Post`

```typescript
const res = await blogger.posts.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.posts.search`

**GET** `v3/blogs/{blogId}/posts/search`

Searches for posts matching given query terms in the specified blog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `q` | `string` | query | Yes |  |
| `fetchBodies` | `boolean` | query | No |  |
| `orderBy` | `string` | query | No |  |

**Response**: `PostList`

```typescript
const res = await blogger.posts.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.posts.update`

**PUT** `v3/blogs/{blogId}/posts/{postId}`

Updates a post by blog id and post id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `fetchBody` | `boolean` | query | No |  |
| `fetchImages` | `boolean` | query | No |  |
| `maxComments` | `integer` | query | No |  |
| `publish` | `boolean` | query | No |  |
| `revert` | `boolean` | query | No |  |

**Request body**: `Post`

**Response**: `Post`

```typescript
const res = await blogger.posts.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.blogs.get`

**GET** `v3/blogs/{blogId}`

Gets a blog by id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `maxPosts` | `integer` | query | No |  |
| `view` | `string` | query | No |  |

**Response**: `Blog`

```typescript
const res = await blogger.blogs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.blogs.getByUrl`

**GET** `v3/blogs/byurl`

Gets a blog by url.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `url` | `string` | query | Yes |  |
| `view` | `string` | query | No |  |

**Response**: `Blog`

```typescript
const res = await blogger.blogs.getByUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.blogs.listByUser`

**GET** `v3/users/{userId}/blogs`

Lists blogs by user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes |  |
| `fetchUserInfo` | `boolean` | query | No |  |
| `role` | `string` | query | No |  |
| `status` | `string` | query | No | Default value of status is LIVE. |
| `view` | `string` | query | No |  |

**Response**: `BlogList`

```typescript
const res = await blogger.blogs.listByUser({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.blogUserInfos.get`

**GET** `v3/users/{userId}/blogs/{blogId}`

Gets one blog and user info pair by blog id and user id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes |  |
| `blogId` | `string` | path | Yes |  |
| `maxPosts` | `integer` | query | No |  |

**Response**: `BlogUserInfo`

```typescript
const res = await blogger.blogUserInfos.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.pageViews.get`

**GET** `v3/blogs/{blogId}/pageviews`

Gets page views by blog id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `blogId` | `string` | path | Yes |  |
| `range` | `string` | query | No |  |

**Response**: `Pageviews`

```typescript
const res = await blogger.pageViews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`

---

### `blogger.postUserInfos.get`

**GET** `v3/users/{userId}/blogs/{blogId}/posts/{postId}`

Gets one post and user info pair, by post_id and user_id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes |  |
| `blogId` | `string` | path | Yes |  |
| `postId` | `string` | path | Yes |  |
| `maxComments` | `integer` | query | No |  |

**Response**: `PostUserInfo`

```typescript
const res = await blogger.postUserInfos.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.postUserInfos.list`

**GET** `v3/users/{userId}/blogs/{blogId}/posts`

Lists post and user info pairs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes |  |
| `blogId` | `string` | path | Yes |  |
| `endDate` | `string` | query | No |  |
| `fetchBodies` | `boolean` | query | No |  |
| `labels` | `string` | query | No |  |
| `maxResults` | `integer` | query | No |  |
| `orderBy` | `string` | query | No |  |
| `pageToken` | `string` | query | No |  |
| `startDate` | `string` | query | No |  |
| `status` | `string` | query | No |  |
| `view` | `string` | query | No |  |

**Response**: `PostUserInfosList`

```typescript
const res = await blogger.postUserInfos.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

### `blogger.users.get`

**GET** `v3/users/{userId}`

Gets one user by user_id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `userId` | `string` | path | Yes |  |

**Response**: `User`

```typescript
const res = await blogger.users.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/blogger`
- `https://www.googleapis.com/auth/blogger.readonly`

---

## Schemas

### `Blog`

| Property | Type | Description |
|----------|------|-------------|
| `customMetaData` | `string` | The JSON custom meta-data for the Blog. |
| `description` | `string` | The description of this blog. This is displayed underneath the title. |
| `id` | `string` | The identifier for this resource. |
| `kind` | `string` | The kind of this entry. Always blogger#blog. |
| `locale` | `object` | The locale this Blog is set to. |
| `name` | `string` | The name of this blog. This is displayed as the title. |
| `pages` | `object` | The container of pages in this blog. |
| `posts` | `object` | The container of posts in this blog. |
| `published` | `string` | RFC 3339 date-time when this blog was published. |
| `selfLink` | `string` | The API REST URL to fetch this resource from. |
| `status` | `string` | The status of the blog. |
| `updated` | `string` | RFC 3339 date-time when this blog was last updated. |
| `url` | `string` | The URL where this blog is published. |

### `BlogList`

| Property | Type | Description |
|----------|------|-------------|
| `blogUserInfos` | `array<BlogUserInfo>` | Admin level list of blog per-user information. |
| `items` | `array<Blog>` | The list of Blogs this user has Authorship or Admin rights over. |
| `kind` | `string` | The kind of this entity. Always blogger#blogList. |

### `BlogPerUserInfo`

| Property | Type | Description |
|----------|------|-------------|
| `blogId` | `string` | ID of the Blog resource. |
| `hasAdminAccess` | `boolean` | True if the user has Admin level access to the blog. |
| `kind` | `string` | The kind of this entity. Always blogger#blogPerUserInfo. |
| `photosAlbumKey` | `string` | The Photo Album Key for the user when adding photos to the blog. |
| `role` | `string` | Access permissions that the user has for the blog (ADMIN, AUTHOR, or READER). |
| `userId` | `string` | ID of the User. |

### `BlogUserInfo`

| Property | Type | Description |
|----------|------|-------------|
| `blog` | `Blog` | The Blog resource. |
| `blog_user_info` | `BlogPerUserInfo` | Information about a User for the Blog. |
| `kind` | `string` | The kind of this entity. Always blogger#blogUserInfo. |

### `Comment`

| Property | Type | Description |
|----------|------|-------------|
| `author` | `object` | The author of this Comment. |
| `blog` | `object` | Data about the blog containing this comment. |
| `content` | `string` | The actual content of the comment. May include HTML markup. |
| `id` | `string` | The identifier for this resource. |
| `inReplyTo` | `object` | Data about the comment this is in reply to. |
| `kind` | `string` | The kind of this entry. Always blogger#comment. |
| `post` | `object` | Data about the post containing this comment. |
| `published` | `string` | RFC 3339 date-time when this comment was published. |
| `selfLink` | `string` | The API REST URL to fetch this resource from. |
| `status` | `string` | The status of the comment (only populated for admin users). |
| `updated` | `string` | RFC 3339 date-time when this comment was last updated. |

### `CommentList`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of the response. |
| `items` | `array<Comment>` | The List of Comments for a Post. |
| `kind` | `string` | The kind of this entry. Always blogger#commentList. |
| `nextPageToken` | `string` | Pagination token to fetch the next page, if one exists. |
| `prevPageToken` | `string` | Pagination token to fetch the previous page, if one exists. |

### `Page`

| Property | Type | Description |
|----------|------|-------------|
| `author` | `object` | The author of this Page. |
| `blog` | `object` | Data about the blog containing this Page. |
| `content` | `string` | The body content of this Page, in HTML. |
| `etag` | `string` | Etag of the resource. |
| `id` | `string` | The identifier for this resource. |
| `kind` | `string` | The kind of this entity. Always blogger#page. |
| `published` | `string` | RFC 3339 date-time when this Page was published. |
| `selfLink` | `string` | The API REST URL to fetch this resource from. |
| `status` | `string` | The status of the page for admin resources (either LIVE or DRAFT). |
| `title` | `string` | The title of this entity. This is the name displayed in the Admin user interface. |
| `trashed` | `string` | RFC 3339 date-time when this Page was trashed. |
| `updated` | `string` | RFC 3339 date-time when this Page was last updated. |
| `url` | `string` | The URL that this Page is displayed at. |

### `PageList`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of the response. |
| `items` | `array<Page>` | The list of Pages for a Blog. |
| `kind` | `string` | The kind of this entity. Always blogger#pageList. |
| `nextPageToken` | `string` | Pagination token to fetch the next page, if one exists. |

### `Pageviews`

| Property | Type | Description |
|----------|------|-------------|
| `blogId` | `string` | Blog Id. |
| `counts` | `array<object>` | The container of posts in this blog. |
| `kind` | `string` | The kind of this entry. Always blogger#page_views. |

### `Post`

| Property | Type | Description |
|----------|------|-------------|
| `author` | `object` | The author of this Post. |
| `blog` | `object` | Data about the blog containing this Post. |
| `content` | `string` | The content of the Post. May contain HTML markup. |
| `customMetaData` | `string` | The JSON meta-data for the Post. |
| `etag` | `string` | Etag of the resource. |
| `id` | `string` | The identifier of this Post. |
| `images` | `array<object>` | Display image for the Post. |
| `kind` | `string` | The kind of this entity. Always blogger#post. |
| `labels` | `array<string>` | The list of labels this Post was tagged with. |
| `location` | `object` | The location for geotagged posts. |
| `published` | `string` | RFC 3339 date-time when this Post was published. |
| `readerComments` | `string` | Comment control and display setting for readers of this post. |
| `replies` | `object` | The container of comments on this Post. |
| `selfLink` | `string` | The API REST URL to fetch this resource from. |
| `status` | `string` | Status of the post. Only set for admin-level requests. |
| `title` | `string` | The title of the Post. |
| `titleLink` | `string` | The title link URL, similar to atom's related link. |
| `trashed` | `string` | RFC 3339 date-time when this Post was last trashed. |
| `updated` | `string` | RFC 3339 date-time when this Post was last updated. |
| `url` | `string` | The URL where this Post is displayed. |

### `PostList`

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Etag of the response. |
| `items` | `array<Post>` | The list of Posts for this Blog. |
| `kind` | `string` | The kind of this entity. Always blogger#postList. |
| `nextPageToken` | `string` | Pagination token to fetch the next page, if one exists. |
| `prevPageToken` | `string` | Pagination token to fetch the previous page, if one exists. |

### `PostPerUserInfo`

| Property | Type | Description |
|----------|------|-------------|
| `blogId` | `string` | ID of the Blog that the post resource belongs to. |
| `hasEditAccess` | `boolean` | True if the user has Author level access to the post. |
| `kind` | `string` | The kind of this entity. Always blogger#postPerUserInfo. |
| `postId` | `string` | ID of the Post resource. |
| `userId` | `string` | ID of the User. |

### `PostUserInfo`

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of this entity. Always blogger#postUserInfo. |
| `post` | `Post` | The Post resource. |
| `post_user_info` | `PostPerUserInfo` | Information about a User for the Post. |

### `PostUserInfosList`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<PostUserInfo>` | The list of Posts with User information for the post, for this Blog. |
| `kind` | `string` | The kind of this entity. Always blogger#postList. |
| `nextPageToken` | `string` | Pagination token to fetch the next page, if one exists. |

### `User`

| Property | Type | Description |
|----------|------|-------------|
| `about` | `string` | Profile summary information. |
| `blogs` | `object` | The container of blogs for this user. |
| `created` | `string` | The timestamp of when this profile was created, in seconds since epoch. |
| `displayName` | `string` | The display name. |
| `id` | `string` | The identifier for this User. |
| `kind` | `string` | The kind of this entity. Always blogger#user. |
| `locale` | `object` | This user's locale |
| `selfLink` | `string` | The API REST URL to fetch this resource from. |
| `url` | `string` | The user's profile page. |

