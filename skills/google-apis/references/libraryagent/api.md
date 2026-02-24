# Library Agent API - API Reference

**Version**: `v1` | **Methods**: 6 | **Schemas**: 4

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `libraryagent.shelves.get` | GET | `v1/{+name}` | Gets a shelf. Returns NOT_FOUND if the shelf does not exist. |
| `libraryagent.shelves.list` | GET | `v1/shelves` | Lists shelves. The order is unspecified but deterministic. Newly created shelves will not necessa... |
| `libraryagent.shelves.books.get` | GET | `v1/{+name}` | Gets a book. Returns NOT_FOUND if the book does not exist. |
| `libraryagent.shelves.books.list` | GET | `v1/{+parent}/books` | Lists books in a shelf. The order is unspecified but deterministic. Newly created books will not ... |
| `libraryagent.shelves.books.borrow` | POST | `v1/{+name}:borrow` | Borrow a book from the library. Returns the book if it is borrowed successfully. Returns NOT_FOUN... |
| `libraryagent.shelves.books.return` | POST | `v1/{+name}:return` | Return a book to the library. Returns the book if it is returned to the library successfully. Ret... |

### `libraryagent.shelves.get`

**GET** `v1/{+name}`

Gets a shelf. Returns NOT_FOUND if the shelf does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the shelf to retrieve. |

**Response**: `GoogleExampleLibraryagentV1Shelf`

```typescript
const res = await libraryagent.shelves.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `libraryagent.shelves.list`

**GET** `v1/shelves`

Lists shelves. The order is unspecified but deterministic. Newly created shelves will not necessarily be added to the end of this list.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer shelves than requested. If unspecified, server will pick an appropriate ... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListShelvesResponse.n... |

**Response**: `GoogleExampleLibraryagentV1ListShelvesResponse`

```typescript
const res = await libraryagent.shelves.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `libraryagent.shelves.books.get`

**GET** `v1/{+name}`

Gets a book. Returns NOT_FOUND if the book does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the book to retrieve. |

**Response**: `GoogleExampleLibraryagentV1Book`

```typescript
const res = await libraryagent.books.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `libraryagent.shelves.books.list`

**GET** `v1/{+parent}/books`

Lists books in a shelf. The order is unspecified but deterministic. Newly created books will not necessarily be added to the end of this list. Returns NOT_FOUND if the shelf does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the shelf whose books we'd like to list. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer books than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. Typically, this is the value of ListBooksResponse.nex... |

**Response**: `GoogleExampleLibraryagentV1ListBooksResponse`

```typescript
const res = await libraryagent.books.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `libraryagent.shelves.books.borrow`

**POST** `v1/{+name}:borrow`

Borrow a book from the library. Returns the book if it is borrowed successfully. Returns NOT_FOUND if the book does not exist in the library. Returns quota exceeded error if the amount of books borrowed exceeds allocation quota in any dimensions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the book to borrow. |

**Response**: `GoogleExampleLibraryagentV1Book`

```typescript
const res = await libraryagent.books.borrow({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `libraryagent.shelves.books.return`

**POST** `v1/{+name}:return`

Return a book to the library. Returns the book if it is returned to the library successfully. Returns error if the book does not belong to the library or the users didn't borrow before.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the book to return. |

**Response**: `GoogleExampleLibraryagentV1Book`

```typescript
const res = await libraryagent.books.return({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleExampleLibraryagentV1Book`

A single book in the library.

| Property | Type | Description |
|----------|------|-------------|
| `author` | `string` | The name of the book author. |
| `name` | `string` | The resource name of the book. Book names have the form `shelves/{shelf_id}/books/{book_id}`. The... |
| `read` | `boolean` | Value indicating whether the book has been read. |
| `title` | `string` | The title of the book. |

### `GoogleExampleLibraryagentV1ListBooksResponse`

Response message for LibraryAgent.ListBooks.

| Property | Type | Description |
|----------|------|-------------|
| `books` | `array<GoogleExampleLibraryagentV1Book>` | The list of books. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in the ListBooksRequest.page_token fiel... |

### `GoogleExampleLibraryagentV1ListShelvesResponse`

Response message for LibraryAgent.ListShelves.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in the ListShelvesRequest.page_token fi... |
| `shelves` | `array<GoogleExampleLibraryagentV1Shelf>` | The list of shelves. |

### `GoogleExampleLibraryagentV1Shelf`

A Shelf contains a collection of books with a theme.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The resource name of the shelf. Shelf names have the form `shelves/{shelf_id}`. The ... |
| `theme` | `string` | The theme of the shelf |

