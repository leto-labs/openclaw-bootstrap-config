# Fact Check Tools API - API Reference

**Version**: `v1alpha1` | **Methods**: 7 | **Schemas**: 13

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `factchecktools.claims.search` | GET | `v1alpha1/claims:search` | Search through fact-checked claims. |
| `factchecktools.claims.imageSearch` | GET | `v1alpha1/claims:imageSearch` | Search through fact-checked claims using an image as the query. |
| `factchecktools.pages.create` | POST | `v1alpha1/pages` | Create `ClaimReview` markup on a page. |
| `factchecktools.pages.get` | GET | `v1alpha1/{+name}` | Get all `ClaimReview` markup on a page. |
| `factchecktools.pages.list` | GET | `v1alpha1/pages` | List the `ClaimReview` markup pages for a specific URL or for an organization. |
| `factchecktools.pages.update` | PUT | `v1alpha1/{+name}` | Update for all `ClaimReview` markup on a page Note that this is a full update. To retain the exis... |
| `factchecktools.pages.delete` | DELETE | `v1alpha1/{+name}` | Delete all `ClaimReview` markup on a page. |

### `factchecktools.claims.search`

**GET** `v1alpha1/claims:search`

Search through fact-checked claims.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `languageCode` | `string` | query | No | The BCP-47 language code, such as "en-US" or "sr-Latn". Can be used to restrict results by language, though we do not... |
| `maxAgeDays` | `integer` | query | No | The maximum age of the returned search results, in days. Age is determined by either claim date or review date, which... |
| `offset` | `integer` | query | No | An integer that specifies the current offset (that is, starting result location) in search results. This field is onl... |
| `pageSize` | `integer` | query | No | The pagination size. We will return up to that many results. Defaults to 10 if not set. |
| `pageToken` | `string` | query | No | The pagination token. You may provide the `next_page_token` returned from a previous List request, if any, in order t... |
| `query` | `string` | query | No | Textual query string. Required unless `review_publisher_site_filter` is specified. |
| `reviewPublisherSiteFilter` | `string` | query | No | The review publisher site to filter results by, e.g. nytimes.com. |

**Response**: `GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse`

```typescript
const res = await factchecktools.claims.search({
  // parameters
});
```

---

### `factchecktools.claims.imageSearch`

**GET** `v1alpha1/claims:imageSearch`

Search through fact-checked claims using an image as the query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `imageUri` | `string` | query | No | Required. The URI of the source image. This must be a publicly-accessible image HTTP/HTTPS URL. When fetching images ... |
| `languageCode` | `string` | query | No | Optional. The BCP-47 language code, such as "en-US" or "sr-Latn". Can be used to restrict results by language, though... |
| `offset` | `integer` | query | No | Optional. An integer that specifies the current offset (that is, starting result location) in search results. This fi... |
| `pageSize` | `integer` | query | No | Optional. The pagination size. We will return up to that many results. Defaults to 10 if not set. |
| `pageToken` | `string` | query | No | Optional. The pagination token. You may provide the `next_page_token` returned from a previous List request, if any, ... |

**Response**: `GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimImageSearchResponse`

```typescript
const res = await factchecktools.claims.imageSearch({
  // parameters
});
```

---

### `factchecktools.pages.create`

**POST** `v1alpha1/pages`

Create `ClaimReview` markup on a page.

**Request body**: `GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage`

**Response**: `GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage`

```typescript
const res = await factchecktools.pages.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/factchecktools`

---

### `factchecktools.pages.get`

**GET** `v1alpha1/{+name}`

Get all `ClaimReview` markup on a page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the resource to get, in the form of `pages/{page_id}`. |

**Response**: `GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage`

```typescript
const res = await factchecktools.pages.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/factchecktools`

---

### `factchecktools.pages.list`

**GET** `v1alpha1/pages`

List the `ClaimReview` markup pages for a specific URL or for an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `offset` | `integer` | query | No | An integer that specifies the current offset (that is, starting result location) in search results. This field is onl... |
| `organization` | `string` | query | No | The organization for which we want to fetch markups for. For instance, "site.com". Cannot be specified along with an ... |
| `pageSize` | `integer` | query | No | The pagination size. We will return up to that many results. Defaults to 10 if not set. Has no effect if a URL is req... |
| `pageToken` | `string` | query | No | The pagination token. You may provide the `next_page_token` returned from a previous List request, if any, in order t... |
| `url` | `string` | query | No | The URL from which to get `ClaimReview` markup. There will be at most one result. If markup is associated with a more... |

**Response**: `GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse`

```typescript
const res = await factchecktools.pages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/factchecktools`

---

### `factchecktools.pages.update`

**PUT** `v1alpha1/{+name}`

Update for all `ClaimReview` markup on a page Note that this is a full update. To retain the existing `ClaimReview` markup on a page, first perform a Get operation, then modify the returned markup, and finally call Update with the entire `ClaimReview` markup as the body.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of this `ClaimReview` markup page resource, in the form of `pages/{page_id}`. Except for update requests, th... |

**Request body**: `GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage`

**Response**: `GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage`

```typescript
const res = await factchecktools.pages.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/factchecktools`

---

### `factchecktools.pages.delete`

**DELETE** `v1alpha1/{+name}`

Delete all `ClaimReview` markup on a page.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the resource to delete, in the form of `pages/{page_id}`. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await factchecktools.pages.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/factchecktools`

---

## Schemas

### `GoogleFactcheckingFactchecktoolsV1alpha1Claim`

Information about the claim.

| Property | Type | Description |
|----------|------|-------------|
| `claimDate` | `string` | The date that the claim was made. |
| `claimReview` | `array<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview>` | One or more reviews of this claim (namely, a fact-checking article). |
| `claimant` | `string` | A person or organization stating the claim. For instance, "John Doe". |
| `text` | `string` | The claim text. For instance, "Crime has doubled in the last 2 years." |

### `GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor`

Information about the claim author.

| Property | Type | Description |
|----------|------|-------------|
| `imageUrl` | `string` | Corresponds to `ClaimReview.itemReviewed.author.image`. |
| `jobTitle` | `string` | Corresponds to `ClaimReview.itemReviewed.author.jobTitle`. |
| `name` | `string` | A person or organization stating the claim. For instance, "John Doe". Corresponds to `ClaimReview... |
| `sameAs` | `string` | Corresponds to `ClaimReview.itemReviewed.author.sameAs`. |

### `GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating`

Information about the claim rating.

| Property | Type | Description |
|----------|------|-------------|
| `bestRating` | `integer` | For numeric ratings, the best value possible in the scale from worst to best. Corresponds to `Cla... |
| `imageUrl` | `string` | Corresponds to `ClaimReview.reviewRating.image`. |
| `ratingExplanation` | `string` | Corresponds to `ClaimReview.reviewRating.ratingExplanation`. |
| `ratingValue` | `integer` | A numeric rating of this claim, in the range worstRating — bestRating inclusive. Corresponds to `... |
| `textualRating` | `string` | The truthfulness rating as a human-readible short word or phrase. Corresponds to `ClaimReview.rev... |
| `worstRating` | `integer` | For numeric ratings, the worst value possible in the scale from worst to best. Corresponds to `Cl... |

### `GoogleFactcheckingFactchecktoolsV1alpha1ClaimReview`

Information about a claim review.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | The language this review was written in. For instance, "en" or "de". |
| `publisher` | `GoogleFactcheckingFactchecktoolsV1alpha1Publisher` | The publisher of this claim review. |
| `reviewDate` | `string` | The date the claim was reviewed. |
| `textualRating` | `string` | Textual rating. For instance, "Mostly false". |
| `title` | `string` | The title of this claim review, if it can be determined. |
| `url` | `string` | The URL of this claim review. |

### `GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor`

Information about the claim review author.

| Property | Type | Description |
|----------|------|-------------|
| `imageUrl` | `string` | Corresponds to `ClaimReview.author.image`. |
| `name` | `string` | Name of the organization that is publishing the fact check. Corresponds to `ClaimReview.author.na... |

### `GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup`

Fields for an individual `ClaimReview` element. Except for sub-messages that group fields together, each of these fields correspond those in https://schema.org/ClaimReview. We list the precise mapping for each field.

| Property | Type | Description |
|----------|------|-------------|
| `claimAppearances` | `array<string>` | A list of links to works in which this claim appears, aside from the one specified in `claim_firs... |
| `claimAuthor` | `GoogleFactcheckingFactchecktoolsV1alpha1ClaimAuthor` | Info about the author of this claim. |
| `claimDate` | `string` | The date when the claim was made or entered public discourse. Corresponds to `ClaimReview.itemRev... |
| `claimFirstAppearance` | `string` | A link to a work in which this claim first appears. Corresponds to `ClaimReview.itemReviewed[@typ... |
| `claimLocation` | `string` | The location where this claim was made. Corresponds to `ClaimReview.itemReviewed.name`. |
| `claimReviewed` | `string` | A short summary of the claim being evaluated. Corresponds to `ClaimReview.claimReviewed`. |
| `rating` | `GoogleFactcheckingFactchecktoolsV1alpha1ClaimRating` | Info about the rating of this claim review. |
| `url` | `string` | This field is optional, and will default to the page URL. We provide this field to allow you the ... |

### `GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage`

Holds one or more instances of `ClaimReview` markup for a webpage.

| Property | Type | Description |
|----------|------|-------------|
| `claimReviewAuthor` | `GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewAuthor` | Info about the author of this claim review. Similar to the above, semantically these are page-lev... |
| `claimReviewMarkups` | `array<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkup>` | A list of individual claim reviews for this page. Each item in the list corresponds to one `Claim... |
| `name` | `string` | The name of this `ClaimReview` markup page resource, in the form of `pages/{page_id}`. Except for... |
| `pageUrl` | `string` | The URL of the page associated with this `ClaimReview` markup. While every individual `ClaimRevie... |
| `publishDate` | `string` | The date when the fact check was published. Similar to the URL, semantically this is a page-level... |
| `versionId` | `string` | The version ID for this markup. Except for update requests, this field is output-only and should ... |

### `GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimImageSearchResponse`

Response from searching fact-checked claims by image.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next pagination token in the Search response. It should be used as the `page_token` for the f... |
| `results` | `array<GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimImageSearchResponseResult>` | The list of claims and all of their associated information. |

### `GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimImageSearchResponseResult`

A claim and its associated information.

| Property | Type | Description |
|----------|------|-------------|
| `claim` | `GoogleFactcheckingFactchecktoolsV1alpha1Claim` | A claim which matched the query. |

### `GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse`

Response from searching fact-checked claims.

| Property | Type | Description |
|----------|------|-------------|
| `claims` | `array<GoogleFactcheckingFactchecktoolsV1alpha1Claim>` | The list of claims and all of their associated information. |
| `nextPageToken` | `string` | The next pagination token in the Search response. It should be used as the `page_token` for the f... |

### `GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse`

Response from listing `ClaimReview` markup.

| Property | Type | Description |
|----------|------|-------------|
| `claimReviewMarkupPages` | `array<GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage>` | The result list of pages of `ClaimReview` markup. |
| `nextPageToken` | `string` | The next pagination token in the Search response. It should be used as the `page_token` for the f... |

### `GoogleFactcheckingFactchecktoolsV1alpha1Publisher`

Information about the publisher.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of this publisher. For instance, "Awesome Fact Checks". |
| `site` | `string` | Host-level site name, without the protocol or "www" prefix. For instance, "awesomefactchecks.com"... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

