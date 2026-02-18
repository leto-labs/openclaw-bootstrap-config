---
name: clawlaunch-gog
description: >
  Google Workspace CLI for Gmail, Calendar, Drive, Contacts, Sheets, Docs, and Tasks.
  Use when the user asks to read/send email, check calendar, manage files in Drive,
  look up contacts, read/write spreadsheets, edit documents, or manage tasks.
homepage: https://gogcli.sh
metadata:
  clawdbot:
    emoji: "\U0001F4E8"
    requires:
      bins:
        - gog
    install:
      - id: brew
        kind: brew
        formula: steipete/tap/gogcli
        bins:
          - gog
        label: Install gog (brew)
---

# gog -- Google Workspace CLI

## Agent Defaults

Always use these flags unless told otherwise:

- `--json` -- Machine-readable output (data to stdout, progress/errors to stderr). Output follows Google API JSON schemas. Run a command once to inspect the shape if needed.
- `--no-input` -- Never prompt; fail instead (essential for agent use)
- `--force` -- Skip confirmations (only when the user has already confirmed the action)
- `GOG_ACCOUNT=you@gmail.com` -- Set once to avoid repeating `--account`

For sandboxed environments, restrict available commands:

```
GOG_ENABLE_COMMANDS=gmail,calendar,drive,tasks
```

## Setup

If gog is not yet configured, walk the user through setup.
Read `references/setup-guide.md` for the full step-by-step guide.

**Context:** You are running on a server (container/VM). The user is chatting with you via Telegram. They cannot run commands -- you run everything. The user can send you text and files.

Setup flow summary:

1. **Guide the user** through creating a GCP project + OAuth client in their browser (steps 1-4 in setup-guide.md). Send them links and instructions via chat.
2. **Receive credentials** -- user pastes the downloaded `client_secret` JSON contents in chat.
3. **Store credentials** -- `echo '<pasted-json>' | gog auth credentials -`
4. **Headless auth** -- `gog auth add <email> --services user --remote --step 1` → send the auth URL to user.
5. **User approves in browser** -- page fails to load after approval, they copy the URL from the address bar and send it back.
6. **Complete auth** -- `gog auth add <email> --services user --remote --step 2 --auth-url '<url>'`
7. **Verify** -- `gog auth list --check` then `export GOG_ACCOUNT=<email>`

## Gmail

```bash
# Search
gog gmail search 'newer_than:7d' --max 10 --json
gog gmail messages search 'from:boss subject:urgent' --max 5 --include-body --json

# Read thread
gog gmail thread get <threadId> --json
gog gmail thread get <threadId> --download --out-dir ./attachments

# Send  [CONFIRM WITH USER]
gog gmail send --to a@b.com --subject "Subject" --body "Body text"
gog gmail send --to a@b.com --subject "Re: Hi" --reply-to-message-id <msgId> --quote --body "Reply"

# Labels
gog gmail labels list --json
gog gmail thread modify <threadId> --add STARRED --remove INBOX

# Drafts
gog gmail drafts list --json
gog gmail drafts create --to a@b.com --subject "Draft" --body "Body"
gog gmail drafts send <draftId>
```

## Calendar

```bash
# List events
gog calendar events primary --today --json
gog calendar events primary --week --json
gog calendar events primary --from 2025-01-15 --to 2025-01-20 --json
gog calendar search "meeting" --days 30 --json

# Create event  [CONFIRM WITH USER]
gog calendar create primary --summary "Meeting" --from <iso> --to <iso>
gog calendar create primary --summary "Sync" --from <iso> --to <iso> --attendees "a@b.com,c@d.com"

# Update / Delete  [CONFIRM WITH USER]
gog calendar update <calendarId> <eventId> --summary "New Title" --from <iso> --to <iso>
gog calendar delete <calendarId> <eventId> --force

# Availability
gog calendar freebusy --calendars "primary,coworker@example.com" --from <iso> --to <iso> --json
gog calendar conflicts --calendars "primary" --today --json

# Respond to invitations  [CONFIRM WITH USER]
gog calendar respond <calendarId> <eventId> --status accepted
gog calendar respond <calendarId> <eventId> --status declined

# List calendars
gog calendar calendars --json
```

## Drive

```bash
# List & search
gog drive ls --max 20 --json
gog drive search "invoice" --max 10 --json
gog drive get <fileId> --json

# Upload  [CONFIRM WITH USER]
gog drive upload ./file.pdf --parent <folderId>
gog drive mkdir "New Folder" --parent <parentFolderId>

# Download
gog drive download <fileId> --out ./file.pdf
gog drive download <fileId> --format pdf --out ./exported.pdf   # Google Workspace files

# Organize  [CONFIRM WITH USER]
gog drive rename <fileId> "New Name"
gog drive move <fileId> --parent <folderId>
gog drive delete <fileId> --force

# Permissions
gog drive permissions <fileId> --json
gog drive share <fileId> --to user --email user@example.com --role reader
```

## Tasks

```bash
# Task lists
gog tasks lists --json

# List tasks
gog tasks list <tasklistId> --json

# Create  [CONFIRM WITH USER]
gog tasks add <tasklistId> --title "Task title"
gog tasks add <tasklistId> --title "Weekly sync" --due 2025-02-01 --repeat weekly

# Complete / Undo
gog tasks done <tasklistId> <taskId>
gog tasks undo <tasklistId> <taskId>

# Delete  [CONFIRM WITH USER]
gog tasks delete <tasklistId> <taskId> --force
```

## Contacts

```bash
gog contacts list --max 20 --json
gog contacts search "name" --max 10 --json
gog contacts get user@example.com --json
gog contacts create --given "John" --family "Doe" --email "john@example.com"
gog contacts directory search "Jane" --max 10 --json   # Workspace only
```

## Sheets

```bash
# Read
gog sheets get <sheetId> "Tab!A1:D10" --json
gog sheets metadata <sheetId> --json
gog sheets notes <sheetId> "Tab!A1:B10" --json

# Write  [CONFIRM WITH USER]
gog sheets update <sheetId> "Tab!A1:B2" --values-json '[["A","B"],["1","2"]]'
gog sheets append <sheetId> "Tab!A:C" --values-json '[["x","y","z"]]'
gog sheets clear <sheetId> "Tab!A2:Z"

# Create & Export
gog sheets create "My Spreadsheet" --sheets "Sheet1,Sheet2"
gog sheets export <sheetId> --format pdf --out ./sheet.pdf
```

## Docs

```bash
# Read
gog docs cat <docId>
gog docs cat <docId> --tab "Notes"
gog docs info <docId> --json

# Write / Update  [CONFIRM WITH USER]
gog docs write <docId> --replace --markdown --file ./doc.md
gog docs find-replace <docId> "old text" "new text"

# Create & Export
gog docs create "My Doc"
gog docs create "My Doc" --file ./doc.md
gog docs export <docId> --format pdf --out ./doc.pdf
gog docs export <docId> --format txt --out ./doc.txt
```

## Other Services

For Slides, Forms, Apps Script, Chat, Classroom, Groups, Keep, and People, run `gog <service> --help` to discover available commands. The user will need to enable the corresponding API at `https://console.cloud.google.com/apis/library?project=<PROJECT>` first.

## Error Recovery

```bash
# Check auth status:
gog auth status
gog auth list --check
```

If you get **403 insufficient scopes** or **invalid_grant** (token expired), you need to re-authorize. This requires the user's help (same flow as initial setup):

```bash
# 1. Start re-auth
gog auth add <email> --services user --remote --step 1 --force-consent
# 2. Send the auth URL to the user via Telegram
# 3. User opens URL, approves, sends back the redirect URL
# 4. Complete re-auth
gog auth add <email> --services user --remote --step 2 --auth-url '<redirect-url>'
```

See `references/setup-guide.md` > Troubleshooting for specific error messages and what to tell the user.

## Safety Rules

- **Always confirm with the user** before sending emails, creating/updating calendar events, uploading files, modifying shared data, or any write operation.
- Commands marked `[CONFIRM WITH USER]` above require explicit user approval.
- Read operations are safe to run without confirmation.
- Use `--force` only after the user has confirmed the action.
