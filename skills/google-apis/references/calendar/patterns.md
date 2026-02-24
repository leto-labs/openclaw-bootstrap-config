# Calendar API - Common Patterns

## List Upcoming Events

Fetch the next N events from the user's primary calendar, expanding recurring events into individual instances:

```typescript
const calendar = google.calendar({ version: "v3", auth });

const res = await calendar.events.list({
  calendarId: "primary",
  timeMin: new Date().toISOString(),
  maxResults: 10,
  singleEvents: true,       // Expand recurring events into instances
  orderBy: "startTime",     // Only valid when singleEvents is true
});

for (const event of res.data.items ?? []) {
  const start = event.start?.dateTime ?? event.start?.date;
  console.log(`${start} - ${event.summary}`);
}
```

## List Events in a Date Range

Query events between two specific dates using `timeMin` and `timeMax`:

```typescript
const res = await calendar.events.list({
  calendarId: "primary",
  timeMin: "2025-03-01T00:00:00Z",
  timeMax: "2025-03-31T23:59:59Z",
  singleEvents: true,
  orderBy: "startTime",
  maxResults: 250,           // Max per page is 2500
});
```

**Important**: `timeMin` and `timeMax` filter by event start/end time. Both are exclusive lower/upper bounds (RFC 3339 timestamps). The `timeZone` parameter controls how all-day events are interpreted against these bounds.

## Pagination

Most `list` methods support pagination with `pageToken`/`nextPageToken`:

```typescript
let pageToken: string | undefined;
const allEvents: calendar_v3.Schema$Event[] = [];

do {
  const res = await calendar.events.list({
    calendarId: "primary",
    timeMin: new Date().toISOString(),
    singleEvents: true,
    orderBy: "startTime",
    maxResults: 250,
    pageToken,
  });
  allEvents.push(...(res.data.items ?? []));
  pageToken = res.data.nextPageToken ?? undefined;
} while (pageToken);
```

## Create a Timed Event

```typescript
const res = await calendar.events.insert({
  calendarId: "primary",
  conferenceDataVersion: 1,   // Required if adding Google Meet
  sendUpdates: "all",         // "all" | "externalOnly" | "none"
  requestBody: {
    summary: "Team Standup",
    location: "Conference Room A",
    description: "Daily sync meeting",
    start: {
      dateTime: "2025-03-15T09:00:00",
      timeZone: "America/New_York",
    },
    end: {
      dateTime: "2025-03-15T09:30:00",
      timeZone: "America/New_York",
    },
    attendees: [
      { email: "alice@example.com" },
      { email: "bob@example.com" },
    ],
    reminders: {
      useDefault: false,
      overrides: [
        { method: "email", minutes: 60 },
        { method: "popup", minutes: 10 },
      ],
    },
  },
});
console.log("Event created:", res.data.htmlLink);
```

## Create an All-Day Event

All-day events use `start.date` / `end.date` (date strings, not datetimes). The `end.date` is **exclusive** -- for a single-day event on March 15th, set `end.date` to March 16th:

```typescript
const res = await calendar.events.insert({
  calendarId: "primary",
  requestBody: {
    summary: "Company Holiday",
    start: { date: "2025-03-15" },
    end: { date: "2025-03-16" },   // Exclusive: this is a 1-day event
  },
});
```

For a multi-day event (March 15-17):

```typescript
const res = await calendar.events.insert({
  calendarId: "primary",
  requestBody: {
    summary: "Offsite Retreat",
    start: { date: "2025-03-15" },
    end: { date: "2025-03-18" },   // Exclusive: covers 15th, 16th, 17th
  },
});
```

## Recurring Events (RRULE)

Create a recurring event using [RFC 5545](https://tools.ietf.org/html/rfc5545) recurrence rules:

```typescript
// Weekly standup every Tuesday and Thursday, ending after 20 occurrences
const res = await calendar.events.insert({
  calendarId: "primary",
  requestBody: {
    summary: "Team Standup",
    start: {
      dateTime: "2025-03-04T09:00:00",
      timeZone: "America/New_York",
    },
    end: {
      dateTime: "2025-03-04T09:15:00",
      timeZone: "America/New_York",
    },
    recurrence: [
      "RRULE:FREQ=WEEKLY;COUNT=20;BYDAY=TU,TH",
    ],
  },
});
```

### Common RRULE patterns

| Pattern | RRULE |
|---------|-------|
| Daily | `RRULE:FREQ=DAILY` |
| Every weekday | `RRULE:FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR` |
| Weekly on Monday | `RRULE:FREQ=WEEKLY;BYDAY=MO` |
| Bi-weekly | `RRULE:FREQ=WEEKLY;INTERVAL=2` |
| Monthly on the 15th | `RRULE:FREQ=MONTHLY;BYMONTHDAY=15` |
| Monthly on 2nd Tuesday | `RRULE:FREQ=MONTHLY;BYDAY=2TU` |
| Yearly on March 1 | `RRULE:FREQ=YEARLY;BYMONTH=3;BYMONTHDAY=1` |
| Until a specific date | `RRULE:FREQ=WEEKLY;UNTIL=20251231T000000Z` |
| With exceptions | Add `EXDATE;VALUE=DATE:20250325` to skip a date |

### Exclude specific dates (EXDATE)

```typescript
recurrence: [
  "RRULE:FREQ=DAILY;UNTIL=20250630;INTERVAL=3",
  "EXDATE;VALUE=DATE:20250610",       // Skip June 10
  "RDATE;VALUE=DATE:20250609,20250611", // Add extra dates
],
```

### List instances of a recurring event

```typescript
const res = await calendar.events.instances({
  calendarId: "primary",
  eventId: "recurring_event_id",
  timeMin: "2025-03-01T00:00:00Z",
  timeMax: "2025-04-01T00:00:00Z",
});
// Each instance has its own start/end and can be modified independently
```

### Modify a single instance (create an exception)

```typescript
// Get the specific instance first
const instances = await calendar.events.instances({
  calendarId: "primary",
  eventId: "recurring_event_id",
});
const instance = instances.data.items?.[2]; // e.g., third occurrence

// Patch just that instance
await calendar.events.patch({
  calendarId: "primary",
  eventId: instance!.id!,
  requestBody: {
    summary: "Modified Standup - Special Agenda",
    start: {
      dateTime: "2025-03-18T10:00:00",  // Moved to 10am
      timeZone: "America/New_York",
    },
    end: {
      dateTime: "2025-03-18T10:30:00",
      timeZone: "America/New_York",
    },
  },
});
```

## Manage Attendees

```typescript
// Add attendees to an existing event
const event = await calendar.events.get({
  calendarId: "primary",
  eventId: "event_id",
});

const currentAttendees = event.data.attendees ?? [];
await calendar.events.patch({
  calendarId: "primary",
  eventId: "event_id",
  sendUpdates: "all",   // Send email invites
  requestBody: {
    attendees: [
      ...currentAttendees,
      { email: "newperson@example.com" },
    ],
  },
});
```

**Attendee response statuses**: `needsAction`, `declined`, `tentative`, `accepted`.

## Free/Busy Queries

Check availability across multiple calendars before scheduling:

```typescript
const res = await calendar.freebusy.query({
  requestBody: {
    timeMin: "2025-03-15T08:00:00Z",
    timeMax: "2025-03-15T18:00:00Z",
    timeZone: "America/New_York",
    items: [
      { id: "alice@example.com" },
      { id: "bob@example.com" },
      { id: "conference-room@resource.calendar.google.com" },
    ],
  },
});

// Check each calendar's busy blocks
for (const [calId, info] of Object.entries(res.data.calendars ?? {})) {
  const busy = (info as any).busy ?? [];
  if (busy.length === 0) {
    console.log(`${calId}: Free all day`);
  } else {
    for (const block of busy) {
      console.log(`${calId}: Busy ${block.start} - ${block.end}`);
    }
  }
}
```

## Watch for Changes (Push Notifications)

Set up a webhook to receive notifications when events change:

```typescript
// Step 1: Create a watch channel
const res = await calendar.events.watch({
  calendarId: "primary",
  requestBody: {
    id: "my-unique-channel-id",          // UUID recommended
    type: "web_hook",
    address: "https://mydomain.com/calendar/webhook",  // Must be HTTPS
    token: "myApp-verification-token",    // Optional, for verification
    expiration: String(Date.now() + 7 * 24 * 60 * 60 * 1000), // 7 days
  },
});
console.log("Channel resourceId:", res.data.resourceId);

// Step 2: Handle webhook POST at your endpoint
// Headers include X-Goog-Channel-ID, X-Goog-Resource-State ("sync" | "exists")
// The body is empty -- you must call events.list with syncToken to get changes

// Step 3: Stop watching when done
await calendar.channels.stop({
  requestBody: {
    id: "my-unique-channel-id",
    resourceId: res.data.resourceId!,
  },
});
```

**Watch resources available**: `events.watch`, `calendarList.watch`, `acl.watch`, `settings.watch`.

## Incremental Sync with syncToken

Efficiently fetch only changes since the last sync:

```typescript
// First full sync -- get all events and save the syncToken
let syncToken: string | undefined;
let pageToken: string | undefined;

do {
  const res = await calendar.events.list({
    calendarId: "primary",
    pageToken,
  });
  // Process events...
  pageToken = res.data.nextPageToken ?? undefined;
  if (!pageToken) {
    syncToken = res.data.nextSyncToken ?? undefined;
  }
} while (pageToken);

// Save syncToken to your database

// Later: incremental sync using saved syncToken
const res = await calendar.events.list({
  calendarId: "primary",
  syncToken,  // Returns only events changed since last sync
});
// Process changed events (status "cancelled" means deleted)
```

**Important**: If the syncToken is invalidated (410 Gone response), you must perform a full sync again.

## Add Google Meet Conference

```typescript
const res = await calendar.events.insert({
  calendarId: "primary",
  conferenceDataVersion: 1,   // REQUIRED for conference data
  requestBody: {
    summary: "Video Call",
    start: {
      dateTime: "2025-03-15T14:00:00",
      timeZone: "America/New_York",
    },
    end: {
      dateTime: "2025-03-15T15:00:00",
      timeZone: "America/New_York",
    },
    conferenceData: {
      createRequest: {
        requestId: crypto.randomUUID(),   // Must be unique per request
        conferenceSolutionKey: { type: "hangoutsMeet" },
      },
    },
  },
});

// Conference is created asynchronously -- check status
const confData = res.data.conferenceData;
if (confData?.createRequest?.status?.statusCode === "success") {
  console.log("Meet link:", confData.entryPoints?.[0]?.uri);
}
```

## Quick Add (Natural Language)

Create events from a text string (Google parses it):

```typescript
const res = await calendar.events.quickAdd({
  calendarId: "primary",
  text: "Lunch with Alice at noon tomorrow at Cafe Milano",
});
console.log("Created:", res.data.summary, res.data.start);
```

## Move Event to Another Calendar

```typescript
await calendar.events.move({
  calendarId: "primary",
  eventId: "event_id",
  destination: "other_calendar_id@group.calendar.google.com",
});
```

**Note**: Only `default` event types can be moved. Birthday, focusTime, outOfOffice, and workingLocation events cannot.

## Time Zone Handling

Three ways to specify event times:

```typescript
// 1. Explicit offset in dateTime
start: { dateTime: "2025-03-15T09:00:00-05:00" }

// 2. Separate timeZone field (recommended)
start: { dateTime: "2025-03-15T09:00:00", timeZone: "America/New_York" }

// 3. UTC
start: { dateTime: "2025-03-15T14:00:00Z" }
```

For recurring events, always set the `timeZone` field explicitly. It is required to correctly expand recurrences across DST transitions.

## Error Handling

```typescript
try {
  const res = await calendar.events.insert({ /* ... */ });
} catch (err: any) {
  if (err.code === 409) {
    // Conflict -- event ID already exists (use for idempotent creates)
  } else if (err.code === 410) {
    // Gone -- syncToken expired, do a full re-sync
  } else if (err.code === 429) {
    // Rate limited -- implement exponential backoff
  } else if (err.code === 403) {
    // Permission denied -- check scopes, API enablement, or calendar access
  } else if (err.code === 404) {
    // Not found -- check calendarId and eventId
  }
  console.error(err.message);
}
```

## Batch Requests

For multiple independent operations, use batch requests to reduce round trips:

```typescript
// googleapis supports batching via gaxios or manual HTTP batch
// See references/googleapis-client.md for batch patterns
```
