# OpenClaw Bootstrap Config

Custom workspace templates for OpenClaw AI agents.

## Structure

```
templates.json          # Manifest fetched by claw-deployer at runtime
templates/
  default/BOOTSTRAP.md  # Blank Slate — open-ended self-discovery
  productivity/BOOTSTRAP.md  # Productivity Pro — task-focused assistant
```

## How It Works

When a user deploys a bot via claw-deployer, they choose a template. The deployer passes the template ID to the pod as `BOOTSTRAP_TEMPLATE`. On first boot, `entrypoint.sh` clones this repo and copies files from the chosen template subfolder into `~/.openclaw/`.

## Adding a Template

1. Create a new folder under `templates/` (e.g. `templates/creative/`)
2. Add a `BOOTSTRAP.md` (and any other `.md`/`.json` config files)
3. Add an entry to `templates.json` with `id`, `name`, `emoji`, and `description`

## File Format

Templates use Markdown with optional frontmatter:

```markdown
---
title: "BOOTSTRAP.md"
summary: "First-run ritual"
---

# Your Content Here
```

All files are optional. Missing templates fall back to `default`, then to repo root (legacy compatibility).
