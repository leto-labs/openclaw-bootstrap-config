# Google Civic Information API - API Reference

**Version**: `v2` | **Methods**: 4 | **Schemas**: 18

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `civicinfo.elections.electionQuery` | GET | `civicinfo/v2/elections` | List of available elections to query. |
| `civicinfo.elections.voterInfoQuery` | GET | `civicinfo/v2/voterinfo` | Looks up information relevant to a voter based on the voter's registered address. |
| `civicinfo.divisions.search` | GET | `civicinfo/v2/divisions` | Searches for political divisions by their natural name or OCD ID. |
| `civicinfo.divisions.queryDivisionByAddress` | GET | `civicinfo/v2/divisionsByAddress` | Lookup OCDIDs and names for divisions related to an address. |

### `civicinfo.elections.electionQuery`

**GET** `civicinfo/v2/elections`

List of available elections to query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `productionDataOnly` | `boolean` | query | No | Whether to include data that has not been allowlisted yet |

**Response**: `CivicinfoApiprotosV2ElectionsQueryResponse`

```typescript
const res = await civicinfo.elections.electionQuery({
  // parameters
});
```

---

### `civicinfo.elections.voterInfoQuery`

**GET** `civicinfo/v2/voterinfo`

Looks up information relevant to a voter based on the voter's registered address.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `address` | `string` | query | No | The registered address of the voter to look up. |
| `electionId` | `string` | query | No | The unique ID of the election to look up. A list of election IDs can be obtained at https://www.googleapis.com/civici... |
| `officialOnly` | `boolean` | query | No | If set to true, only data from official state sources will be returned. |
| `productionDataOnly` | `boolean` | query | No | Whether to include data that has not been vetted yet. Should only be made available to internal IPs or trusted partne... |
| `returnAllAvailableData` | `boolean` | query | No | If set to true, the query will return the success code and include any partial information when it is unable to deter... |

**Response**: `CivicinfoApiprotosV2VoterInfoResponse`

```typescript
const res = await civicinfo.elections.voterInfoQuery({
  // parameters
});
```

---

### `civicinfo.divisions.search`

**GET** `civicinfo/v2/divisions`

Searches for political divisions by their natural name or OCD ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `query` | `string` | query | No | The search query. Queries can cover any parts of a OCD ID or a human readable division name. All words given in the q... |

**Response**: `CivicinfoApiprotosV2DivisionSearchResponse`

```typescript
const res = await civicinfo.divisions.search({
  // parameters
});
```

---

### `civicinfo.divisions.queryDivisionByAddress`

**GET** `civicinfo/v2/divisionsByAddress`

Lookup OCDIDs and names for divisions related to an address.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `address` | `string` | query | No |  |

**Response**: `CivicinfoApiprotosV2DivisionByAddressResponse`

```typescript
const res = await civicinfo.divisions.queryDivisionByAddress({
  // parameters
});
```

---

## Schemas

### `CivicinfoApiprotosV2DivisionByAddressResponse`

| Property | Type | Description |
|----------|------|-------------|
| `divisions` | `object` |  |
| `normalizedInput` | `CivicinfoSchemaV2SimpleAddressType` | The normalized version of the requested address. |

### `CivicinfoApiprotosV2DivisionSearchResponse`

The result of a division search query.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "civicinfo#divisionSearchRespon... |
| `results` | `array<CivicinfoApiprotosV2DivisionSearchResult>` |  |

### `CivicinfoApiprotosV2DivisionSearchResult`

Represents a political geographic division that matches the requested query.

| Property | Type | Description |
|----------|------|-------------|
| `aliases` | `array<string>` | Other Open Civic Data identifiers that refer to the same division -- for example, those that refe... |
| `name` | `string` | The name of the division. |
| `ocdId` | `string` | The unique Open Civic Data identifier for this division |

### `CivicinfoApiprotosV2ElectionsQueryResponse`

The list of elections available for this version of the API.

| Property | Type | Description |
|----------|------|-------------|
| `elections` | `array<CivicinfoSchemaV2Election>` | A list of available elections |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "civicinfo#electionsQueryRespon... |

### `CivicinfoApiprotosV2VoterInfoResponse`

The result of a voter info lookup query.

| Property | Type | Description |
|----------|------|-------------|
| `contests` | `array<CivicinfoSchemaV2Contest>` | Contests that will appear on the voter's ballot. |
| `dropOffLocations` | `array<CivicinfoSchemaV2PollingLocation>` | Locations where a voter is eligible to drop off a completed ballot. The voter must have received ... |
| `earlyVoteSites` | `array<CivicinfoSchemaV2PollingLocation>` | Locations where the voter is eligible to vote early, prior to election day. |
| `election` | `CivicinfoSchemaV2Election` | The election that was queried. |
| `kind` | `string` | Identifies what kind of resource this is. Value: the fixed string "civicinfo#voterInfoResponse". |
| `mailOnly` | `boolean` | Specifies whether voters in the precinct vote only by mailing their ballots (with the possible op... |
| `normalizedInput` | `CivicinfoSchemaV2SimpleAddressType` | The normalized version of the requested address |
| `otherElections` | `array<CivicinfoSchemaV2Election>` | When there are multiple elections for a voter address, the otherElections field is populated in t... |
| `pollingLocations` | `array<CivicinfoSchemaV2PollingLocation>` | Locations where the voter is eligible to vote on election day. |
| `precinctId` | `string` |  |
| `precincts` | `array<CivicinfoSchemaV2Precinct>` | The precincts that match this voter's address. Will only be returned for project IDs which have b... |
| `state` | `array<CivicinfoSchemaV2AdministrationRegion>` | Local Election Information for the state that the voter votes in. For the US, there will only be ... |

### `CivicinfoSchemaV2AdministrationRegion`

Describes information about a regional election administrative area.

| Property | Type | Description |
|----------|------|-------------|
| `electionAdministrationBody` | `CivicinfoSchemaV2AdministrativeBody` | The election administration body for this area. |
| `local_jurisdiction` | `CivicinfoSchemaV2AdministrationRegion` | The city or county that provides election information for this voter. This object can have the sa... |
| `name` | `string` | The name of the jurisdiction. |
| `sources` | `array<CivicinfoSchemaV2Source>` | A list of sources for this area. If multiple sources are listed the data has been aggregated from... |

### `CivicinfoSchemaV2AdministrativeBody`

Information about an election administrative body (e.g. County Board of Elections).

| Property | Type | Description |
|----------|------|-------------|
| `absenteeVotingInfoUrl` | `string` | A URL provided by this administrative body for information on absentee voting. |
| `ballotInfoUrl` | `string` | A URL provided by this administrative body to give contest information to the voter. |
| `correspondenceAddress` | `CivicinfoSchemaV2SimpleAddressType` | The mailing address of this administrative body. |
| `electionInfoUrl` | `string` | A URL provided by this administrative body for looking up general election information. |
| `electionNoticeText` | `string` | A last minute or emergency notification text provided by this administrative body. |
| `electionNoticeUrl` | `string` | A URL provided by this administrative body for additional information related to the last minute ... |
| `electionOfficials` | `array<CivicinfoSchemaV2ElectionOfficial>` | The election officials for this election administrative body. |
| `electionRegistrationConfirmationUrl` | `string` | A URL provided by this administrative body for confirming that the voter is registered to vote. |
| `electionRegistrationUrl` | `string` | A URL provided by this administrative body for looking up how to register to vote. |
| `electionRulesUrl` | `string` | A URL provided by this administrative body describing election rules to the voter. |
| `hoursOfOperation` | `string` | A description of the hours of operation for this administrative body. |
| `name` | `string` | The name of this election administrative body. |
| `physicalAddress` | `CivicinfoSchemaV2SimpleAddressType` | The physical address of this administrative body. |
| `voter_services` | `array<string>` | A description of the services this administrative body may provide. |
| `votingLocationFinderUrl` | `string` | A URL provided by this administrative body for looking up where to vote. |

### `CivicinfoSchemaV2Candidate`

Information about a candidate running for elected office.

| Property | Type | Description |
|----------|------|-------------|
| `candidateUrl` | `string` | The URL for the candidate's campaign web site. |
| `channels` | `array<CivicinfoSchemaV2Channel>` | A list of known (social) media channels for this candidate. |
| `email` | `string` | The email address for the candidate's campaign. |
| `name` | `string` | The candidate's name. If this is a joint ticket it will indicate the name of the candidate at the... |
| `orderOnBallot` | `string` | The order the candidate appears on the ballot for this contest. |
| `party` | `string` | The full name of the party the candidate is a member of. |
| `phone` | `string` | The voice phone number for the candidate's campaign office. |
| `photoUrl` | `string` | A URL for a photo of the candidate. |

### `CivicinfoSchemaV2Channel`

A social media or web channel for a candidate.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The unique public identifier for the candidate's channel. |
| `type` | `string` | The type of channel. The following is a list of types of channels, but is not exhaustive. More ch... |

### `CivicinfoSchemaV2Contest`

Information about a contest that appears on a voter's ballot.

| Property | Type | Description |
|----------|------|-------------|
| `ballotPlacement` | `string` | A number specifying the position of this contest on the voter's ballot. |
| `ballotTitle` | `string` | The official title on the ballot for this contest, only where available. |
| `candidates` | `array<CivicinfoSchemaV2Candidate>` | The candidate choices for this contest. |
| `district` | `CivicinfoSchemaV2ElectoralDistrict` | Information about the electoral district that this contest is in. |
| `electorateSpecifications` | `string` | A description of any additional eligibility requirements for voting in this contest. |
| `level` | `array<string>` | The levels of government of the office for this contest. There may be more than one in cases wher... |
| `numberElected` | `string` | The number of candidates that will be elected to office in this contest. |
| `numberVotingFor` | `string` | The number of candidates that a voter may vote for in this contest. |
| `office` | `string` | The name of the office for this contest. |
| `primaryParties` | `array<string>` | If this is a partisan election, the name of the party/parties it is for. |
| `referendumBallotResponses` | `array<string>` | The set of ballot responses for the referendum. A ballot response represents a line on the ballot... |
| `referendumBrief` | `string` | Specifies a short summary of the referendum that is typically on the ballot below the title but a... |
| `referendumConStatement` | `string` | A statement in opposition to the referendum. It does not necessarily appear on the ballot. This f... |
| `referendumEffectOfAbstain` | `string` | Specifies what effect abstaining (not voting) on the proposition will have (i.e. whether abstaini... |
| `referendumPassageThreshold` | `string` | The threshold of votes that the referendum needs in order to pass, e.g. "two-thirds". This field ... |
| `referendumProStatement` | `string` | A statement in favor of the referendum. It does not necessarily appear on the ballot. This field ... |
| `referendumSubtitle` | `string` | A brief description of the referendum. This field is only populated for contests of type 'Referen... |
| `referendumText` | `string` | The full text of the referendum. This field is only populated for contests of type 'Referendum'. |
| `referendumTitle` | `string` | The title of the referendum (e.g. 'Proposition 42'). This field is only populated for contests of... |
| `referendumUrl` | `string` | A link to the referendum. This field is only populated for contests of type 'Referendum'. |
| `roles` | `array<string>` | The roles which this office fulfills. |
| `sources` | `array<CivicinfoSchemaV2Source>` | A list of sources for this contest. If multiple sources are listed, the data has been aggregated ... |
| `special` | `string` | "Yes" or "No" depending on whether this a contest being held outside the normal election cycle. |
| `type` | `string` | The type of contest. Usually this will be 'General', 'Primary', or 'Run-off' for contests with ca... |

### `CivicinfoSchemaV2Election`

Information about the election that was queried.

| Property | Type | Description |
|----------|------|-------------|
| `electionDay` | `string` | Day of the election in YYYY-MM-DD format. |
| `id` | `string` | The unique ID of this election. |
| `name` | `string` | A displayable name for the election. |
| `ocdDivisionId` | `string` | The political division of the election. Represented as an OCD Division ID. Voters within these po... |
| `shapeLookupBehavior` | `string` |  |

### `CivicinfoSchemaV2ElectionOfficial`

Information about individual election officials.

| Property | Type | Description |
|----------|------|-------------|
| `emailAddress` | `string` | The email address of the election official. |
| `faxNumber` | `string` | The fax number of the election official. |
| `name` | `string` | The full name of the election official. |
| `officePhoneNumber` | `string` | The office phone number of the election official. |
| `title` | `string` | The title of the election official. |

### `CivicinfoSchemaV2ElectoralDistrict`

Describes the geographic scope of a contest.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | An identifier for this district, relative to its scope. For example, the 34th State Senate distri... |
| `name` | `string` | The name of the district. |
| `scope` | `string` | The geographic scope of this district. If unspecified the district's geography is not known. One ... |

### `CivicinfoSchemaV2GeographicDivision`

Describes a political geography.

| Property | Type | Description |
|----------|------|-------------|
| `alsoKnownAs` | `array<string>` | Any other valid OCD IDs that refer to the same division.\n\nBecause OCD IDs are meant to be human... |
| `name` | `string` | The name of the division. |
| `officeIndices` | `array<integer>` | List of indices in the offices array, one for each office elected from this division. Will only b... |

### `CivicinfoSchemaV2PollingLocation`

A location where a voter can vote. This may be an early vote site, an election day voting location, or a drop off location for a completed ballot.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `CivicinfoSchemaV2SimpleAddressType` | The address of the location. |
| `endDate` | `string` | The last date that this early vote site or drop off location may be used. This field is not popul... |
| `latitude` | `number` | Latitude of the location, in degrees north of the equator. Note this field may not be available f... |
| `longitude` | `number` | Longitude of the location, in degrees east of the Prime Meridian. Note this field may not be avai... |
| `name` | `string` | The name of the early vote site or drop off location. This field is not populated for polling loc... |
| `notes` | `string` | Notes about this location (e.g. accessibility ramp or entrance to use). |
| `pollingHours` | `string` | A description of when this location is open. |
| `sources` | `array<CivicinfoSchemaV2Source>` | A list of sources for this location. If multiple sources are listed the data has been aggregated ... |
| `startDate` | `string` | The first date that this early vote site or drop off location may be used. This field is not popu... |
| `voterServices` | `string` | The services provided by this early vote site or drop off location. This field is not populated f... |

### `CivicinfoSchemaV2Precinct`

| Property | Type | Description |
|----------|------|-------------|
| `administrationRegionId` | `string` | ID of the AdministrationRegion message for this precinct. Corresponds to LocalityId xml tag. |
| `contestId` | `array<string>` | ID(s) of the Contest message(s) for this precinct. |
| `datasetId` | `string` | Required. Dataset ID. What datasets our Precincts come from. |
| `earlyVoteSiteId` | `array<string>` | ID(s) of the PollingLocation message(s) for this precinct. |
| `electoralDistrictId` | `array<string>` | ID(s) of the ElectoralDistrict message(s) for this precinct. |
| `id` | `string` | Required. A unique identifier for this precinct. |
| `mailOnly` | `boolean` | Specifies if the precinct runs mail-only elections. |
| `name` | `string` | Required. The name of the precinct. |
| `number` | `string` | The number of the precinct. |
| `ocdId` | `array<string>` | Encouraged. The OCD ID of the precinct |
| `pollingLocationId` | `array<string>` | ID(s) of the PollingLocation message(s) for this precinct. |
| `spatialBoundaryId` | `array<string>` | ID(s) of the SpatialBoundary message(s) for this precinct. Used to specify a geometrical boundary... |
| `splitName` | `string` | If present, this proto corresponds to one portion of split precinct. Other portions of this preci... |
| `ward` | `string` | Specifies the ward the precinct is contained within. |

### `CivicinfoSchemaV2SimpleAddressType`

A simple representation of an address.

| Property | Type | Description |
|----------|------|-------------|
| `addressLine` | `array<string>` |  |
| `city` | `string` | The city or town for the address. |
| `line1` | `string` | The street name and number of this address. |
| `line2` | `string` | The second line the address, if needed. |
| `line3` | `string` | The third line of the address, if needed. |
| `locationName` | `string` | The name of the location. |
| `state` | `string` | The US two letter state abbreviation of the address. |
| `zip` | `string` | The US Postal Zip Code of the address. |

### `CivicinfoSchemaV2Source`

Contains information about the data source for the element containing it.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the data source. |
| `official` | `boolean` | Whether this data comes from an official government source. |

