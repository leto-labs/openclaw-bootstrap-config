# gog Setup Guide

**Context:** You are on a server. The user is on Telegram. They open links and send you files -- you run all commands.

If the user is struggling, share these visual guides with caveats:
- Screenshots guide: https://www.febooti.com/products/automation-workshop/tutorials/google-oauth-create-credentials.html -- only the GCP project creation and OAuth consent screen parts are relevant, ignore anything specific to their product.
- Video walkthrough (first 2 minutes only): https://www.youtube.com/watch?v=TjMhPr59qn4 -- shows how to create a project and OAuth credentials. IMPORTANT: the video creates a "Web application" client but we need **"Desktop app"** -- warn the user about this difference.

---

## Phase 1: User Sets Up Google Cloud

### Step 1: Create Project

Send: "Open https://console.cloud.google.com/projectcreate -- name it anything (e.g. 'My Bot'), leave Organization empty (or 'No organization'), click Create."

Then ask for the project ID:

> Once it's created, send me the **Project ID**. You can find it on the project dashboard or in the URL bar -- it looks something like `my-bot-123456`.

Store the project ID -- you'll use it as `<PROJECT>` in all subsequent URLs to make sure the user stays in the right project.

### Step 2: Enable APIs

Construct the links with `?project=<PROJECT>`. Send all 7 -- user clicks each and hits "Enable":

> Open each link and click "Enable":
> 1. Gmail: https://console.cloud.google.com/apis/api/gmail.googleapis.com?project=<PROJECT>
> 2. Calendar: https://console.cloud.google.com/apis/api/calendar-json.googleapis.com?project=<PROJECT>
> 3. Drive: https://console.cloud.google.com/apis/api/drive.googleapis.com?project=<PROJECT>
> 4. Contacts: https://console.cloud.google.com/apis/api/people.googleapis.com?project=<PROJECT>
> 5. Sheets: https://console.cloud.google.com/apis/api/sheets.googleapis.com?project=<PROJECT>
> 6. Tasks: https://console.cloud.google.com/apis/api/tasks.googleapis.com?project=<PROJECT>
> 7. Docs: https://console.cloud.google.com/apis/api/docs.googleapis.com?project=<PROJECT>

### Step 3: OAuth Consent Screen

Send: "Open https://console.cloud.google.com/auth/branding?project=<PROJECT> -- click 'Get Started' if shown, enter any app name, your email as support email, select 'External', enter your email again as developer contact, agree to terms, click Create."

### Step 4: Create OAuth Client + Download JSON

Send: "Open https://console.cloud.google.com/auth/clients?project=<PROJECT> -- click 'Create Client', select **Desktop app** (not Web application), click Create. A dialog will show your credentials -- click 'Download JSON', open the file, copy its entire contents and paste it here."

---

## Phase 2: You Complete Setup

### Step 5: Store Credentials

User pastes the JSON contents in chat. Pipe it directly to gog via stdin:
```bash
echo '<pasted-json>' | gog auth credentials -
```

### Step 6: Headless Auth

```bash
gog auth add <user-email> --services user --remote --step 1
```

Send the auth URL to the user with:

> IMPORTANT: Open this link in your actual browser (Chrome, Safari, etc.) -- NOT inside Telegram. Long-press the link and choose "Open in Safari/Chrome", or copy-paste it manually.
>
> You'll see "Google hasn't verified this app" -- click Advanced > "Go to [app name] (unsafe)". Keep all permission checkboxes checked. After approving, the page will say "This site can't be reached" -- that's expected. Copy the FULL URL from your browser's address bar (starts with http://127.0.0.1, contains code=) and send it back to me.

### Step 7: Complete Auth

When user sends back the redirect URL (`http://127.0.0.1:PORT/?code=...`):
```bash
gog auth add <user-email> --services user --remote --step 2 --auth-url '<redirect-url>'
```

### Step 8: Verify

```bash
gog auth list --check
export GOG_ACCOUNT=<user-email>
gog gmail labels list --json
```

Tell user: "All set! I can now access your Gmail, Calendar, Drive, Sheets, Tasks, Contacts, and Docs."

---

## Troubleshooting

| Error | Cause | Fix |
|-------|-------|-----|
| 403: access_denied | Email not in test users | User opens consent screen > Audience (`https://console.cloud.google.com/auth/audience?project=<PROJECT>`), clicks "Add users" under Test users, adds their email, saves, then retries the auth link |
| 403: API not enabled | Forgot to enable an API | User opens the specific API link and clicks Enable |
| invalid_grant (after ~7 days) | Testing mode token expiry | Re-run auth (steps 6-8) with `--force-consent`. Recommend user publishes app to Production at consent screen > Audience to stop expiry. |
| 403 insufficient scopes | Authorized with limited scopes | Re-run auth with `--force-consent` |
| redirect_uri_mismatch | Wrong client type (Web instead of Desktop) | User deletes client, creates new one as "Desktop app" |
| User sends wrong/incomplete URL | Didn't copy full redirect URL | Tell user: "Copy the full URL from the address bar -- it should start with http://127.0.0.1 and contain code=" |
| Unchecked consent permissions | User deselected some checkboxes | Re-run auth with `--force-consent`, tell user to check all boxes |

---

## Security

- Credentials are piped via stdin -- no temp file to clean up.
- For container environments without OS keyring: `gog auth keyring file` + `GOG_KEYRING_PASSWORD` env var.
- Users can revoke access at https://myaccount.google.com/permissions.
- **Testing mode** expires tokens in 7 days. Recommend switching to **Production** for personal use (tokens persist, no real difference for single-user apps).
